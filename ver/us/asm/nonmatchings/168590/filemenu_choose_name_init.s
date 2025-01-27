.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel filemenu_choose_name_init
/* 1692E0 80248A80 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1692E4 80248A84 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1692E8 80248A88 0080982D */  daddu     $s3, $a0, $zero
/* 1692EC 80248A8C AFB00010 */  sw        $s0, 0x10($sp)
/* 1692F0 80248A90 0000802D */  daddu     $s0, $zero, $zero
/* 1692F4 80248A94 AFB20018 */  sw        $s2, 0x18($sp)
/* 1692F8 80248A98 3C128025 */  lui       $s2, %hi(D_8024C100_C09980)
/* 1692FC 80248A9C 2652C100 */  addiu     $s2, $s2, %lo(D_8024C100_C09980)
/* 169300 80248AA0 AFB10014 */  sw        $s1, 0x14($sp)
/* 169304 80248AA4 3C118025 */  lui       $s1, %hi(D_8024A180)
/* 169308 80248AA8 2631A180 */  addiu     $s1, $s1, %lo(D_8024A180)
/* 16930C 80248AAC AFBF0020 */  sw        $ra, 0x20($sp)
.L80248AB0:
/* 169310 80248AB0 8E240000 */  lw        $a0, ($s1)
/* 169314 80248AB4 26310004 */  addiu     $s1, $s1, 4
/* 169318 80248AB8 0C050529 */  jal       create_hud_element
/* 16931C 80248ABC 26100001 */   addiu    $s0, $s0, 1
/* 169320 80248AC0 0040202D */  daddu     $a0, $v0, $zero
/* 169324 80248AC4 24050080 */  addiu     $a1, $zero, 0x80
/* 169328 80248AC8 0C051280 */  jal       set_hud_element_flags
/* 16932C 80248ACC AE440000 */   sw       $a0, ($s2)
/* 169330 80248AD0 2A020003 */  slti      $v0, $s0, 3
/* 169334 80248AD4 1440FFF6 */  bnez      $v0, .L80248AB0
/* 169338 80248AD8 26520004 */   addiu    $s2, $s2, 4
/* 16933C 80248ADC 24100001 */  addiu     $s0, $zero, 1
/* 169340 80248AE0 3C028025 */  lui       $v0, %hi(D_8024A1B4)
/* 169344 80248AE4 2442A1B4 */  addiu     $v0, $v0, %lo(D_8024A1B4)
.L80248AE8:
/* 169348 80248AE8 AC530010 */  sw        $s3, 0x10($v0)
/* 16934C 80248AEC 2610FFFF */  addiu     $s0, $s0, -1
/* 169350 80248AF0 0601FFFD */  bgez      $s0, .L80248AE8
/* 169354 80248AF4 2442FFDC */   addiu    $v0, $v0, -0x24
/* 169358 80248AF8 3C048025 */  lui       $a0, %hi(D_8024A190)
/* 16935C 80248AFC 2484A190 */  addiu     $a0, $a0, %lo(D_8024A190)
/* 169360 80248B00 0C051FCC */  jal       setup_pause_menu_tab
/* 169364 80248B04 24050002 */   addiu    $a1, $zero, 2
/* 169368 80248B08 3C048016 */  lui       $a0, %hi(gWindows)
/* 16936C 80248B0C 24849D50 */  addiu     $a0, $a0, %lo(gWindows)
/* 169370 80248B10 94820610 */  lhu       $v0, 0x610($a0)
/* 169374 80248B14 00021400 */  sll       $v0, $v0, 0x10
/* 169378 80248B18 00021C03 */  sra       $v1, $v0, 0x10
/* 16937C 80248B1C 000217C2 */  srl       $v0, $v0, 0x1f
/* 169380 80248B20 00621821 */  addu      $v1, $v1, $v0
/* 169384 80248B24 00032843 */  sra       $a1, $v1, 1
/* 169388 80248B28 80830603 */  lb        $v1, 0x603($a0)
/* 16938C 80248B2C 2402FFFF */  addiu     $v0, $zero, -1
/* 169390 80248B30 1062000B */  beq       $v1, $v0, .L80248B60
/* 169394 80248B34 2486060C */   addiu    $a2, $a0, 0x60c
/* 169398 80248B38 00031140 */  sll       $v0, $v1, 5
/* 16939C 80248B3C 00441021 */  addu      $v0, $v0, $a0
/* 1693A0 80248B40 94420010 */  lhu       $v0, 0x10($v0)
/* 1693A4 80248B44 00021400 */  sll       $v0, $v0, 0x10
/* 1693A8 80248B48 00021C03 */  sra       $v1, $v0, 0x10
/* 1693AC 80248B4C 000217C2 */  srl       $v0, $v0, 0x1f
/* 1693B0 80248B50 00621821 */  addu      $v1, $v1, $v0
/* 1693B4 80248B54 00031843 */  sra       $v1, $v1, 1
/* 1693B8 80248B58 080922DC */  j         .L80248B70
/* 1693BC 80248B5C 00651023 */   subu     $v0, $v1, $a1
.L80248B60:
/* 1693C0 80248B60 240200A0 */  addiu     $v0, $zero, 0xa0
/* 1693C4 80248B64 00451023 */  subu      $v0, $v0, $a1
/* 1693C8 80248B68 3C048016 */  lui       $a0, %hi(gWindows)
/* 1693CC 80248B6C 24849D50 */  addiu     $a0, $a0, %lo(gWindows)
.L80248B70:
/* 1693D0 80248B70 A4C20000 */  sh        $v0, ($a2)
/* 1693D4 80248B74 94820630 */  lhu       $v0, 0x630($a0)
/* 1693D8 80248B78 00021400 */  sll       $v0, $v0, 0x10
/* 1693DC 80248B7C 00021C03 */  sra       $v1, $v0, 0x10
/* 1693E0 80248B80 000217C2 */  srl       $v0, $v0, 0x1f
/* 1693E4 80248B84 00621821 */  addu      $v1, $v1, $v0
/* 1693E8 80248B88 00032843 */  sra       $a1, $v1, 1
/* 1693EC 80248B8C 80830623 */  lb        $v1, 0x623($a0)
/* 1693F0 80248B90 2402FFFF */  addiu     $v0, $zero, -1
/* 1693F4 80248B94 1062000B */  beq       $v1, $v0, .L80248BC4
/* 1693F8 80248B98 2486062C */   addiu    $a2, $a0, 0x62c
/* 1693FC 80248B9C 00031140 */  sll       $v0, $v1, 5
/* 169400 80248BA0 00441021 */  addu      $v0, $v0, $a0
/* 169404 80248BA4 94420010 */  lhu       $v0, 0x10($v0)
/* 169408 80248BA8 00021400 */  sll       $v0, $v0, 0x10
/* 16940C 80248BAC 00021C03 */  sra       $v1, $v0, 0x10
/* 169410 80248BB0 000217C2 */  srl       $v0, $v0, 0x1f
/* 169414 80248BB4 00621821 */  addu      $v1, $v1, $v0
/* 169418 80248BB8 00031843 */  sra       $v1, $v1, 1
/* 16941C 80248BBC 080922F3 */  j         .L80248BCC
/* 169420 80248BC0 00651023 */   subu     $v0, $v1, $a1
.L80248BC4:
/* 169424 80248BC4 240200A0 */  addiu     $v0, $zero, 0xa0
/* 169428 80248BC8 00451023 */  subu      $v0, $v0, $a1
.L80248BCC:
/* 16942C 80248BCC A4C20000 */  sh        $v0, ($a2)
/* 169430 80248BD0 24020001 */  addiu     $v0, $zero, 1
/* 169434 80248BD4 A2620000 */  sb        $v0, ($s3)
/* 169438 80248BD8 8FBF0020 */  lw        $ra, 0x20($sp)
/* 16943C 80248BDC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 169440 80248BE0 8FB20018 */  lw        $s2, 0x18($sp)
/* 169444 80248BE4 8FB10014 */  lw        $s1, 0x14($sp)
/* 169448 80248BE8 8FB00010 */  lw        $s0, 0x10($sp)
/* 16944C 80248BEC 03E00008 */  jr        $ra
/* 169450 80248BF0 27BD0028 */   addiu    $sp, $sp, 0x28
