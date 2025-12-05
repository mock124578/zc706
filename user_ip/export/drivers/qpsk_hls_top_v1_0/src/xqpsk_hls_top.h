// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XQPSK_HLS_TOP_H
#define XQPSK_HLS_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xqpsk_hls_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XQpsk_hls_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQpsk_hls_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQpsk_hls_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQpsk_hls_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQpsk_hls_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQpsk_hls_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XQpsk_hls_top_Initialize(XQpsk_hls_top *InstancePtr, u16 DeviceId);
XQpsk_hls_top_Config* XQpsk_hls_top_LookupConfig(u16 DeviceId);
int XQpsk_hls_top_CfgInitialize(XQpsk_hls_top *InstancePtr, XQpsk_hls_top_Config *ConfigPtr);
#else
int XQpsk_hls_top_Initialize(XQpsk_hls_top *InstancePtr, const char* InstanceName);
int XQpsk_hls_top_Release(XQpsk_hls_top *InstancePtr);
#endif

void XQpsk_hls_top_Start(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_IsDone(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_IsIdle(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_IsReady(XQpsk_hls_top *InstancePtr);
void XQpsk_hls_top_EnableAutoRestart(XQpsk_hls_top *InstancePtr);
void XQpsk_hls_top_DisableAutoRestart(XQpsk_hls_top *InstancePtr);

void XQpsk_hls_top_Set_ddr_in_buffer_packed(XQpsk_hls_top *InstancePtr, u64 Data);
u64 XQpsk_hls_top_Get_ddr_in_buffer_packed(XQpsk_hls_top *InstancePtr);
void XQpsk_hls_top_Set_ddr_out_buffer(XQpsk_hls_top *InstancePtr, u64 Data);
u64 XQpsk_hls_top_Get_ddr_out_buffer(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_Get_out_ser_preamble(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_Get_out_ser_preamble_vld(XQpsk_hls_top *InstancePtr);

void XQpsk_hls_top_InterruptGlobalEnable(XQpsk_hls_top *InstancePtr);
void XQpsk_hls_top_InterruptGlobalDisable(XQpsk_hls_top *InstancePtr);
void XQpsk_hls_top_InterruptEnable(XQpsk_hls_top *InstancePtr, u32 Mask);
void XQpsk_hls_top_InterruptDisable(XQpsk_hls_top *InstancePtr, u32 Mask);
void XQpsk_hls_top_InterruptClear(XQpsk_hls_top *InstancePtr, u32 Mask);
u32 XQpsk_hls_top_InterruptGetEnabled(XQpsk_hls_top *InstancePtr);
u32 XQpsk_hls_top_InterruptGetStatus(XQpsk_hls_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
