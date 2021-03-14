// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XNET_HOLES_DETECTION_H
#define XNET_HOLES_DETECTION_H

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
#include "xnet_holes_detection_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XNet_holes_detection_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XNet_holes_detection;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNet_holes_detection_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNet_holes_detection_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNet_holes_detection_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNet_holes_detection_ReadReg(BaseAddress, RegOffset) \
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
int XNet_holes_detection_Initialize(XNet_holes_detection *InstancePtr, u16 DeviceId);
XNet_holes_detection_Config* XNet_holes_detection_LookupConfig(u16 DeviceId);
int XNet_holes_detection_CfgInitialize(XNet_holes_detection *InstancePtr, XNet_holes_detection_Config *ConfigPtr);
#else
int XNet_holes_detection_Initialize(XNet_holes_detection *InstancePtr, const char* InstanceName);
int XNet_holes_detection_Release(XNet_holes_detection *InstancePtr);
#endif

void XNet_holes_detection_Start(XNet_holes_detection *InstancePtr);
u32 XNet_holes_detection_IsDone(XNet_holes_detection *InstancePtr);
u32 XNet_holes_detection_IsIdle(XNet_holes_detection *InstancePtr);
u32 XNet_holes_detection_IsReady(XNet_holes_detection *InstancePtr);
void XNet_holes_detection_EnableAutoRestart(XNet_holes_detection *InstancePtr);
void XNet_holes_detection_DisableAutoRestart(XNet_holes_detection *InstancePtr);


void XNet_holes_detection_InterruptGlobalEnable(XNet_holes_detection *InstancePtr);
void XNet_holes_detection_InterruptGlobalDisable(XNet_holes_detection *InstancePtr);
void XNet_holes_detection_InterruptEnable(XNet_holes_detection *InstancePtr, u32 Mask);
void XNet_holes_detection_InterruptDisable(XNet_holes_detection *InstancePtr, u32 Mask);
void XNet_holes_detection_InterruptClear(XNet_holes_detection *InstancePtr, u32 Mask);
u32 XNet_holes_detection_InterruptGetEnabled(XNet_holes_detection *InstancePtr);
u32 XNet_holes_detection_InterruptGetStatus(XNet_holes_detection *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
