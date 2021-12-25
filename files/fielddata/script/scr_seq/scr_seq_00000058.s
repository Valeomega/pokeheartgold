#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000058_00000057 ; 000
	scrdef scr_seq_00000058_00000040 ; 001
	scrdef scr_seq_00000058_0000000E ; 002
	scrdef_end

scr_seq_00000058_0000000E:
	checkflag FLAG_UNK_AB8
	gotoif eq, scr_seq_00000058_0000003A
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 5
	gotoif ne, scr_seq_00000058_00000034
	clearflag FLAG_UNK_30A
	goto scr_seq_00000058_00000038

scr_seq_00000058_00000034:
	setflag FLAG_UNK_30A
scr_seq_00000058_00000038:
	end

scr_seq_00000058_0000003A:
	setflag FLAG_UNK_30A
	end

scr_seq_00000058_00000040:
	checkflag FLAG_UNK_0A4
	gotoif eq, scr_seq_00000058_0000004D
	end

scr_seq_00000058_0000004D:
	setflag FLAG_UNK_30A
	hide_person 3
	end

scr_seq_00000058_00000057:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_076 131, 0
	scrcmd_077
	setflag FLAG_UNK_0A4
	scrcmd_589 131, 20, 0
	clearflag FLAG_UNK_0A4
	scrcmd_220 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000058_0000008F
	setflag FLAG_UNK_AB8
	releaseall
	end

scr_seq_00000058_0000008F:
	scrcmd_219
	releaseall
	end
	.balign 4, 0
