.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241248_9407F8
/* 9407F8 80241248 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 9407FC 8024124C AFBF0010 */  sw        $ra, 0x10($sp)
/* 940800 80241250 8C82000C */  lw        $v0, 0xc($a0)
/* 940804 80241254 0C0B1EAF */  jal       get_variable
/* 940808 80241258 8C450000 */   lw       $a1, ($v0)
/* 94080C 8024125C 0040182D */  daddu     $v1, $v0, $zero
/* 940810 80241260 10600012 */  beqz      $v1, .L802412AC
/* 940814 80241264 0000202D */   daddu    $a0, $zero, $zero
/* 940818 80241268 8C620000 */  lw        $v0, ($v1)
/* 94081C 8024126C 5040000A */  beql      $v0, $zero, .L80241298
/* 940820 80241270 00041080 */   sll      $v0, $a0, 2
/* 940824 80241274 3C058024 */  lui       $a1, 0x8024
/* 940828 80241278 24A54C18 */  addiu     $a1, $a1, 0x4c18
.L8024127C:
/* 94082C 8024127C 24630004 */  addiu     $v1, $v1, 4
/* 940830 80241280 24840001 */  addiu     $a0, $a0, 1
/* 940834 80241284 ACA20000 */  sw        $v0, ($a1)
/* 940838 80241288 8C620000 */  lw        $v0, ($v1)
/* 94083C 8024128C 1440FFFB */  bnez      $v0, .L8024127C
/* 940840 80241290 24A50004 */   addiu    $a1, $a1, 4
/* 940844 80241294 00041080 */  sll       $v0, $a0, 2
.L80241298:
/* 940848 80241298 3C018024 */  lui       $at, 0x8024
/* 94084C 8024129C 00220821 */  addu      $at, $at, $v0
/* 940850 802412A0 AC204C18 */  sw        $zero, 0x4c18($at)
/* 940854 802412A4 080904B5 */  j         .L802412D4
/* 940858 802412A8 00000000 */   nop      
.L802412AC:
/* 94085C 802412AC 3C038024 */  lui       $v1, 0x8024
/* 940860 802412B0 24634C18 */  addiu     $v1, $v1, 0x4c18
/* 940864 802412B4 0060282D */  daddu     $a1, $v1, $zero
.L802412B8:
/* 940868 802412B8 24820080 */  addiu     $v0, $a0, 0x80
/* 94086C 802412BC AC620000 */  sw        $v0, ($v1)
/* 940870 802412C0 24630004 */  addiu     $v1, $v1, 4
/* 940874 802412C4 24840001 */  addiu     $a0, $a0, 1
/* 940878 802412C8 2882005B */  slti      $v0, $a0, 0x5b
/* 94087C 802412CC 1440FFFA */  bnez      $v0, .L802412B8
/* 940880 802412D0 ACA0016C */   sw       $zero, 0x16c($a1)
.L802412D4:
/* 940884 802412D4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 940888 802412D8 24020002 */  addiu     $v0, $zero, 2
/* 94088C 802412DC 03E00008 */  jr        $ra
/* 940890 802412E0 27BD0018 */   addiu    $sp, $sp, 0x18