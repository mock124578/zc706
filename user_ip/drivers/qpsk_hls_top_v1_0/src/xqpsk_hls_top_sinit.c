// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xqpsk_hls_top.h"

extern XQpsk_hls_top_Config XQpsk_hls_top_ConfigTable[];

XQpsk_hls_top_Config *XQpsk_hls_top_LookupConfig(u16 DeviceId) {
	XQpsk_hls_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQPSK_HLS_TOP_NUM_INSTANCES; Index++) {
		if (XQpsk_hls_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQpsk_hls_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQpsk_hls_top_Initialize(XQpsk_hls_top *InstancePtr, u16 DeviceId) {
	XQpsk_hls_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQpsk_hls_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQpsk_hls_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

