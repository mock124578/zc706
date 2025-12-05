// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xqpsk_hls_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQpsk_hls_top_CfgInitialize(XQpsk_hls_top *InstancePtr, XQpsk_hls_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQpsk_hls_top_Start(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQpsk_hls_top_IsDone(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQpsk_hls_top_IsIdle(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQpsk_hls_top_IsReady(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQpsk_hls_top_EnableAutoRestart(XQpsk_hls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQpsk_hls_top_DisableAutoRestart(XQpsk_hls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XQpsk_hls_top_Set_ddr_in_buffer_packed(XQpsk_hls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_IN_BUFFER_PACKED_DATA, (u32)(Data));
    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_IN_BUFFER_PACKED_DATA + 4, (u32)(Data >> 32));
}

u64 XQpsk_hls_top_Get_ddr_in_buffer_packed(XQpsk_hls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_IN_BUFFER_PACKED_DATA);
    Data += (u64)XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_IN_BUFFER_PACKED_DATA + 4) << 32;
    return Data;
}

void XQpsk_hls_top_Set_ddr_out_buffer(XQpsk_hls_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_OUT_BUFFER_DATA, (u32)(Data));
    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_OUT_BUFFER_DATA + 4, (u32)(Data >> 32));
}

u64 XQpsk_hls_top_Get_ddr_out_buffer(XQpsk_hls_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_OUT_BUFFER_DATA);
    Data += (u64)XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_DDR_OUT_BUFFER_DATA + 4) << 32;
    return Data;
}

u32 XQpsk_hls_top_Get_out_ser_preamble(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_OUT_SER_PREAMBLE_DATA);
    return Data;
}

u32 XQpsk_hls_top_Get_out_ser_preamble_vld(XQpsk_hls_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_OUT_SER_PREAMBLE_CTRL);
    return Data & 0x1;
}

void XQpsk_hls_top_InterruptGlobalEnable(XQpsk_hls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_GIE, 1);
}

void XQpsk_hls_top_InterruptGlobalDisable(XQpsk_hls_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_GIE, 0);
}

void XQpsk_hls_top_InterruptEnable(XQpsk_hls_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_IER);
    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XQpsk_hls_top_InterruptDisable(XQpsk_hls_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_IER);
    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQpsk_hls_top_InterruptClear(XQpsk_hls_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQpsk_hls_top_WriteReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XQpsk_hls_top_InterruptGetEnabled(XQpsk_hls_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_IER);
}

u32 XQpsk_hls_top_InterruptGetStatus(XQpsk_hls_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQpsk_hls_top_ReadReg(InstancePtr->Control_BaseAddress, XQPSK_HLS_TOP_CONTROL_ADDR_ISR);
}

