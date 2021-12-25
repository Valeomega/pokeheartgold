#include "constants/scrcmd.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_00000842_000000CE ; 000
	scrdef scr_seq_00000842_000002E0 ; 001
	scrdef scr_seq_00000842_0000034F ; 002
	scrdef scr_seq_00000842_00000D80 ; 003
	scrdef scr_seq_00000842_000016A8 ; 004
	scrdef scr_seq_00000842_000016BC ; 005
	scrdef scr_seq_00000842_0000004A ; 006
	scrdef scr_seq_00000842_00000ED4 ; 007
	scrdef scr_seq_00000842_00000EEC ; 008
	scrdef scr_seq_00000842_00000095 ; 009
	scrdef scr_seq_00000842_00001054 ; 010
	scrdef scr_seq_00000842_000012A0 ; 011
	scrdef scr_seq_00000842_00001510 ; 012
	scrdef scr_seq_00000842_00001708 ; 013
	scrdef scr_seq_00000842_0000171D ; 014
	scrdef scr_seq_00000842_00001734 ; 015
	scrdef scr_seq_00000842_000010BC ; 016
	scrdef scr_seq_00000842_000010D4 ; 017
	scrdef_end

scr_seq_00000842_0000004A:
	scrcmd_144 16416
	checkflag FLAG_UNK_189
	gotoif lt, scr_seq_00000842_0000005F
	clearflag FLAG_UNK_189
	end

scr_seq_00000842_0000005F:
	setvar VAR_TEMP_x4007, 0
	scrcmd_294 2, VAR_TEMP_x4002
	comparevartovalue VAR_TEMP_x4002, 0
	gotoif eq, scr_seq_00000842_00000089
	scrcmd_484 VAR_TEMP_x4000
	comparevartovalue VAR_TEMP_x4000, 2
	gotoif eq, scr_seq_00000842_0000008F
scr_seq_00000842_00000089:
	setflag FLAG_UNK_27E
	end

scr_seq_00000842_0000008F:
	clearflag FLAG_UNK_27E
	end

scr_seq_00000842_00000095:
	comparevartovalue VAR_UNK_4072, 1
	gotoif eq, scr_seq_00000842_000000A4
	end

scr_seq_00000842_000000A4:
	clearflag FLAG_UNK_1A2
	scrcmd_100 4
	clearflag FLAG_UNK_1A1
	scrcmd_100 3
	show_person_at 4, 686, 0, 396, 2
	show_person_at 3, 685, 0, 396, 1
	end

scr_seq_00000842_000000CE:
	play_se SEQ_SE_DP_SELECT
	lockall
	msgbox 13
	closemsg
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000842_000000F8
	apply_movement 0, scr_seq_00000842_0000024C
	goto scr_seq_00000842_00000128

scr_seq_00000842_000000F8:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_00000113
	apply_movement 0, scr_seq_00000842_00000244
	goto scr_seq_00000842_00000128

scr_seq_00000842_00000113:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000842_00000128
	apply_movement 0, scr_seq_00000842_00000254
scr_seq_00000842_00000128:
	wait_movement
	msgbox 14
	closemsg
	checkflag FLAG_GOT_STARTER
	gotoif lt, scr_seq_00000842_00000166
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_00000153
	goto scr_seq_00000842_000001BA

scr_seq_00000842_0000014D:
	.byte 0x16, 0x00, 0x13
	.byte 0x00, 0x00, 0x00
scr_seq_00000842_00000153:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000842_00000166
	goto scr_seq_00000842_00000192

scr_seq_00000842_00000166:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_0000017F
	goto scr_seq_00000842_00000202

scr_seq_00000842_00000179:
	.byte 0x16, 0x00, 0x13, 0x00, 0x00, 0x00
scr_seq_00000842_0000017F:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000842_00000192
	goto scr_seq_00000842_000001E2

scr_seq_00000842_00000192:
	apply_movement 0, scr_seq_00000842_00000264
	apply_movement 253, scr_seq_00000842_00000224
	apply_movement 255, scr_seq_00000842_00000288
	wait_movement
	apply_movement 0, scr_seq_00000842_00000274
	wait_movement
	releaseall
	end

scr_seq_00000842_000001BA:
	apply_movement 0, scr_seq_00000842_000002A0
	apply_movement 253, scr_seq_00000842_00000234
	apply_movement 255, scr_seq_00000842_000002B8
	wait_movement
	apply_movement 0, scr_seq_00000842_00000274
	wait_movement
	releaseall
	end

scr_seq_00000842_000001E2:
	apply_movement 0, scr_seq_00000842_00000264
	apply_movement 255, scr_seq_00000842_00000288
	wait_movement
	apply_movement 0, scr_seq_00000842_00000274
	wait_movement
	releaseall
	end

scr_seq_00000842_00000202:
	apply_movement 0, scr_seq_00000842_000002A0
	apply_movement 255, scr_seq_00000842_000002B8
	wait_movement
	apply_movement 0, scr_seq_00000842_00000274
	wait_movement
	releaseall
	end

scr_seq_00000842_00000222:
	.byte 0x00, 0x00

scr_seq_00000842_00000224:
	.short 71, 1
	.short 77, 4
	.short 72, 1
	.short 254, 0

scr_seq_00000842_00000234:
	.short 71, 1
	.short 77, 6
	.short 72, 1
	.short 254, 0

scr_seq_00000842_00000244:
	.short 32, 1
	.short 254, 0

scr_seq_00000842_0000024C:
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00000254:
	.short 34, 1
	.short 254, 0
	.byte 0x23, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00

scr_seq_00000842_00000264:
	.short 78, 1
	.short 1, 1
	.short 77, 2
	.short 254, 0

scr_seq_00000842_00000274:
	.short 0, 1
	.short 12, 2
	.short 3, 1
	.short 15, 1
	.short 254, 0

scr_seq_00000842_00000288:
	.short 0, 1
	.short 71, 1
	.short 77, 2
	.short 57, 1
	.short 72, 1
	.short 254, 0

scr_seq_00000842_000002A0:
	.short 76, 1
	.short 2, 1
	.short 78, 1
	.short 1, 1
	.short 77, 3
	.short 254, 0

scr_seq_00000842_000002B8:
	.short 3, 1
	.short 71, 1
	.short 78, 1
	.short 72, 1
	.short 0, 1
	.short 71, 1
	.short 77, 3
	.short 57, 1
	.short 72, 1
	.short 254, 0
scr_seq_00000842_000002E0:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	comparevartovalue VAR_UNK_4072, 0
	gotoif ne, scr_seq_00000842_000002FE
	msgbox 9
	goto scr_seq_00000842_00000347

scr_seq_00000842_000002FE:
	comparevartovalue VAR_UNK_4072, 1
	gotoif ne, scr_seq_00000842_00000314
	msgbox 5
	goto scr_seq_00000842_00000347

scr_seq_00000842_00000314:
	comparevartovalue VAR_UNK_4072, 2
	gotoif ne, scr_seq_00000842_0000032A
	msgbox 5
	goto scr_seq_00000842_00000347

scr_seq_00000842_0000032A:
	comparevartovalue VAR_UNK_407E, 1
	gotoif ne, scr_seq_00000842_00000340
	msgbox 0
	goto scr_seq_00000842_00000347

scr_seq_00000842_00000340:
	scrcmd_190 0
	scrcmd_132 6, 7
scr_seq_00000842_00000347:
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_0000034F:
	scrcmd_609
	lockall
	checkflag FLAG_UNK_09C
	gotoif eq, scr_seq_00000842_0000075A
	apply_movement 1, scr_seq_00000842_000009B8
	wait_movement
	scrcmd_190 0
	scrcmd_132 1, 2
	wait 20, VAR_SPECIAL_x800C
	closemsg
	apply_movement 255, scr_seq_00000842_000009D4
	wait_movement
	comparevartovalue VAR_UNK_4072, 2
	gotoif eq, scr_seq_00000842_0000054E
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_000003AF
	apply_movement 1, scr_seq_00000842_00000A1C
	goto scr_seq_00000842_0000044B

scr_seq_00000842_000003AF:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_000003CA
	apply_movement 1, scr_seq_00000842_00000A2C
	goto scr_seq_00000842_0000044B

scr_seq_00000842_000003CA:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_000003E5
	apply_movement 1, scr_seq_00000842_00000A3C
	goto scr_seq_00000842_0000044B

scr_seq_00000842_000003E5:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_00000400
	apply_movement 1, scr_seq_00000842_00000A4C
	goto scr_seq_00000842_0000044B

scr_seq_00000842_00000400:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_0000041B
	apply_movement 1, scr_seq_00000842_00000A54
	goto scr_seq_00000842_0000044B

scr_seq_00000842_0000041B:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_00000436
	apply_movement 1, scr_seq_00000842_00000A64
	goto scr_seq_00000842_0000044B

scr_seq_00000842_00000436:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_0000044B
	apply_movement 1, scr_seq_00000842_00000A74
scr_seq_00000842_0000044B:
	wait_movement
	msgbox 3
	closemsg
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_00000475
	apply_movement 1, scr_seq_00000842_00000AEC
	apply_movement 255, scr_seq_00000842_00000BD4
	goto scr_seq_00000842_00000541

scr_seq_00000842_00000475:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_00000498
	apply_movement 1, scr_seq_00000842_00000B00
	apply_movement 255, scr_seq_00000842_00000BE4
	goto scr_seq_00000842_00000541

scr_seq_00000842_00000498:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_000004BB
	apply_movement 1, scr_seq_00000842_00000B14
	apply_movement 255, scr_seq_00000842_00000BF4
	goto scr_seq_00000842_00000541

scr_seq_00000842_000004BB:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_000004DE
	apply_movement 1, scr_seq_00000842_00000B28
	apply_movement 255, scr_seq_00000842_00000C04
	goto scr_seq_00000842_00000541

scr_seq_00000842_000004DE:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_00000501
	apply_movement 1, scr_seq_00000842_00000B34
	apply_movement 255, scr_seq_00000842_00000C0C
	goto scr_seq_00000842_00000541

scr_seq_00000842_00000501:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_00000524
	apply_movement 1, scr_seq_00000842_00000B48
	apply_movement 255, scr_seq_00000842_00000C1C
	goto scr_seq_00000842_00000541

scr_seq_00000842_00000524:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_00000541
	apply_movement 1, scr_seq_00000842_00000B58
	apply_movement 255, scr_seq_00000842_00000C2C
scr_seq_00000842_00000541:
	wait_movement
	msgbox 4
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_0000054E:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_00000577
	apply_movement 255, scr_seq_00000842_000009E8
	apply_movement 1, scr_seq_00000842_00000A84
	goto scr_seq_00000842_00000643

scr_seq_00000842_00000577:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_0000059A
	apply_movement 255, scr_seq_00000842_000009E8
	apply_movement 1, scr_seq_00000842_00000A90
	goto scr_seq_00000842_00000643

scr_seq_00000842_0000059A:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_000005BD
	apply_movement 255, scr_seq_00000842_000009E8
	apply_movement 1, scr_seq_00000842_00000A9C
	goto scr_seq_00000842_00000643

scr_seq_00000842_000005BD:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_000005E0
	apply_movement 255, scr_seq_00000842_000009DC
	apply_movement 1, scr_seq_00000842_00000AA8
	goto scr_seq_00000842_00000643

scr_seq_00000842_000005E0:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_00000603
	apply_movement 255, scr_seq_00000842_000009DC
	apply_movement 1, scr_seq_00000842_00000ABC
	goto scr_seq_00000842_00000643

scr_seq_00000842_00000603:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_00000626
	apply_movement 255, scr_seq_00000842_000009DC
	apply_movement 1, scr_seq_00000842_00000AC8
	goto scr_seq_00000842_00000643

scr_seq_00000842_00000626:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_00000643
	apply_movement 255, scr_seq_00000842_000009DC
	apply_movement 1, scr_seq_00000842_00000AD4
scr_seq_00000842_00000643:
	wait_movement
	msgbox 10
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_00000677
	apply_movement 1, scr_seq_00000842_00000B68
	apply_movement 255, scr_seq_00000842_00000C3C
	goto scr_seq_00000842_00000743

scr_seq_00000842_00000677:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_0000069A
	apply_movement 1, scr_seq_00000842_00000B78
	apply_movement 255, scr_seq_00000842_00000C48
	goto scr_seq_00000842_00000743

scr_seq_00000842_0000069A:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_000006BD
	apply_movement 1, scr_seq_00000842_00000B88
	apply_movement 255, scr_seq_00000842_00000C54
	goto scr_seq_00000842_00000743

scr_seq_00000842_000006BD:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_000006E0
	apply_movement 1, scr_seq_00000842_00000B94
	apply_movement 255, scr_seq_00000842_00000C60
	goto scr_seq_00000842_00000743

scr_seq_00000842_000006E0:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_00000703
	apply_movement 1, scr_seq_00000842_00000BA8
	apply_movement 255, scr_seq_00000842_00000C74
	goto scr_seq_00000842_00000743

scr_seq_00000842_00000703:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_00000726
	apply_movement 1, scr_seq_00000842_00000BB4
	apply_movement 255, scr_seq_00000842_00000C80
	goto scr_seq_00000842_00000743

scr_seq_00000842_00000726:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_00000743
	apply_movement 1, scr_seq_00000842_00000BC4
	apply_movement 255, scr_seq_00000842_00000C8C
scr_seq_00000842_00000743:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	msgbox 11
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_0000075A:
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	scrcmd_100 5
	show_person_at 5, 684, 0, 393, 1
	apply_movement 5, scr_seq_00000842_00000D08
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	msgbox 17
	closemsg
	apply_movement 255, scr_seq_00000842_000009C8
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_000007C6
	apply_movement 5, scr_seq_00000842_00000C98
	apply_movement 255, scr_seq_00000842_000009FC
	goto scr_seq_00000842_00000892

scr_seq_00000842_000007C6:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_000007E9
	apply_movement 5, scr_seq_00000842_00000CA8
	apply_movement 255, scr_seq_00000842_00000A0C
	goto scr_seq_00000842_00000892

scr_seq_00000842_000007E9:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_0000080C
	apply_movement 5, scr_seq_00000842_00000CB8
	apply_movement 255, scr_seq_00000842_00000A0C
	goto scr_seq_00000842_00000892

scr_seq_00000842_0000080C:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_0000082F
	apply_movement 5, scr_seq_00000842_00000CC8
	apply_movement 255, scr_seq_00000842_00000A0C
	goto scr_seq_00000842_00000892

scr_seq_00000842_0000082F:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_00000852
	apply_movement 5, scr_seq_00000842_00000CD8
	apply_movement 255, scr_seq_00000842_00000A0C
	goto scr_seq_00000842_00000892

scr_seq_00000842_00000852:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_00000875
	apply_movement 5, scr_seq_00000842_00000CE8
	apply_movement 255, scr_seq_00000842_000009F4
	goto scr_seq_00000842_00000892

scr_seq_00000842_00000875:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_00000892
	apply_movement 5, scr_seq_00000842_00000CF8
	apply_movement 255, scr_seq_00000842_000009F4
scr_seq_00000842_00000892:
	wait_movement
	msgbox 18
	scrcmd_146 1
	scrcmd_190 0
	msgbox 19
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	msgbox 20
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	comparevartovalue VAR_TEMP_x4001, 396
	gotoif ne, scr_seq_00000842_000008D5
	apply_movement 255, scr_seq_00000842_000009D4
	apply_movement 5, scr_seq_00000842_00000D18
	goto scr_seq_00000842_00000981

scr_seq_00000842_000008D5:
	comparevartovalue VAR_TEMP_x4001, 397
	gotoif ne, scr_seq_00000842_000008F8
	apply_movement 255, scr_seq_00000842_000009D4
	apply_movement 5, scr_seq_00000842_00000D24
	goto scr_seq_00000842_00000981

scr_seq_00000842_000008F8:
	comparevartovalue VAR_TEMP_x4001, 398
	gotoif ne, scr_seq_00000842_0000091B
	apply_movement 255, scr_seq_00000842_000009F4
	apply_movement 5, scr_seq_00000842_00000D30
	goto scr_seq_00000842_00000981

scr_seq_00000842_0000091B:
	comparevartovalue VAR_TEMP_x4001, 399
	gotoif ne, scr_seq_00000842_00000936
	apply_movement 5, scr_seq_00000842_00000D40
	goto scr_seq_00000842_00000981

scr_seq_00000842_00000936:
	comparevartovalue VAR_TEMP_x4001, 400
	gotoif ne, scr_seq_00000842_00000951
	apply_movement 5, scr_seq_00000842_00000D50
	goto scr_seq_00000842_00000981

scr_seq_00000842_00000951:
	comparevartovalue VAR_TEMP_x4001, 401
	gotoif ne, scr_seq_00000842_0000096C
	apply_movement 5, scr_seq_00000842_00000D60
	goto scr_seq_00000842_00000981

scr_seq_00000842_0000096C:
	comparevartovalue VAR_TEMP_x4001, 402
	gotoif ne, scr_seq_00000842_00000981
	apply_movement 5, scr_seq_00000842_00000D70
scr_seq_00000842_00000981:
	wait_movement
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement 5, scr_seq_00000842_00000D10
	wait_movement
	hide_person 5
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_UNK_407E, 1
	releaseall
	end

scr_seq_00000842_000009B5:
	.byte 0x00, 0x00, 0x00

scr_seq_00000842_000009B8:
	.short 34, 1
	.short 75, 1
	.short 63, 1
	.short 254, 0

scr_seq_00000842_000009C8:
	.short 75, 1
	.short 63, 1
	.short 254, 0

scr_seq_00000842_000009D4:
	.short 3, 1
	.short 254, 0

scr_seq_00000842_000009DC:
	.short 66, 2
	.short 32, 1
	.short 254, 0

scr_seq_00000842_000009E8:
	.short 66, 2
	.short 33, 1
	.short 254, 0

scr_seq_00000842_000009F4:
	.short 0, 1
	.short 254, 0

scr_seq_00000842_000009FC:
	.short 3, 1
	.short 66, 2
	.short 1, 1
	.short 254, 0

scr_seq_00000842_00000A0C:
	.short 3, 1
	.short 66, 2
	.short 0, 1
	.short 254, 0

scr_seq_00000842_00000A1C:
	.short 14, 3
	.short 12, 3
	.short 14, 3
	.short 254, 0

scr_seq_00000842_00000A2C:
	.short 14, 3
	.short 12, 2
	.short 14, 3
	.short 254, 0

scr_seq_00000842_00000A3C:
	.short 14, 3
	.short 12, 1
	.short 14, 3
	.short 254, 0

scr_seq_00000842_00000A4C:
	.short 14, 6
	.short 254, 0

scr_seq_00000842_00000A54:
	.short 14, 3
	.short 13, 1
	.short 14, 3
	.short 254, 0

scr_seq_00000842_00000A64:
	.short 14, 6
	.short 13, 2
	.short 2, 1
	.short 254, 0

scr_seq_00000842_00000A74:
	.short 14, 6
	.short 13, 3
	.short 2, 1
	.short 254, 0

scr_seq_00000842_00000A84:
	.short 14, 7
	.short 12, 2
	.short 254, 0

scr_seq_00000842_00000A90:
	.short 14, 7
	.short 12, 1
	.short 254, 0

scr_seq_00000842_00000A9C:
	.short 14, 7
	.short 32, 1
	.short 254, 0

scr_seq_00000842_00000AA8:
	.short 14, 3
	.short 12, 1
	.short 14, 4
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00000ABC:
	.short 14, 7
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00000AC8:
	.short 14, 7
	.short 13, 1
	.short 254, 0

scr_seq_00000842_00000AD4:
	.short 14, 7
	.short 13, 2
	.short 254, 0
	.byte 0x0f, 0x00, 0x06, 0x00, 0x22, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00

scr_seq_00000842_00000AEC:
	.short 15, 3
	.short 13, 3
	.short 15, 3
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B00:
	.short 15, 3
	.short 13, 2
	.short 15, 3
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B14:
	.short 15, 3
	.short 13, 1
	.short 15, 3
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B28:
	.short 15, 6
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B34:
	.short 15, 3
	.short 12, 1
	.short 15, 3
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B48:
	.short 12, 2
	.short 15, 6
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B58:
	.short 12, 3
	.short 15, 6
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B68:
	.short 13, 2
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B78:
	.short 13, 1
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B88:
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000B94:
	.short 15, 3
	.short 13, 1
	.short 15, 4
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000BA8:
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000BB4:
	.short 12, 1
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000BC4:
	.short 12, 2
	.short 15, 7
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000BD4:
	.short 15, 4
	.short 13, 3
	.short 15, 2
	.short 254, 0

scr_seq_00000842_00000BE4:
	.short 15, 4
	.short 13, 2
	.short 15, 2
	.short 254, 0

scr_seq_00000842_00000BF4:
	.short 15, 4
	.short 13, 1
	.short 15, 2
	.short 254, 0

scr_seq_00000842_00000C04:
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C0C:
	.short 15, 4
	.short 12, 1
	.short 15, 2
	.short 254, 0

scr_seq_00000842_00000C1C:
	.short 15, 1
	.short 12, 2
	.short 15, 5
	.short 254, 0

scr_seq_00000842_00000C2C:
	.short 15, 1
	.short 12, 3
	.short 15, 5
	.short 254, 0

scr_seq_00000842_00000C3C:
	.short 13, 3
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C48:
	.short 13, 2
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C54:
	.short 13, 1
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C60:
	.short 12, 1
	.short 15, 3
	.short 13, 1
	.short 15, 3
	.short 254, 0

scr_seq_00000842_00000C74:
	.short 12, 1
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C80:
	.short 12, 2
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C8C:
	.short 12, 3
	.short 15, 6
	.short 254, 0

scr_seq_00000842_00000C98:
	.short 13, 3
	.short 14, 8
	.short 32, 1
	.short 254, 0

scr_seq_00000842_00000CA8:
	.short 13, 2
	.short 14, 8
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00000CB8:
	.short 13, 2
	.short 14, 8
	.short 13, 1
	.short 254, 0

scr_seq_00000842_00000CC8:
	.short 13, 2
	.short 14, 8
	.short 13, 2
	.short 254, 0

scr_seq_00000842_00000CD8:
	.short 13, 2
	.short 14, 8
	.short 13, 3
	.short 254, 0

scr_seq_00000842_00000CE8:
	.short 13, 2
	.short 14, 8
	.short 13, 4
	.short 254, 0

scr_seq_00000842_00000CF8:
	.short 13, 2
	.short 14, 8
	.short 13, 5
	.short 254, 0

scr_seq_00000842_00000D08:
	.short 13, 1
	.short 254, 0

scr_seq_00000842_00000D10:
	.short 12, 1
	.short 254, 0

scr_seq_00000842_00000D18:
	.short 15, 8
	.short 12, 3
	.short 254, 0

scr_seq_00000842_00000D24:
	.short 15, 8
	.short 12, 2
	.short 254, 0

scr_seq_00000842_00000D30:
	.short 12, 1
	.short 15, 8
	.short 12, 2
	.short 254, 0

scr_seq_00000842_00000D40:
	.short 12, 2
	.short 15, 8
	.short 12, 2
	.short 254, 0

scr_seq_00000842_00000D50:
	.short 12, 2
	.short 15, 8
	.short 12, 3
	.short 254, 0

scr_seq_00000842_00000D60:
	.short 12, 2
	.short 15, 8
	.short 12, 4
	.short 254, 0

scr_seq_00000842_00000D70:
	.short 12, 5
	.short 15, 8
	.short 12, 2
	.short 254, 0
scr_seq_00000842_00000D80:
	scrcmd_609
	lockall
	scrcmd_099 3
	apply_movement 3, scr_seq_00000842_00000E08
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_UNK_1A2
	scrcmd_100 4
	wait_se SEQ_SE_DP_KAIDAN2
	callstd 2029
	apply_movement 4, scr_seq_00000842_00000EA4
	wait_movement
	apply_movement 3, scr_seq_00000842_00000E38
	wait_movement
	apply_movement 255, scr_seq_00000842_00000E9C
	apply_movement 4, scr_seq_00000842_00000EB8
	wait_movement
	apply_movement 3, scr_seq_00000842_00000E60
	wait_movement
	apply_movement 4, scr_seq_00000842_00000EC0
	apply_movement 3, scr_seq_00000842_00000E68
	wait_movement
	callstd 2030
	setvar VAR_UNK_4106, 2
	hide_person 3
	hide_person 4
	setflag FLAG_UNK_1A1
	setflag FLAG_UNK_1A2
	releaseall
	end

scr_seq_00000842_00000E06:
	.byte 0x00, 0x00

scr_seq_00000842_00000E08:
	.short 66, 1
	.short 16, 8
	.short 71, 1
	.short 53, 1
	.short 72, 1
	.short 3, 5
	.short 0, 5
	.short 2, 5
	.short 0, 5
	.short 12, 1
	.short 66, 1
	.short 254, 0

scr_seq_00000842_00000E38:
	.short 2, 1
	.short 75, 1
	.short 36, 4
	.short 1, 2
	.short 3, 2
	.short 0, 2
	.short 2, 2
	.short 38, 4
	.short 18, 6
	.short 254, 0

scr_seq_00000842_00000E60:
	.short 50, 4
	.short 254, 0

scr_seq_00000842_00000E68:
	.short 2, 1
	.short 14, 1
	.short 1, 1
	.short 13, 4
	.short 2, 1
	.short 14, 2
	.short 254, 0
	.byte 0x01, 0x00, 0x02, 0x00, 0x4b, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x06, 0x00, 0xfe, 0x00, 0x00, 0x00

scr_seq_00000842_00000E9C:
	.short 2, 4
	.short 254, 0

scr_seq_00000842_00000EA4:
	.short 65, 1
	.short 13, 6
	.short 3, 1
	.short 75, 1
	.short 254, 0

scr_seq_00000842_00000EB8:
	.short 39, 4
	.short 254, 0

scr_seq_00000842_00000EC0:
	.short 1, 1
	.short 13, 4
	.short 2, 1
	.short 14, 2
	.short 254, 0
scr_seq_00000842_00000ED4:
	scrcmd_190 0
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 35, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000842_00000EEC:
	scrcmd_609
	lockall
	callstd 2029
	apply_movement 4, scr_seq_00000842_00000F84
	apply_movement 3, scr_seq_00000842_00000FBC
	wait_movement
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_00000842_00000FE8
	apply_movement 4, scr_seq_00000842_00000FF4
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_190 0
	scrcmd_845 1, 0
	scrcmd_132 15, 16
	closemsg
	apply_movement 4, scr_seq_00000842_00001000
	apply_movement 3, scr_seq_00000842_00001014
	apply_movement 255, scr_seq_00000842_00001038
	wait_movement
	apply_movement 4, scr_seq_00000842_00001044
	apply_movement 3, scr_seq_00000842_0000104C
	wait_movement
	hide_person 3
	hide_person 4
	setflag FLAG_UNK_1A1
	setflag FLAG_UNK_1A2
	callstd 2030
	setvar VAR_UNK_4072, 2
	releaseall
	end


scr_seq_00000842_00000F84:
	.short 62, 4
	.short 62, 2
	.short 37, 1
	.short 62, 2
	.short 39, 1
	.short 62, 1
	.short 36, 1
	.short 62, 1
	.short 37, 1
	.short 62, 1
	.short 36, 1
	.short 62, 1
	.short 75, 1
	.short 254, 0

scr_seq_00000842_00000FBC:
	.short 51, 3
	.short 17, 1
	.short 19, 2
	.short 16, 2
	.short 18, 2
	.short 17, 2
	.short 16, 2
	.short 19, 2
	.short 17, 1
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00000FE8:
	.short 13, 2
	.short 15, 1
	.short 254, 0

scr_seq_00000842_00000FF4:
	.short 63, 1
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00001000:
	.short 13, 1
	.short 14, 2
	.short 13, 5
	.short 32, 1
	.short 254, 0

scr_seq_00000842_00001014:
	.short 14, 1
	.short 13, 1
	.short 14, 2
	.short 32, 1
	.short 63, 3
	.short 33, 1
	.short 17, 4
	.short 49, 2
	.short 254, 0

scr_seq_00000842_00001038:
	.short 63, 2
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00001044:
	.short 13, 3
	.short 254, 0

scr_seq_00000842_0000104C:
	.short 13, 4
	.short 254, 0
scr_seq_00000842_00001054:
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, scr_seq_00000842_00001078
	scrcmd_596 32780
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_00001078
	scrcmd_600
scr_seq_00000842_00001078:
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_174 6, 1, 0, 0
	scrcmd_175
	scrcmd_176 62, 0, 12, 6, 2
	scrcmd_174 6, 1, 1, 0
	scrcmd_175
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_582 60, 688, 393
	setvar VAR_UNK_407C, 1
	end

scr_seq_00000842_000010B4:
	.byte 0x0d, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
scr_seq_00000842_000010BC:
	scrcmd_192 0
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 35, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000842_000010D4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 0
	scrcmd_746
	getmenuchoice VAR_SPECIAL_x800C
	scrcmd_747
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000842_000011FC
	scrcmd_618 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, scr_seq_00000842_00001224
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 1
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, scr_seq_00000842_0000114D
	apply_movement 255, scr_seq_00000842_00001238
	apply_movement 6, scr_seq_00000842_00001284
	goto scr_seq_00000842_0000119B

scr_seq_00000842_0000114D:
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_00001168
	apply_movement 255, scr_seq_00000842_00001250
	goto scr_seq_00000842_0000119B

scr_seq_00000842_00001168:
	comparevartovalue VAR_SPECIAL_x800C, 3
	gotoif ne, scr_seq_00000842_0000118B
	apply_movement 255, scr_seq_00000842_00001270
	apply_movement 6, scr_seq_00000842_00001284
	goto scr_seq_00000842_0000119B

scr_seq_00000842_0000118B:
	apply_movement 255, scr_seq_00000842_0000125C
	apply_movement 6, scr_seq_00000842_00001284
scr_seq_00000842_0000119B:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_729 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif ne, scr_seq_00000842_000011C2
	apply_movement 253, scr_seq_00000842_00001290
	wait_movement
scr_seq_00000842_000011C2:
	setflag FLAG_UNK_189
	scrcmd_174 6, 1, 0, 0
	scrcmd_175
	scrcmd_615 0
	lockall
	scrcmd_174 6, 1, 1, 0
	scrcmd_175
	clearflag FLAG_UNK_189
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 2
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_000011FC:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 5
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_00001210:
	.byte 0xb6, 0x01, 0x02, 0x00, 0x0c, 0x80, 0xb8, 0x01, 0x0c, 0x80, 0x04, 0x00, 0x32, 0x00, 0x35, 0x00
	.byte 0x61, 0x00, 0x02, 0x00
scr_seq_00000842_00001224:
	scrcmd_438 2, VAR_SPECIAL_x800C
	scrcmd_440 VAR_SPECIAL_x800C, 3
	waitbutton
	closemsg
	releaseall
	end


scr_seq_00000842_00001238:
	.short 15, 1
	.short 12, 2
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00001250:
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000842_0000125C:
	.short 12, 1
	.short 14, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00001270:
	.short 12, 1
	.short 15, 1
	.short 12, 3
	.short 33, 1
	.short 254, 0

scr_seq_00000842_00001284:
	.short 63, 1
	.short 32, 1
	.short 254, 0

scr_seq_00000842_00001290:
	.short 15, 1
	.short 12, 1
	.short 1, 1
	.short 254, 0
scr_seq_00000842_000012A0:
	scrcmd_609
	lockall
	comparevartovalue VAR_TEMP_x4007, 2
	gotoif eq, scr_seq_00000842_0000144F
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_UNK_2A6
	scrcmd_100 7
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement 7, scr_seq_00000842_00001478
	wait_movement
	comparevartovalue VAR_TEMP_x4007, 0
	gotoif ne, scr_seq_00000842_000012F1
	scrcmd_190 0
	msgbox 21
	closemsg
scr_seq_00000842_000012F1:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	comparevartovalue VAR_SPECIAL_x8005, 398
	gotoif ne, scr_seq_00000842_0000132D
	apply_movement 7, scr_seq_00000842_00001480
	apply_movement 255, scr_seq_00000842_000014A4
	goto scr_seq_00000842_000013A6

scr_seq_00000842_0000132D:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_00001350
	apply_movement 7, scr_seq_00000842_0000148C
	apply_movement 255, scr_seq_00000842_000014B0
	goto scr_seq_00000842_000013A6

scr_seq_00000842_00001350:
	comparevartovalue VAR_SPECIAL_x8005, 400
	gotoif ne, scr_seq_00000842_00001373
	apply_movement 7, scr_seq_00000842_00001498
	apply_movement 255, scr_seq_00000842_000014BC
	goto scr_seq_00000842_000013A6

scr_seq_00000842_00001373:
	comparevartovalue VAR_SPECIAL_x8005, 401
	gotoif ne, scr_seq_00000842_00001396
	apply_movement 7, scr_seq_00000842_00001498
	apply_movement 255, scr_seq_00000842_000014C8
	goto scr_seq_00000842_000013A6

scr_seq_00000842_00001396:
	apply_movement 7, scr_seq_00000842_00001498
	apply_movement 255, scr_seq_00000842_000014D8
scr_seq_00000842_000013A6:
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	comparevartovalue VAR_TEMP_x4007, 0
	gotoif ne, scr_seq_00000842_000013C8
	msgbox 22
	goto scr_seq_00000842_000013CB

scr_seq_00000842_000013C8:
	msgbox 23
scr_seq_00000842_000013CB:
	closemsg
	comparevartovalue VAR_SPECIAL_x8005, 398
	gotoif ne, scr_seq_00000842_000013EA
	apply_movement 7, scr_seq_00000842_000014E8
	wait_movement
	goto scr_seq_00000842_00001411

scr_seq_00000842_000013EA:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_00001407
	apply_movement 7, scr_seq_00000842_000014F0
	wait_movement
	goto scr_seq_00000842_00001411

scr_seq_00000842_00001407:
	apply_movement 7, scr_seq_00000842_000014F8
	wait_movement
scr_seq_00000842_00001411:
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement 7, scr_seq_00000842_00001500
	wait_movement
	setflag FLAG_UNK_2A6
	play_se SEQ_SE_DP_KAIDAN2
	hide_person 7
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	addvar VAR_TEMP_x4007, 1
	releaseall
	end

scr_seq_00000842_0000144F:
	msgbox 24
	closemsg
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	apply_movement 255, scr_seq_00000842_00001508
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	releaseall
	end

scr_seq_00000842_00001476:
	.byte 0x00, 0x00

scr_seq_00000842_00001478:
	.short 13, 1
	.short 254, 0

scr_seq_00000842_00001480:
	.short 13, 1
	.short 35, 1
	.short 254, 0

scr_seq_00000842_0000148C:
	.short 13, 2
	.short 35, 1
	.short 254, 0

scr_seq_00000842_00001498:
	.short 13, 3
	.short 35, 1
	.short 254, 0

scr_seq_00000842_000014A4:
	.short 34, 1
	.short 14, 4
	.short 254, 0

scr_seq_00000842_000014B0:
	.short 34, 1
	.short 14, 4
	.short 254, 0

scr_seq_00000842_000014BC:
	.short 34, 1
	.short 14, 4
	.short 254, 0

scr_seq_00000842_000014C8:
	.short 14, 2
	.short 12, 1
	.short 14, 2
	.short 254, 0

scr_seq_00000842_000014D8:
	.short 14, 2
	.short 12, 2
	.short 14, 2
	.short 254, 0

scr_seq_00000842_000014E8:
	.short 12, 1
	.short 254, 0

scr_seq_00000842_000014F0:
	.short 12, 2
	.short 254, 0

scr_seq_00000842_000014F8:
	.short 12, 3
	.short 254, 0

scr_seq_00000842_00001500:
	.short 12, 1
	.short 254, 0

scr_seq_00000842_00001508:
	.short 14, 1
	.short 254, 0
scr_seq_00000842_00001510:
	scrcmd_609
	lockall
	apply_movement 8, scr_seq_00000842_00001644
	wait_movement
	scrcmd_190 0
	scrcmd_132 27, 28
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_602 0
	scrcmd_603
	scrcmd_604 55
	comparevartovalue VAR_SPECIAL_x8005, 398
	gotoif ne, scr_seq_00000842_00001552
	apply_movement 8, scr_seq_00000842_00001650
	goto scr_seq_00000842_000015AB

scr_seq_00000842_00001552:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_0000156D
	apply_movement 8, scr_seq_00000842_00001658
	goto scr_seq_00000842_000015AB

scr_seq_00000842_0000156D:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_00001588
	apply_movement 8, scr_seq_00000842_00001660
	goto scr_seq_00000842_000015AB

scr_seq_00000842_00001588:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_000015A3
	apply_movement 8, scr_seq_00000842_00001668
	goto scr_seq_00000842_000015AB

scr_seq_00000842_000015A3:
	apply_movement 8, scr_seq_00000842_00001670
scr_seq_00000842_000015AB:
	apply_movement 255, scr_seq_00000842_00001678
	wait_movement
	scrcmd_603
	scrcmd_602 1
	scrcmd_604 48
	scrcmd_190 0
	scrcmd_132 29, 30
	closemsg
	comparevartovalue VAR_SPECIAL_x8005, 398
	gotoif ne, scr_seq_00000842_000015E3
	apply_movement 8, scr_seq_00000842_00001680
	goto scr_seq_00000842_0000163C

scr_seq_00000842_000015E3:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_000015FE
	apply_movement 8, scr_seq_00000842_00001688
	goto scr_seq_00000842_0000163C

scr_seq_00000842_000015FE:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_00001619
	apply_movement 8, scr_seq_00000842_00001690
	goto scr_seq_00000842_0000163C

scr_seq_00000842_00001619:
	comparevartovalue VAR_SPECIAL_x8005, 399
	gotoif ne, scr_seq_00000842_00001634
	apply_movement 8, scr_seq_00000842_00001698
	goto scr_seq_00000842_0000163C

scr_seq_00000842_00001634:
	apply_movement 8, scr_seq_00000842_000016A0
scr_seq_00000842_0000163C:
	wait_movement
	releaseall
	end

scr_seq_00000842_00001642:
	.byte 0x00, 0x00

scr_seq_00000842_00001644:
	.short 3, 1
	.short 75, 1
	.short 254, 0

scr_seq_00000842_00001650:
	.short 35, 1
	.short 254, 0

scr_seq_00000842_00001658:
	.short 35, 1
	.short 254, 0

scr_seq_00000842_00001660:
	.short 15, 1
	.short 254, 0

scr_seq_00000842_00001668:
	.short 35, 1
	.short 254, 0

scr_seq_00000842_00001670:
	.short 35, 1
	.short 254, 0

scr_seq_00000842_00001678:
	.short 14, 2
	.short 254, 0

scr_seq_00000842_00001680:
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00001688:
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00001690:
	.short 34, 1
	.short 254, 0

scr_seq_00000842_00001698:
	.short 34, 1
	.short 254, 0

scr_seq_00000842_000016A0:
	.short 34, 1
	.short 254, 0
scr_seq_00000842_000016A8:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_132 25, 26
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_000016BC:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_076 183, 0
	msgbox 33
	scrcmd_077
	closemsg
	apply_movement 9, scr_seq_00000842_000016F4
	wait_movement
	apply_movement 8, scr_seq_00000842_00001700
	wait_movement
	scrcmd_132 31, 32
	waitbutton
	closemsg
	releaseall
	end

scr_seq_00000842_000016F1:
	.byte 0x00, 0x00, 0x00

scr_seq_00000842_000016F4:
	.short 47, 1
	.short 47, 1
	.short 254, 0

scr_seq_00000842_00001700:
	.short 34, 1
	.short 254, 0
scr_seq_00000842_00001708:
	scrcmd_056 2, 0
	scrcmd_057 3
	scrcmd_058
	scrcmd_059 36, VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000842_0000171D:
	scrcmd_055 34, 0, 11, VAR_SPECIAL_x800C
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_x800C
	callstd 2000
	end

scr_seq_00000842_00001734:
	scrcmd_190 0
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	msgbox 12
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
