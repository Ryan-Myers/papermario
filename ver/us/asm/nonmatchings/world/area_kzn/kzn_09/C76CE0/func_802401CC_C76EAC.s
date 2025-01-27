.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401CC_C76EAC
/* C76EAC 802401CC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* C76EB0 802401D0 AFB5002C */  sw        $s5, 0x2c($sp)
/* C76EB4 802401D4 0080A82D */  daddu     $s5, $a0, $zero
/* C76EB8 802401D8 AFBE0038 */  sw        $fp, 0x38($sp)
/* C76EBC 802401DC 3C1E8011 */  lui       $fp, %hi(gPlayerData)
/* C76EC0 802401E0 27DEF290 */  addiu     $fp, $fp, %lo(gPlayerData)
/* C76EC4 802401E4 AFBF003C */  sw        $ra, 0x3c($sp)
/* C76EC8 802401E8 AFB70034 */  sw        $s7, 0x34($sp)
/* C76ECC 802401EC AFB60030 */  sw        $s6, 0x30($sp)
/* C76ED0 802401F0 AFB40028 */  sw        $s4, 0x28($sp)
/* C76ED4 802401F4 AFB30024 */  sw        $s3, 0x24($sp)
/* C76ED8 802401F8 AFB20020 */  sw        $s2, 0x20($sp)
/* C76EDC 802401FC AFB1001C */  sw        $s1, 0x1c($sp)
/* C76EE0 80240200 10A0004F */  beqz      $a1, .L80240340
/* C76EE4 80240204 AFB00018 */   sw       $s0, 0x18($sp)
/* C76EE8 80240208 0C00AB39 */  jal       heap_malloc
/* C76EEC 8024020C 24040330 */   addiu    $a0, $zero, 0x330
/* C76EF0 80240210 0040982D */  daddu     $s3, $v0, $zero
/* C76EF4 80240214 0000B02D */  daddu     $s6, $zero, $zero
/* C76EF8 80240218 02C0902D */  daddu     $s2, $s6, $zero
/* C76EFC 8024021C 3C148024 */  lui       $s4, %hi(D_80243D08_C7A9E8)
/* C76F00 80240220 26943D08 */  addiu     $s4, $s4, %lo(D_80243D08_C7A9E8)
/* C76F04 80240224 0260882D */  daddu     $s1, $s3, $zero
/* C76F08 80240228 8EA200B4 */  lw        $v0, 0xb4($s5)
/* C76F0C 8024022C 3C038024 */  lui       $v1, %hi(D_80243D00_C7A9E0)
/* C76F10 80240230 24633D00 */  addiu     $v1, $v1, %lo(D_80243D00_C7A9E0)
/* C76F14 80240234 AEB30078 */  sw        $s3, 0x78($s5)
/* C76F18 80240238 00021027 */  nor       $v0, $zero, $v0
/* C76F1C 8024023C 0002BFC2 */  srl       $s7, $v0, 0x1f
/* C76F20 80240240 00171080 */  sll       $v0, $s7, 2
/* C76F24 80240244 00431021 */  addu      $v0, $v0, $v1
/* C76F28 80240248 AFA20010 */  sw        $v0, 0x10($sp)
.L8024024C:
/* C76F2C 8024024C 86900000 */  lh        $s0, ($s4)
/* C76F30 80240250 001010C0 */  sll       $v0, $s0, 3
/* C76F34 80240254 03C21021 */  addu      $v0, $fp, $v0
/* C76F38 80240258 90420014 */  lbu       $v0, 0x14($v0)
/* C76F3C 8024025C 5040002E */  beql      $v0, $zero, .L80240318
/* C76F40 80240260 26520001 */   addiu    $s2, $s2, 1
/* C76F44 80240264 00101100 */  sll       $v0, $s0, 4
/* C76F48 80240268 3C068009 */  lui       $a2, %hi(gPartnerPopupProperties)
/* C76F4C 8024026C 24C6EF20 */  addiu     $a2, $a2, %lo(gPartnerPopupProperties)
/* C76F50 80240270 00461021 */  addu      $v0, $v0, $a2
/* C76F54 80240274 0200202D */  daddu     $a0, $s0, $zero
/* C76F58 80240278 AE300108 */  sw        $s0, 0x108($s1)
/* C76F5C 8024027C 8C420000 */  lw        $v0, ($v0)
/* C76F60 80240280 02E0282D */  daddu     $a1, $s7, $zero
/* C76F64 80240284 0C090035 */  jal       kzn_09_UnkFunc37
/* C76F68 80240288 AE220084 */   sw       $v0, 0x84($s1)
/* C76F6C 8024028C 0040202D */  daddu     $a0, $v0, $zero
/* C76F70 80240290 04800011 */  bltz      $a0, .L802402D8
/* C76F74 80240294 00101080 */   sll      $v0, $s0, 2
/* C76F78 80240298 3C06800F */  lui       $a2, %hi(wPartnerHudScripts)
/* C76F7C 8024029C 24C67F00 */  addiu     $a2, $a2, %lo(wPartnerHudScripts)
/* C76F80 802402A0 00461021 */  addu      $v0, $v0, $a2
/* C76F84 802402A4 8C430000 */  lw        $v1, ($v0)
/* C76F88 802402A8 24020001 */  addiu     $v0, $zero, 1
/* C76F8C 802402AC AE22018C */  sw        $v0, 0x18c($s1)
/* C76F90 802402B0 00041080 */  sll       $v0, $a0, 2
/* C76F94 802402B4 3C068024 */  lui       $a2, %hi(D_80243D18_C7A9F8)
/* C76F98 802402B8 24C63D18 */  addiu     $a2, $a2, %lo(D_80243D18_C7A9F8)
/* C76F9C 802402BC AE230000 */  sw        $v1, ($s1)
/* C76FA0 802402C0 001218C0 */  sll       $v1, $s2, 3
/* C76FA4 802402C4 00431021 */  addu      $v0, $v0, $v1
/* C76FA8 802402C8 00461021 */  addu      $v0, $v0, $a2
/* C76FAC 802402CC 8C420000 */  lw        $v0, ($v0)
/* C76FB0 802402D0 080900BF */  j         .L802402FC
/* C76FB4 802402D4 AE220294 */   sw       $v0, 0x294($s1)
.L802402D8:
/* C76FB8 802402D8 3C06800F */  lui       $a2, %hi(wDisabledPartnerHudScripts)
/* C76FBC 802402DC 24C67F40 */  addiu     $a2, $a2, %lo(wDisabledPartnerHudScripts)
/* C76FC0 802402E0 00461021 */  addu      $v0, $v0, $a2
/* C76FC4 802402E4 8C420000 */  lw        $v0, ($v0)
/* C76FC8 802402E8 AE20018C */  sw        $zero, 0x18c($s1)
/* C76FCC 802402EC AE220000 */  sw        $v0, ($s1)
/* C76FD0 802402F0 8FA60010 */  lw        $a2, 0x10($sp)
/* C76FD4 802402F4 8CC20000 */  lw        $v0, ($a2)
/* C76FD8 802402F8 AE220294 */  sw        $v0, 0x294($s1)
.L802402FC:
/* C76FDC 802402FC 001010C0 */  sll       $v0, $s0, 3
/* C76FE0 80240300 03C21021 */  addu      $v0, $fp, $v0
/* C76FE4 80240304 80420015 */  lb        $v0, 0x15($v0)
/* C76FE8 80240308 26D60001 */  addiu     $s6, $s6, 1
/* C76FEC 8024030C AE220210 */  sw        $v0, 0x210($s1)
/* C76FF0 80240310 26310004 */  addiu     $s1, $s1, 4
/* C76FF4 80240314 26520001 */  addiu     $s2, $s2, 1
.L80240318:
/* C76FF8 80240318 2A420008 */  slti      $v0, $s2, 8
/* C76FFC 8024031C 1440FFCB */  bnez      $v0, .L8024024C
/* C77000 80240320 26940002 */   addiu    $s4, $s4, 2
/* C77004 80240324 0260202D */  daddu     $a0, $s3, $zero
/* C77008 80240328 24020004 */  addiu     $v0, $zero, 4
/* C7700C 8024032C AC820318 */  sw        $v0, 0x318($a0)
/* C77010 80240330 AC960324 */  sw        $s6, 0x324($a0)
/* C77014 80240334 0C03D390 */  jal       create_popup_menu
/* C77018 80240338 AC800328 */   sw       $zero, 0x328($a0)
/* C7701C 8024033C AEA00070 */  sw        $zero, 0x70($s5)
.L80240340:
/* C77020 80240340 8EA20070 */  lw        $v0, 0x70($s5)
/* C77024 80240344 8EB30078 */  lw        $s3, 0x78($s5)
/* C77028 80240348 14400008 */  bnez      $v0, .L8024036C
/* C7702C 8024034C 24420001 */   addiu    $v0, $v0, 1
/* C77030 80240350 8662032C */  lh        $v0, 0x32c($s3)
/* C77034 80240354 10400009 */  beqz      $v0, .L8024037C
/* C77038 80240358 AEA20074 */   sw       $v0, 0x74($s5)
/* C7703C 8024035C 0C03C4EC */  jal       hide_popup_menu
/* C77040 80240360 00000000 */   nop
/* C77044 80240364 8EA20070 */  lw        $v0, 0x70($s5)
/* C77048 80240368 24420001 */  addiu     $v0, $v0, 1
.L8024036C:
/* C7704C 8024036C AEA20070 */  sw        $v0, 0x70($s5)
/* C77050 80240370 2842000F */  slti      $v0, $v0, 0xf
/* C77054 80240374 10400003 */  beqz      $v0, .L80240384
/* C77058 80240378 00000000 */   nop
.L8024037C:
/* C7705C 8024037C 080900FB */  j         .L802403EC
/* C77060 80240380 0000102D */   daddu    $v0, $zero, $zero
.L80240384:
/* C77064 80240384 0C03C54E */  jal       destroy_popup_menu
/* C77068 80240388 00000000 */   nop
/* C7706C 8024038C 8EA30074 */  lw        $v1, 0x74($s5)
/* C77070 80240390 240200FF */  addiu     $v0, $zero, 0xff
/* C77074 80240394 10620010 */  beq       $v1, $v0, .L802403D8
/* C77078 80240398 2462FFFF */   addiu    $v0, $v1, -1
/* C7707C 8024039C 00021080 */  sll       $v0, $v0, 2
/* C77080 802403A0 02621021 */  addu      $v0, $s3, $v0
/* C77084 802403A4 8C420108 */  lw        $v0, 0x108($v0)
/* C77088 802403A8 00021100 */  sll       $v0, $v0, 4
/* C7708C 802403AC 3C038009 */  lui       $v1, %hi(gPartnerPopupProperties)
/* C77090 802403B0 00621821 */  addu      $v1, $v1, $v0
/* C77094 802403B4 8C63EF20 */  lw        $v1, %lo(gPartnerPopupProperties)($v1)
/* C77098 802403B8 8EA20074 */  lw        $v0, 0x74($s5)
/* C7709C 802403BC 2442FFFF */  addiu     $v0, $v0, -1
/* C770A0 802403C0 00021080 */  sll       $v0, $v0, 2
/* C770A4 802403C4 02621021 */  addu      $v0, $s3, $v0
/* C770A8 802403C8 AEA30084 */  sw        $v1, 0x84($s5)
/* C770AC 802403CC 8C420108 */  lw        $v0, 0x108($v0)
/* C770B0 802403D0 080900F8 */  j         .L802403E0
/* C770B4 802403D4 AEA20088 */   sw       $v0, 0x88($s5)
.L802403D8:
/* C770B8 802403D8 2402FFFF */  addiu     $v0, $zero, -1
/* C770BC 802403DC AEA20084 */  sw        $v0, 0x84($s5)
.L802403E0:
/* C770C0 802403E0 0C00AB4B */  jal       heap_free
/* C770C4 802403E4 8EA40078 */   lw       $a0, 0x78($s5)
/* C770C8 802403E8 24020002 */  addiu     $v0, $zero, 2
.L802403EC:
/* C770CC 802403EC 8FBF003C */  lw        $ra, 0x3c($sp)
/* C770D0 802403F0 8FBE0038 */  lw        $fp, 0x38($sp)
/* C770D4 802403F4 8FB70034 */  lw        $s7, 0x34($sp)
/* C770D8 802403F8 8FB60030 */  lw        $s6, 0x30($sp)
/* C770DC 802403FC 8FB5002C */  lw        $s5, 0x2c($sp)
/* C770E0 80240400 8FB40028 */  lw        $s4, 0x28($sp)
/* C770E4 80240404 8FB30024 */  lw        $s3, 0x24($sp)
/* C770E8 80240408 8FB20020 */  lw        $s2, 0x20($sp)
/* C770EC 8024040C 8FB1001C */  lw        $s1, 0x1c($sp)
/* C770F0 80240410 8FB00018 */  lw        $s0, 0x18($sp)
/* C770F4 80240414 03E00008 */  jr        $ra
/* C770F8 80240418 27BD0040 */   addiu    $sp, $sp, 0x40
