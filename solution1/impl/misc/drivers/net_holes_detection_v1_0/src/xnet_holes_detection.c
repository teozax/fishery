// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xnet_holes_detection.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNet_holes_detection_CfgInitialize(XNet_holes_detection *InstancePtr, XNet_holes_detection_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNet_holes_detection_Start(XNet_holes_detection *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XNet_holes_detection_IsDone(XNet_holes_detection *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XNet_holes_detection_IsIdle(XNet_holes_detection *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XNet_holes_detection_IsReady(XNet_holes_detection *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XNet_holes_detection_EnableAutoRestart(XNet_holes_detection *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XNet_holes_detection_DisableAutoRestart(XNet_holes_detection *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XNet_holes_detection_InterruptGlobalEnable(XNet_holes_detection *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_GIE, 1);
}

void XNet_holes_detection_InterruptGlobalDisable(XNet_holes_detection *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_GIE, 0);
}

void XNet_holes_detection_InterruptEnable(XNet_holes_detection *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_IER);
    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XNet_holes_detection_InterruptDisable(XNet_holes_detection *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_IER);
    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XNet_holes_detection_InterruptClear(XNet_holes_detection *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNet_holes_detection_WriteReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XNet_holes_detection_InterruptGetEnabled(XNet_holes_detection *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_IER);
}

u32 XNet_holes_detection_InterruptGetStatus(XNet_holes_detection *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XNet_holes_detection_ReadReg(InstancePtr->Control_bus_BaseAddress, XNET_HOLES_DETECTION_CONTROL_BUS_ADDR_ISR);
}

