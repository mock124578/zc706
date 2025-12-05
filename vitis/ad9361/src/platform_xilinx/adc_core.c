/***************************************************************************//**
 *   @file   adc_core.c
 *   @brief  Implementation of ADC Core Driver.
 *   @author DBogdan
*******************************************************************************/

// ==================== 头文件区 ====================
#include <stdint.h>
#include <stdlib.h>
#include <xil_cache.h>      // Zynq 平台缓存控制函数
#include <xil_io.h>         // Xilinx 平台寄存器读写接口：Xil_In32 / Xil_Out32
#include "adc_core.h"       // 定义 ADC 寄存器偏移量与函数原型
#include "parameters.h"     // 平台相关基地址定义（AD9361_RX_0_BASEADDR 等）
#include "util.h"           // 通用宏，比如 do_div()
#include "config.h"         // 系统配置文件（是否启用中断、通道数量等）
#ifdef ADC_DMA_IRQ_EXAMPLE
#ifdef _XPARAMETERS_PS_H_
#include <xscugic.h>        // ARM GIC 中断控制器头文件（Zynq）
#elif defined _MICROBLAZE_INTERFACE_H_
#include <xintc.h>          // MicroBlaze 平台中断控制器
#endif
#endif

// ==================== 宏定义区 ====================
#ifdef ADC_DMA_IRQ_EXAMPLE
#ifdef _XPARAMETERS_PS_H_
#ifdef XPS_BOARD_ZCU102
#define ADC_DMA_INT_ID XPAR_FABRIC_AXI_AD9361_ADC_DMA_IRQ_INTR  // 对于ZCU102使用Fabric定义
#else
#define ADC_DMA_INT_ID 89                                       // 对于其他Zynq平台，DMA中断号为89
#endif
#elif defined _MICROBLAZE_INTERFACE_H_
#define ADC_DMA_INT_ID 12                                       // MicroBlaze中断号12
#endif
#define ADC_DMA_TRANSFER_SIZE 32768                             // 每次DMA传输的采样点数（32768个样本）
#endif

// ==================== 全局变量 ====================
struct adc_state adc_st;                                        // ADC状态结构体，保存通道模式rx2tx2等标志
#ifdef ADC_DMA_IRQ_EXAMPLE
uint8_t  dma_transfer_queued_flag   = 0;                        // DMA传输队列标志
uint8_t  dma_transfer_completed_flag = 0;                       // DMA传输完成标志
uint32_t dma_start_address          = 0;                        // DMA传输起始地址
#endif

/***************************************************************************//**
 * @brief adc_read
 * 读取ADC寄存器
*******************************************************************************/
void adc_read(struct ad9361_rf_phy *phy, uint32_t regAddr, uint32_t *data)
{
	switch (phy->id_no)                      // 根据设备号区分多片AD9361（FMCOMMS5支持两片）
	{
	case 0:
		*data = Xil_In32(AD9361_RX_0_BASEADDR + regAddr);  // 从RX0基地址+偏移读取寄存器
		break;
	case 1:
		*data = Xil_In32(AD9361_RX_1_BASEADDR + regAddr);  // 从RX1基地址+偏移读取寄存器
		break;
	default:
		break;
	}
}

/***************************************************************************//**
 * @brief adc_write
 * 写ADC寄存器
*******************************************************************************/
void adc_write(struct ad9361_rf_phy *phy, uint32_t regAddr, uint32_t data)
{
	switch (phy->id_no)
	{
	case 0:
		Xil_Out32(AD9361_RX_0_BASEADDR + regAddr, data);   // 向RX0对应寄存器写入数据
		break;
	case 1:
		Xil_Out32(AD9361_RX_1_BASEADDR + regAddr, data);   // 向RX1对应寄存器写入数据
		break;
	default:
		break;
	}
}

/***************************************************************************//**
 * @brief adc_dma_read
 * 读取ADC DMA控制器寄存器（AXI_DMAC）
*******************************************************************************/
void adc_dma_read(uint32_t regAddr, uint32_t *data)
{
	*data = Xil_In32(CF_AD9361_RX_DMA_BASEADDR + regAddr);       // 从DMA控制寄存器基地址偏移读取
}

/***************************************************************************//**
 * @brief adc_dma_write
 * 写ADC DMA控制器寄存器（AXI_DMAC）
*******************************************************************************/
void adc_dma_write(uint32_t regAddr, uint32_t data)
{
	Xil_Out32(CF_AD9361_RX_DMA_BASEADDR + regAddr, data);        // 向DMA控制寄存器写数据
}

/***************************************************************************//**
 * @brief adc_init
 * 初始化ADC核心（AXI_AD9361_RX IP核）
*******************************************************************************/
void adc_init(struct ad9361_rf_phy *phy)
{
	adc_write(phy, ADC_REG_RSTN, 0);             // 拉低复位信号（清除状态）
	adc_write(phy, ADC_REG_RSTN, ADC_RSTN);      // 释放复位信号（ADC核进入工作状态）

	// 使能通道0（I通道）
	adc_write(phy, ADC_REG_CHAN_CNTRL(0),
		ADC_IQCOR_ENB | ADC_FORMAT_SIGNEXT | ADC_FORMAT_ENABLE | ADC_ENABLE);
	// 使能通道1（Q通道）
	adc_write(phy, ADC_REG_CHAN_CNTRL(1),
		ADC_IQCOR_ENB | ADC_FORMAT_SIGNEXT | ADC_FORMAT_ENABLE | ADC_ENABLE);

	adc_st.rx2tx2 = phy->pdata->rx2tx2;          // 读取当前是否处于双收双发(rx2tx2)模式

	if(adc_st.rx2tx2)                             // 如果是双通道模式（RX1/RX2）
	{
		adc_write(phy, ADC_REG_CHAN_CNTRL(2),
			ADC_IQCOR_ENB | ADC_FORMAT_SIGNEXT | ADC_FORMAT_ENABLE | ADC_ENABLE); // 使能通道2
		adc_write(phy, ADC_REG_CHAN_CNTRL(3),
			ADC_IQCOR_ENB | ADC_FORMAT_SIGNEXT | ADC_FORMAT_ENABLE | ADC_ENABLE); // 使能通道3
	}
	else                                           // 否则禁用多余通道
	{
		adc_write(phy, ADC_REG_CHAN_CNTRL(2), 0);
		adc_write(phy, ADC_REG_CHAN_CNTRL(3), 0);
	}
}

#ifdef ADC_DMA_IRQ_EXAMPLE
/***************************************************************************//**
 * @brief adc_dma_isr
 * DMA中断服务函数
 * 当ADC DMA完成一次数据块传输或队列中有新的传输被启动时触发。
*******************************************************************************/
void adc_dma_isr(void *instance)
{
	uint32_t reg_val;

	adc_dma_read(AXI_DMAC_REG_IRQ_PENDING, &reg_val);       // 读取中断挂起寄存器，判断中断来源
	adc_dma_write(AXI_DMAC_REG_IRQ_PENDING, reg_val);       // 写回清除中断标志位

	if(reg_val & IRQ_TRANSFER_QUEUED)                       // 若有新的DMA传输排入队列
	{
		dma_transfer_queued_flag = 1;                       // 标志队列传输事件
		dma_start_address += ADC_DMA_TRANSFER_SIZE;          // 更新下次DMA目标地址
		adc_dma_write(AXI_DMAC_REG_DEST_ADDRESS, dma_start_address);  // 设置新的目标地址
		adc_dma_write(AXI_DMAC_REG_START_TRANSFER, 0x1);     // 启动下一个DMA传输
	}

	if(reg_val & IRQ_TRANSFER_COMPLETED)                     // 若当前DMA传输完成
	{
		dma_transfer_completed_flag = 1;                     // 标志传输完成
	}
}
#endif


/***************************************************************************//**
 * @brief adc_capture
 * 启动ADC DMA进行数据采集，将ADC采样数据搬运至DDR。
 * @param size: 采样数量（样本数）
 * @param start_address: DDR起始地址
*******************************************************************************/
int32_t adc_capture(uint32_t size, uint32_t start_address)
{
	uint32_t reg_val;
	uint32_t transfer_id;
	uint32_t length;

	// 根据模式确定DMA传输长度（单位：字节）
	if(adc_st.rx2tx2)                    // 双收双发模式：每个样本包含4路IQ，共8字节
	{
		length = (size * 8);
	}
	else                                 // 单收单发模式：2路IQ，共4字节
	{
		length = (size * 4);
	}

#ifdef FMCOMMS5                         // 如果是FMCOMMS5平台（双AD9361）
	length = (size * 16);                // 每次包含两片AD9361的IQ，共16字节
#endif

	// ----------- 配置DMA控制寄存器 -----------
	adc_dma_write(AXI_DMAC_REG_CTRL, 0x0);              // 关闭DMA
	adc_dma_write(AXI_DMAC_REG_CTRL, AXI_DMAC_CTRL_ENABLE); // 重新使能DMA

	adc_dma_write(AXI_DMAC_REG_IRQ_MASK, 0x0);          // 禁用所有DMA中断（默认轮询模式）

	// 获取当前传输ID（用于检测完成）
	adc_dma_read(AXI_DMAC_REG_TRANSFER_ID, &transfer_id);

	// 清除可能存在的中断标志
	adc_dma_read(AXI_DMAC_REG_IRQ_PENDING, &reg_val);
	adc_dma_write(AXI_DMAC_REG_IRQ_PENDING, reg_val);

#ifdef ADC_DMA_IRQ_EXAMPLE  // ========== 启用中断采集模式 ==========
#ifdef _XPARAMETERS_PS_H_
	// --- Zynq GIC 中断控制初始化 ---
	XScuGic_Config	*gic_config;
	XScuGic			gic;
	int32_t			status;

	gic_config = XScuGic_LookupConfig(GIC_DEVICE_ID);   // 查找GIC配置
	if(gic_config == NULL)
		printf("XScuGic_LookupConfig Error\n");

	status = XScuGic_CfgInitialize(&gic, gic_config, gic_config->CpuBaseAddress);
	if(status)
		printf("XScuGic_CfgInitialize Error\n");

	XScuGic_SetPriorityTriggerType(&gic, ADC_DMA_INT_ID, 0x0, 0x3); // 设置中断优先级和触发方式

	status = XScuGic_Connect(&gic, ADC_DMA_INT_ID, (Xil_ExceptionHandler)adc_dma_isr, NULL); // 绑定DMA中断服务函数
	if(status)
		printf("XScuGic_Connect Error\n");

	XScuGic_Enable(&gic, ADC_DMA_INT_ID);                // 使能该中断源
	Xil_ExceptionInit();                                 // 初始化异常机制
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&gic);
	Xil_ExceptionEnable();                               // 开启全局中断
#elif defined _MICROBLAZE_INTERFACE_H_
	// --- MicroBlaze 中断控制初始化 ---
	XIntc	intc;
	int32_t	status;

	status = XIntc_Initialize(&intc, XPAR_AXI_INTC_DEVICE_ID);   // 初始化中断控制器
	if(status)
		printf("XIntc_Initialize Error\n");

	status = XIntc_Connect(&intc, ADC_DMA_INT_ID,
			(Xil_ExceptionHandler)adc_dma_isr, NULL);            // 绑定中断函数
	if(status)
		printf("XIntc_Connect Error\n");

	XIntc_Enable(&intc, ADC_DMA_INT_ID);                         // 启用对应中断
	status = XIntc_Start(&intc, XIN_REAL_MODE);                  // 启动中断控制器
	if(status)
		printf("XIntc_Start Error\n");

	Xil_ExceptionInit();                                         // 初始化异常系统
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XIntc_InterruptHandler, (void *)&intc);
	Xil_ExceptionEnable();                                       // 启动中断响应
#endif

	// 设置DMA起始地址和传输块
	dma_start_address = start_address;
	adc_dma_write(AXI_DMAC_REG_DEST_ADDRESS, dma_start_address);
	adc_dma_write(AXI_DMAC_REG_DEST_STRIDE, 0x0);
	adc_dma_write(AXI_DMAC_REG_X_LENGTH, ADC_DMA_TRANSFER_SIZE - 1);
	adc_dma_write(AXI_DMAC_REG_Y_LENGTH, 0x0);

	adc_dma_write(AXI_DMAC_REG_START_TRANSFER, 0x1);             // 启动DMA传输
	while(dma_start_address < (start_address + length + ADC_DMA_TRANSFER_SIZE));
	adc_dma_write(ADC_REG_DMA_CNTRL, 0x0);                       // 停止DMA
#else
	// ========== 轮询方式采集 ==========
	adc_dma_write(AXI_DMAC_REG_DEST_ADDRESS, start_address);     // DDR目标地址
	adc_dma_write(AXI_DMAC_REG_DEST_STRIDE, 0x0);                // 无行间距
	adc_dma_write(AXI_DMAC_REG_X_LENGTH, length - 1);            // 传输长度
	adc_dma_write(AXI_DMAC_REG_Y_LENGTH, 0x0);                   // 单次传输

	adc_dma_write(AXI_DMAC_REG_START_TRANSFER, 0x1);             // 启动DMA传输

	/* 等待传输启动完成 */
	do {
		adc_dma_read(AXI_DMAC_REG_START_TRANSFER, &reg_val);
	} while(reg_val == 1);

	/* 等待传输完成中断状态 */
	do {
		adc_dma_read(AXI_DMAC_REG_IRQ_PENDING, &reg_val);
	} while(reg_val != (IRQ_TRANSFER_QUEUED | IRQ_TRANSFER_COMPLETED));

	adc_dma_write(AXI_DMAC_REG_IRQ_PENDING, reg_val);            // 清除中断状态

	/* 等待传输ID对应的DMA完成标志 */
	do {
		adc_dma_read(AXI_DMAC_REG_TRANSFER_DONE, &reg_val);
	} while((reg_val & (1 << transfer_id)) != (1 << transfer_id));
#endif

	return 0;
}


/***************************************************************************//**
 * @brief adc_set_calib_scale_phase
 * 设置ADC通道的IQ校准系数（增益和相位）
 * @param phy: ADC设备实例
 * @param phase: 0表示设置增益，1表示设置相位
 * @param chan: 通道号（0~3）
 * @param val: 系数符号位，取值{-1,0,1}
 * @param val2: 系数的幅度（微单位）
*******************************************************************************/
int32_t adc_set_calib_scale_phase(struct ad9361_rf_phy *phy,
								  uint32_t phase,
								  uint32_t chan,
								  int32_t val,
								  int32_t val2)
{
	uint32_t fract;       // 小数部分寄存器值
	uint64_t llval;       // 中间计算值，用于缩放
	uint32_t tmp;         // 临时寄存器值

	// --- 根据符号位设置整数部分 ---
	switch (val) {
	case 1:
		fract = 0x4000;   // +1 对应定点1.1.14格式
		break;
	case -1:
		fract = 0xC000;   // -1 对应定点1.1.14格式
		break;
	case 0:
		fract = 0;        // 0初始值
		if (val2 < 0) {  // 如果幅度为负数
			fract = 0x8000;  // 符号位置1
			val2 *= -1;      // 取绝对值
		}
		break;
	default:
		return -1;         // 非法参数返回
	}

	// --- 计算小数部分 ---
	llval = (uint64_t)val2 * 0x4000UL + (1000000UL / 2); // val2 * 2^14 / 1e6 四舍五入
	do_div(&llval, 1000000UL);                            // llval /= 1e6
	fract |= llval;                                       // 合并整数和小数部分

	adc_read(phy, ADC_REG_CHAN_CNTRL_2(chan), &tmp);     // 读取当前通道控制寄存器

	if (!((chan + phase) % 2))                            // 偶数通道或增益
	{
		tmp &= ~ADC_IQCOR_COEFF_1(~0);                   // 清除旧的增益/相位系数
		tmp |= ADC_IQCOR_COEFF_1(fract);                // 写入新的系数
	} else                                                // 奇数通道或相位
	{
		tmp &= ~ADC_IQCOR_COEFF_2(~0);                   // 清除旧的系数
		tmp |= ADC_IQCOR_COEFF_2(fract);                // 写入新的系数
	}

	adc_write(phy, ADC_REG_CHAN_CNTRL_2(chan), tmp);     // 写回寄存器，完成校准设置

	return 0;
}


/***************************************************************************//**
 * @brief adc_get_calib_scale_phase
 * 读取ADC通道的IQ校准系数
 * @param phy: ADC设备实例
 * @param phase: 0增益，1相位
 * @param chan: 通道号
 * @param val: 输出符号位
 * @param val2: 输出幅度
*******************************************************************************/
int32_t adc_get_calib_scale_phase(struct ad9361_rf_phy *phy,
								  uint32_t phase,
								  uint32_t chan,
								  int32_t *val,
								  int32_t *val2)
{
	uint32_t tmp;
	int32_t sign;
	uint64_t llval;

	adc_read(phy, ADC_REG_CHAN_CNTRL_2(chan), &tmp);     // 读取通道寄存器

	/* 数据格式为 1.1.14 （1位符号，1位整数，14位小数） */
	if (!((phase + chan) % 2))
	{
		tmp = ADC_TO_IQCOR_COEFF_1(tmp);                // 提取增益/相位系数1
	} else
	{
		tmp = ADC_TO_IQCOR_COEFF_2(tmp);                // 提取增益/相位系数2
	}

	if (tmp & 0x8000)
		sign = -1;                                     // 符号位
	else
		sign = 1;

	if (tmp & 0x4000)
		*val = 1 * sign;                               // 整数部分
	else
		*val = 0;

	tmp &= ~0xC000;                                   // 清除整数和符号位，只保留小数

	llval = tmp * 1000000ULL + (0x4000 / 2);          // 小数转换为微单位，四舍五入
	do_div(&llval, 0x4000);
	if (*val == 0)
		*val2 = llval * sign;
	else
		*val2 = llval;

	return 0;
}


/***************************************************************************//**
 * @brief adc_set_calib_scale
 * 对外封装函数，仅设置增益（相位=0）
*******************************************************************************/
int32_t adc_set_calib_scale(struct ad9361_rf_phy *phy,
							uint32_t chan,
							int32_t val,
							int32_t val2)
{
	return adc_set_calib_scale_phase(phy, 0, chan, val, val2);
}

/***************************************************************************//**
 * @brief adc_get_calib_scale
 * 对外封装函数，仅读取增益（相位=0）
*******************************************************************************/
int32_t adc_get_calib_scale(struct ad9361_rf_phy *phy,
							uint32_t chan,
							int32_t *val,
							int32_t *val2)
{
	return adc_get_calib_scale_phase(phy, 0, chan, val, val2);
}

/***************************************************************************//**
 * @brief adc_set_calib_phase
 * 对外封装函数，仅设置相位（phase=1）
*******************************************************************************/
int32_t adc_set_calib_phase(struct ad9361_rf_phy *phy,
							uint32_t chan,
							int32_t val,
							int32_t val2)
{
	return adc_set_calib_scale_phase(phy, 1, chan, val, val2);
}

/***************************************************************************//**
 * @brief adc_get_calib_phase
 * 对外封装函数，仅读取相位（phase=1）
*******************************************************************************/
int32_t adc_get_calib_phase(struct ad9361_rf_phy *phy,
							uint32_t chan,
							int32_t *val,
							int32_t *val2)
{
	return adc_get_calib_scale_phase(phy, 1, chan, val, val2);
}

