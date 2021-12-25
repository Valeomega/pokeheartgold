#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000154_00000029 ; 000
	scrdef scr_seq_00000154_0000000E ; 001
	scrdef scr_seq_00000154_000001F8 ; 002
	scrdef_end

scr_seq_00000154_0000000E:
	scrcmd_445 16384
	comparevartovalue VAR_TEMP_x4000, 387
	gotoif eq, scr_seq_00000154_00000021
	end

scr_seq_00000154_00000021:
	scrcmd_341 0, 1
	end

scr_seq_00000154_00000029:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_TEMP_x4002, 1
	gotoif ge, scr_seq_00000154_0000014D
	scrcmd_386 VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 0
	gotoif eq, scr_seq_00000154_00000158
	scrcmd_484 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000154_0000006C
	goto scr_seq_00000154_000000EF

scr_seq_00000154_00000066:
	.byte 0x16, 0x00, 0x83, 0x00, 0x00, 0x00
scr_seq_00000154_0000006C:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000154_00000085
	goto scr_seq_00000154_00000142

scr_seq_00000154_0000007F:
	.byte 0x16
	.byte 0x00, 0x6a, 0x00, 0x00, 0x00
scr_seq_00000154_00000085:
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, scr_seq_00000154_0000009E
	goto scr_seq_00000154_00000142

scr_seq_00000154_00000098:
	.byte 0x16, 0x00, 0x51, 0x00, 0x00, 0x00
scr_seq_00000154_0000009E:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000154_000000B7
	goto scr_seq_00000154_000000EF

scr_seq_00000154_000000B1:
	.byte 0x16, 0x00, 0x38, 0x00, 0x00, 0x00
scr_seq_00000154_000000B7:
	comparevartovalue VAR_SPECIAL_x800C, 4
	gotoif ne, scr_seq_00000154_000000D0
	goto scr_seq_00000154_00000142

scr_seq_00000154_000000CA:
	.byte 0x16, 0x00, 0x1f, 0x00, 0x00, 0x00
scr_seq_00000154_000000D0:
	comparevartovalue VAR_SPECIAL_x800C, 5
	gotoif ne, scr_seq_00000154_000000E9
	goto scr_seq_00000154_00000142

scr_seq_00000154_000000E3:
	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
scr_seq_00000154_000000E9:
	goto scr_seq_00000154_00000142

scr_seq_00000154_000000EF:
	msgbox 0
	closemsg
	apply_movement 0, scr_seq_00000154_00000190
	wait_movement
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_00000154_000001B0
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	setvar VAR_TEMP_x4002, 1
	setvar VAR_UNK_40E1, 2
	setvar VAR_UNK_40DC, 0
	clearflag FLAG_UNK_0EB
	setflag FLAG_UNK_22A
	clearflag FLAG_UNK_22C
	setflag FLAG_UNK_22B
	releaseall
	end

scr_seq_00000154_00000142:
	msgbox 1
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000154_0000014D:
	msgbox 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000154_00000158:
	apply_movement 0, scr_seq_00000154_000001B8
	wait_movement
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_00000154_000001D8
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	apply_movement 0, scr_seq_00000154_000001E4
	wait_movement
	releaseall
	end

scr_seq_00000154_0000018E:
	.byte 0x00, 0x00

scr_seq_00000154_00000190:
	.short 71, 1
	.short 13, 1
	.short 72, 1
	.short 2, 2
	.short 71, 1
	.short 15, 1
	.short 72, 1
	.short 254, 0

scr_seq_00000154_000001B0:
	.short 13, 2
	.short 254, 0

scr_seq_00000154_000001B8:
	.short 71, 1
	.short 12, 1
	.short 72, 1
	.short 2, 2
	.short 71, 1
	.short 15, 1
	.short 72, 1
	.short 254, 0

scr_seq_00000154_000001D8:
	.short 63, 1
	.short 12, 4
	.short 254, 0

scr_seq_00000154_000001E4:
	.short 14, 1
	.short 1, 2
	.short 13, 1
	.short 32, 1
	.short 254, 0
scr_seq_00000154_000001F8:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	msgbox 3
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
