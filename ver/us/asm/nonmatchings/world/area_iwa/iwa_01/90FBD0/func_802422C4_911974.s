.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_802465C0_915C70
.double 180.0

dlabel D_802465C8_915C78
.double 75.0

.section .text

glabel func_802422C4_911974
/* 911974 802422C4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 911978 802422C8 AFBF001C */  sw        $ra, 0x1c($sp)
/* 91197C 802422CC AFB20018 */  sw        $s2, 0x18($sp)
/* 911980 802422D0 AFB10014 */  sw        $s1, 0x14($sp)
/* 911984 802422D4 AFB00010 */  sw        $s0, 0x10($sp)
/* 911988 802422D8 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 91198C 802422DC 8C900148 */  lw        $s0, 0x148($a0)
/* 911990 802422E0 86040008 */  lh        $a0, 8($s0)
/* 911994 802422E4 3C014387 */  lui       $at, 0x4387
/* 911998 802422E8 4481A000 */  mtc1      $at, $f20
/* 91199C 802422EC 0C00EABB */  jal       get_npc_unsafe
/* 9119A0 802422F0 00A0882D */   daddu    $s1, $a1, $zero
/* 9119A4 802422F4 0200202D */  daddu     $a0, $s0, $zero
/* 9119A8 802422F8 8E26000C */  lw        $a2, 0xc($s1)
/* 9119AC 802422FC 8E270010 */  lw        $a3, 0x10($s1)
/* 9119B0 80242300 0040882D */  daddu     $s1, $v0, $zero
/* 9119B4 80242304 3C03800B */  lui       $v1, %hi(gCameras)
/* 9119B8 80242308 24631D80 */  addiu     $v1, $v1, %lo(gCameras)
/* 9119BC 8024230C 3C02800A */  lui       $v0, %hi(gCurrentCamID)
/* 9119C0 80242310 8442A634 */  lh        $v0, %lo(gCurrentCamID)($v0)
/* 9119C4 80242314 0000282D */  daddu     $a1, $zero, $zero
/* 9119C8 80242318 00028080 */  sll       $s0, $v0, 2
/* 9119CC 8024231C 02028021 */  addu      $s0, $s0, $v0
/* 9119D0 80242320 00108080 */  sll       $s0, $s0, 2
/* 9119D4 80242324 02028023 */  subu      $s0, $s0, $v0
/* 9119D8 80242328 001010C0 */  sll       $v0, $s0, 3
/* 9119DC 8024232C 02028021 */  addu      $s0, $s0, $v0
/* 9119E0 80242330 001080C0 */  sll       $s0, $s0, 3
/* 9119E4 80242334 0C0124FB */  jal       func_800493EC
/* 9119E8 80242338 02038021 */   addu     $s0, $s0, $v1
/* 9119EC 8024233C C60C006C */  lwc1      $f12, 0x6c($s0)
/* 9119F0 80242340 C62E000C */  lwc1      $f14, 0xc($s1)
/* 9119F4 80242344 0C00A70A */  jal       get_clamped_angle_diff
/* 9119F8 80242348 0002802B */   sltu     $s0, $zero, $v0
/* 9119FC 8024234C 0C00A6C9 */  jal       clamp_angle
/* 911A00 80242350 46000306 */   mov.s    $f12, $f0
/* 911A04 80242354 3C018024 */  lui       $at, %hi(D_802465C0_915C70)
/* 911A08 80242358 D42265C0 */  ldc1      $f2, %lo(D_802465C0_915C70)($at)
/* 911A0C 8024235C 46000021 */  cvt.d.s   $f0, $f0
/* 911A10 80242360 4622003C */  c.lt.d    $f0, $f2
/* 911A14 80242364 00000000 */  nop
/* 911A18 80242368 45000003 */  bc1f      .L80242378
/* 911A1C 8024236C 00000000 */   nop
/* 911A20 80242370 3C0142B4 */  lui       $at, 0x42b4
/* 911A24 80242374 4481A000 */  mtc1      $at, $f20
.L80242378:
/* 911A28 80242378 3C12800F */  lui       $s2, %hi(gPlayerStatusPtr)
/* 911A2C 8024237C 26527B30 */  addiu     $s2, $s2, %lo(gPlayerStatusPtr)
/* 911A30 80242380 C62C0038 */  lwc1      $f12, 0x38($s1)
/* 911A34 80242384 8E420000 */  lw        $v0, ($s2)
/* 911A38 80242388 C62E0040 */  lwc1      $f14, 0x40($s1)
/* 911A3C 8024238C 8C460028 */  lw        $a2, 0x28($v0)
/* 911A40 80242390 0C00A720 */  jal       atan2
/* 911A44 80242394 8C470030 */   lw       $a3, 0x30($v0)
/* 911A48 80242398 4600A306 */  mov.s     $f12, $f20
/* 911A4C 8024239C 0C00A70A */  jal       get_clamped_angle_diff
/* 911A50 802423A0 46000386 */   mov.s    $f14, $f0
/* 911A54 802423A4 46000005 */  abs.s     $f0, $f0
/* 911A58 802423A8 3C018024 */  lui       $at, %hi(D_802465C8_915C78)
/* 911A5C 802423AC D42265C8 */  ldc1      $f2, %lo(D_802465C8_915C78)($at)
/* 911A60 802423B0 46000021 */  cvt.d.s   $f0, $f0
/* 911A64 802423B4 4620103C */  c.lt.d    $f2, $f0
/* 911A68 802423B8 00000000 */  nop
/* 911A6C 802423BC 45030001 */  bc1tl     .L802423C4
/* 911A70 802423C0 0000802D */   daddu    $s0, $zero, $zero
.L802423C4:
/* 911A74 802423C4 8E420000 */  lw        $v0, ($s2)
/* 911A78 802423C8 C620003C */  lwc1      $f0, 0x3c($s1)
/* 911A7C 802423CC C442002C */  lwc1      $f2, 0x2c($v0)
/* 911A80 802423D0 46020001 */  sub.s     $f0, $f0, $f2
/* 911A84 802423D4 3C014220 */  lui       $at, 0x4220
/* 911A88 802423D8 44811000 */  mtc1      $at, $f2
/* 911A8C 802423DC 46000005 */  abs.s     $f0, $f0
/* 911A90 802423E0 4600103E */  c.le.s    $f2, $f0
/* 911A94 802423E4 00000000 */  nop
/* 911A98 802423E8 45030001 */  bc1tl     .L802423F0
/* 911A9C 802423EC 0000802D */   daddu    $s0, $zero, $zero
.L802423F0:
/* 911AA0 802423F0 3C038011 */  lui       $v1, %hi(gPartnerActionStatus+0x3)
/* 911AA4 802423F4 8063EBB3 */  lb        $v1, %lo(gPartnerActionStatus+0x3)($v1)
/* 911AA8 802423F8 24020009 */  addiu     $v0, $zero, 9
/* 911AAC 802423FC 50620001 */  beql      $v1, $v0, .L80242404
/* 911AB0 80242400 0000802D */   daddu    $s0, $zero, $zero
.L80242404:
/* 911AB4 80242404 0200102D */  daddu     $v0, $s0, $zero
/* 911AB8 80242408 8FBF001C */  lw        $ra, 0x1c($sp)
/* 911ABC 8024240C 8FB20018 */  lw        $s2, 0x18($sp)
/* 911AC0 80242410 8FB10014 */  lw        $s1, 0x14($sp)
/* 911AC4 80242414 8FB00010 */  lw        $s0, 0x10($sp)
/* 911AC8 80242418 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 911ACC 8024241C 03E00008 */  jr        $ra
/* 911AD0 80242420 27BD0028 */   addiu    $sp, $sp, 0x28
