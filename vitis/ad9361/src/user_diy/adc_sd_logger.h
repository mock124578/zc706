/*
 * adc_sd_logger.h
 *
 * 模块功能：
 * 负责 ADC 采集并将其保存到 SD 卡。
 */

#ifndef ADC_SD_LOGGER_H_
#define ADC_SD_LOGGER_H_

#include "ad9361_api.h" // 需要这个来识别 struct ad9361_rf_phy

/**
 * @brief 执行 ADC 采集并保存到 SD 卡
 *
 * @param phy - AD9361 物理层结构体
 * @param base_filename - 保存文件的基础名称 (例如 "user_diy")
 */
void log_adc_data_to_sd(struct ad9361_rf_phy *phy, const char *base_filename);

#endif /* ADC_SD_LOGGER_H_ */
