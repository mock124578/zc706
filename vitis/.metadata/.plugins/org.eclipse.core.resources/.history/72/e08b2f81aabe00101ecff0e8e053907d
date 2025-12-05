/*
 * qpsk_tx.h
 *
 * 模块功能：
 * 负责 QPSK 信号的调制和帧数据生成。
 * 提供了更新 TX 帧内容的接口。
 */

#ifndef QPSK_TX_H_
#define QPSK_TX_H_

#include "ad9361_api.h" // 需要这个来识别 struct ad9361_rf_phy

/**
 * @brief 更新 QPSK TX 帧
 * * 停止 DMA，用新消息重新生成 QPSK 帧数据，
 * 将数据写入 DAC DDR 内存，然后刷新缓存并重启 DMA。
 *
 * @param phy - AD9361 物理层结构体 (需要用它来访问 dac_dma_write)
 * @param message - 要发送的 ASCII 字符串
 */
void qpsk_tx_update_frame(struct ad9361_rf_phy *phy, const char *message);

#endif /* QPSK_TX_H_ */
