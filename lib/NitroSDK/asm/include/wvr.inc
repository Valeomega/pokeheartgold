#include <nitro/fs/overlay.h>
#pragma once
.public WVR_StartUpAsync
.public WVR_TerminateAsync
.public OS_GetLockID
.public OS_DisableInterrupts
.public OS_RestoreInterrupts
.public OSi_TryLockVram
.public OSi_UnlockVram
.public PXI_Init
.public PXI_SetFifoRecvCallback
.public PXI_IsCallbackReady
.public PXI_SendWordByFifo