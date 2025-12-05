/*
 * qpsk_tx.c
 *
 * 负责 QPSK 信号的调制和帧数据生成。
 */

// (!!!) 包含所有需要的头文件 (!!!)
#include "qpsk_tx.h"     // 1. 包含我们自己的头文件
#include "dac_core.h"    // 2. 需要 dac_dma_write, dac_dma_read
#include "parameters.h"  // 3. 需要 DAC_DDR_BASEADDR, AXI_DMAC_...
#include <string.h>      // 4. 需要 strlen, memset
#include <xil_io.h>      // 5. 需要 Xil_Out32
#include <xil_cache.h>   // 6. 需要 Xil_DCacheFlushRange
#include <xil_printf.h>  // 7. 需要 xil_printf

// --- 私有常量 (Static Const) ---
// 这两个表现在只属于 qpsk_tx.c
static const uint16_t cos_lut[8] = {
    0x7D0, 0x586, 0x000, 0xA7A, 0x830, 0xA7A, 0x000, 0x586};

static const uint16_t sine_lut[8] = {
    0x000, 0x586, 0x7D0, 0x586, 0x000, 0xA7A, 0x830, 0xA7A};

// --- 公共函数实现 (Implementation of the function from .h) ---

/**
 * @brief 更新 QPSK TX 帧 (实现)
 */
void qpsk_tx_update_frame(struct ad9361_rf_phy *phy, const char *message)
{
    xil_printf("QPSK_TX: Starting frame update with message: '%s'\n", message);

    // --- 1. 停止 AXI DMA ---
    dac_dma_write(AXI_DMAC_REG_CTRL, 0);

    // --- 2. 准备 QPSK 帧 ---

    // 2a. 帧头 (Preamble)
    uint8_t preamble_bits[64] = {
        0b11, 0b00, 0b00, 0b01, 0b01, 0b11, 0b01, 0b01,
        0b00, 0b00, 0b11, 0b11, 0b00, 0b10, 0b01, 0b00,
        0b01, 0b00, 0b00, 0b10, 0b10, 0b01, 0b01, 0b10,
        0b11, 0b00, 0b10, 0b00, 0b11, 0b10, 0b01, 0b01,
        0b00, 0b10, 0b01, 0b00, 0b11, 0b01, 0b11, 0b00,
        0b01, 0b10, 0b10, 0b01, 0b01, 0b11, 0b11, 0b10,
        0b11, 0b10, 0b01, 0b11, 0b00, 0b00, 0b11, 0b11,
        0b10, 0b10, 0b00, 0b10, 0b10, 0b11, 0b11, 0b01
    };

    // 2b. 数据负载 (Payload)
    uint8_t payload_bits[448];
    memset(payload_bits, 0, sizeof(payload_bits)); // 先全部补零

    size_t symbol_index = 0;

    // 使用传入的 'message' 参数
    for (size_t i = 0; i < strlen(message) && symbol_index < 448; i++) {
        char c = message[i];
        for (int bit_pair = 0; bit_pair < 4 && symbol_index < 448; bit_pair++) {
            int bit_high = (c >> (7 - 2*bit_pair)) & 0x01;
            int bit_low = (c >> (6 - 2*bit_pair)) & 0x01;
            uint8_t qpsk_symbol = (bit_high << 1) | bit_low;
            payload_bits[symbol_index++] = qpsk_symbol;
        }
    }
    xil_printf("QPSK_TX: Used %zu symbols, %d symbols zero-padded.\n",
               symbol_index, 448 - (int)symbol_index);

    // 2c. 完整帧 (Frame)
    uint8_t frame_bits[512];
    for(int i=0;i<64;i++) frame_bits[i] = preamble_bits[i];
    for(int i=0;i<448;i++) frame_bits[i+64] = payload_bits[i];

    // --- 3. 调制并写入 DDR ---
    uint32_t sample_idx = 0;
    const uint32_t tx_count = 8;

    for(int sym=0; sym<512; sym++)
    {
        uint8_t bits = frame_bits[sym];
        int phase_deg;
        switch(bits)
        {
            case 0b11: phase_deg = 45; break;
            case 0b01: phase_deg = 135; break;
            case 0b00: phase_deg = 225; break;
            case 0b10: phase_deg = 315; break;
            default:   phase_deg = 0; break;
        }

        uint32_t phase_shift = (phase_deg * tx_count) / 360;

        for(int i=0; i<tx_count; i++)
        {
            uint32_t index = (i + phase_shift) % tx_count;

            int32_t data_i_raw = cos_lut[index] ;
            int32_t data_q_raw = sine_lut[index] ;

            uint32_t data_i = data_i_raw << 20;
            uint32_t data_q = data_q_raw << 4;
            Xil_Out32(DAC_DDR_BASEADDR + sample_idx*4, data_i | data_q);
            sample_idx++;
        }
    }

    // --- 4. 刷新数据缓存 (!!! 关键 !!!) ---
    // (512 符号 * 8 采样/符号 * 4 字节/采样 = 16384 字节)
    Xil_DCacheFlushRange(DAC_DDR_BASEADDR, 16384);

    // --- 5. 重启 AXI DMA ---
    uint32_t length = 16384; // 8 * 2048

    dac_dma_write(AXI_DMAC_REG_CTRL, AXI_DMAC_CTRL_ENABLE);
    dac_dma_write(AXI_DMAC_REG_FLAGS, DMAC_FLAGS_CYCLIC);
    dac_dma_write(AXI_DMAC_REG_SRC_ADDRESS, DAC_DDR_BASEADDR);
    dac_dma_write(AXI_DMAC_REG_SRC_STRIDE, 0x0);
    dac_dma_write(AXI_DMAC_REG_X_LENGTH, length - 1);
    dac_dma_write(AXI_DMAC_REG_Y_LENGTH, 0x0);

    dac_dma_write(AXI_DMAC_REG_START_TRANSFER, 0x1); // 启动!

    xil_printf("QPSK_TX: DMA restarted with new data.\n");
}
