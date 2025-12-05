/***************************************************************************//**
 *   @file   Platform.c
 *   @brief  Implementation of Platform Driver.
 *   @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
 * Copyright 2013(c) Analog Devices, Inc.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *  - Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  - Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *  - Neither the name of Analog Devices, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *  - The use of this software may or may not infringe the patent rights
 *    of one or more patent holders.  This license does not release you
 *    from the requirement that you obtain separate licenses from these
 *    patent holders to use this software.
 *  - Use of the software either in source or binary form, must be run
 *    on or directly connected to an Analog Devices Inc. component.
 *
 * THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
// 文件头与版权信息（不需要改动）
// 下面开始实际代码
/******************************************************************************/

/***************************** Include Files **********************************/
/******************************************************************************/
// 引入标准类型头与平台配置头文件
#include <stdint.h>
#include <xparameters.h>        // Xilinx 平台参数（由 Vivado/xps 生成）

#ifdef _XPARAMETERS_PS_H_          // 如果定义了 _XPARAMETERS_PS_H_，说明是 Zynq PS（Processing System）环境
#include <xgpiops.h>            // Zynq PS GPIO 驱动头
#include <xspips.h>             // Zynq PS SPI 驱动头
#else                             // 否则为 MicroBlaze 或 PL-side (AXI) 外设
#include <xgpio.h>              // PL-side GPIO 驱动头
#include <xgpio_l.h>            // GPIO 低级寄存器访问宏
#include <xspi.h>               // PL-side SPI 驱动头
#endif

#include "util.h"               // 工具/通用定义（项目级）
#include "adc_core.h"           // ADC core 抽象（axi-adc 驱动接口）
#include "dac_core.h"           // DAC core 抽象（axi-dac 驱动接口）
#include "platform.h"           // 平台层头文件（本文件对应的声明）
#ifdef _XPARAMETERS_PS_H_
#include <sleep.h>              // Zynq PS 下的 sleep/usleep API
#else
// 如果不是 PS 环境，自己实现一个简易的 usleep
static inline void usleep(unsigned long usleep)
{
	unsigned long delay = 0;

	for(delay = 0; delay < usleep * 10; delay++); // 简单忙等（延时循环），精度很低，仅作占时
}
#endif

/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/
// 根据是否是 PS 环境，声明 SPI/GPIO 的实例结构体和配置指针
#ifdef _XPARAMETERS_PS_H_
XSpiPs_Config	*spi_config;     // 指向 PS SPI 配置结构体的指针（查表使用）
XSpiPs			spi_instance;    // PS SPI 实例数据（句柄）
XGpioPs_Config	*gpio_config;    // PS GPIO 配置指针
XGpioPs			gpio_instance;   // PS GPIO 实例
#else
XSpi_Config		*spi_config;     // PL SPI 配置指针
XSpi			spi_instance;    // PL SPI 实例
XGpio_Config	*gpio_config;     // PL GPIO 配置指针（注意：在 PL case 代码中只保存配置，实例变量可能在其他地方）
#endif

/***************************************************************************//**
 * @brief spi_init
 *******************************************************************************/
// SPI 初始化函数：根据 device_id 初始化 SPI 外设，并设置时钟相位、极性选项
int32_t spi_init(uint32_t device_id,
		 uint8_t  clk_pha,
		 uint8_t  clk_pol)
{

	uint32_t base_addr	 = 0;      // SPI 外设基地址（由 lookup config 给出）
	uint32_t spi_options = 0;      // 保存将要设置的 SPI 选项位
#ifdef _XPARAMETERS_PS_H_

	// ----- PS（Zynq Processing System）下的 SPI 初始化流程 -----
	spi_config = XSpiPs_LookupConfig(device_id);
	// 从平台参数表根据 device_id 查找 spi 的配置结构体指针
	base_addr = spi_config->BaseAddress;
	// 取得具体的基地址备用

	XSpiPs_CfgInitialize(&spi_instance, spi_config, base_addr);
	// 用查到的配置初始化 spi 实例（设置基地址等）

	// 组合 spi options；XSPIPS_* 是 Xilinx PS SPI 驱动的选项宏
	spi_options = XSPIPS_MASTER_OPTION |                          // 设为主机模式
		      (clk_pol ? XSPIPS_CLK_ACTIVE_LOW_OPTION : 0) |   // 如果 clk_pol 为 1，表示时钟空闲为低电平
		      (clk_pha ? XSPIPS_CLK_PHASE_1_OPTION : 0) |      // 如果 clk_pha 为 1，选择相位选项
		      XSPIPS_FORCE_SSELECT_OPTION;                    // 强制选择片选使能（使用软件管理）

	XSpiPs_SetOptions(&spi_instance, spi_options);
	// 应用选项到 spi 实例

	XSpiPs_SetClkPrescaler(&spi_instance, XSPIPS_CLK_PRESCALE_256);
	// 设置时钟分频器（预分频），此处设置为 256（很慢），用于降低 SPI 时钟频率以确保兼容性
#else
	// ----- PL (AXI SPI) 或 MicroBlaze 下的 SPI 初始化流程 -----
	XSpi_Initialize(&spi_instance, device_id);
	// 用 device_id 初始化 PL SPI 实例（低级驱动调用）

	XSpi_Stop(&spi_instance);
	// 停止 SPI（以便安全配置）

	spi_config = XSpi_LookupConfig(device_id);
	// 查找 SPI 配置表（获取基地址、驱动信息等）

	base_addr = spi_config->BaseAddress;
	// 记录基地址

	XSpi_CfgInitialize(&spi_instance, spi_config, base_addr);
	// 完成配置初始化

	spi_options = XSP_MASTER_OPTION |
		      XSP_CLK_PHASE_1_OPTION |
		      XSP_MANUAL_SSELECT_OPTION;
	// 设置 SPI 选项：主机、时钟相位 1、手动片选（软件控制）

	XSpi_SetOptions(&spi_instance, spi_options);
	// 应用选项

	XSpi_Start(&spi_instance);
	// 启动 SPI 控制器

	XSpi_IntrGlobalDisable(&spi_instance);
	// 禁用全局中断（使用 polling 或手动控制）

	XSpi_SetSlaveSelect(&spi_instance, 1);
	// 选中从设备（片选编号 1），把片选拉低准备通信
#endif
	return SUCCESS; // 返回 SUCCESS（表示成功，SUCCESS 在 util.h 或 platform.h 定义）
}

/***************************************************************************//**
 * @brief spi_read
 *******************************************************************************/
// spi_read：执行 SPI 读（实际实现对 PS / PL 两种平台不同）
int32_t spi_read(struct spi_device *spi,
		 uint8_t *data,
		 uint8_t bytes_number)
{
#ifdef _XPARAMETERS_PS_H_
	// PS 下：使用 XSpiPs API，先设置片选为 spi->id_no 对应的索引（0 或 1）
	XSpiPs_SetSlaveSelect(&spi_instance, (spi->id_no == 0 ? 0 : 1));

	// 在 PS 上做 Polled 传输，读写同用同一个 buffer（data），长度由 bytes_number 指定
	// XSpiPs_PolledTransfer 会把 data 作为发送缓冲，同时接收到的字节回写到同一缓冲区
	XSpiPs_PolledTransfer(&spi_instance, data, data, bytes_number);
#else
	// PL（AXI SPI）下的实现分支
	uint32_t cnt = 0;
#if defined(XPAR_AXI_SPI_0_DEVICE_ID) || defined(XPAR_SPI_0_DEVICE_ID)
	// 如果存在 AXI SPI 外设或 SPI0 定义，则使用 XSpi_Transfer API
	uint8_t send_buffer[20];

	for(cnt = 0; cnt < bytes_number; cnt++) {
		send_buffer[cnt] = data[cnt]; // 预先把要发送的数据复制到 send_buffer
	}

	// XSpi_Transfer(handle, send_buf, recv_buf, len)
	// 发送 send_buffer，同时接收到 data（覆盖原 data 内容）
	XSpi_Transfer(&spi_instance, send_buffer, data, bytes_number);
#else
	// 如果没有 AXI SPI 驱动（走自定义的寄存器方式）：
	Xil_Out32((spi_instance.BaseAddr + 0x60), 0x1e6);
	// 向 spi 寄存器写入某个控制值（具体含义与 SPI IP 的寄存器手册相关）

	Xil_Out32((spi_instance.BaseAddr + 0x70), 0x000);
	// 写入另一个控制寄存器（常用于配置读写长度或重置）

	while(cnt < bytes_number) {
		Xil_Out32((spi_instance.BaseAddr + 0x68), data[cnt]);
		// 写数据到发送寄存器（将 data[cnt] 放入 SPI TX 寄存器）

		Xil_Out32((spi_instance.BaseAddr + 0x60), 0x096);
		// 启动一次传输（写启动命令到控制寄存器）

		do {
			usleep(100); // 短延时等待硬件准备
		} while ((Xil_In32((spi_instance.BaseAddr + 0x64)) & 0x4) == 0x0);
		// 轮询状态寄存器，直到某个位（0x4）表示接收就绪

		Xil_Out32((spi_instance.BaseAddr + 0x60), 0x186);
		// 清除/更新控制寄存器（完成一次传输的清理）

		data[cnt] = Xil_In32(spi_instance.BaseAddr + 0x6c);
		// 从接收寄存器读回收到的字节，存回 data[cnt]

		cnt++;
	}
	Xil_Out32((spi_instance.BaseAddr + 0x70), 0x001);
	// 可能是恢复某个控制寄存器到默认

	Xil_Out32((spi_instance.BaseAddr + 0x60), 0x180);
	// 结束/复位控制寄存器（依据 IP 文档）
#endif
#endif
	return SUCCESS;
}

/***************************************************************************//**
 * @brief spi_write_then_read
 *******************************************************************************/
// spi_write_then_read：先写 TX buffer，再读 RX buffer（常用于 SPI 寄存器读写）
int spi_write_then_read(struct spi_device *spi,
			const unsigned char *txbuf, unsigned n_tx,
			unsigned char *rxbuf, unsigned n_rx)
{
	uint8_t buffer[20] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			      0x00, 0x00, 0x00, 0x00
			     };
	// 临时 buffer，大小 20（注意：如果 n_tx + n_rx > 20，会溢出 —— 假设上层不会超过）

	uint8_t byte;

	for(byte = 0; byte < n_tx; byte++) {
		buffer[byte] = (unsigned char)txbuf[byte];
	}
	// 把要发送的 n_tx 字节复制到临时 buffer 的前 n_tx 字节

	spi_read(spi, buffer, n_tx + n_rx);
	// 调用 spi_read（上面那个函数），一次性读写 n_tx + n_rx 字节
	// 注意：对于多数 SPI 控制器，发送多少字节就接收多少字节，所以这里先把 tx 放在 buffer 前面，然后 let spi read 回写 buffer

	for(byte = n_tx; byte < n_tx + n_rx; byte++) {
		rxbuf[byte - n_tx] = buffer[byte];
	}
	// 将接收到的 n_rx 字节从 buffer 中偏移 n_tx 的位置复制到 rxbuf 中

	return SUCCESS;
}

/***************************************************************************//**
 * @brief gpio_init
 *******************************************************************************/
// gpio_init：初始化 GPIO（PS 或 PL）配置指针 / 实例
void gpio_init(uint32_t device_id)
{
#ifdef _XPARAMETERS_PS_H_
	// PS 情况：查找 PS GPIO 的配置并初始化实例
	gpio_config = XGpioPs_LookupConfig(device_id);
	XGpioPs_CfgInitialize(&gpio_instance, gpio_config, gpio_config->BaseAddr);
#else
	// PL 情况：只取配置指针（具体初始化在其他地方或基于寄存器访问）
	gpio_config = XGpio_LookupConfig(device_id);
#endif
}

/***************************************************************************//**
 * @brief gpio_direction
 *******************************************************************************/
// gpio_direction：设置某个 pin 的方向（输入或输出）
// pin: GPIO 引脚编号；direction: 1 表示输出？（代码里假定非零为输出）
void gpio_direction(uint8_t pin, uint8_t direction)
{
#ifdef _XPARAMETERS_PS_H_
	// PS 下使用 XGpioPs 的 API
	XGpioPs_SetDirectionPin(&gpio_instance, pin, direction);
	// 设置引脚方向（1 为输出，0 为输入，取决于 XGpioPs API 定义）

	XGpioPs_SetOutputEnablePin(&gpio_instance, pin, 1);
	// 允许输出（如果配置为输出则需额外打开 output enable）
#else
	// PL 下使用寄存器访问来配置 tri-state（三态/方向寄存器）
	uint32_t config = 0;
	uint32_t tri_reg_addr;

	if (pin >= 32) {
		tri_reg_addr = XGPIO_TRI2_OFFSET; // 第二组 tri 寄存器偏移
		pin -= 32;                        // 计算相对位
	} else
		tri_reg_addr = XGPIO_TRI_OFFSET;  // 第一组 tri 寄存器偏移

	config = Xil_In32((gpio_config->BaseAddress + tri_reg_addr));
	// 读取当前 tri（direction）寄存器的值

	if(direction) {
		config &= ~(1 << pin);  // 如果 direction 非零（输出），把对应位清 0（XGPIO tri 寄存器 0 表示输出）
	} else {
		config |= (1 << pin);   // 如果 direction 为 0（输入），把对应位置 1（三态）
	}
	Xil_Out32((gpio_config->BaseAddress + tri_reg_addr), config);
	// 把新的配置写回 tri 寄存器
#endif
}

/***************************************************************************//**
 * @brief gpio_is_valid
 *******************************************************************************/
// gpio_is_valid：检查 GPIO 编号是否有效（这里只是检查非负）
// 注意：返回类型是 bool（从 stdbool.h 或 platform.h），但这里实现简化为 1/0
bool gpio_is_valid(int number)
{
	if(number >= 0)
		return 1; // true
	else
		return 0; // false
}

/***************************************************************************//**
 * @brief gpio_data
 *******************************************************************************/
// gpio_data：设置某个 pin 的数据（输出高/低）
// pin: 引脚编号，data: 0 或 非 0（表示低/高）
void gpio_data(uint8_t pin, uint8_t data)
{
#ifdef _XPARAMETERS_PS_H_
	// PS 下直接使用写 pin 的 API
	XGpioPs_WritePin(&gpio_instance, pin, data);
#else
	uint32_t config = 0;
	uint32_t data_reg_addr;

	if (pin >= 32) {
		data_reg_addr = XGPIO_DATA2_OFFSET; // 第二组数据寄存器偏移
		pin -= 32;
	} else
		data_reg_addr = XGPIO_DATA_OFFSET;  // 第一组数据寄存器偏移

	config = Xil_In32((gpio_config->BaseAddress + data_reg_addr));
	// 读取当前数据寄存器值

	if(data) {
		config |= (1 << pin);  // 如果 data 非零，置相应位为 1（输出高）
	} else {
		config &= ~(1 << pin); // 否则置位为 0（输出低）
	}
	Xil_Out32((gpio_config->BaseAddress + data_reg_addr), config);
	// 写回数据寄存器
#endif
}

/***************************************************************************//**
 * @brief gpio_set_value
 *******************************************************************************/
// gpio_set_value：上层通用接口，调用 gpio_data
void gpio_set_value(unsigned gpio, int value)
{
	gpio_data(gpio, value);
}

/***************************************************************************//**
 * @brief udelay
 *******************************************************************************/
// udelay：微秒级延时，调用 usleep（已在上面根据平台提供）
void udelay(unsigned long usecs)
{
	usleep(usecs);
}

/***************************************************************************//**
 * @brief mdelay
 *******************************************************************************/
// mdelay：毫秒级延时（通过 usleep 实现，乘以 1000）
void mdelay(unsigned long msecs)
{
	usleep(msecs * 1000);
}

/***************************************************************************//**
 * @brief msleep_interruptible
 *******************************************************************************/
// msleep_interruptible：睡眠函数（可中断），这里简单实现为阻塞的毫秒延时并返回 0（表示未被中断）
unsigned long msleep_interruptible(unsigned int msecs)
{
	mdelay(msecs);

	return 0;
}

/***************************************************************************//**
 * @brief axiadc_init
 *******************************************************************************/
// axiadc_init：初始化 ADC/DAC 子系统接口（主要是调用上层模块的初始化函数）
void axiadc_init(struct ad9361_rf_phy *phy)
{
	adc_init(phy);                          // 初始化 ADC core（将 phy 传入）
	dac_init(phy, DATA_SEL_DDS, 0);         // 初始化 DAC core，使用 DATA_SEL_DDS（即用 DDS 产生数据），第二个参数为通道/选项（0）
}

/***************************************************************************//**
 * @brief axiadc_post_setup
 *******************************************************************************/
// axiadc_post_setup：在 AD9361 等设备 setup 之后的 post-setup 钩子，调用 ad9361_post_setup（可能配置射频寄存器或启动流程）
int axiadc_post_setup(struct ad9361_rf_phy *phy)
{
	return ad9361_post_setup(phy);
}

/***************************************************************************//**
 * @brief axiadc_read
 *******************************************************************************/
// axiadc_read：从 ADC core 读取寄存器（通过 ad9361_phy 的抽象层）
// st: axiadc_state 指针（包含 phy），reg: 寄存器地址（偏移）
unsigned int axiadc_read(struct axiadc_state *st, unsigned long reg)
{
	uint32_t val;

	adc_read(st->phy, reg, &val);
	// 调用 adc_core 的 adc_read，返回到 val（传引用）

	return val; // 返回读到的值
}

/***************************************************************************//**
 * @brief axiadc_write
 *******************************************************************************/
// axiadc_write：向 ADC core 写寄存器
void axiadc_write(struct axiadc_state *st, unsigned reg, unsigned val)
{
	adc_write(st->phy, reg, val);
	// 调用 adc_core 的写函数
}

/***************************************************************************//**
 * @brief axiadc_set_pnsel
 *******************************************************************************/
// axiadc_set_pnsel：设置 ADC 的 PN（Pseudo Noise）序列选择，用于校准/测试时的 PN 发生器选择
int axiadc_set_pnsel(struct axiadc_state *st, int channel, enum adc_pn_sel sel)
{
	unsigned reg;

	uint32_t version = axiadc_read(st, 0x4000);
	// 读取 pcore（IP 核）版本寄存器（地址 0x4000 是版本寄存器常用地址）
	// 根据版本号不同，控制寄存器布局不同，需要不同写法

	if (PCORE_VERSION_MAJOR(version) > 7) {
		// 如果大于版本 7，使用较新的寄存器 ADI_REG_CHAN_CNTRL_3
		reg = axiadc_read(st, ADI_REG_CHAN_CNTRL_3(channel));
		reg &= ~ADI_ADC_PN_SEL(~0);
		// 先清除 PN_SEL 字段（位掩码，ADI_ADC_PN_SEL(~0) 表示掩码位域）
		reg |= ADI_ADC_PN_SEL(sel);
		// 设置 PN_SEL 字段为 sel（sel 是枚举值）

		axiadc_write(st, ADI_REG_CHAN_CNTRL_3(channel), reg);
		// 写回寄存器
	} else {
		// 旧版本的 IP 使用 ADI_REG_CHAN_CNTRL 或不同的位布局
		reg = axiadc_read(st, ADI_REG_CHAN_CNTRL(channel));

		if (sel == ADC_PN_CUSTOM) {
			reg |= ADI_PN_SEL;                 // 选择自定义 PN 序列
		} else if (sel == ADC_PN9) {
			reg &= ~ADI_PN23_TYPE;             // 清除 PN23 类型位
			reg &= ~ADI_PN_SEL;                // 清除 PN_SEL（表示选择 PN9？）
		} else {
			reg |= ADI_PN23_TYPE;              // 置位 PN23 类型位
			reg &= ~ADI_PN_SEL;                // 清除 PN_SEL
		}

		axiadc_write(st, ADI_REG_CHAN_CNTRL(channel), reg);
		// 写回通道控制寄存器
	}

	return 0; // 返回 0 表示成功
}

/***************************************************************************//**
 * @brief axiadc_idelay_set
 *******************************************************************************/
// axiadc_idelay_set：设置 ADC 接口的 IO 延迟（IDELAY），用于对齐高速 LVDS/串行数据
void axiadc_idelay_set(struct axiadc_state *st,
		       unsigned lane, unsigned val)
{
	if (PCORE_VERSION_MAJOR(st->pcore_version) > 8) {
		// 新版本的 pcore 提供了单独的延迟寄存器地址
		axiadc_write(st, ADI_REG_DELAY(lane), val);
	} else {
		// 旧版本需要通过写专门的 DELAY_CNTRL 寄存器并设置地址/数据/选择位来写入
		axiadc_write(st, ADI_REG_DELAY_CNTRL, 0);
		axiadc_write(st, ADI_REG_DELAY_CNTRL,
			     ADI_DELAY_ADDRESS(lane)
			     | ADI_DELAY_WDATA(val)
			     | ADI_DELAY_SEL);
		// 组合寄存器值，把地址、写入数据、选择位一并写入
	}
}
