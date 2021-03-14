// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xnet_holes_detection.h"

extern XNet_holes_detection_Config XNet_holes_detection_ConfigTable[];

XNet_holes_detection_Config *XNet_holes_detection_LookupConfig(u16 DeviceId) {
	XNet_holes_detection_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNET_HOLES_DETECTION_NUM_INSTANCES; Index++) {
		if (XNet_holes_detection_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNet_holes_detection_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNet_holes_detection_Initialize(XNet_holes_detection *InstancePtr, u16 DeviceId) {
	XNet_holes_detection_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNet_holes_detection_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNet_holes_detection_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

