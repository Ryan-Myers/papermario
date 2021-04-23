.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218890_624430
/* 624430 80218890 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 624434 80218894 AFB20020 */  sw        $s2, 0x20($sp)
/* 624438 80218898 0080902D */  daddu     $s2, $a0, $zero
/* 62443C 8021889C AFBF0028 */  sw        $ra, 0x28($sp)
/* 624440 802188A0 AFB30024 */  sw        $s3, 0x24($sp)
/* 624444 802188A4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 624448 802188A8 AFB00018 */  sw        $s0, 0x18($sp)
/* 62444C 802188AC F7B40030 */  sdc1      $f20, 0x30($sp)
/* 624450 802188B0 8E440148 */  lw        $a0, 0x148($s2)
/* 624454 802188B4 0C09A75B */  jal       get_actor
/* 624458 802188B8 00A0802D */   daddu    $s0, $a1, $zero
/* 62445C 802188BC 0040882D */  daddu     $s1, $v0, $zero
/* 624460 802188C0 12000002 */  beqz      $s0, .L802188CC
/* 624464 802188C4 2633000C */   addiu    $s3, $s1, 0xc
/* 624468 802188C8 AE400070 */  sw        $zero, 0x70($s2)
.L802188CC:
/* 62446C 802188CC 8E420070 */  lw        $v0, 0x70($s2)
/* 624470 802188D0 14400008 */  bnez      $v0, .L802188F4
/* 624474 802188D4 24020001 */   addiu    $v0, $zero, 1
/* 624478 802188D8 C6200144 */  lwc1      $f0, 0x144($s1)
/* 62447C 802188DC C6220148 */  lwc1      $f2, 0x148($s1)
/* 624480 802188E0 C624014C */  lwc1      $f4, 0x14c($s1)
/* 624484 802188E4 E620000C */  swc1      $f0, 0xc($s1)
/* 624488 802188E8 E6220010 */  swc1      $f2, 0x10($s1)
/* 62448C 802188EC E6240014 */  swc1      $f4, 0x14($s1)
/* 624490 802188F0 AE420070 */  sw        $v0, 0x70($s2)
.L802188F4:
/* 624494 802188F4 C6200050 */  lwc1      $f0, 0x50($s1)
/* 624498 802188F8 4480A000 */  mtc1      $zero, $f20
/* 62449C 802188FC 00000000 */  nop
/* 6244A0 80218900 4600A03C */  c.lt.s    $f20, $f0
/* 6244A4 80218904 00000000 */  nop
/* 6244A8 80218908 45000005 */  bc1f      .L80218920
/* 6244AC 8021890C 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 6244B0 80218910 8E260064 */  lw        $a2, 0x64($s1)
/* 6244B4 80218914 0C098F3F */  jal       set_animation
/* 6244B8 80218918 24050001 */   addiu    $a1, $zero, 1
/* 6244BC 8021891C C6200050 */  lwc1      $f0, 0x50($s1)
.L80218920:
/* 6244C0 80218920 4614003C */  c.lt.s    $f0, $f20
/* 6244C4 80218924 00000000 */  nop
/* 6244C8 80218928 45000004 */  bc1f      .L8021893C
/* 6244CC 8021892C 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 6244D0 80218930 8E260068 */  lw        $a2, 0x68($s1)
/* 6244D4 80218934 0C098F3F */  jal       set_animation
/* 6244D8 80218938 24050001 */   addiu    $a1, $zero, 1
.L8021893C:
/* 6244DC 8021893C C6240010 */  lwc1      $f4, 0x10($s1)
/* 6244E0 80218940 C6200050 */  lwc1      $f0, 0x50($s1)
/* 6244E4 80218944 8E25004C */  lw        $a1, 0x4c($s1)
/* 6244E8 80218948 46002100 */  add.s     $f4, $f4, $f0
/* 6244EC 8021894C C6220048 */  lwc1      $f2, 0x48($s1)
/* 6244F0 80218950 8E260054 */  lw        $a2, 0x54($s1)
/* 6244F4 80218954 46020001 */  sub.s     $f0, $f0, $f2
/* 6244F8 80218958 0260202D */  daddu     $a0, $s3, $zero
/* 6244FC 8021895C E6240010 */  swc1      $f4, 0x10($s1)
/* 624500 80218960 0C09904A */  jal       add_xz_vec3f
/* 624504 80218964 E6200050 */   swc1     $f0, 0x50($s1)
/* 624508 80218968 C6200010 */  lwc1      $f0, 0x10($s1)
/* 62450C 8021896C C6220014 */  lwc1      $f2, 0x14($s1)
/* 624510 80218970 E6200148 */  swc1      $f0, 0x148($s1)
/* 624514 80218974 C620000C */  lwc1      $f0, 0xc($s1)
/* 624518 80218978 C6240148 */  lwc1      $f4, 0x148($s1)
/* 62451C 8021897C E622014C */  swc1      $f2, 0x14c($s1)
/* 624520 80218980 4614203C */  c.lt.s    $f4, $f20
/* 624524 80218984 00000000 */  nop
/* 624528 80218988 45010003 */  bc1t      .L80218998
/* 62452C 8021898C E6200144 */   swc1     $f0, 0x144($s1)
/* 624530 80218990 08086271 */  j         .L802189C4
/* 624534 80218994 0000102D */   daddu    $v0, $zero, $zero
.L80218998:
/* 624538 80218998 C620018C */  lwc1      $f0, 0x18c($s1)
/* 62453C 8021899C E6340148 */  swc1      $f20, 0x148($s1)
/* 624540 802189A0 E7A00010 */  swc1      $f0, 0x10($sp)
/* 624544 802189A4 8E250144 */  lw        $a1, 0x144($s1)
/* 624548 802189A8 8E260148 */  lw        $a2, 0x148($s1)
/* 62454C 802189AC 8E27014C */  lw        $a3, 0x14c($s1)
/* 624550 802189B0 0C0990BC */  jal       play_movement_dust_effects
/* 624554 802189B4 24040002 */   addiu    $a0, $zero, 2
/* 624558 802189B8 0C05272D */  jal       sfx_play_sound
/* 62455C 802189BC 24040148 */   addiu    $a0, $zero, 0x148
/* 624560 802189C0 24020001 */  addiu     $v0, $zero, 1
.L802189C4:
/* 624564 802189C4 8FBF0028 */  lw        $ra, 0x28($sp)
/* 624568 802189C8 8FB30024 */  lw        $s3, 0x24($sp)
/* 62456C 802189CC 8FB20020 */  lw        $s2, 0x20($sp)
/* 624570 802189D0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 624574 802189D4 8FB00018 */  lw        $s0, 0x18($sp)
/* 624578 802189D8 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 62457C 802189DC 03E00008 */  jr        $ra
/* 624580 802189E0 27BD0038 */   addiu    $sp, $sp, 0x38