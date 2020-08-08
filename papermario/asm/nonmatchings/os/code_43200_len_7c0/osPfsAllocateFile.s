.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osPfsAllocateFile
/* 043590 80068190 27BDFD68 */  addiu $sp, $sp, -0x298
/* 043594 80068194 AFB00270 */  sw    $s0, 0x270($sp)
/* 043598 80068198 8FB002AC */  lw    $s0, 0x2ac($sp)
/* 04359C 8006819C A7A50256 */  sh    $a1, 0x256($sp)
/* 0435A0 800681A0 97A50256 */  lhu   $a1, 0x256($sp)
/* 0435A4 800681A4 AFB20278 */  sw    $s2, 0x278($sp)
/* 0435A8 800681A8 00809021 */  addu  $s2, $a0, $zero
/* 0435AC 800681AC AFB60288 */  sw    $s6, 0x288($sp)
/* 0435B0 800681B0 0000B021 */  addu  $s6, $zero, $zero
/* 0435B4 800681B4 AFB7028C */  sw    $s7, 0x28c($sp)
/* 0435B8 800681B8 0000B821 */  addu  $s7, $zero, $zero
/* 0435BC 800681BC AFB50284 */  sw    $s5, 0x284($sp)
/* 0435C0 800681C0 0000A821 */  addu  $s5, $zero, $zero
/* 0435C4 800681C4 AFA6025C */  sw    $a2, 0x25c($sp)
/* 0435C8 800681C8 2CC30001 */  sltiu $v1, $a2, 1
/* 0435CC 800681CC AFBF0294 */  sw    $ra, 0x294($sp)
/* 0435D0 800681D0 AFBE0290 */  sw    $fp, 0x290($sp)
/* 0435D4 800681D4 AFB40280 */  sw    $s4, 0x280($sp)
/* 0435D8 800681D8 AFB3027C */  sw    $s3, 0x27c($sp)
/* 0435DC 800681DC AFB10274 */  sw    $s1, 0x274($sp)
/* 0435E0 800681E0 2CA20001 */  sltiu $v0, $a1, 1
/* 0435E4 800681E4 00431025 */  or    $v0, $v0, $v1
/* 0435E8 800681E8 14400020 */  bnez  $v0, .L8006826C
/* 0435EC 800681EC AFA70264 */   sw    $a3, 0x264($sp)
/* 0435F0 800681F0 260600FF */  addiu $a2, $s0, 0xff
/* 0435F4 800681F4 04C20001 */  bltzl $a2, .L800681FC
/* 0435F8 800681F8 260601FE */   addiu $a2, $s0, 0x1fe
.L800681FC:
/* 0435FC 800681FC 00069A03 */  sra   $s3, $a2, 8
/* 043600 80068200 8FA802A8 */  lw    $t0, 0x2a8($sp)
/* 043604 80068204 8FA6025C */  lw    $a2, 0x25c($sp)
/* 043608 80068208 8FA70264 */  lw    $a3, 0x264($sp)
/* 04360C 8006820C AFA80010 */  sw    $t0, 0x10($sp)
/* 043610 80068210 8FA802B0 */  lw    $t0, 0x2b0($sp)
/* 043614 80068214 02402021 */  addu  $a0, $s2, $zero
/* 043618 80068218 0C01A370 */  jal   osPfsFindFile
/* 04361C 8006821C AFA80014 */   sw    $t0, 0x14($sp)
/* 043620 80068220 00401821 */  addu  $v1, $v0, $zero
/* 043624 80068224 10600003 */  beqz  $v1, .L80068234
/* 043628 80068228 24020005 */   addiu $v0, $zero, 5
/* 04362C 8006822C 1462008F */  bne   $v1, $v0, .L8006846C
/* 043630 80068230 00601021 */   addu  $v0, $v1, $zero
.L80068234:
/* 043634 80068234 8FA802B0 */  lw    $t0, 0x2b0($sp)
/* 043638 80068238 8D030000 */  lw    $v1, ($t0)
/* 04363C 8006823C 2402FFFF */  addiu $v0, $zero, -1
/* 043640 80068240 1462008A */  bne   $v1, $v0, .L8006846C
/* 043644 80068244 24020009 */   addiu $v0, $zero, 9
/* 043648 80068248 02402021 */  addu  $a0, $s2, $zero
/* 04364C 8006824C 0C01A3E0 */  jal   osPfsFreeBlocks
/* 043650 80068250 27A50240 */   addiu $a1, $sp, 0x240
/* 043654 80068254 8FA20240 */  lw    $v0, 0x240($sp)
/* 043658 80068258 0050102A */  slt   $v0, $v0, $s0
/* 04365C 8006825C 14400083 */  bnez  $v0, .L8006846C
/* 043660 80068260 24020007 */   addiu $v0, $zero, 7
/* 043664 80068264 16600003 */  bnez  $s3, .L80068274
/* 043668 80068268 02402021 */   addu  $a0, $s2, $zero
.L8006826C:
/* 04366C 8006826C 0801A11B */  j     .L8006846C
/* 043670 80068270 24020005 */   addiu $v0, $zero, 5

.L80068274:
/* 043674 80068274 00002821 */  addu  $a1, $zero, $zero
/* 043678 80068278 8FA802B0 */  lw    $t0, 0x2b0($sp)
/* 04367C 8006827C 00003021 */  addu  $a2, $zero, $zero
/* 043680 80068280 00003821 */  addu  $a3, $zero, $zero
/* 043684 80068284 AFA00010 */  sw    $zero, 0x10($sp)
/* 043688 80068288 0C01A370 */  jal   osPfsFindFile
/* 04368C 8006828C AFA80014 */   sw    $t0, 0x14($sp)
/* 043690 80068290 00401821 */  addu  $v1, $v0, $zero
/* 043694 80068294 10600003 */  beqz  $v1, .L800682A4
/* 043698 80068298 24020005 */   addiu $v0, $zero, 5
/* 04369C 8006829C 14620073 */  bne   $v1, $v0, .L8006846C
/* 0436A0 800682A0 00601021 */   addu  $v0, $v1, $zero
.L800682A4:
/* 0436A4 800682A4 8FA802B0 */  lw    $t0, 0x2b0($sp)
/* 0436A8 800682A8 8D030000 */  lw    $v1, ($t0)
/* 0436AC 800682AC 2402FFFF */  addiu $v0, $zero, -1
/* 0436B0 800682B0 1062006E */  beq   $v1, $v0, .L8006846C
/* 0436B4 800682B4 24020008 */   addiu $v0, $zero, 8
/* 0436B8 800682B8 92420064 */  lbu   $v0, 0x64($s2)
/* 0436BC 800682BC 1040004A */  beqz  $v0, .L800683E8
/* 0436C0 800682C0 00008821 */   addu  $s1, $zero, $zero
/* 0436C4 800682C4 27B40120 */  addiu $s4, $sp, 0x120
/* 0436C8 800682C8 02402021 */  addu  $a0, $s2, $zero
.L800682CC:
/* 0436CC 800682CC 27A50020 */  addiu $a1, $sp, 0x20
/* 0436D0 800682D0 00003021 */  addu  $a2, $zero, $zero
/* 0436D4 800682D4 323000FF */  andi  $s0, $s1, 0xff
/* 0436D8 800682D8 0C01A7A3 */  jal   osPfsRWInode
/* 0436DC 800682DC 02003821 */   addu  $a3, $s0, $zero
/* 0436E0 800682E0 00401821 */  addu  $v1, $v0, $zero
/* 0436E4 800682E4 14600048 */  bnez  $v1, .L80068408
/* 0436E8 800682E8 02402021 */   addu  $a0, $s2, $zero
/* 0436EC 800682EC 27A50020 */  addiu $a1, $sp, 0x20
/* 0436F0 800682F0 02603021 */  addu  $a2, $s3, $zero
/* 0436F4 800682F4 27A70244 */  addiu $a3, $sp, 0x244
/* 0436F8 800682F8 27A20248 */  addiu $v0, $sp, 0x248
/* 0436FC 800682FC AFA20014 */  sw    $v0, 0x14($sp)
/* 043700 80068300 27A2024C */  addiu $v0, $sp, 0x24c
/* 043704 80068304 AFB00010 */  sw    $s0, 0x10($sp)
/* 043708 80068308 0C01A127 */  jal   osPfsDeclearPage
/* 04370C 8006830C AFA20018 */   sw    $v0, 0x18($sp)
/* 043710 80068310 00401821 */  addu  $v1, $v0, $zero
/* 043714 80068314 1460003C */  bnez  $v1, .L80068408
/* 043718 80068318 2402FFFF */   addiu $v0, $zero, -1
/* 04371C 8006831C 8FA30244 */  lw    $v1, 0x244($sp)
/* 043720 80068320 1062002B */  beq   $v1, $v0, .L800683D0
/* 043724 80068324 00000000 */   nop   
/* 043728 80068328 12A0000F */  beqz  $s5, .L80068368
/* 04372C 8006832C 02402021 */   addu  $a0, $s2, $zero
/* 043730 80068330 02802821 */  addu  $a1, $s4, $zero
/* 043734 80068334 00161040 */  sll   $v0, $s6, 1
/* 043738 80068338 02821021 */  addu  $v0, $s4, $v0
/* 04373C 8006833C A0510000 */  sb    $s1, ($v0)
/* 043740 80068340 8FA30244 */  lw    $v1, 0x244($sp)
/* 043744 80068344 24060001 */  addiu $a2, $zero, 1
/* 043748 80068348 32E700FF */  andi  $a3, $s7, 0xff
/* 04374C 8006834C 0C01A7A3 */  jal   osPfsRWInode
/* 043750 80068350 A0430001 */   sb    $v1, 1($v0)
/* 043754 80068354 00401821 */  addu  $v1, $v0, $zero
/* 043758 80068358 10600006 */  beqz  $v1, .L80068374
/* 04375C 8006835C 00000000 */   nop   
/* 043760 80068360 0801A11B */  j     .L8006846C
/* 043764 80068364 00000000 */   nop   

.L80068368:
/* 043768 80068368 306300FF */  andi  $v1, $v1, 0xff
/* 04376C 8006836C 00111200 */  sll   $v0, $s1, 8
/* 043770 80068370 0043F025 */  or    $fp, $v0, $v1
.L80068374:
/* 043774 80068374 8FA20248 */  lw    $v0, 0x248($sp)
/* 043778 80068378 0053102A */  slt   $v0, $v0, $s3
/* 04377C 8006837C 1440000C */  bnez  $v0, .L800683B0
/* 043780 80068380 27A40020 */   addiu $a0, $sp, 0x20
/* 043784 80068384 00009821 */  addu  $s3, $zero, $zero
/* 043788 80068388 02402021 */  addu  $a0, $s2, $zero
/* 04378C 8006838C 27A50020 */  addiu $a1, $sp, 0x20
/* 043790 80068390 24060001 */  addiu $a2, $zero, 1
/* 043794 80068394 0C01A7A3 */  jal   osPfsRWInode
/* 043798 80068398 322700FF */   andi  $a3, $s1, 0xff
/* 04379C 8006839C 00401821 */  addu  $v1, $v0, $zero
/* 0437A0 800683A0 10600011 */  beqz  $v1, .L800683E8
/* 0437A4 800683A4 00000000 */   nop   
/* 0437A8 800683A8 0801A11B */  j     .L8006846C
/* 0437AC 800683AC 00000000 */   nop   

.L800683B0:
/* 0437B0 800683B0 27A50120 */  addiu $a1, $sp, 0x120
/* 0437B4 800683B4 0C019194 */  jal   bcopy
/* 0437B8 800683B8 24060100 */   addiu $a2, $zero, 0x100
/* 0437BC 800683BC 8FB6024C */  lw    $s6, 0x24c($sp)
/* 0437C0 800683C0 8FA20248 */  lw    $v0, 0x248($sp)
/* 0437C4 800683C4 0220B821 */  addu  $s7, $s1, $zero
/* 0437C8 800683C8 26B50001 */  addiu $s5, $s5, 1
/* 0437CC 800683CC 02629823 */  subu  $s3, $s3, $v0
.L800683D0:
/* 0437D0 800683D0 92430064 */  lbu   $v1, 0x64($s2)
/* 0437D4 800683D4 26310001 */  addiu $s1, $s1, 1
/* 0437D8 800683D8 322200FF */  andi  $v0, $s1, 0xff
/* 0437DC 800683DC 0043102B */  sltu  $v0, $v0, $v1
/* 0437E0 800683E0 1440FFBA */  bnez  $v0, .L800682CC
/* 0437E4 800683E4 02402021 */   addu  $a0, $s2, $zero
.L800683E8:
/* 0437E8 800683E8 1E600020 */  bgtz  $s3, .L8006846C
/* 0437EC 800683EC 24020003 */   addiu $v0, $zero, 3
/* 0437F0 800683F0 8FA30244 */  lw    $v1, 0x244($sp)
/* 0437F4 800683F4 2402FFFF */  addiu $v0, $zero, -1
/* 0437F8 800683F8 14620005 */  bne   $v1, $v0, .L80068410
/* 0437FC 800683FC 27A50230 */   addiu $a1, $sp, 0x230
/* 043800 80068400 0801A11B */  j     .L8006846C
/* 043804 80068404 24020003 */   addiu $v0, $zero, 3

.L80068408:
/* 043808 80068408 0801A11B */  j     .L8006846C
/* 04380C 8006840C 00601021 */   addu  $v0, $v1, $zero

.L80068410:
/* 043810 80068410 97A80256 */  lhu   $t0, 0x256($sp)
/* 043814 80068414 8FA40264 */  lw    $a0, 0x264($sp)
/* 043818 80068418 A7A80224 */  sh    $t0, 0x224($sp)
/* 04381C 8006841C 8FA8025C */  lw    $t0, 0x25c($sp)
/* 043820 80068420 24060010 */  addiu $a2, $zero, 0x10
/* 043824 80068424 A7BE0226 */  sh    $fp, 0x226($sp)
/* 043828 80068428 A7A0022A */  sh    $zero, 0x22a($sp)
/* 04382C 8006842C 0C019194 */  jal   bcopy
/* 043830 80068430 AFA80220 */   sw    $t0, 0x220($sp)
/* 043834 80068434 8FA402A8 */  lw    $a0, 0x2a8($sp)
/* 043838 80068438 27A5022C */  addiu $a1, $sp, 0x22c
/* 04383C 8006843C 0C019194 */  jal   bcopy
/* 043840 80068440 24060004 */   addiu $a2, $zero, 4
/* 043844 80068444 8FA802B0 */  lw    $t0, 0x2b0($sp)
/* 043848 80068448 8E46005C */  lw    $a2, 0x5c($s2)
/* 04384C 8006844C 8D020000 */  lw    $v0, ($t0)
/* 043850 80068450 27A70220 */  addiu $a3, $sp, 0x220
/* 043854 80068454 AFA00010 */  sw    $zero, 0x10($sp)
/* 043858 80068458 8E440004 */  lw    $a0, 4($s2)
/* 04385C 8006845C 8E450008 */  lw    $a1, 8($s2)
/* 043860 80068460 00C23021 */  addu  $a2, $a2, $v0
/* 043864 80068464 0C01A8F0 */  jal   osContRamWrite
/* 043868 80068468 30C6FFFF */   andi  $a2, $a2, 0xffff
.L8006846C:
/* 04386C 8006846C 8FBF0294 */  lw    $ra, 0x294($sp)
/* 043870 80068470 8FBE0290 */  lw    $fp, 0x290($sp)
/* 043874 80068474 8FB7028C */  lw    $s7, 0x28c($sp)
/* 043878 80068478 8FB60288 */  lw    $s6, 0x288($sp)
/* 04387C 8006847C 8FB50284 */  lw    $s5, 0x284($sp)
/* 043880 80068480 8FB40280 */  lw    $s4, 0x280($sp)
/* 043884 80068484 8FB3027C */  lw    $s3, 0x27c($sp)
/* 043888 80068488 8FB20278 */  lw    $s2, 0x278($sp)
/* 04388C 8006848C 8FB10274 */  lw    $s1, 0x274($sp)
/* 043890 80068490 8FB00270 */  lw    $s0, 0x270($sp)
/* 043894 80068494 03E00008 */  jr    $ra
/* 043898 80068498 27BD0298 */   addiu $sp, $sp, 0x298
