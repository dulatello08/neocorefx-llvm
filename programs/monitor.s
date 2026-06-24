	.text
	.global	_start
_start:
	li	r15, #0x0000FFFC
	jal	r11, main
	halt
	.global	main                            ; -- Begin function main
main:                                   ; @main
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-280
	li	r2, #1073741836
	addi	r3, r0, #3
	sw	r8, [r15 + #276]
	sw	r9, [r15 + #272]
	sw	r10, [r15 + #268]
	sw	r11, [r15 + #264]
	li	r8, #1073741832
	addi	r10, r0, #10
	addi	r9, r0, #0
	li	r13, #1073741824
	addi	r5, r0, #13
	sw	r3, [r2 + #0]
	addi	r2, r0, #12
	sw	r2, [r15 + #100]
	sw	r2, [r8 + #0]
	la	r2, .L.str
L_BB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_3
	b	L_BB0_2
L_BB0_2:                                ;   in Loop: Header=BB0_1 Depth=1
	be	r3, r9, L_BB0_4
	b	L_BB0_7
L_BB0_3:                                ; %.preheader159
                                        ;   in Loop: Header=BB0_1 Depth=1
	b	L_BB0_5
L_BB0_5:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB0_5
	b	L_BB0_6
L_BB0_6:                                ;   in Loop: Header=BB0_1 Depth=1
	sw	r5, [r13 + #0]
L_BB0_7:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB0_7
	b	L_BB0_8
L_BB0_8:                                ;   in Loop: Header=BB0_1 Depth=1
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_1
L_BB0_4:                                ; %.preheader158
	la	r2, .L.str.1
	b	L_BB0_9
L_BB0_9:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_11
	b	L_BB0_10
L_BB0_10:                               ;   in Loop: Header=BB0_9 Depth=1
	be	r3, r9, L_BB0_12
	b	L_BB0_15
L_BB0_11:                               ; %.preheader157
                                        ;   in Loop: Header=BB0_9 Depth=1
	b	L_BB0_13
L_BB0_13:                               ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB0_13
	b	L_BB0_14
L_BB0_14:                               ;   in Loop: Header=BB0_9 Depth=1
	sw	r5, [r13 + #0]
L_BB0_15:                               ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB0_15
	b	L_BB0_16
L_BB0_16:                               ;   in Loop: Header=BB0_9 Depth=1
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_9
L_BB0_12:                               ; %.preheader156
	addi	r2, r15, #104
	sw	r5, [r15 + #76]
	li	r12, #1073741828
	addi	r3, r2, #3
	sw	r3, [r15 + #12]
	addi	r3, r2, #1
	sw	r3, [r15 + #8]
	sw	r2, [r15 + #24]
	addi	r2, r2, #2
	addi	r3, r0, #8
	sw	r2, [r15 + #4]
	sw	r3, [r15 + #88]
	addi	r3, r0, #1
	la	r2, .L.str.2
	sw	r3, [r15 + #92]
	sw	r2, [r15 + #16]
	lw	r3, [r15 + #100]
	sw	r10, [r15 + #20]
	b	L_BB0_17
L_BB0_45:                               ; %.loopexit153
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	lw	r10, [r15 + #20]
	li	r12, #1073741828
	b	L_BB0_17
L_BB0_17:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_21 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_68 Depth 2
                                        ;       Child Loop BB0_46 Depth 3
                                        ;       Child Loop BB0_65 Depth 3
                                        ;       Child Loop BB0_56 Depth 3
                                        ;       Child Loop BB0_58 Depth 3
                                        ;       Child Loop BB0_60 Depth 3
                                        ;     Child Loop BB0_52 Depth 2
                                        ;     Child Loop BB0_54 Depth 2
                                        ;     Child Loop BB0_70 Depth 2
                                        ;     Child Loop BB0_75 Depth 2
                                        ;     Child Loop BB0_81 Depth 2
                                        ;     Child Loop BB0_92 Depth 2
                                        ;     Child Loop BB0_95 Depth 2
                                        ;     Child Loop BB0_105 Depth 2
                                        ;       Child Loop BB0_106 Depth 3
                                        ;       Child Loop BB0_111 Depth 3
                                        ;       Child Loop BB0_123 Depth 3
                                        ;     Child Loop BB0_125 Depth 2
                                        ;       Child Loop BB0_127 Depth 3
                                        ;       Child Loop BB0_129 Depth 3
                                        ;     Child Loop BB0_133 Depth 2
                                        ;       Child Loop BB0_135 Depth 3
                                        ;       Child Loop BB0_137 Depth 3
                                        ;     Child Loop BB0_139 Depth 2
                                        ;     Child Loop BB0_151 Depth 2
                                        ;     Child Loop BB0_160 Depth 2
                                        ;     Child Loop BB0_162 Depth 2
                                        ;     Child Loop BB0_154 Depth 2
                                        ;       Child Loop BB0_156 Depth 3
                                        ;       Child Loop BB0_158 Depth 3
                                        ;     Child Loop BB0_164 Depth 2
                                        ;     Child Loop BB0_166 Depth 2
                                        ;     Child Loop BB0_169 Depth 2
                                        ;     Child Loop BB0_326 Depth 2
                                        ;     Child Loop BB0_338 Depth 2
                                        ;     Child Loop BB0_347 Depth 2
                                        ;       Child Loop BB0_348 Depth 3
                                        ;       Child Loop BB0_353 Depth 3
                                        ;       Child Loop BB0_365 Depth 3
                                        ;     Child Loop BB0_367 Depth 2
                                        ;       Child Loop BB0_369 Depth 3
                                        ;       Child Loop BB0_371 Depth 3
                                        ;     Child Loop BB0_383 Depth 2
                                        ;       Child Loop BB0_385 Depth 3
                                        ;       Child Loop BB0_387 Depth 3
                                        ;     Child Loop BB0_377 Depth 2
                                        ;       Child Loop BB0_379 Depth 3
                                        ;       Child Loop BB0_381 Depth 3
                                        ;     Child Loop BB0_341 Depth 2
                                        ;       Child Loop BB0_343 Depth 3
                                        ;       Child Loop BB0_345 Depth 3
                                        ;     Child Loop BB0_447 Depth 2
                                        ;     Child Loop BB0_459 Depth 2
                                        ;     Child Loop BB0_462 Depth 2
                                        ;     Child Loop BB0_473 Depth 2
                                        ;     Child Loop BB0_476 Depth 2
                                        ;     Child Loop BB0_487 Depth 2
                                        ;     Child Loop BB0_513 Depth 2
                                        ;     Child Loop BB0_508 Depth 2
                                        ;     Child Loop BB0_515 Depth 2
                                        ;       Child Loop BB0_517 Depth 3
                                        ;       Child Loop BB0_519 Depth 3
                                        ;     Child Loop BB0_497 Depth 2
                                        ;       Child Loop BB0_499 Depth 3
                                        ;       Child Loop BB0_501 Depth 3
                                        ;     Child Loop BB0_489 Depth 2
                                        ;       Child Loop BB0_491 Depth 3
                                        ;       Child Loop BB0_493 Depth 3
                                        ;     Child Loop BB0_653 Depth 2
                                        ;     Child Loop BB0_665 Depth 2
                                        ;     Child Loop BB0_674 Depth 2
                                        ;       Child Loop BB0_676 Depth 3
                                        ;       Child Loop BB0_678 Depth 3
                                        ;     Child Loop BB0_681 Depth 2
                                        ;     Child Loop BB0_684 Depth 2
                                        ;     Child Loop BB0_686 Depth 2
                                        ;     Child Loop BB0_688 Depth 2
                                        ;     Child Loop BB0_690 Depth 2
                                        ;     Child Loop BB0_692 Depth 2
                                        ;     Child Loop BB0_694 Depth 2
                                        ;     Child Loop BB0_696 Depth 2
                                        ;     Child Loop BB0_698 Depth 2
                                        ;     Child Loop BB0_701 Depth 2
                                        ;     Child Loop BB0_703 Depth 2
                                        ;     Child Loop BB0_705 Depth 2
                                        ;     Child Loop BB0_707 Depth 2
                                        ;     Child Loop BB0_709 Depth 2
                                        ;     Child Loop BB0_711 Depth 2
                                        ;     Child Loop BB0_713 Depth 2
                                        ;     Child Loop BB0_715 Depth 2
                                        ;       Child Loop BB0_717 Depth 3
                                        ;       Child Loop BB0_719 Depth 3
                                        ;     Child Loop BB0_668 Depth 2
                                        ;       Child Loop BB0_670 Depth 3
                                        ;       Child Loop BB0_672 Depth 3
                                        ;     Child Loop BB0_389 Depth 2
                                        ;     Child Loop BB0_401 Depth 2
                                        ;     Child Loop BB0_404 Depth 2
                                        ;     Child Loop BB0_415 Depth 2
                                        ;     Child Loop BB0_418 Depth 2
                                        ;     Child Loop BB0_429 Depth 2
                                        ;     Child Loop BB0_439 Depth 2
                                        ;     Child Loop BB0_441 Depth 2
                                        ;       Child Loop BB0_443 Depth 3
                                        ;       Child Loop BB0_445 Depth 3
                                        ;     Child Loop BB0_433 Depth 2
                                        ;       Child Loop BB0_435 Depth 3
                                        ;       Child Loop BB0_437 Depth 3
                                        ;     Child Loop BB0_274 Depth 2
                                        ;     Child Loop BB0_286 Depth 2
                                        ;     Child Loop BB0_295 Depth 2
                                        ;     Child Loop BB0_300 Depth 2
                                        ;     Child Loop BB0_312 Depth 2
                                        ;     Child Loop BB0_314 Depth 2
                                        ;       Child Loop BB0_316 Depth 3
                                        ;       Child Loop BB0_318 Depth 3
                                        ;     Child Loop BB0_322 Depth 2
                                        ;     Child Loop BB0_324 Depth 2
                                        ;     Child Loop BB0_289 Depth 2
                                        ;       Child Loop BB0_291 Depth 3
                                        ;       Child Loop BB0_293 Depth 3
                                        ;     Child Loop BB0_721 Depth 2
                                        ;       Child Loop BB0_723 Depth 3
                                        ;       Child Loop BB0_725 Depth 3
                                        ;     Child Loop BB0_521 Depth 2
                                        ;     Child Loop BB0_533 Depth 2
                                        ;     Child Loop BB0_536 Depth 2
                                        ;     Child Loop BB0_547 Depth 2
                                        ;     Child Loop BB0_550 Depth 2
                                        ;     Child Loop BB0_561 Depth 2
                                        ;     Child Loop BB0_570 Depth 2
                                        ;       Child Loop BB0_574 Depth 3
                                        ;         Child Loop BB0_576 Depth 4
                                        ;         Child Loop BB0_578 Depth 4
                                        ;       Child Loop BB0_581 Depth 3
                                        ;       Child Loop BB0_584 Depth 3
                                        ;       Child Loop BB0_586 Depth 3
                                        ;       Child Loop BB0_588 Depth 3
                                        ;       Child Loop BB0_590 Depth 3
                                        ;       Child Loop BB0_592 Depth 3
                                        ;       Child Loop BB0_594 Depth 3
                                        ;       Child Loop BB0_596 Depth 3
                                        ;       Child Loop BB0_598 Depth 3
                                        ;       Child Loop BB0_601 Depth 3
                                        ;       Child Loop BB0_603 Depth 3
                                        ;       Child Loop BB0_605 Depth 3
                                        ;       Child Loop BB0_607 Depth 3
                                        ;       Child Loop BB0_609 Depth 3
                                        ;       Child Loop BB0_611 Depth 3
                                        ;       Child Loop BB0_613 Depth 3
                                        ;       Child Loop BB0_615 Depth 3
                                        ;         Child Loop BB0_617 Depth 4
                                        ;         Child Loop BB0_619 Depth 4
                                        ;       Child Loop BB0_622 Depth 3
                                        ;       Child Loop BB0_624 Depth 3
                                        ;       Child Loop BB0_626 Depth 3
                                        ;       Child Loop BB0_628 Depth 3
                                        ;       Child Loop BB0_630 Depth 3
                                        ;         Child Loop BB0_632 Depth 4
                                        ;         Child Loop BB0_634 Depth 4
                                        ;       Child Loop BB0_637 Depth 3
                                        ;       Child Loop BB0_639 Depth 3
                                        ;       Child Loop BB0_641 Depth 3
                                        ;       Child Loop BB0_643 Depth 3
                                        ;     Child Loop BB0_647 Depth 2
                                        ;       Child Loop BB0_649 Depth 3
                                        ;       Child Loop BB0_651 Depth 3
                                        ;     Child Loop BB0_564 Depth 2
                                        ;       Child Loop BB0_566 Depth 3
                                        ;       Child Loop BB0_568 Depth 3
                                        ;     Child Loop BB0_191 Depth 2
                                        ;       Child Loop BB0_194 Depth 3
                                        ;       Child Loop BB0_196 Depth 3
                                        ;     Child Loop BB0_198 Depth 2
                                        ;       Child Loop BB0_201 Depth 3
                                        ;       Child Loop BB0_203 Depth 3
                                        ;     Child Loop BB0_205 Depth 2
                                        ;       Child Loop BB0_208 Depth 3
                                        ;       Child Loop BB0_210 Depth 3
                                        ;     Child Loop BB0_212 Depth 2
                                        ;       Child Loop BB0_215 Depth 3
                                        ;       Child Loop BB0_217 Depth 3
                                        ;     Child Loop BB0_219 Depth 2
                                        ;       Child Loop BB0_222 Depth 3
                                        ;       Child Loop BB0_224 Depth 3
                                        ;     Child Loop BB0_226 Depth 2
                                        ;       Child Loop BB0_229 Depth 3
                                        ;       Child Loop BB0_231 Depth 3
                                        ;     Child Loop BB0_233 Depth 2
                                        ;       Child Loop BB0_236 Depth 3
                                        ;       Child Loop BB0_238 Depth 3
                                        ;     Child Loop BB0_240 Depth 2
                                        ;       Child Loop BB0_243 Depth 3
                                        ;       Child Loop BB0_245 Depth 3
                                        ;     Child Loop BB0_247 Depth 2
                                        ;       Child Loop BB0_250 Depth 3
                                        ;       Child Loop BB0_252 Depth 3
                                        ;     Child Loop BB0_254 Depth 2
                                        ;       Child Loop BB0_257 Depth 3
                                        ;       Child Loop BB0_259 Depth 3
                                        ;     Child Loop BB0_261 Depth 2
                                        ;       Child Loop BB0_264 Depth 3
                                        ;       Child Loop BB0_266 Depth 3
                                        ;     Child Loop BB0_268 Depth 2
                                        ;       Child Loop BB0_270 Depth 3
                                        ;       Child Loop BB0_272 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r9, L_BB0_20
	b	L_BB0_18
L_BB0_18:                               ;   in Loop: Header=BB0_17 Depth=1
	bne	r3, r10, L_BB0_23
	b	L_BB0_19
L_BB0_19:                               ; %.preheader155
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r6, [r15 + #76]
	b	L_BB0_21
L_BB0_21:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_21
	b	L_BB0_22
L_BB0_22:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r6, [r13 + #0]
L_BB0_23:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_23
	b	L_BB0_24
L_BB0_24:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_17
L_BB0_20:                               ; %.preheader154
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r9, #0
	lw	r6, [r15 + #76]
	b	L_BB0_68
L_BB0_66:                               ;   in Loop: Header=BB0_68 Depth=2
	andi	r3, r3, #127
	addi	r2, r2, #1
L_BB0_67:                               ;   in Loop: Header=BB0_68 Depth=2
	sw	r3, [r13 + #0]
L_BB0_68:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_46 Depth 3
                                        ;       Child Loop BB0_65 Depth 3
                                        ;       Child Loop BB0_56 Depth 3
                                        ;       Child Loop BB0_58 Depth 3
                                        ;       Child Loop BB0_60 Depth 3
	b	L_BB0_46
L_BB0_50:                               ;   in Loop: Header=BB0_46 Depth=3
	addi	r5, r0, #127
	be	r4, r5, L_BB0_55
	b	L_BB0_51
L_BB0_55:                               ;   in Loop: Header=BB0_46 Depth=3
	lw	r3, [r15 + #92]
	blt	r2, r3, L_BB0_46
	b	L_BB0_56
L_BB0_46:                               ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_68 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r3, r3, #2
	be	r3, r9, L_BB0_46
	b	L_BB0_47
L_BB0_47:                               ;   in Loop: Header=BB0_46 Depth=3
	lw	r3, [r12 + #0]
	lw	r5, [r15 + #100]
	andi	r4, r3, #255
	blt	r5, r4, L_BB0_50
	b	L_BB0_48
L_BB0_48:                               ;   in Loop: Header=BB0_46 Depth=3
	lw	r5, [r15 + #88]
	be	r4, r5, L_BB0_55
	b	L_BB0_49
L_BB0_49:                               ;   in Loop: Header=BB0_46 Depth=3
	be	r4, r10, L_BB0_52
	b	L_BB0_62
L_BB0_51:                               ;   in Loop: Header=BB0_46 Depth=3
	bne	r4, r6, L_BB0_62
	b	L_BB0_52
L_BB0_62:                               ;   in Loop: Header=BB0_46 Depth=3
	slli	r4, r3, #24
	addi	r5, r0, #32
	srai	r4, r4, #24
	blt	r4, r5, L_BB0_46
	b	L_BB0_63
L_BB0_63:                               ;   in Loop: Header=BB0_46 Depth=3
	addi	r4, r0, #158
	blt	r4, r2, L_BB0_46
	b	L_BB0_64
L_BB0_64:                               ;   in Loop: Header=BB0_68 Depth=2
	lw	r4, [r15 + #24]
	add	r4, r4, r2
	sb	r3, [r4 + #0]
L_BB0_65:                               ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_68 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_65
	b	L_BB0_66
L_BB0_56:                               ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_68 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r8 + #0]
	andi	r4, r3, #1
	addi	r3, r0, #0
	be	r4, r3, L_BB0_56
	b	L_BB0_57
L_BB0_57:                               ;   in Loop: Header=BB0_68 Depth=2
	lw	r4, [r15 + #88]
	sw	r4, [r13 + #0]
L_BB0_58:                               ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_68 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_58
	b	L_BB0_59
L_BB0_59:                               ;   in Loop: Header=BB0_68 Depth=2
	addi	r4, r0, #32
	sw	r4, [r13 + #0]
L_BB0_60:                               ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_68 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r3, L_BB0_60
	b	L_BB0_61
L_BB0_61:                               ;   in Loop: Header=BB0_68 Depth=2
	addi	r2, r2, #-1
	lw	r3, [r15 + #88]
	b	L_BB0_67
L_BB0_52:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	addi	r12, r0, #0
	andi	r3, r3, #1
	be	r3, r12, L_BB0_52
	b	L_BB0_53
L_BB0_53:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r6, [r13 + #0]
L_BB0_54:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r12, L_BB0_54
	b	L_BB0_69
L_BB0_69:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r10, [r13 + #0]
	lw	r3, [r15 + #24]
	add	r2, r3, r2
	sb	r12, [r2 + #0]
	lw	r7, [r15 + #12]
	lw	r10, [r15 + #8]
L_BB0_70:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r2, [r3 + #0]
	addi	r5, r0, #9
	be	r2, r5, L_BB0_74
	b	L_BB0_71
L_BB0_71:                               ;   in Loop: Header=BB0_70 Depth=2
	addi	r4, r0, #32
	be	r2, r4, L_BB0_74
	b	L_BB0_72
L_BB0_74:                               ;   in Loop: Header=BB0_70 Depth=2
	addi	r7, r7, #1
	addi	r10, r10, #1
	addi	r3, r3, #1
	b	L_BB0_70
L_BB0_72:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r4, [r15 + #96]
	be	r2, r12, L_BB0_45
	b	L_BB0_73
L_BB0_73:                               ; %.preheader152
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r7, [r15 + #32]
	addi	r4, r15, #104
	lw	r13, [r15 + #4]
	b	L_BB0_75
L_BB0_77:                               ;   in Loop: Header=BB0_75 Depth=2
	addi	r13, r13, #1
	addi	r4, r4, #1
	b	L_BB0_75
L_BB0_75:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r3, [r4 + #0]
	lw	r7, [r15 + #96]
	be	r3, r7, L_BB0_77
	b	L_BB0_76
L_BB0_76:                               ;   in Loop: Header=BB0_75 Depth=2
	bne	r3, r5, L_BB0_78
	b	L_BB0_77
L_BB0_78:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r3, #-58
	sw	r5, [r15 + #80]
	addi	r7, r0, #250
	addi	r5, r0, #245
	andi	r4, r4, #255
	sw	r7, [r15 + #28]
	sw	r5, [r15 + #84]
	bltu	r5, r4, L_BB0_80
	b	L_BB0_79
L_BB0_79:                               ;   in Loop: Header=BB0_17 Depth=1
	andi	r4, r3, #223
	lw	r5, [r15 + #28]
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r4, r5, L_BB0_168
	b	L_BB0_80
L_BB0_80:                               ; %.preheader150
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r5, [r15 + #80]
L_BB0_81:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r3, #255
	be	r4, r5, L_BB0_84
	b	L_BB0_82
L_BB0_82:                               ;   in Loop: Header=BB0_81 Depth=2
	lw	r7, [r15 + #96]
	be	r4, r7, L_BB0_84
	b	L_BB0_83
L_BB0_84:                               ;   in Loop: Header=BB0_81 Depth=2
	addi	r3, r13, #-1
	addi	r4, r13, #1
	lbu	r3, [r3 + #0]
	addi	r13, r4, #0
	b	L_BB0_81
L_BB0_83:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r0, #48
	sw	r5, [r15 + #0]
	be	r4, r5, L_BB0_85
	b	L_BB0_88
L_BB0_85:                               ;   in Loop: Header=BB0_17 Depth=1
	lbu	r3, [r13 + #-1]
	addi	r4, r0, #120
	ori	r3, r3, #32
	be	r3, r4, L_BB0_87
	b	L_BB0_86
L_BB0_87:                               ;   in Loop: Header=BB0_17 Depth=1
	lbu	r3, [r13 + #0]
	b	L_BB0_89
L_BB0_88:                               ; %.loopexit151
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r13, r13, #-2
L_BB0_89:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r3, #-58
	addi	r5, r0, #246
	andi	r4, r4, #255
	sltu	r7, r4, r5
	lw	r5, [r15 + #84]
	bltu	r5, r4, L_BB0_91
	b	L_BB0_90
L_BB0_90:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #-33
	lw	r5, [r15 + #28]
	and	r4, r3, r4
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r4, r5, L_BB0_168
	b	L_BB0_91
L_BB0_168:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #80]
	lw	r5, [r15 + #96]
	lw	r7, [r15 + #32]
	addi	r3, r2, #-97
L_BB0_169:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r12, [r10 + #0]
	be	r12, r5, L_BB0_171
	b	L_BB0_170
L_BB0_170:                              ;   in Loop: Header=BB0_169 Depth=2
	bne	r12, r4, L_BB0_172
	b	L_BB0_171
L_BB0_171:                              ;   in Loop: Header=BB0_169 Depth=2
	addi	r7, r7, #1
	addi	r10, r10, #1
	b	L_BB0_169
L_BB0_172:                              ;   in Loop: Header=BB0_17 Depth=1
	andi	r3, r3, #255
	addi	r5, r0, #26
	addi	r4, r2, #-32
	sltu	r5, r3, r5
	addi	r3, r0, #0
	xor	r4, r4, r2
	sub	r5, r3, r5
	and	r4, r4, r5
	xor	r2, r2, r4
	addi	r4, r0, #70
	andi	r2, r2, #255
	blt	r4, r2, L_BB0_178
	b	L_BB0_173
L_BB0_173:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	addi	r3, r0, #67
	li	r13, #1073741824
	blt	r3, r2, L_BB0_176
	b	L_BB0_174
L_BB0_174:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r5, [r15 + #80]
	addi	r4, r0, #63
	be	r2, r4, L_BB0_190
	b	L_BB0_175
L_BB0_175:                              ;   in Loop: Header=BB0_17 Depth=1
	be	r2, r3, L_BB0_184
	b	L_BB0_189
L_BB0_184:                              ; %.preheader122
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_521
L_BB0_524:                              ;   in Loop: Header=BB0_521 Depth=2
	addi	r3, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r3 + #0]
	addi	r7, r2, #0
	b	L_BB0_521
L_BB0_521:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_524
	b	L_BB0_522
L_BB0_522:                              ;   in Loop: Header=BB0_521 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_524
	b	L_BB0_523
L_BB0_523:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #48
	be	r2, r4, L_BB0_525
	b	L_BB0_529
L_BB0_525:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_528
	b	L_BB0_526
L_BB0_528:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_530
L_BB0_178:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	addi	r4, r0, #76
	li	r13, #1073741824
	blt	r4, r2, L_BB0_181
	b	L_BB0_179
L_BB0_179:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #80]
	addi	r3, r0, #71
	be	r2, r3, L_BB0_183
	b	L_BB0_180
L_BB0_180:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r0, #72
	be	r2, r3, L_BB0_190
	b	L_BB0_189
L_BB0_190:                              ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.8
L_BB0_191:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_194 Depth 3
                                        ;       Child Loop BB0_196 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_194
	b	L_BB0_192
L_BB0_192:                              ;   in Loop: Header=BB0_191 Depth=2
	addi	r2, r0, #0
	bne	r4, r2, L_BB0_196
	b	L_BB0_193
L_BB0_194:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_191 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	addi	r5, r0, #0
	andi	r2, r2, #1
	be	r2, r5, L_BB0_194
	b	L_BB0_195
L_BB0_195:                              ;   in Loop: Header=BB0_191 Depth=2
	sw	r6, [r13 + #0]
L_BB0_196:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_191 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	addi	r5, r0, #0
	andi	r2, r2, #1
	be	r2, r5, L_BB0_196
	b	L_BB0_197
L_BB0_197:                              ;   in Loop: Header=BB0_191 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_191
L_BB0_176:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r5, [r15 + #80]
	addi	r3, r0, #68
	be	r2, r3, L_BB0_188
	b	L_BB0_177
L_BB0_177:                              ;   in Loop: Header=BB0_17 Depth=1
	be	r2, r4, L_BB0_186
	b	L_BB0_189
L_BB0_186:                              ; %.preheader97
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_389
L_BB0_392:                              ;   in Loop: Header=BB0_389 Depth=2
	addi	r3, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r3 + #0]
	addi	r7, r2, #0
	b	L_BB0_389
L_BB0_389:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_392
	b	L_BB0_390
L_BB0_390:                              ;   in Loop: Header=BB0_389 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_392
	b	L_BB0_391
L_BB0_391:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r0, #48
	sw	r3, [r15 + #48]
	be	r2, r3, L_BB0_393
	b	L_BB0_397
L_BB0_393:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_396
	b	L_BB0_394
L_BB0_396:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_398
L_BB0_181:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r5, [r15 + #80]
	addi	r4, r0, #77
	be	r2, r4, L_BB0_185
	b	L_BB0_182
L_BB0_182:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #87
	be	r2, r4, L_BB0_187
	b	L_BB0_189
L_BB0_187:                              ; %.preheader88
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_326
L_BB0_329:                              ;   in Loop: Header=BB0_326 Depth=2
	addi	r4, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r4 + #0]
	addi	r7, r2, #0
	b	L_BB0_326
L_BB0_326:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_329
	b	L_BB0_327
L_BB0_327:                              ;   in Loop: Header=BB0_326 Depth=2
	lw	r4, [r15 + #96]
	be	r2, r4, L_BB0_329
	b	L_BB0_328
L_BB0_328:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #48
	sw	r4, [r15 + #56]
	be	r2, r4, L_BB0_330
	b	L_BB0_334
L_BB0_330:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r4, r0, #120
	ori	r2, r2, #32
	be	r2, r4, L_BB0_333
	b	L_BB0_331
L_BB0_333:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_335
L_BB0_193:                              ; %.preheader68
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.9
	li	r12, #1073741828
	b	L_BB0_198
L_BB0_198:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_201 Depth 3
                                        ;       Child Loop BB0_203 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_201
	b	L_BB0_199
L_BB0_199:                              ;   in Loop: Header=BB0_198 Depth=2
	bne	r4, r2, L_BB0_203
	b	L_BB0_200
L_BB0_201:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_198 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_201
	b	L_BB0_202
L_BB0_202:                              ;   in Loop: Header=BB0_198 Depth=2
	sw	r6, [r13 + #0]
L_BB0_203:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_198 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_203
	b	L_BB0_204
L_BB0_204:                              ;   in Loop: Header=BB0_198 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_198
L_BB0_200:                              ; %.preheader67
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.10
	b	L_BB0_205
L_BB0_205:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_208 Depth 3
                                        ;       Child Loop BB0_210 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_208
	b	L_BB0_206
L_BB0_206:                              ;   in Loop: Header=BB0_205 Depth=2
	bne	r4, r2, L_BB0_210
	b	L_BB0_207
L_BB0_208:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_205 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_208
	b	L_BB0_209
L_BB0_209:                              ;   in Loop: Header=BB0_205 Depth=2
	sw	r6, [r13 + #0]
L_BB0_210:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_205 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_210
	b	L_BB0_211
L_BB0_211:                              ;   in Loop: Header=BB0_205 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_205
L_BB0_207:                              ; %.preheader66
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.11
	b	L_BB0_212
L_BB0_212:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_215 Depth 3
                                        ;       Child Loop BB0_217 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_215
	b	L_BB0_213
L_BB0_213:                              ;   in Loop: Header=BB0_212 Depth=2
	bne	r4, r2, L_BB0_217
	b	L_BB0_214
L_BB0_215:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_212 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_215
	b	L_BB0_216
L_BB0_216:                              ;   in Loop: Header=BB0_212 Depth=2
	sw	r6, [r13 + #0]
L_BB0_217:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_212 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_217
	b	L_BB0_218
L_BB0_218:                              ;   in Loop: Header=BB0_212 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_212
L_BB0_214:                              ; %.preheader65
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.12
	b	L_BB0_219
L_BB0_219:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_222 Depth 3
                                        ;       Child Loop BB0_224 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_222
	b	L_BB0_220
L_BB0_220:                              ;   in Loop: Header=BB0_219 Depth=2
	bne	r4, r2, L_BB0_224
	b	L_BB0_221
L_BB0_222:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_219 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_222
	b	L_BB0_223
L_BB0_223:                              ;   in Loop: Header=BB0_219 Depth=2
	sw	r6, [r13 + #0]
L_BB0_224:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_219 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_224
	b	L_BB0_225
L_BB0_225:                              ;   in Loop: Header=BB0_219 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_219
L_BB0_221:                              ; %.preheader64
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.13
	b	L_BB0_226
L_BB0_226:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_229 Depth 3
                                        ;       Child Loop BB0_231 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_229
	b	L_BB0_227
L_BB0_227:                              ;   in Loop: Header=BB0_226 Depth=2
	bne	r4, r2, L_BB0_231
	b	L_BB0_228
L_BB0_229:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_226 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_229
	b	L_BB0_230
L_BB0_230:                              ;   in Loop: Header=BB0_226 Depth=2
	sw	r6, [r13 + #0]
L_BB0_231:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_226 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_231
	b	L_BB0_232
L_BB0_232:                              ;   in Loop: Header=BB0_226 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_226
L_BB0_228:                              ; %.preheader63
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.14
	b	L_BB0_233
L_BB0_233:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_236 Depth 3
                                        ;       Child Loop BB0_238 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_236
	b	L_BB0_234
L_BB0_234:                              ;   in Loop: Header=BB0_233 Depth=2
	bne	r4, r2, L_BB0_238
	b	L_BB0_235
L_BB0_236:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_233 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_236
	b	L_BB0_237
L_BB0_237:                              ;   in Loop: Header=BB0_233 Depth=2
	sw	r6, [r13 + #0]
L_BB0_238:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_233 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_238
	b	L_BB0_239
L_BB0_239:                              ;   in Loop: Header=BB0_233 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_233
L_BB0_235:                              ; %.preheader62
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.15
	b	L_BB0_240
L_BB0_240:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_243 Depth 3
                                        ;       Child Loop BB0_245 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_243
	b	L_BB0_241
L_BB0_241:                              ;   in Loop: Header=BB0_240 Depth=2
	bne	r4, r2, L_BB0_245
	b	L_BB0_242
L_BB0_243:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_243
	b	L_BB0_244
L_BB0_244:                              ;   in Loop: Header=BB0_240 Depth=2
	sw	r6, [r13 + #0]
L_BB0_245:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_240 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_245
	b	L_BB0_246
L_BB0_246:                              ;   in Loop: Header=BB0_240 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_240
L_BB0_242:                              ; %.preheader61
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.16
	b	L_BB0_247
L_BB0_247:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_250 Depth 3
                                        ;       Child Loop BB0_252 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_250
	b	L_BB0_248
L_BB0_248:                              ;   in Loop: Header=BB0_247 Depth=2
	bne	r4, r2, L_BB0_252
	b	L_BB0_249
L_BB0_250:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_247 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_250
	b	L_BB0_251
L_BB0_251:                              ;   in Loop: Header=BB0_247 Depth=2
	sw	r6, [r13 + #0]
L_BB0_252:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_247 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_252
	b	L_BB0_253
L_BB0_253:                              ;   in Loop: Header=BB0_247 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_247
L_BB0_249:                              ; %.preheader60
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.17
	b	L_BB0_254
L_BB0_254:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_257 Depth 3
                                        ;       Child Loop BB0_259 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_257
	b	L_BB0_255
L_BB0_255:                              ;   in Loop: Header=BB0_254 Depth=2
	bne	r4, r2, L_BB0_259
	b	L_BB0_256
L_BB0_257:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_254 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_257
	b	L_BB0_258
L_BB0_258:                              ;   in Loop: Header=BB0_254 Depth=2
	sw	r6, [r13 + #0]
L_BB0_259:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_254 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_259
	b	L_BB0_260
L_BB0_260:                              ;   in Loop: Header=BB0_254 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_254
L_BB0_256:                              ; %.preheader59
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.18
	b	L_BB0_261
L_BB0_261:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_264 Depth 3
                                        ;       Child Loop BB0_266 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_264
	b	L_BB0_262
L_BB0_262:                              ;   in Loop: Header=BB0_261 Depth=2
	bne	r4, r2, L_BB0_266
	b	L_BB0_263
L_BB0_264:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_261 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_264
	b	L_BB0_265
L_BB0_265:                              ;   in Loop: Header=BB0_261 Depth=2
	sw	r6, [r13 + #0]
L_BB0_266:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_261 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_266
	b	L_BB0_267
L_BB0_267:                              ;   in Loop: Header=BB0_261 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_261
L_BB0_263:                              ; %.preheader57
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.19
	b	L_BB0_268
L_BB0_268:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_270 Depth 3
                                        ;       Child Loop BB0_272 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_270
	b	L_BB0_269
L_BB0_269:                              ;   in Loop: Header=BB0_268 Depth=2
	be	r4, r2, L_BB0_26
	b	L_BB0_272
L_BB0_270:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_268 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_270
	b	L_BB0_271
L_BB0_271:                              ;   in Loop: Header=BB0_268 Depth=2
	sw	r6, [r13 + #0]
L_BB0_272:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_268 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_272
	b	L_BB0_273
L_BB0_273:                              ;   in Loop: Header=BB0_268 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_268
L_BB0_26:                               ; %.loopexit58
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_183:                              ; %.preheader137
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_653
L_BB0_656:                              ;   in Loop: Header=BB0_653 Depth=2
	addi	r3, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r3 + #0]
	addi	r7, r2, #0
	b	L_BB0_653
L_BB0_653:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r4, L_BB0_656
	b	L_BB0_654
L_BB0_654:                              ;   in Loop: Header=BB0_653 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_656
	b	L_BB0_655
L_BB0_655:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #48
	be	r2, r4, L_BB0_657
	b	L_BB0_661
L_BB0_657:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_660
	b	L_BB0_658
L_BB0_660:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r4, [r7 + #0]
	li	r12, #1073741828
	b	L_BB0_662
L_BB0_188:                              ; %.preheader77
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_274
L_BB0_277:                              ;   in Loop: Header=BB0_274 Depth=2
	addi	r3, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r3 + #0]
	addi	r7, r2, #0
	b	L_BB0_274
L_BB0_274:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_277
	b	L_BB0_275
L_BB0_275:                              ;   in Loop: Header=BB0_274 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_277
	b	L_BB0_276
L_BB0_276:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r0, #48
	sw	r3, [r15 + #56]
	be	r2, r3, L_BB0_278
	b	L_BB0_282
L_BB0_278:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_281
	b	L_BB0_279
L_BB0_281:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_283
L_BB0_185:                              ; %.preheader111
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #96]
	b	L_BB0_447
L_BB0_450:                              ;   in Loop: Header=BB0_447 Depth=2
	addi	r3, r7, #-1
	addi	r2, r7, #1
	lbu	r12, [r3 + #0]
	addi	r7, r2, #0
	b	L_BB0_447
L_BB0_447:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r12, #255
	be	r2, r5, L_BB0_450
	b	L_BB0_448
L_BB0_448:                              ;   in Loop: Header=BB0_447 Depth=2
	be	r2, r4, L_BB0_450
	b	L_BB0_449
L_BB0_449:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #48
	be	r2, r4, L_BB0_451
	b	L_BB0_455
L_BB0_451:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r7 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_454
	b	L_BB0_452
L_BB0_454:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r7 + #0]
	b	L_BB0_456
L_BB0_189:                              ; %.preheader55
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.3
	li	r12, #1073741828
	b	L_BB0_721
L_BB0_721:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_723 Depth 3
                                        ;       Child Loop BB0_725 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_723
	b	L_BB0_722
L_BB0_722:                              ;   in Loop: Header=BB0_721 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_25
	b	L_BB0_725
L_BB0_723:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_721 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_723
	b	L_BB0_724
L_BB0_724:                              ;   in Loop: Header=BB0_721 Depth=2
	sw	r6, [r13 + #0]
L_BB0_725:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_721 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_725
	b	L_BB0_726
L_BB0_726:                              ;   in Loop: Header=BB0_721 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_721
L_BB0_25:                               ; %.loopexit56
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_86:                               ; %._crit_edge
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r13, r13, #-2
	addi	r3, r0, #48
	addi	r7, r0, #0
	b	L_BB0_91
L_BB0_91:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r13, #4
	sw	r7, [r15 + #68]
	sw	r4, [r15 + #64]
	addi	r4, r13, #2
	sw	r4, [r15 + #60]
	sw	r12, [r15 + #72]
L_BB0_92:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r15 + #60]
	addi	r6, r3, #-97
	addi	r7, r0, #6
	slli	r3, r3, #24
	addi	r13, r13, #1
	andi	r6, r6, #255
	srai	r3, r3, #24
	sw	r4, [r15 + #56]
	sltu	r6, r6, r7
	lw	r5, [r15 + #64]
	lw	r4, [r15 + #68]
	sub	r6, r12, r6
	sw	r7, [r15 + #44]
	andi	r6, r6, #96
	andi	r4, r4, #1
	ori	r6, r6, #25
	sub	r4, r12, r4
	and	r4, r6, r4
	addi	r6, r0, #-48
	xor	r4, r4, r6
	sw	r6, [r15 + #40]
	add	r3, r4, r3
	lw	r4, [r15 + #72]
	slli	r4, r4, #4
	or	r3, r3, r4
	sw	r3, [r15 + #72]
	lbu	r3, [r13 + #0]
	addi	r4, r3, #-58
	andi	r7, r4, #255
	addi	r4, r0, #246
	sw	r4, [r15 + #48]
	sltu	r4, r7, r4
	sw	r4, [r15 + #68]
	addi	r4, r5, #1
	sw	r5, [r15 + #52]
	sw	r4, [r15 + #64]
	lw	r5, [r15 + #56]
	addi	r4, r5, #1
	sw	r4, [r15 + #60]
	lw	r4, [r15 + #84]
	bltu	r4, r7, L_BB0_92
	b	L_BB0_93
L_BB0_93:                               ;   in Loop: Header=BB0_92 Depth=2
	addi	r4, r0, #-33
	and	r7, r3, r4
	addi	r7, r7, #-71
	andi	r6, r7, #255
	addi	r7, r0, #249
	sw	r6, [r15 + #36]
	lw	r6, [r15 + #36]
	bltu	r7, r6, L_BB0_92
	b	L_BB0_94
L_BB0_94:                               ; %.preheader148
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r4, [r15 + #64]
	lw	r4, [r15 + #100]
	lw	r6, [r15 + #76]
	lw	r13, [r15 + #96]
L_BB0_95:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r3, #255
	addi	r4, r0, #31
	blt	r4, r3, L_BB0_98
	b	L_BB0_96
L_BB0_98:                               ;   in Loop: Header=BB0_95 Depth=2
	be	r3, r13, L_BB0_103
	b	L_BB0_99
L_BB0_96:                               ;   in Loop: Header=BB0_95 Depth=2
	lw	r4, [r15 + #80]
	be	r3, r4, L_BB0_103
	b	L_BB0_97
L_BB0_103:                              ;   in Loop: Header=BB0_95 Depth=2
	lw	r3, [r15 + #52]
	addi	r4, r5, #1
	addi	r3, r3, #1
	sw	r3, [r15 + #52]
	lbu	r3, [r5 + #0]
	addi	r5, r4, #0
	b	L_BB0_95
L_BB0_99:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #46
	be	r3, r4, L_BB0_102
	b	L_BB0_100
L_BB0_100:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #58
	be	r3, r4, L_BB0_104
	b	L_BB0_168
L_BB0_104:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r7, [r15 + #60]
	li	r13, #1073741824
	li	r12, #1073741828
	lw	r10, [r15 + #20]
L_BB0_105:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_106 Depth 3
                                        ;       Child Loop BB0_111 Depth 3
                                        ;       Child Loop BB0_123 Depth 3
	addi	r2, r5, #2
L_BB0_106:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_105 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lbu	r4, [r5 + #0]
	lw	r3, [r15 + #80]
	be	r4, r3, L_BB0_110
	b	L_BB0_107
L_BB0_107:                              ;   in Loop: Header=BB0_106 Depth=3
	lw	r3, [r15 + #96]
	be	r4, r3, L_BB0_110
	b	L_BB0_108
L_BB0_110:                              ;   in Loop: Header=BB0_106 Depth=3
	addi	r2, r2, #1
	addi	r5, r5, #1
	b	L_BB0_106
L_BB0_108:                              ;   in Loop: Header=BB0_105 Depth=2
	addi	r3, r0, #0
	sw	r3, [r15 + #68]
	be	r4, r3, L_BB0_132
	b	L_BB0_109
L_BB0_109:                              ; %.preheader50
                                        ;   in Loop: Header=BB0_105 Depth=2
	lw	r7, [r15 + #60]
	b	L_BB0_111
L_BB0_114:                              ;   in Loop: Header=BB0_111 Depth=3
	addi	r5, r2, #1
	addi	r2, r2, #-1
	lbu	r4, [r2 + #0]
	addi	r2, r5, #0
	b	L_BB0_111
L_BB0_111:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_105 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r3, [r15 + #80]
	andi	r5, r4, #255
	be	r5, r3, L_BB0_114
	b	L_BB0_112
L_BB0_112:                              ;   in Loop: Header=BB0_111 Depth=3
	lw	r3, [r15 + #96]
	be	r5, r3, L_BB0_114
	b	L_BB0_113
L_BB0_113:                              ;   in Loop: Header=BB0_105 Depth=2
	lw	r3, [r15 + #0]
	be	r5, r3, L_BB0_115
	b	L_BB0_118
L_BB0_115:                              ;   in Loop: Header=BB0_105 Depth=2
	lbu	r4, [r2 + #-1]
	addi	r5, r0, #120
	ori	r4, r4, #32
	be	r4, r5, L_BB0_117
	b	L_BB0_116
L_BB0_117:                              ;   in Loop: Header=BB0_105 Depth=2
	lbu	r4, [r2 + #0]
	b	L_BB0_119
L_BB0_118:                              ; %.loopexit51
                                        ;   in Loop: Header=BB0_105 Depth=2
	addi	r2, r2, #-2
L_BB0_119:                              ;   in Loop: Header=BB0_105 Depth=2
	addi	r5, r4, #-58
	lw	r3, [r15 + #48]
	andi	r6, r5, #255
	sltu	r5, r6, r3
	lw	r3, [r15 + #84]
	bltu	r3, r6, L_BB0_122
	b	L_BB0_120
L_BB0_120:                              ;   in Loop: Header=BB0_105 Depth=2
	lw	r3, [r15 + #64]
	and	r6, r4, r3
	addi	r6, r6, #-71
	andi	r6, r6, #255
	bltu	r7, r6, L_BB0_122
	b	L_BB0_121
L_BB0_116:                              ; %._crit_edge205
                                        ;   in Loop: Header=BB0_105 Depth=2
	addi	r2, r2, #-2
	addi	r5, r0, #0
	lw	r4, [r15 + #0]
	b	L_BB0_122
L_BB0_122:                              ;   in Loop: Header=BB0_105 Depth=2
	lw	r6, [r15 + #68]
L_BB0_123:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_105 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	addi	r7, r4, #-97
	lw	r12, [r15 + #68]
	lw	r3, [r15 + #44]
	andi	r5, r5, #1
	andi	r4, r4, #255
	addi	r2, r2, #1
	andi	r7, r7, #255
	sltu	r7, r7, r3
	sub	r5, r12, r5
	lw	r3, [r15 + #40]
	sub	r7, r12, r7
	andi	r7, r7, #96
	ori	r7, r7, #25
	and	r5, r7, r5
	xor	r5, r5, r3
	add	r4, r5, r4
	slli	r5, r6, #4
	or	r6, r4, r5
	lbu	r4, [r2 + #0]
	lw	r3, [r15 + #48]
	addi	r5, r4, #-58
	andi	r7, r5, #255
	sltu	r5, r7, r3
	lw	r3, [r15 + #84]
	bltu	r3, r7, L_BB0_123
	b	L_BB0_124
L_BB0_124:                              ;   in Loop: Header=BB0_123 Depth=3
	lw	r3, [r15 + #64]
	and	r7, r4, r3
	lw	r3, [r15 + #28]
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r7, r3, L_BB0_131
	b	L_BB0_123
L_BB0_131:                              ;   in Loop: Header=BB0_105 Depth=2
	lw	r3, [r15 + #72]
	addi	r5, r2, #0
	li	r12, #1073741828
	sb	r6, [r3 + #0]
	addi	r3, r3, #1
	sw	r3, [r15 + #72]
	lw	r2, [r15 + #100]
	lw	r6, [r15 + #76]
	b	L_BB0_105
L_BB0_97:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #0
	be	r3, r4, L_BB0_101
	b	L_BB0_168
L_BB0_101:                              ; %.preheader147
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_164
L_BB0_164:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_164
	b	L_BB0_165
L_BB0_165:                              ;   in Loop: Header=BB0_17 Depth=1
	li	r3, #1073741824
	sw	r6, [r3 + #0]
	lw	r10, [r15 + #20]
L_BB0_166:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB0_166
	b	L_BB0_167
L_BB0_167:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r10, [r3 + #0]
	lw	r2, [r15 + #72]
	addi	r3, r2, #127
	jal	r11, dump_range
	lw	r2, [r15 + #16]
	li	r13, #1073741824
	lw	r3, [r15 + #100]
	li	r12, #1073741828
	b	L_BB0_17
L_BB0_102:                              ; %.preheader145
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	lw	r2, [r15 + #80]
	li	r12, #1073741828
	lw	r5, [r15 + #52]
	b	L_BB0_139
L_BB0_142:                              ;   in Loop: Header=BB0_139 Depth=2
	addi	r5, r5, #1
	b	L_BB0_139
L_BB0_139:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r3, [r5 + #-2]
	be	r3, r2, L_BB0_142
	b	L_BB0_140
L_BB0_140:                              ;   in Loop: Header=BB0_139 Depth=2
	be	r3, r13, L_BB0_142
	b	L_BB0_141
L_BB0_141:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #48
	be	r3, r2, L_BB0_143
	b	L_BB0_147
L_BB0_143:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r3, [r5 + #-1]
	addi	r4, r0, #120
	li	r13, #1073741824
	ori	r3, r3, #32
	be	r3, r4, L_BB0_146
	b	L_BB0_144
L_BB0_146:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r5, [r15 + #52]
	lbu	r2, [r5 + #0]
	b	L_BB0_148
L_BB0_132:                              ; %.loopexit52
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.4
L_BB0_133:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_135 Depth 3
                                        ;       Child Loop BB0_137 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_135
	b	L_BB0_134
L_BB0_134:                              ;   in Loop: Header=BB0_133 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_43
	b	L_BB0_137
L_BB0_135:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_133 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_135
	b	L_BB0_136
L_BB0_136:                              ;   in Loop: Header=BB0_133 Depth=2
	sw	r6, [r13 + #0]
L_BB0_137:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_133 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_137
	b	L_BB0_138
L_BB0_138:                              ;   in Loop: Header=BB0_133 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_133
L_BB0_43:                               ; %.loopexit141
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_661:                              ; %.loopexit138
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r12, #0
	addi	r7, r7, #-2
	li	r12, #1073741828
L_BB0_662:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r4, #-58
	addi	r3, r0, #246
	andi	r2, r2, #255
	sltu	r5, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_659
	b	L_BB0_663
L_BB0_663:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r3, r0, #249
	and	r2, r4, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r3, r2, L_BB0_659
	b	L_BB0_664
L_BB0_664:                              ; %.preheader124
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.28
	b	L_BB0_668
L_BB0_668:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_670 Depth 3
                                        ;       Child Loop BB0_672 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_670
	b	L_BB0_669
L_BB0_669:                              ;   in Loop: Header=BB0_668 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_40
	b	L_BB0_672
L_BB0_670:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_668 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_670
	b	L_BB0_671
L_BB0_671:                              ;   in Loop: Header=BB0_668 Depth=2
	sw	r6, [r13 + #0]
L_BB0_672:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_668 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_672
	b	L_BB0_673
L_BB0_673:                              ;   in Loop: Header=BB0_668 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_668
L_BB0_282:                              ; %.loopexit78
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
L_BB0_283:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r12, #-58
	addi	r3, r0, #246
	andi	r2, r2, #255
	sltu	r6, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_280
	b	L_BB0_284
L_BB0_284:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r3, r0, #249
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r3, r2, L_BB0_280
	b	L_BB0_285
L_BB0_285:                              ; %.preheader69
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.20
	lw	r6, [r15 + #76]
	li	r12, #1073741828
	b	L_BB0_289
L_BB0_289:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_291 Depth 3
                                        ;       Child Loop BB0_293 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_291
	b	L_BB0_290
L_BB0_290:                              ;   in Loop: Header=BB0_289 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_27
	b	L_BB0_293
L_BB0_291:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_289 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_291
	b	L_BB0_292
L_BB0_292:                              ;   in Loop: Header=BB0_289 Depth=2
	sw	r6, [r13 + #0]
L_BB0_293:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_289 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_293
	b	L_BB0_294
L_BB0_294:                              ;   in Loop: Header=BB0_289 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_289
L_BB0_455:                              ; %.loopexit112
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
L_BB0_456:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r12, #-58
	addi	r3, r0, #246
	andi	r2, r2, #255
	sltu	r5, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_453
	b	L_BB0_457
L_BB0_457:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r3, r0, #249
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r3, r2, L_BB0_453
	b	L_BB0_458
L_BB0_529:                              ; %.loopexit123
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
L_BB0_530:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r12, #-58
	addi	r3, r0, #246
	andi	r2, r2, #255
	sltu	r5, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_527
	b	L_BB0_531
L_BB0_531:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r3, r0, #249
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r3, r2, L_BB0_527
	b	L_BB0_532
L_BB0_397:                              ; %.loopexit98
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
L_BB0_398:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r12, #-58
	addi	r3, r0, #246
	andi	r2, r2, #255
	sltu	r6, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_395
	b	L_BB0_399
L_BB0_399:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r3, r0, #249
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r3, r2, L_BB0_395
	b	L_BB0_400
L_BB0_334:                              ; %.loopexit89
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
L_BB0_335:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r12, #-58
	addi	r4, r0, #246
	andi	r2, r2, #255
	sltu	r5, r2, r4
	lw	r4, [r15 + #84]
	bltu	r4, r2, L_BB0_332
	b	L_BB0_336
L_BB0_336:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #-33
	addi	r4, r0, #249
	and	r2, r12, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r4, r2, L_BB0_332
	b	L_BB0_337
L_BB0_337:                              ; %.preheader79
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.21
	li	r12, #1073741828
	b	L_BB0_341
L_BB0_341:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_343 Depth 3
                                        ;       Child Loop BB0_345 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_343
	b	L_BB0_342
L_BB0_342:                              ;   in Loop: Header=BB0_341 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_29
	b	L_BB0_345
L_BB0_343:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_341 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_343
	b	L_BB0_344
L_BB0_344:                              ;   in Loop: Header=BB0_341 Depth=2
	sw	r6, [r13 + #0]
L_BB0_345:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_341 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_345
	b	L_BB0_346
L_BB0_346:                              ;   in Loop: Header=BB0_341 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_341
L_BB0_147:                              ; %.loopexit146
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r2, r3, #0
	li	r13, #1073741824
	sw	r5, [r15 + #52]
L_BB0_148:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r2, #-58
	lw	r4, [r15 + #48]
	andi	r3, r3, #255
	sltu	r5, r3, r4
	lw	r4, [r15 + #84]
	bltu	r4, r3, L_BB0_145
	b	L_BB0_149
L_BB0_149:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #64]
	and	r3, r2, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r7, r3, L_BB0_145
	b	L_BB0_150
L_BB0_150:                              ; %.preheader142
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.3
	b	L_BB0_154
L_BB0_154:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_156 Depth 3
                                        ;       Child Loop BB0_158 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_156
	b	L_BB0_155
L_BB0_155:                              ;   in Loop: Header=BB0_154 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_44
	b	L_BB0_158
L_BB0_156:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_154 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_156
	b	L_BB0_157
L_BB0_157:                              ;   in Loop: Header=BB0_154 Depth=2
	sw	r6, [r13 + #0]
L_BB0_158:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_154 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_158
	b	L_BB0_159
L_BB0_159:                              ;   in Loop: Header=BB0_154 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_154
L_BB0_40:                               ; %.loopexit125
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_27:                               ; %.loopexit70
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_29:                               ; %.loopexit80
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_44:                               ; %.loopexit143
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_658:                              ; %._crit_edge225
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r5, r0, #0
L_BB0_659:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r6, r7, #1
	addi	r7, r0, #0
	addi	r3, r7, #0
	b	L_BB0_665
L_BB0_665:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r2, r5, #1
	addi	r5, r4, #-97
	addi	r12, r0, #6
	slli	r4, r4, #24
	slli	r3, r3, #4
	andi	r5, r5, #255
	sub	r2, r7, r2
	srai	r4, r4, #24
	sltu	r5, r5, r12
	sub	r5, r7, r5
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r2, r5, r2
	addi	r5, r0, #-48
	xor	r2, r2, r5
	add	r2, r2, r4
	lbu	r4, [r6 + #0]
	lw	r13, [r15 + #84]
	addi	r6, r6, #1
	or	r3, r2, r3
	addi	r5, r4, #-58
	andi	r12, r5, #255
	addi	r5, r0, #246
	sltu	r5, r12, r5
	bltu	r13, r12, L_BB0_665
	b	L_BB0_666
L_BB0_666:                              ;   in Loop: Header=BB0_665 Depth=2
	addi	r12, r0, #-33
	addi	r13, r0, #249
	and	r12, r4, r12
	addi	r12, r12, #-71
	andi	r12, r12, #255
	bltu	r13, r12, L_BB0_665
	b	L_BB0_667
L_BB0_667:                              ; %.preheader136
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r5, .L.str.29
	li	r12, #1073741824
	b	L_BB0_674
L_BB0_674:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_676 Depth 3
                                        ;       Child Loop BB0_678 Depth 3
	lbu	r6, [r5 + #0]
	be	r6, r10, L_BB0_676
	b	L_BB0_675
L_BB0_675:                              ;   in Loop: Header=BB0_674 Depth=2
	addi	r4, r0, #0
	be	r6, r4, L_BB0_680
	b	L_BB0_678
L_BB0_676:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_674 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r7, r0, #0
	andi	r4, r4, #1
	be	r4, r7, L_BB0_676
	b	L_BB0_677
L_BB0_677:                              ;   in Loop: Header=BB0_674 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r12 + #0]
L_BB0_678:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_674 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r7, r0, #0
	andi	r4, r4, #1
	be	r4, r7, L_BB0_678
	b	L_BB0_679
L_BB0_679:                              ;   in Loop: Header=BB0_674 Depth=2
	sw	r6, [r12 + #0]
	addi	r5, r5, #1
	b	L_BB0_674
L_BB0_680:                              ;   in Loop: Header=BB0_17 Depth=1
	srli	r6, r3, #28
	la	r5, .L.str.7
	add	r6, r6, r5
	lbu	r7, [r6 + #0]
	bne	r7, r10, L_BB0_683
	b	L_BB0_681
L_BB0_681:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r4, L_BB0_681
	b	L_BB0_682
L_BB0_682:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r6, [r15 + #76]
	sw	r6, [r12 + #0]
L_BB0_683:                              ;   in Loop: Header=BB0_17 Depth=1
	srli	r12, r3, #24
	srli	r6, r3, #16
L_BB0_684:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r4, L_BB0_684
	b	L_BB0_685
L_BB0_685:                              ;   in Loop: Header=BB0_17 Depth=1
	li	r13, #1073741824
	sw	r7, [r13 + #0]
	andi	r7, r12, #15
	add	r7, r7, r5
	lbu	r7, [r7 + #0]
	bne	r7, r10, L_BB0_688
	b	L_BB0_686
L_BB0_686:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r4, L_BB0_686
	b	L_BB0_687
L_BB0_687:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r12, [r15 + #76]
	sw	r12, [r13 + #0]
L_BB0_688:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r4, L_BB0_688
	b	L_BB0_689
L_BB0_689:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r7, [r13 + #0]
	srli	r7, r3, #20
	andi	r7, r7, #15
	add	r7, r7, r5
	lbu	r7, [r7 + #0]
	bne	r7, r10, L_BB0_692
	b	L_BB0_690
L_BB0_690:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r4, L_BB0_690
	b	L_BB0_691
L_BB0_691:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r12, [r15 + #76]
	sw	r12, [r13 + #0]
L_BB0_692:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r4, L_BB0_692
	b	L_BB0_693
L_BB0_693:                              ;   in Loop: Header=BB0_17 Depth=1
	andi	r6, r6, #15
	sw	r7, [r13 + #0]
	add	r6, r6, r5
	lbu	r6, [r6 + #0]
	bne	r6, r10, L_BB0_696
	b	L_BB0_694
L_BB0_694:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r4, L_BB0_694
	b	L_BB0_695
L_BB0_695:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r7, [r15 + #76]
	sw	r7, [r13 + #0]
L_BB0_696:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r4, L_BB0_696
	b	L_BB0_697
L_BB0_697:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r6, [r13 + #0]
	srli	r6, r3, #12
	andi	r6, r6, #15
	add	r6, r6, r5
	lbu	r6, [r6 + #0]
	bne	r6, r10, L_BB0_700
	b	L_BB0_698
L_BB0_698:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r4, L_BB0_698
	b	L_BB0_699
L_BB0_699:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r7, [r15 + #76]
	sw	r7, [r13 + #0]
L_BB0_700:                              ;   in Loop: Header=BB0_17 Depth=1
	srli	r7, r3, #8
L_BB0_701:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r4, L_BB0_701
	b	L_BB0_702
L_BB0_702:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r6, [r13 + #0]
	andi	r6, r7, #15
	li	r12, #1073741828
	add	r6, r6, r5
	lbu	r6, [r6 + #0]
	bne	r6, r10, L_BB0_705
	b	L_BB0_703
L_BB0_703:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r4, L_BB0_703
	b	L_BB0_704
L_BB0_704:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r7, [r15 + #76]
	sw	r7, [r13 + #0]
L_BB0_705:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r4, L_BB0_705
	b	L_BB0_706
L_BB0_706:                              ;   in Loop: Header=BB0_17 Depth=1
	srli	r3, r3, #4
	sw	r6, [r13 + #0]
	andi	r3, r3, #15
	add	r3, r3, r5
	lbu	r3, [r3 + #0]
	lw	r6, [r15 + #100]
	bne	r3, r10, L_BB0_709
	b	L_BB0_707
L_BB0_707:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r4, L_BB0_707
	b	L_BB0_708
L_BB0_708:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r6, [r15 + #76]
	sw	r6, [r13 + #0]
L_BB0_709:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r4, L_BB0_709
	b	L_BB0_710
L_BB0_710:                              ;   in Loop: Header=BB0_17 Depth=1
	andi	r2, r2, #15
	sw	r3, [r13 + #0]
	add	r2, r2, r5
	lbu	r2, [r2 + #0]
	lw	r6, [r15 + #76]
	bne	r2, r10, L_BB0_713
	b	L_BB0_711
L_BB0_711:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r4, L_BB0_711
	b	L_BB0_712
L_BB0_712:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r6, [r13 + #0]
L_BB0_713:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r4, L_BB0_713
	b	L_BB0_714
L_BB0_714:                              ; %.preheader126
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.30
L_BB0_715:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_717 Depth 3
                                        ;       Child Loop BB0_719 Depth 3
	andi	r2, r2, #255
	sw	r2, [r13 + #0]
	lbu	r2, [r3 + #0]
	be	r2, r10, L_BB0_717
	b	L_BB0_716
L_BB0_716:                              ;   in Loop: Header=BB0_715 Depth=2
	be	r2, r4, L_BB0_41
	b	L_BB0_719
L_BB0_717:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_715 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r4, L_BB0_717
	b	L_BB0_718
L_BB0_718:                              ;   in Loop: Header=BB0_715 Depth=2
	sw	r6, [r13 + #0]
L_BB0_719:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_715 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r4, L_BB0_719
	b	L_BB0_720
L_BB0_720:                              ;   in Loop: Header=BB0_715 Depth=2
	addi	r3, r3, #1
	b	L_BB0_715
L_BB0_41:                               ; %.loopexit127
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_279:                              ; %._crit_edge368
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r6, r0, #0
L_BB0_280:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #0
	addi	r10, r7, #0
	addi	r4, r7, #3
	sw	r2, [r15 + #72]
	b	L_BB0_286
L_BB0_286:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r13, r4, #0
	addi	r4, r12, #-97
	addi	r5, r0, #6
	andi	r3, r6, #1
	andi	r4, r4, #255
	sub	r3, r2, r3
	sw	r5, [r15 + #64]
	sltu	r4, r4, r5
	sub	r4, r2, r4
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r3, r4, r3
	addi	r4, r0, #-48
	sw	r4, [r15 + #60]
	xor	r3, r3, r4
	slli	r4, r12, #24
	srai	r4, r4, #24
	add	r3, r3, r4
	lw	r4, [r15 + #72]
	slli	r4, r4, #4
	or	r3, r3, r4
	addi	r4, r0, #246
	sw	r3, [r15 + #72]
	addi	r3, r10, #0
	addi	r3, r3, #1
	lbu	r12, [r3 + #0]
	addi	r10, r3, #0
	sw	r4, [r15 + #68]
	lw	r5, [r15 + #84]
	addi	r3, r12, #-58
	andi	r3, r3, #255
	sltu	r6, r3, r4
	addi	r4, r13, #1
	bltu	r5, r3, L_BB0_286
	b	L_BB0_287
L_BB0_287:                              ;   in Loop: Header=BB0_286 Depth=2
	addi	r3, r0, #-33
	and	r5, r12, r3
	addi	r5, r5, #-71
	andi	r7, r5, #255
	addi	r5, r0, #249
	bltu	r5, r7, L_BB0_286
	b	L_BB0_288
L_BB0_288:                              ; %.preheader75
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_295
L_BB0_299:                              ;   in Loop: Header=BB0_295 Depth=2
	addi	r10, r10, #1
	addi	r13, r13, #1
	lbu	r12, [r10 + #0]
	b	L_BB0_295
L_BB0_295:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r15 + #80]
	andi	r2, r12, #255
	be	r2, r4, L_BB0_299
	b	L_BB0_296
L_BB0_296:                              ;   in Loop: Header=BB0_295 Depth=2
	lw	r4, [r15 + #96]
	be	r2, r4, L_BB0_299
	b	L_BB0_297
L_BB0_297:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	be	r2, r7, L_BB0_321
	b	L_BB0_298
L_BB0_321:                              ; %.loopexit76
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	addi	r4, r0, #128
	li	r13, #1073741824
L_BB0_322:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r3, r2, #1
	addi	r2, r0, #0
	be	r3, r2, L_BB0_322
	b	L_BB0_323
L_BB0_323:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #76]
	sw	r3, [r13 + #0]
L_BB0_324:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r8 + #0]
	andi	r3, r3, #1
	be	r3, r2, L_BB0_324
	b	L_BB0_325
L_BB0_325:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r10, [r13 + #0]
	lw	r2, [r15 + #72]
	add	r3, r2, r4
	addi	r3, r3, #-1
	jal	r11, dump_range
	lw	r2, [r15 + #16]
	li	r13, #1073741824
	lw	r3, [r15 + #100]
	li	r12, #1073741828
	b	L_BB0_17
L_BB0_298:                              ; %.preheader73
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #56]
	b	L_BB0_300
L_BB0_303:                              ;   in Loop: Header=BB0_300 Depth=2
	addi	r4, r13, #-1
	addi	r2, r13, #1
	lbu	r12, [r4 + #0]
	addi	r13, r2, #0
	b	L_BB0_300
L_BB0_300:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r15 + #80]
	andi	r2, r12, #255
	be	r2, r4, L_BB0_303
	b	L_BB0_301
L_BB0_301:                              ;   in Loop: Header=BB0_300 Depth=2
	lw	r4, [r15 + #96]
	be	r2, r4, L_BB0_303
	b	L_BB0_302
L_BB0_302:                              ;   in Loop: Header=BB0_17 Depth=1
	be	r2, r10, L_BB0_304
	b	L_BB0_308
L_BB0_304:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r13 + #-1]
	addi	r4, r0, #120
	ori	r2, r2, #32
	be	r2, r4, L_BB0_307
	b	L_BB0_305
L_BB0_307:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r10, [r13 + #0]
	li	r12, #1073741828
	b	L_BB0_309
L_BB0_452:                              ; %._crit_edge271
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r5, r0, #0
L_BB0_453:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r6, r0, #0
	sw	r4, [r15 + #48]
	addi	r10, r7, #0
	addi	r3, r7, #3
	sw	r6, [r15 + #72]
	b	L_BB0_459
L_BB0_459:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r4, r12, #-97
	addi	r2, r3, #0
	andi	r3, r5, #1
	addi	r5, r0, #6
	andi	r4, r4, #255
	sub	r3, r6, r3
	sw	r5, [r15 + #64]
	sltu	r4, r4, r5
	slli	r5, r12, #24
	sub	r4, r6, r4
	srai	r5, r5, #24
	andi	r4, r4, #96
	ori	r4, r4, #25
	and	r3, r4, r3
	addi	r4, r0, #-48
	sw	r4, [r15 + #60]
	xor	r3, r3, r4
	lw	r4, [r15 + #72]
	add	r3, r3, r5
	slli	r5, r4, #4
	or	r3, r3, r5
	sw	r3, [r15 + #72]
	addi	r3, r10, #0
	addi	r3, r3, #1
	lbu	r12, [r3 + #0]
	addi	r10, r3, #0
	addi	r3, r12, #-58
	andi	r7, r3, #255
	addi	r3, r0, #246
	sw	r3, [r15 + #68]
	sltu	r5, r7, r3
	addi	r3, r2, #1
	lw	r4, [r15 + #84]
	bltu	r4, r7, L_BB0_459
	b	L_BB0_460
L_BB0_460:                              ;   in Loop: Header=BB0_459 Depth=2
	addi	r4, r0, #-33
	addi	r13, r0, #249
	and	r7, r12, r4
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r13, r7, L_BB0_459
	b	L_BB0_461
L_BB0_461:                              ; %.preheader109
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r4, [r15 + #52]
	lw	r4, [r15 + #80]
	lw	r6, [r15 + #48]
L_BB0_462:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r12, #255
	be	r3, r4, L_BB0_465
	b	L_BB0_463
L_BB0_463:                              ;   in Loop: Header=BB0_462 Depth=2
	lw	r5, [r15 + #96]
	be	r3, r5, L_BB0_465
	b	L_BB0_464
L_BB0_465:                              ;   in Loop: Header=BB0_462 Depth=2
	addi	r3, r2, #1
	addi	r2, r2, #-1
	lbu	r12, [r2 + #0]
	addi	r2, r3, #0
	b	L_BB0_462
L_BB0_464:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #100]
	be	r3, r6, L_BB0_466
	b	L_BB0_469
L_BB0_466:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r3, [r2 + #-1]
	addi	r5, r0, #120
	ori	r3, r3, #32
	be	r3, r5, L_BB0_468
	b	L_BB0_467
L_BB0_468:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r2 + #0]
	b	L_BB0_470
L_BB0_469:                              ; %.loopexit110
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
L_BB0_470:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r12, #-58
	lw	r4, [r15 + #68]
	andi	r3, r3, #255
	sltu	r6, r3, r4
	lw	r4, [r15 + #84]
	bltu	r4, r3, L_BB0_472
	b	L_BB0_471
L_BB0_471:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #52]
	lw	r4, [r15 + #28]
	and	r3, r12, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r3, r4, L_BB0_458
	b	L_BB0_472
L_BB0_526:                              ; %._crit_edge236
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r5, r0, #0
L_BB0_527:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r6, r0, #0
	sw	r4, [r15 + #44]
	addi	r10, r7, #0
	addi	r13, r7, #3
	sw	r6, [r15 + #72]
	b	L_BB0_533
L_BB0_533:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r5, #1
	addi	r2, r13, #0
	sub	r4, r6, r3
	addi	r3, r12, #-97
	addi	r13, r2, #1
	andi	r5, r3, #255
	addi	r3, r0, #6
	sltu	r5, r5, r3
	sw	r3, [r15 + #64]
	addi	r3, r0, #-48
	sub	r5, r6, r5
	sw	r3, [r15 + #60]
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r4, r5, r4
	slli	r5, r12, #24
	xor	r4, r4, r3
	lw	r3, [r15 + #72]
	srai	r5, r5, #24
	add	r4, r4, r5
	slli	r5, r3, #4
	or	r3, r4, r5
	sw	r3, [r15 + #72]
	addi	r3, r10, #0
	addi	r3, r3, #1
	lbu	r12, [r3 + #0]
	addi	r10, r3, #0
	addi	r3, r0, #246
	sw	r3, [r15 + #68]
	addi	r4, r12, #-58
	andi	r7, r4, #255
	sltu	r5, r7, r3
	lw	r3, [r15 + #84]
	bltu	r3, r7, L_BB0_533
	b	L_BB0_534
L_BB0_534:                              ;   in Loop: Header=BB0_533 Depth=2
	addi	r3, r0, #-33
	addi	r4, r0, #249
	and	r7, r12, r3
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r4, r7, L_BB0_533
	b	L_BB0_535
L_BB0_535:                              ; %.preheader120
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r4, [r15 + #48]
	sw	r3, [r15 + #52]
	li	r13, #1073741824
	lw	r6, [r15 + #44]
L_BB0_536:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r15 + #80]
	andi	r5, r12, #255
	be	r5, r3, L_BB0_539
	b	L_BB0_537
L_BB0_537:                              ;   in Loop: Header=BB0_536 Depth=2
	lw	r3, [r15 + #96]
	be	r5, r3, L_BB0_539
	b	L_BB0_538
L_BB0_539:                              ;   in Loop: Header=BB0_536 Depth=2
	addi	r5, r2, #1
	addi	r2, r2, #-1
	lbu	r12, [r2 + #0]
	addi	r2, r5, #0
	b	L_BB0_536
L_BB0_538:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #100]
	be	r5, r6, L_BB0_540
	b	L_BB0_543
L_BB0_540:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r5, [r2 + #-1]
	addi	r6, r0, #120
	ori	r5, r5, #32
	be	r5, r6, L_BB0_542
	b	L_BB0_541
L_BB0_542:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r2 + #0]
	b	L_BB0_544
L_BB0_543:                              ; %.loopexit121
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
L_BB0_544:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r12, #-58
	lw	r3, [r15 + #68]
	andi	r5, r5, #255
	sltu	r6, r5, r3
	lw	r3, [r15 + #84]
	bltu	r3, r5, L_BB0_546
	b	L_BB0_545
L_BB0_545:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #52]
	and	r5, r12, r3
	lw	r3, [r15 + #28]
	addi	r5, r5, #-71
	andi	r5, r5, #255
	bltu	r5, r3, L_BB0_532
	b	L_BB0_546
L_BB0_394:                              ; %._crit_edge309
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r6, r0, #0
L_BB0_395:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #0
	sw	r7, [r15 + #32]
	addi	r4, r7, #3
	sw	r2, [r15 + #56]
	sw	r2, [r15 + #72]
	b	L_BB0_401
L_BB0_401:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r5, r12, #-97
	addi	r2, r4, #0
	andi	r4, r6, #1
	lw	r6, [r15 + #56]
	addi	r3, r0, #6
	andi	r5, r5, #255
	sw	r3, [r15 + #64]
	sltu	r5, r5, r3
	addi	r3, r0, #-48
	sub	r4, r6, r4
	sub	r5, r6, r5
	sw	r3, [r15 + #60]
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r4, r5, r4
	slli	r5, r12, #24
	xor	r4, r4, r3
	lw	r3, [r15 + #72]
	srai	r5, r5, #24
	add	r4, r4, r5
	slli	r3, r3, #4
	or	r3, r4, r3
	sw	r3, [r15 + #72]
	lw	r3, [r15 + #32]
	addi	r3, r3, #1
	sw	r3, [r15 + #32]
	lbu	r12, [r3 + #0]
	addi	r3, r0, #246
	sw	r3, [r15 + #68]
	addi	r4, r12, #-58
	andi	r7, r4, #255
	addi	r4, r2, #1
	sltu	r6, r7, r3
	lw	r3, [r15 + #84]
	bltu	r3, r7, L_BB0_401
	b	L_BB0_402
L_BB0_402:                              ;   in Loop: Header=BB0_401 Depth=2
	addi	r3, r0, #-33
	addi	r5, r0, #249
	and	r7, r12, r3
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r5, r7, L_BB0_401
	b	L_BB0_403
L_BB0_403:                              ; %.preheader95
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r5, [r15 + #52]
	sw	r3, [r15 + #56]
	lw	r3, [r15 + #80]
L_BB0_404:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r4, r12, #255
	be	r4, r3, L_BB0_407
	b	L_BB0_405
L_BB0_405:                              ;   in Loop: Header=BB0_404 Depth=2
	lw	r5, [r15 + #96]
	be	r4, r5, L_BB0_407
	b	L_BB0_406
L_BB0_407:                              ;   in Loop: Header=BB0_404 Depth=2
	addi	r4, r2, #1
	addi	r2, r2, #-1
	lbu	r12, [r2 + #0]
	addi	r2, r4, #0
	b	L_BB0_404
L_BB0_406:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #100]
	lw	r3, [r15 + #48]
	be	r4, r3, L_BB0_408
	b	L_BB0_411
L_BB0_408:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r4, [r2 + #-1]
	addi	r5, r0, #120
	ori	r4, r4, #32
	be	r4, r5, L_BB0_410
	b	L_BB0_409
L_BB0_410:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r2 + #0]
	b	L_BB0_412
L_BB0_411:                              ; %.loopexit96
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
L_BB0_412:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r12, #-58
	lw	r3, [r15 + #68]
	andi	r4, r4, #255
	sltu	r6, r4, r3
	lw	r3, [r15 + #84]
	bltu	r3, r4, L_BB0_414
	b	L_BB0_413
L_BB0_413:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #56]
	and	r4, r12, r3
	lw	r3, [r15 + #28]
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r4, r3, L_BB0_400
	b	L_BB0_414
L_BB0_331:                              ; %._crit_edge344
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r7, #-2
	addi	r12, r0, #48
	addi	r5, r0, #0
L_BB0_332:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r3, #0
	b	L_BB0_338
L_BB0_338:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r4, #0
	addi	r4, r12, #-97
	andi	r2, r5, #1
	addi	r7, r7, #1
	andi	r5, r4, #255
	addi	r4, r0, #6
	sub	r2, r3, r2
	sltu	r5, r5, r4
	sw	r4, [r15 + #72]
	addi	r4, r0, #-48
	sub	r5, r3, r5
	sw	r4, [r15 + #68]
	andi	r5, r5, #96
	ori	r5, r5, #25
	and	r2, r5, r2
	slli	r5, r12, #24
	lbu	r12, [r7 + #0]
	xor	r2, r2, r4
	srai	r5, r5, #24
	add	r2, r2, r5
	slli	r5, r6, #4
	lw	r6, [r15 + #84]
	or	r4, r2, r5
	addi	r2, r12, #-58
	addi	r5, r0, #246
	andi	r2, r2, #255
	addi	r10, r5, #0
	sltu	r5, r2, r5
	bltu	r6, r2, L_BB0_338
	b	L_BB0_339
L_BB0_339:                              ;   in Loop: Header=BB0_338 Depth=2
	addi	r2, r0, #-33
	addi	r13, r0, #249
	and	r6, r12, r2
	addi	r6, r6, #-71
	andi	r6, r6, #255
	bltu	r13, r6, L_BB0_338
	b	L_BB0_340
L_BB0_340:                              ; %.preheader87
                                        ;   in Loop: Header=BB0_17 Depth=1
	sw	r13, [r15 + #48]
	sw	r2, [r15 + #64]
	addi	r2, r0, #0
	sw	r2, [r15 + #60]
	lw	r13, [r15 + #68]
	b	L_BB0_347
L_BB0_347:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_348 Depth 3
                                        ;       Child Loop BB0_353 Depth 3
                                        ;       Child Loop BB0_365 Depth 3
	lw	r6, [r15 + #76]
	addi	r3, r7, #2
L_BB0_348:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_347 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lbu	r5, [r7 + #0]
	lw	r2, [r15 + #80]
	be	r5, r2, L_BB0_352
	b	L_BB0_349
L_BB0_349:                              ;   in Loop: Header=BB0_348 Depth=3
	lw	r2, [r15 + #96]
	be	r5, r2, L_BB0_352
	b	L_BB0_350
L_BB0_352:                              ;   in Loop: Header=BB0_348 Depth=3
	addi	r3, r3, #1
	addi	r7, r7, #1
	b	L_BB0_348
L_BB0_350:                              ;   in Loop: Header=BB0_347 Depth=2
	addi	r12, r0, #0
	be	r5, r12, L_BB0_374
	b	L_BB0_351
L_BB0_351:                              ; %.preheader22
                                        ;   in Loop: Header=BB0_347 Depth=2
	b	L_BB0_353
L_BB0_356:                              ;   in Loop: Header=BB0_353 Depth=3
	addi	r6, r3, #1
	addi	r3, r3, #-1
	lbu	r5, [r3 + #0]
	addi	r3, r6, #0
	b	L_BB0_353
L_BB0_353:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_347 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r15 + #80]
	andi	r6, r5, #255
	be	r6, r2, L_BB0_356
	b	L_BB0_354
L_BB0_354:                              ;   in Loop: Header=BB0_353 Depth=3
	lw	r2, [r15 + #96]
	be	r6, r2, L_BB0_356
	b	L_BB0_355
L_BB0_355:                              ;   in Loop: Header=BB0_347 Depth=2
	lw	r2, [r15 + #56]
	sw	r4, [r15 + #52]
	be	r6, r2, L_BB0_357
	b	L_BB0_360
L_BB0_357:                              ;   in Loop: Header=BB0_347 Depth=2
	lbu	r5, [r3 + #-1]
	addi	r6, r0, #120
	ori	r5, r5, #32
	be	r5, r6, L_BB0_359
	b	L_BB0_358
L_BB0_359:                              ;   in Loop: Header=BB0_347 Depth=2
	lbu	r5, [r3 + #0]
	b	L_BB0_361
L_BB0_360:                              ; %.loopexit
                                        ;   in Loop: Header=BB0_347 Depth=2
	addi	r3, r3, #-2
L_BB0_361:                              ;   in Loop: Header=BB0_347 Depth=2
	addi	r6, r5, #-58
	lw	r2, [r15 + #84]
	andi	r7, r6, #255
	sltu	r6, r7, r10
	bltu	r2, r7, L_BB0_364
	b	L_BB0_362
L_BB0_362:                              ;   in Loop: Header=BB0_347 Depth=2
	lw	r2, [r15 + #64]
	and	r7, r5, r2
	lw	r2, [r15 + #48]
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r2, r7, L_BB0_364
	b	L_BB0_363
L_BB0_358:                              ; %._crit_edge358
                                        ;   in Loop: Header=BB0_347 Depth=2
	addi	r3, r3, #-2
	addi	r6, r0, #0
	lw	r5, [r15 + #56]
	b	L_BB0_364
L_BB0_364:                              ;   in Loop: Header=BB0_347 Depth=2
	addi	r7, r12, #0
L_BB0_365:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_347 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	addi	r2, r5, #-97
	lw	r4, [r15 + #72]
	andi	r6, r6, #1
	andi	r5, r5, #255
	addi	r3, r3, #1
	andi	r2, r2, #255
	sub	r6, r12, r6
	sltu	r2, r2, r4
	sub	r2, r12, r2
	andi	r2, r2, #96
	ori	r2, r2, #25
	and	r2, r2, r6
	xor	r2, r2, r13
	add	r2, r2, r5
	slli	r5, r7, #4
	or	r7, r2, r5
	lbu	r5, [r3 + #0]
	lw	r4, [r15 + #84]
	addi	r2, r5, #-58
	andi	r2, r2, #255
	sltu	r6, r2, r10
	bltu	r4, r2, L_BB0_365
	b	L_BB0_366
L_BB0_366:                              ;   in Loop: Header=BB0_365 Depth=3
	lw	r2, [r15 + #64]
	lw	r4, [r15 + #28]
	and	r2, r5, r2
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r2, r4, L_BB0_373
	b	L_BB0_365
L_BB0_373:                              ;   in Loop: Header=BB0_347 Depth=2
	lw	r4, [r15 + #52]
	sb	r7, [r4 + #0]
	addi	r4, r4, #1
	addi	r7, r3, #0
	lw	r2, [r15 + #60]
	addi	r2, r2, #1
	sw	r2, [r15 + #60]
	lw	r2, [r15 + #100]
	b	L_BB0_347
L_BB0_374:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #60]
	addi	r2, r0, #0
	be	r3, r2, L_BB0_376
	b	L_BB0_375
L_BB0_375:                              ; %.preheader85
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.4
	lw	r10, [r15 + #20]
	li	r13, #1073741824
	li	r12, #1073741828
	b	L_BB0_383
L_BB0_383:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_385 Depth 3
                                        ;       Child Loop BB0_387 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_385
	b	L_BB0_384
L_BB0_384:                              ;   in Loop: Header=BB0_383 Depth=2
	be	r4, r2, L_BB0_32
	b	L_BB0_387
L_BB0_385:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_383 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_385
	b	L_BB0_386
L_BB0_386:                              ;   in Loop: Header=BB0_383 Depth=2
	sw	r6, [r13 + #0]
L_BB0_387:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_383 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_387
	b	L_BB0_388
L_BB0_388:                              ;   in Loop: Header=BB0_383 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_383
L_BB0_32:                               ; %.loopexit86
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_376:                              ; %.preheader83
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	la	r3, .L.str.21
	li	r13, #1073741824
	li	r12, #1073741828
L_BB0_377:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_379 Depth 3
                                        ;       Child Loop BB0_381 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_379
	b	L_BB0_378
L_BB0_378:                              ;   in Loop: Header=BB0_377 Depth=2
	be	r4, r2, L_BB0_31
	b	L_BB0_381
L_BB0_379:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_377 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_379
	b	L_BB0_380
L_BB0_380:                              ;   in Loop: Header=BB0_377 Depth=2
	sw	r6, [r13 + #0]
L_BB0_381:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_377 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_381
	b	L_BB0_382
L_BB0_382:                              ;   in Loop: Header=BB0_377 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_377
L_BB0_31:                               ; %.loopexit84
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_308:                              ; %.loopexit74
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r10, r12, #0
	addi	r13, r13, #-2
	li	r12, #1073741828
L_BB0_309:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r10, #-58
	andi	r4, r2, #255
	lw	r2, [r15 + #68]
	lw	r6, [r15 + #84]
	sltu	r2, r4, r2
	bltu	r6, r4, L_BB0_306
	b	L_BB0_310
L_BB0_310:                              ;   in Loop: Header=BB0_17 Depth=1
	and	r4, r10, r3
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r5, r4, L_BB0_306
	b	L_BB0_311
L_BB0_311:                              ; %.preheader71
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #100]
	lw	r10, [r15 + #20]
	la	r2, .L.str.20
	li	r13, #1073741824
	lw	r6, [r15 + #76]
	b	L_BB0_314
L_BB0_314:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_316 Depth 3
                                        ;       Child Loop BB0_318 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_316
	b	L_BB0_315
L_BB0_315:                              ;   in Loop: Header=BB0_314 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_28
	b	L_BB0_318
L_BB0_316:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_314 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_316
	b	L_BB0_317
L_BB0_317:                              ;   in Loop: Header=BB0_314 Depth=2
	sw	r6, [r13 + #0]
L_BB0_318:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_314 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_318
	b	L_BB0_319
L_BB0_319:                              ;   in Loop: Header=BB0_314 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_314
L_BB0_144:                              ; %._crit_edge190
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	sw	r5, [r15 + #52]
	addi	r5, r0, #0
L_BB0_145:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r7, [r15 + #60]
	addi	r6, r0, #0
	lw	r3, [r15 + #52]
	addi	r4, r3, #1
	addi	r3, r6, #0
	b	L_BB0_151
L_BB0_151:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r7, r2, #-97
	lw	r12, [r15 + #44]
	andi	r5, r5, #1
	slli	r2, r2, #24
	slli	r3, r3, #4
	andi	r7, r7, #255
	sub	r5, r6, r5
	srai	r2, r2, #24
	sltu	r7, r7, r12
	sub	r7, r6, r7
	andi	r7, r7, #96
	ori	r7, r7, #25
	and	r5, r7, r5
	lw	r7, [r15 + #40]
	xor	r5, r5, r7
	add	r2, r5, r2
	or	r3, r2, r3
	lbu	r2, [r4 + #0]
	addi	r4, r4, #1
	addi	r5, r2, #-58
	andi	r7, r5, #255
	lw	r5, [r15 + #48]
	lw	r12, [r15 + #84]
	sltu	r5, r7, r5
	bltu	r12, r7, L_BB0_151
	b	L_BB0_152
L_BB0_152:                              ;   in Loop: Header=BB0_151 Depth=2
	lw	r7, [r15 + #64]
	lw	r12, [r15 + #60]
	and	r7, r2, r7
	addi	r7, r7, #-71
	andi	r7, r7, #255
	bltu	r12, r7, L_BB0_151
	b	L_BB0_153
L_BB0_153:                              ; %.preheader144
                                        ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_160
L_BB0_160:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r4, r2, #1
	addi	r2, r0, #0
	be	r4, r2, L_BB0_160
	b	L_BB0_161
L_BB0_161:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_162:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r2, L_BB0_162
	b	L_BB0_163
L_BB0_163:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r10, [r13 + #0]
	lw	r6, [r15 + #72]
	sltu	r4, r3, r6
	xor	r5, r3, r6
	sltu	r3, r6, r3
	sub	r4, r2, r4
	sub	r2, r2, r3
	and	r4, r5, r4
	and	r2, r5, r2
	xor	r4, r6, r4
	xor	r3, r6, r2
	addi	r2, r4, #0
	jal	r11, dump_range
	lw	r2, [r15 + #16]
	li	r13, #1073741824
	lw	r3, [r15 + #100]
	li	r12, #1073741828
	b	L_BB0_17
L_BB0_28:                               ; %.loopexit72
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_467:                              ; %._crit_edge283
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
	addi	r12, r0, #48
	addi	r6, r0, #0
	b	L_BB0_472
L_BB0_472:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	addi	r3, r2, #3
	sw	r7, [r15 + #56]
L_BB0_473:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r5, r3, #0
	andi	r3, r6, #1
	addi	r6, r12, #-97
	lw	r4, [r15 + #64]
	addi	r2, r2, #1
	andi	r6, r6, #255
	sub	r3, r7, r3
	sltu	r6, r6, r4
	lw	r4, [r15 + #60]
	sub	r6, r7, r6
	andi	r6, r6, #96
	ori	r6, r6, #25
	and	r3, r6, r3
	slli	r6, r12, #24
	xor	r3, r3, r4
	lw	r4, [r15 + #56]
	srai	r6, r6, #24
	add	r3, r3, r6
	slli	r6, r4, #4
	or	r3, r3, r6
	sw	r3, [r15 + #56]
	lbu	r12, [r2 + #0]
	addi	r3, r12, #-58
	andi	r4, r3, #255
	lw	r3, [r15 + #68]
	lw	r10, [r15 + #84]
	sltu	r6, r4, r3
	addi	r3, r5, #1
	bltu	r10, r4, L_BB0_473
	b	L_BB0_474
L_BB0_474:                              ;   in Loop: Header=BB0_473 Depth=2
	lw	r4, [r15 + #52]
	and	r4, r12, r4
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r13, r4, L_BB0_473
	b	L_BB0_475
L_BB0_475:                              ; %.preheader107
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #100]
	lw	r4, [r15 + #96]
	lw	r13, [r15 + #48]
L_BB0_476:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r15 + #80]
	andi	r2, r12, #255
	be	r2, r3, L_BB0_479
	b	L_BB0_477
L_BB0_477:                              ;   in Loop: Header=BB0_476 Depth=2
	be	r2, r4, L_BB0_479
	b	L_BB0_478
L_BB0_479:                              ;   in Loop: Header=BB0_476 Depth=2
	addi	r3, r5, #-1
	addi	r2, r5, #1
	lbu	r12, [r3 + #0]
	addi	r5, r2, #0
	b	L_BB0_476
L_BB0_478:                              ;   in Loop: Header=BB0_17 Depth=1
	be	r2, r13, L_BB0_480
	b	L_BB0_483
L_BB0_480:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r5 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_482
	b	L_BB0_481
L_BB0_482:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r13, [r5 + #0]
	b	L_BB0_484
L_BB0_483:                              ; %.loopexit108
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r13, r12, #0
L_BB0_484:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r13, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #68]
	lw	r4, [r15 + #84]
	sltu	r2, r3, r2
	bltu	r4, r3, L_BB0_486
	b	L_BB0_485
L_BB0_485:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #52]
	lw	r4, [r15 + #28]
	and	r3, r13, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r3, r4, L_BB0_458
	b	L_BB0_486
L_BB0_458:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	la	r2, .L.str.23
	li	r13, #1073741824
	lw	r6, [r15 + #76]
	li	r12, #1073741828
	b	L_BB0_489
L_BB0_489:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_491 Depth 3
                                        ;       Child Loop BB0_493 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_491
	b	L_BB0_490
L_BB0_490:                              ;   in Loop: Header=BB0_489 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_35
	b	L_BB0_493
L_BB0_491:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_489 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_491
	b	L_BB0_492
L_BB0_492:                              ;   in Loop: Header=BB0_489 Depth=2
	sw	r6, [r13 + #0]
L_BB0_493:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_489 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_493
	b	L_BB0_494
L_BB0_494:                              ;   in Loop: Header=BB0_489 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_489
L_BB0_35:                               ; %.loopexit99
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_541:                              ; %._crit_edge248
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
	addi	r12, r0, #48
	addi	r6, r0, #0
	b	L_BB0_546
L_BB0_546:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	addi	r13, r2, #3
	sw	r7, [r15 + #56]
L_BB0_547:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r5, r13, #0
	addi	r13, r12, #-97
	lw	r3, [r15 + #64]
	andi	r6, r6, #1
	slli	r12, r12, #24
	addi	r2, r2, #1
	andi	r13, r13, #255
	sub	r6, r7, r6
	srai	r12, r12, #24
	sltu	r13, r13, r3
	lw	r3, [r15 + #60]
	sub	r13, r7, r13
	andi	r13, r13, #96
	ori	r13, r13, #25
	and	r6, r13, r6
	addi	r13, r5, #1
	xor	r6, r6, r3
	lw	r3, [r15 + #56]
	add	r6, r6, r12
	slli	r12, r3, #4
	or	r3, r6, r12
	sw	r3, [r15 + #56]
	lbu	r12, [r2 + #0]
	lw	r4, [r15 + #68]
	lw	r10, [r15 + #84]
	addi	r6, r12, #-58
	andi	r3, r6, #255
	sltu	r6, r3, r4
	bltu	r10, r3, L_BB0_547
	b	L_BB0_548
L_BB0_548:                              ;   in Loop: Header=BB0_547 Depth=2
	lw	r3, [r15 + #52]
	lw	r4, [r15 + #48]
	and	r3, r12, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r4, r3, L_BB0_547
	b	L_BB0_549
L_BB0_549:                              ; %.preheader118
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #100]
	lw	r10, [r15 + #44]
	li	r13, #1073741824
L_BB0_550:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r15 + #80]
	andi	r2, r12, #255
	be	r2, r3, L_BB0_553
	b	L_BB0_551
L_BB0_551:                              ;   in Loop: Header=BB0_550 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_553
	b	L_BB0_552
L_BB0_553:                              ;   in Loop: Header=BB0_550 Depth=2
	addi	r3, r5, #-1
	addi	r2, r5, #1
	lbu	r12, [r3 + #0]
	addi	r5, r2, #0
	b	L_BB0_550
L_BB0_552:                              ;   in Loop: Header=BB0_17 Depth=1
	be	r2, r10, L_BB0_554
	b	L_BB0_557
L_BB0_554:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r5 + #-1]
	addi	r3, r0, #120
	ori	r2, r2, #32
	be	r2, r3, L_BB0_556
	b	L_BB0_555
L_BB0_556:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r10, [r5 + #0]
	b	L_BB0_558
L_BB0_557:                              ; %.loopexit119
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r10, r12, #0
L_BB0_558:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r10, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #68]
	lw	r6, [r15 + #84]
	sltu	r2, r3, r2
	bltu	r6, r3, L_BB0_560
	b	L_BB0_559
L_BB0_559:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #52]
	lw	r6, [r15 + #28]
	and	r3, r10, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r3, r6, L_BB0_532
	b	L_BB0_560
L_BB0_532:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	la	r2, .L.str.24
	lw	r6, [r15 + #76]
	li	r12, #1073741828
	b	L_BB0_564
L_BB0_564:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_566 Depth 3
                                        ;       Child Loop BB0_568 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_566
	b	L_BB0_565
L_BB0_565:                              ;   in Loop: Header=BB0_564 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_38
	b	L_BB0_568
L_BB0_566:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_564 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_566
	b	L_BB0_567
L_BB0_567:                              ;   in Loop: Header=BB0_564 Depth=2
	sw	r6, [r13 + #0]
L_BB0_568:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_564 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_568
	b	L_BB0_569
L_BB0_569:                              ;   in Loop: Header=BB0_564 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_564
L_BB0_38:                               ; %.loopexit113
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_409:                              ; %._crit_edge321
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r2, #-2
	addi	r12, r0, #48
	addi	r6, r0, #0
	b	L_BB0_414
L_BB0_414:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	addi	r13, r2, #3
	addi	r4, r7, #0
L_BB0_415:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r5, r13, #0
	addi	r13, r12, #-97
	lw	r3, [r15 + #64]
	andi	r6, r6, #1
	slli	r12, r12, #24
	addi	r2, r2, #1
	slli	r4, r4, #4
	andi	r13, r13, #255
	sub	r6, r7, r6
	srai	r12, r12, #24
	sltu	r13, r13, r3
	lw	r3, [r15 + #60]
	sub	r13, r7, r13
	andi	r13, r13, #96
	ori	r13, r13, #25
	and	r6, r13, r6
	addi	r13, r5, #1
	xor	r6, r6, r3
	add	r6, r6, r12
	lbu	r12, [r2 + #0]
	lw	r3, [r15 + #68]
	or	r4, r6, r4
	addi	r6, r12, #-58
	andi	r10, r6, #255
	sltu	r6, r10, r3
	lw	r3, [r15 + #84]
	bltu	r3, r10, L_BB0_415
	b	L_BB0_416
L_BB0_416:                              ;   in Loop: Header=BB0_415 Depth=2
	lw	r3, [r15 + #56]
	and	r10, r12, r3
	lw	r3, [r15 + #52]
	addi	r10, r10, #-71
	andi	r10, r10, #255
	bltu	r3, r10, L_BB0_415
	b	L_BB0_417
L_BB0_417:                              ; %.preheader93
                                        ;   in Loop: Header=BB0_17 Depth=1
	li	r13, #1073741824
	lw	r2, [r15 + #100]
L_BB0_418:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r15 + #80]
	andi	r2, r12, #255
	be	r2, r3, L_BB0_421
	b	L_BB0_419
L_BB0_419:                              ;   in Loop: Header=BB0_418 Depth=2
	lw	r3, [r15 + #96]
	be	r2, r3, L_BB0_421
	b	L_BB0_420
L_BB0_421:                              ;   in Loop: Header=BB0_418 Depth=2
	addi	r2, r5, #1
	addi	r5, r5, #-1
	lbu	r12, [r5 + #0]
	addi	r5, r2, #0
	b	L_BB0_418
L_BB0_420:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	lw	r3, [r15 + #48]
	sw	r4, [r15 + #44]
	be	r2, r3, L_BB0_422
	b	L_BB0_425
L_BB0_422:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r2, [r5 + #-1]
	addi	r6, r0, #120
	ori	r2, r2, #32
	be	r2, r6, L_BB0_424
	b	L_BB0_423
L_BB0_424:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r12, [r5 + #0]
	b	L_BB0_426
L_BB0_425:                              ; %.loopexit94
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
L_BB0_426:                              ;   in Loop: Header=BB0_17 Depth=1
	sw	r12, [r15 + #48]
	addi	r2, r12, #-58
	lw	r3, [r15 + #68]
	andi	r2, r2, #255
	sltu	r6, r2, r3
	lw	r3, [r15 + #84]
	bltu	r3, r2, L_BB0_428
	b	L_BB0_427
L_BB0_427:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #48]
	lw	r3, [r15 + #56]
	and	r2, r2, r3
	lw	r3, [r15 + #28]
	addi	r2, r2, #-71
	andi	r2, r2, #255
	bltu	r2, r3, L_BB0_400
	b	L_BB0_428
L_BB0_400:                              ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.22
	lw	r6, [r15 + #76]
	li	r12, #1073741828
	b	L_BB0_433
L_BB0_433:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_435 Depth 3
                                        ;       Child Loop BB0_437 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_435
	b	L_BB0_434
L_BB0_434:                              ;   in Loop: Header=BB0_433 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_33
	b	L_BB0_437
L_BB0_435:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_433 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_435
	b	L_BB0_436
L_BB0_436:                              ;   in Loop: Header=BB0_433 Depth=2
	sw	r6, [r13 + #0]
L_BB0_437:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_433 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_437
	b	L_BB0_438
L_BB0_438:                              ;   in Loop: Header=BB0_433 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_433
L_BB0_33:                               ; %.loopexit90
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_481:                              ; %._crit_edge295
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r2, r0, #0
	b	L_BB0_486
L_BB0_486:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	addi	r6, r5, #1
	addi	r5, r7, #0
L_BB0_487:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r3, r13, #-97
	lw	r4, [r15 + #64]
	andi	r2, r2, #1
	andi	r3, r3, #255
	sub	r2, r7, r2
	sltu	r3, r3, r4
	sub	r3, r7, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	lw	r3, [r15 + #60]
	xor	r2, r2, r3
	slli	r3, r13, #24
	lbu	r13, [r6 + #0]
	addi	r6, r6, #1
	srai	r3, r3, #24
	add	r3, r2, r3
	slli	r2, r5, #4
	or	r5, r3, r2
	addi	r2, r13, #-58
	andi	r4, r2, #255
	lw	r2, [r15 + #68]
	lw	r12, [r15 + #84]
	sltu	r2, r4, r2
	bltu	r12, r4, L_BB0_487
	b	L_BB0_488
L_BB0_488:                              ;   in Loop: Header=BB0_487 Depth=2
	lw	r4, [r15 + #52]
	lw	r12, [r15 + #28]
	and	r4, r13, r4
	addi	r4, r4, #-71
	andi	r4, r4, #255
	bltu	r4, r12, L_BB0_495
	b	L_BB0_487
L_BB0_495:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r10, [r15 + #20]
	lw	r6, [r15 + #76]
	addi	r2, r0, #0
	li	r13, #1073741824
	li	r12, #1073741828
	bne	r5, r2, L_BB0_503
	b	L_BB0_496
L_BB0_503:                              ;   in Loop: Header=BB0_17 Depth=1
	andi	r7, r3, #1
	lw	r6, [r15 + #72]
	lw	r3, [r15 + #56]
	bltu	r3, r6, L_BB0_505
	b	L_BB0_504
L_BB0_504:                              ;   in Loop: Header=BB0_17 Depth=1
	add	r4, r5, r6
	bltu	r3, r4, L_BB0_509
	b	L_BB0_505
L_BB0_509:                              ;   in Loop: Header=BB0_17 Depth=1
	add	r6, r5, r3
	addi	r3, r5, #0
	be	r7, r2, L_BB0_511
	b	L_BB0_510
L_BB0_510:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r4, #-1
	lbu	r3, [r4 + #0]
	sb	r3, [r6 + #-1]
	addi	r3, r5, #-1
	addi	r6, r6, #-1
L_BB0_511:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r7, [r15 + #92]
	be	r5, r7, L_BB0_514
	b	L_BB0_512
L_BB0_512:                              ; %.preheader105
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r4, #-2
	addi	r5, r6, #-2
L_BB0_513:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r4, #1
	addi	r3, r3, #-2
	lbu	r6, [r6 + #0]
	sb	r6, [r5 + #1]
	lbu	r6, [r4 + #0]
	addi	r4, r4, #-2
	sb	r6, [r5 + #0]
	addi	r5, r5, #-2
	bne	r3, r2, L_BB0_513
	b	L_BB0_514
L_BB0_505:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r5, #0
	be	r7, r2, L_BB0_507
	b	L_BB0_506
L_BB0_506:                              ;   in Loop: Header=BB0_17 Depth=1
	lbu	r3, [r6 + #0]
	lw	r4, [r15 + #56]
	addi	r6, r6, #1
	sb	r3, [r4 + #0]
	addi	r3, r5, #-1
	addi	r4, r4, #1
	sw	r4, [r15 + #56]
L_BB0_507:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #92]
	lw	r7, [r15 + #56]
	be	r5, r4, L_BB0_514
	b	L_BB0_508
L_BB0_508:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lbu	r4, [r6 + #0]
	addi	r3, r3, #-2
	sb	r4, [r7 + #0]
	addi	r4, r6, #1
	addi	r6, r6, #2
	lbu	r4, [r4 + #0]
	sb	r4, [r7 + #1]
	addi	r7, r7, #2
	be	r3, r2, L_BB0_514
	b	L_BB0_508
L_BB0_514:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r4, [r15 + #100]
	lw	r6, [r15 + #76]
	la	r3, .L.str.4
L_BB0_515:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_517 Depth 3
                                        ;       Child Loop BB0_519 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_517
	b	L_BB0_516
L_BB0_516:                              ;   in Loop: Header=BB0_515 Depth=2
	be	r4, r2, L_BB0_37
	b	L_BB0_519
L_BB0_517:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_515 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_517
	b	L_BB0_518
L_BB0_518:                              ;   in Loop: Header=BB0_515 Depth=2
	sw	r6, [r13 + #0]
L_BB0_519:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_515 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_519
	b	L_BB0_520
L_BB0_520:                              ;   in Loop: Header=BB0_515 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_515
L_BB0_37:                               ; %.loopexit102
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_496:                              ; %.preheader100
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r3, .L.str.4
	lw	r4, [r15 + #100]
L_BB0_497:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_499 Depth 3
                                        ;       Child Loop BB0_501 Depth 3
	lbu	r4, [r3 + #0]
	be	r4, r10, L_BB0_499
	b	L_BB0_498
L_BB0_498:                              ;   in Loop: Header=BB0_497 Depth=2
	be	r4, r2, L_BB0_36
	b	L_BB0_501
L_BB0_499:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_497 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_499
	b	L_BB0_500
L_BB0_500:                              ;   in Loop: Header=BB0_497 Depth=2
	sw	r6, [r13 + #0]
L_BB0_501:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_497 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r2, L_BB0_501
	b	L_BB0_502
L_BB0_502:                              ;   in Loop: Header=BB0_497 Depth=2
	sw	r4, [r13 + #0]
	addi	r3, r3, #1
	b	L_BB0_497
L_BB0_36:                               ; %.loopexit101
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_555:                              ; %._crit_edge260
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r2, r0, #0
	b	L_BB0_560
L_BB0_560:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r7, r0, #0
	addi	r6, r5, #1
	addi	r5, r7, #0
L_BB0_561:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r3, r10, #-97
	lw	r12, [r15 + #64]
	andi	r2, r2, #1
	andi	r3, r3, #255
	sub	r2, r7, r2
	sltu	r3, r3, r12
	sub	r3, r7, r3
	andi	r3, r3, #96
	ori	r3, r3, #25
	and	r2, r3, r2
	lw	r3, [r15 + #60]
	xor	r2, r2, r3
	slli	r3, r10, #24
	lbu	r10, [r6 + #0]
	addi	r6, r6, #1
	srai	r3, r3, #24
	add	r2, r2, r3
	slli	r3, r5, #4
	or	r5, r2, r3
	addi	r2, r10, #-58
	andi	r3, r2, #255
	lw	r2, [r15 + #68]
	lw	r12, [r15 + #84]
	sltu	r2, r3, r2
	bltu	r12, r3, L_BB0_561
	b	L_BB0_562
L_BB0_562:                              ;   in Loop: Header=BB0_561 Depth=2
	lw	r3, [r15 + #52]
	lw	r4, [r15 + #48]
	and	r3, r10, r3
	addi	r3, r3, #-71
	andi	r3, r3, #255
	bltu	r4, r3, L_BB0_561
	b	L_BB0_563
L_BB0_563:                              ; %.preheader116
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #100]
	lw	r10, [r15 + #20]
	lw	r6, [r15 + #72]
	li	r12, #1073741828
	lw	r4, [r15 + #56]
	b	L_BB0_570
L_BB0_645:                              ;   in Loop: Header=BB0_570 Depth=2
	addi	r5, r5, #-1
	addi	r4, r4, #1
	addi	r6, r6, #1
L_BB0_646:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r2, [r15 + #16]
	lw	r3, [r15 + #96]
	be	r7, r3, L_BB0_570
	b	L_BB0_17
L_BB0_570:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_574 Depth 3
                                        ;         Child Loop BB0_576 Depth 4
                                        ;         Child Loop BB0_578 Depth 4
                                        ;       Child Loop BB0_581 Depth 3
                                        ;       Child Loop BB0_584 Depth 3
                                        ;       Child Loop BB0_586 Depth 3
                                        ;       Child Loop BB0_588 Depth 3
                                        ;       Child Loop BB0_590 Depth 3
                                        ;       Child Loop BB0_592 Depth 3
                                        ;       Child Loop BB0_594 Depth 3
                                        ;       Child Loop BB0_596 Depth 3
                                        ;       Child Loop BB0_598 Depth 3
                                        ;       Child Loop BB0_601 Depth 3
                                        ;       Child Loop BB0_603 Depth 3
                                        ;       Child Loop BB0_605 Depth 3
                                        ;       Child Loop BB0_607 Depth 3
                                        ;       Child Loop BB0_609 Depth 3
                                        ;       Child Loop BB0_611 Depth 3
                                        ;       Child Loop BB0_613 Depth 3
                                        ;       Child Loop BB0_615 Depth 3
                                        ;         Child Loop BB0_617 Depth 4
                                        ;         Child Loop BB0_619 Depth 4
                                        ;       Child Loop BB0_622 Depth 3
                                        ;       Child Loop BB0_624 Depth 3
                                        ;       Child Loop BB0_626 Depth 3
                                        ;       Child Loop BB0_628 Depth 3
                                        ;       Child Loop BB0_630 Depth 3
                                        ;         Child Loop BB0_632 Depth 4
                                        ;         Child Loop BB0_634 Depth 4
                                        ;       Child Loop BB0_637 Depth 3
                                        ;       Child Loop BB0_639 Depth 3
                                        ;       Child Loop BB0_641 Depth 3
                                        ;       Child Loop BB0_643 Depth 3
	addi	r3, r0, #0
	bne	r5, r3, L_BB0_572
	b	L_BB0_571
L_BB0_572:                              ;   in Loop: Header=BB0_570 Depth=2
	lbu	r7, [r6 + #0]
	lbu	r2, [r4 + #0]
	sw	r2, [r15 + #96]
	be	r7, r2, L_BB0_645
	b	L_BB0_573
L_BB0_573:                              ; %.preheader44
                                        ;   in Loop: Header=BB0_570 Depth=2
	la	r2, .L.str.25
	sw	r7, [r15 + #84]
	sw	r4, [r15 + #56]
L_BB0_574:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_576 Depth 4
                                        ;         Child Loop BB0_578 Depth 4
	lbu	r7, [r2 + #0]
	be	r7, r10, L_BB0_576
	b	L_BB0_575
L_BB0_575:                              ;   in Loop: Header=BB0_574 Depth=3
	be	r7, r3, L_BB0_580
	b	L_BB0_578
L_BB0_576:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_574 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r3, L_BB0_576
	b	L_BB0_577
L_BB0_577:                              ;   in Loop: Header=BB0_574 Depth=3
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_578:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_574 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r12, [r8 + #0]
	andi	r12, r12, #1
	be	r12, r3, L_BB0_578
	b	L_BB0_579
L_BB0_579:                              ;   in Loop: Header=BB0_574 Depth=3
	sw	r7, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_574
L_BB0_580:                              ;   in Loop: Header=BB0_570 Depth=2
	srli	r2, r6, #28
	la	r12, .L.str.7
	add	r2, r2, r12
	lbu	r7, [r2 + #0]
	bne	r7, r10, L_BB0_583
	b	L_BB0_581
L_BB0_581:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r3, L_BB0_581
	b	L_BB0_582
L_BB0_582:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r2, [r15 + #76]
	sw	r2, [r13 + #0]
L_BB0_583:                              ;   in Loop: Header=BB0_570 Depth=2
	addi	r2, r6, #0
	srli	r13, r2, #24
	srli	r2, r2, #16
L_BB0_584:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r10, [r8 + #0]
	andi	r10, r10, #1
	be	r10, r3, L_BB0_584
	b	L_BB0_585
L_BB0_585:                              ;   in Loop: Header=BB0_570 Depth=2
	li	r10, #1073741824
	sw	r7, [r10 + #0]
	andi	r7, r13, #15
	add	r7, r7, r12
	lbu	r7, [r7 + #0]
	lw	r10, [r15 + #20]
	bne	r7, r10, L_BB0_588
	b	L_BB0_586
L_BB0_586:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_586
	b	L_BB0_587
L_BB0_587:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	li	r13, #1073741824
	sw	r4, [r13 + #0]
L_BB0_588:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_588
	b	L_BB0_589
L_BB0_589:                              ;   in Loop: Header=BB0_570 Depth=2
	li	r13, #1073741824
	sw	r7, [r13 + #0]
	srli	r7, r6, #20
	andi	r7, r7, #15
	add	r7, r7, r12
	lbu	r7, [r7 + #0]
	bne	r7, r10, L_BB0_592
	b	L_BB0_590
L_BB0_590:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_590
	b	L_BB0_591
L_BB0_591:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	li	r13, #1073741824
	sw	r4, [r13 + #0]
L_BB0_592:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_592
	b	L_BB0_593
L_BB0_593:                              ;   in Loop: Header=BB0_570 Depth=2
	andi	r2, r2, #15
	li	r13, #1073741824
	sw	r7, [r13 + #0]
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_596
	b	L_BB0_594
L_BB0_594:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_594
	b	L_BB0_595
L_BB0_595:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_596:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_596
	b	L_BB0_597
L_BB0_597:                              ;   in Loop: Header=BB0_570 Depth=2
	addi	r4, r6, #0
	sw	r2, [r13 + #0]
	srli	r2, r4, #12
	andi	r2, r2, #15
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_600
	b	L_BB0_598
L_BB0_598:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_598
	b	L_BB0_599
L_BB0_599:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
	addi	r4, r6, #0
L_BB0_600:                              ;   in Loop: Header=BB0_570 Depth=2
	srli	r7, r4, #8
L_BB0_601:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_601
	b	L_BB0_602
L_BB0_602:                              ;   in Loop: Header=BB0_570 Depth=2
	li	r13, #1073741824
	sw	r2, [r13 + #0]
	andi	r2, r7, #15
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_605
	b	L_BB0_603
L_BB0_603:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_603
	b	L_BB0_604
L_BB0_604:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_605:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_605
	b	L_BB0_606
L_BB0_606:                              ;   in Loop: Header=BB0_570 Depth=2
	sw	r2, [r13 + #0]
	srli	r2, r6, #4
	andi	r2, r2, #15
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_609
	b	L_BB0_607
L_BB0_607:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_607
	b	L_BB0_608
L_BB0_608:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_609:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_609
	b	L_BB0_610
L_BB0_610:                              ;   in Loop: Header=BB0_570 Depth=2
	sw	r2, [r13 + #0]
	andi	r2, r6, #15
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_613
	b	L_BB0_611
L_BB0_611:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_611
	b	L_BB0_612
L_BB0_612:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_613:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_613
	b	L_BB0_614
L_BB0_614:                              ; %.preheader35
                                        ;   in Loop: Header=BB0_570 Depth=2
	la	r7, .L.str.6
L_BB0_615:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_617 Depth 4
                                        ;         Child Loop BB0_619 Depth 4
	andi	r2, r2, #255
	sw	r2, [r13 + #0]
	lbu	r2, [r7 + #0]
	be	r2, r10, L_BB0_617
	b	L_BB0_616
L_BB0_616:                              ;   in Loop: Header=BB0_615 Depth=3
	be	r2, r3, L_BB0_621
	b	L_BB0_619
L_BB0_617:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_615 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_617
	b	L_BB0_618
L_BB0_618:                              ;   in Loop: Header=BB0_615 Depth=3
	lw	r4, [r15 + #76]
	li	r13, #1073741824
	sw	r4, [r13 + #0]
L_BB0_619:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_615 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_619
	b	L_BB0_620
L_BB0_620:                              ;   in Loop: Header=BB0_615 Depth=3
	addi	r7, r7, #1
	li	r13, #1073741824
	b	L_BB0_615
L_BB0_621:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r2, [r15 + #84]
	srli	r2, r2, #4
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_624
	b	L_BB0_622
L_BB0_622:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_622
	b	L_BB0_623
L_BB0_623:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_624:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_624
	b	L_BB0_625
L_BB0_625:                              ;   in Loop: Header=BB0_570 Depth=2
	sw	r2, [r13 + #0]
	lw	r2, [r15 + #84]
	andi	r2, r2, #15
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_628
	b	L_BB0_626
L_BB0_626:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_626
	b	L_BB0_627
L_BB0_627:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r4, [r15 + #76]
	sw	r4, [r13 + #0]
L_BB0_628:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_628
	b	L_BB0_629
L_BB0_629:                              ; %.preheader32
                                        ;   in Loop: Header=BB0_570 Depth=2
	la	r7, .L.str.26
L_BB0_630:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB0_632 Depth 4
                                        ;         Child Loop BB0_634 Depth 4
	andi	r2, r2, #255
	sw	r2, [r13 + #0]
	lbu	r2, [r7 + #0]
	be	r2, r10, L_BB0_632
	b	L_BB0_631
L_BB0_631:                              ;   in Loop: Header=BB0_630 Depth=3
	be	r2, r3, L_BB0_636
	b	L_BB0_634
L_BB0_632:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_630 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_632
	b	L_BB0_633
L_BB0_633:                              ;   in Loop: Header=BB0_630 Depth=3
	lw	r4, [r15 + #76]
	li	r13, #1073741824
	sw	r4, [r13 + #0]
L_BB0_634:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ;       Parent Loop BB0_630 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r13, [r8 + #0]
	andi	r13, r13, #1
	be	r13, r3, L_BB0_634
	b	L_BB0_635
L_BB0_635:                              ;   in Loop: Header=BB0_630 Depth=3
	addi	r7, r7, #1
	li	r13, #1073741824
	b	L_BB0_630
L_BB0_636:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r2, [r15 + #96]
	srli	r2, r2, #4
	add	r2, r2, r12
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_639
	b	L_BB0_637
L_BB0_637:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_637
	b	L_BB0_638
L_BB0_638:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r7, [r15 + #76]
	sw	r7, [r13 + #0]
L_BB0_639:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_639
	b	L_BB0_640
L_BB0_640:                              ;   in Loop: Header=BB0_570 Depth=2
	sw	r2, [r13 + #0]
	lw	r2, [r15 + #96]
	andi	r2, r2, #15
	add	r2, r2, r12
	li	r12, #1073741828
	lbu	r2, [r2 + #0]
	bne	r2, r10, L_BB0_643
	b	L_BB0_641
L_BB0_641:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_641
	b	L_BB0_642
L_BB0_642:                              ;   in Loop: Header=BB0_570 Depth=2
	lw	r7, [r15 + #76]
	sw	r7, [r13 + #0]
L_BB0_643:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_570 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r7, [r8 + #0]
	andi	r7, r7, #1
	be	r7, r3, L_BB0_643
	b	L_BB0_644
L_BB0_644:                              ;   in Loop: Header=BB0_570 Depth=2
	sw	r2, [r13 + #0]
	lw	r2, [r15 + #100]
	lw	r4, [r15 + #56]
	lw	r7, [r15 + #84]
	b	L_BB0_646
L_BB0_571:                              ; %.preheader114
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.27
	lw	r6, [r15 + #76]
	b	L_BB0_647
L_BB0_647:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_649 Depth 3
                                        ;       Child Loop BB0_651 Depth 3
	lbu	r4, [r2 + #0]
	be	r4, r10, L_BB0_649
	b	L_BB0_648
L_BB0_648:                              ;   in Loop: Header=BB0_647 Depth=2
	be	r4, r3, L_BB0_39
	b	L_BB0_651
L_BB0_649:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_647 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_649
	b	L_BB0_650
L_BB0_650:                              ;   in Loop: Header=BB0_647 Depth=2
	sw	r6, [r13 + #0]
L_BB0_651:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_647 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r3, L_BB0_651
	b	L_BB0_652
L_BB0_652:                              ;   in Loop: Header=BB0_647 Depth=2
	sw	r4, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_647
L_BB0_39:                               ; %.loopexit115
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_423:                              ; %._crit_edge333
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r5, #-2
	addi	r6, r0, #0
	b	L_BB0_428
L_BB0_428:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #0
	addi	r5, r5, #1
	sw	r2, [r15 + #96]
	lw	r7, [r15 + #48]
L_BB0_429:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r12, r7, #-97
	addi	r4, r2, #0
	lw	r2, [r15 + #96]
	lw	r3, [r15 + #64]
	andi	r6, r6, #1
	andi	r12, r12, #255
	sltu	r12, r12, r3
	sub	r6, r2, r6
	lw	r3, [r15 + #60]
	sub	r12, r2, r12
	slli	r2, r4, #4
	andi	r12, r12, #96
	ori	r12, r12, #25
	and	r6, r12, r6
	andi	r12, r7, #255
	lbu	r7, [r5 + #0]
	addi	r5, r5, #1
	xor	r6, r6, r3
	lw	r3, [r15 + #68]
	add	r6, r6, r12
	or	r2, r6, r2
	addi	r6, r7, #-58
	andi	r12, r6, #255
	sltu	r6, r12, r3
	lw	r3, [r15 + #84]
	bltu	r3, r12, L_BB0_429
	b	L_BB0_430
L_BB0_430:                              ;   in Loop: Header=BB0_429 Depth=2
	lw	r3, [r15 + #56]
	and	r12, r7, r3
	lw	r3, [r15 + #52]
	addi	r12, r12, #-71
	andi	r12, r12, #255
	bltu	r3, r12, L_BB0_429
	b	L_BB0_431
L_BB0_431:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #100]
	lw	r6, [r15 + #76]
	addi	r5, r0, #0
	li	r12, #1073741828
	lw	r3, [r15 + #72]
	lw	r4, [r15 + #44]
	be	r4, r5, L_BB0_440
	b	L_BB0_432
L_BB0_432:                              ;   in Loop: Header=BB0_17 Depth=1
	b	L_BB0_439
L_BB0_439:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sb	r2, [r3 + #0]
	addi	r4, r4, #-1
	addi	r3, r3, #1
	bne	r4, r5, L_BB0_439
	b	L_BB0_440
L_BB0_440:                              ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.4
L_BB0_441:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_443 Depth 3
                                        ;       Child Loop BB0_445 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_443
	b	L_BB0_442
L_BB0_442:                              ;   in Loop: Header=BB0_441 Depth=2
	be	r3, r5, L_BB0_34
	b	L_BB0_445
L_BB0_443:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_441 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r5, L_BB0_443
	b	L_BB0_444
L_BB0_444:                              ;   in Loop: Header=BB0_441 Depth=2
	sw	r6, [r13 + #0]
L_BB0_445:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_441 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r5, L_BB0_445
	b	L_BB0_446
L_BB0_446:                              ;   in Loop: Header=BB0_441 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_441
L_BB0_34:                               ; %.loopexit91
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_305:                              ; %._crit_edge386
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r13, r13, #-2
	addi	r2, r0, #0
	li	r12, #1073741828
L_BB0_306:                              ;   in Loop: Header=BB0_17 Depth=1
	addi	r5, r13, #1
	addi	r4, r7, #0
	b	L_BB0_312
L_BB0_312:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r10, #-97
	lw	r13, [r15 + #64]
	andi	r2, r2, #1
	slli	r4, r4, #4
	andi	r6, r6, #255
	sub	r2, r7, r2
	sltu	r6, r6, r13
	sub	r6, r7, r6
	andi	r6, r6, #96
	ori	r6, r6, #25
	and	r2, r6, r2
	lw	r6, [r15 + #60]
	xor	r2, r2, r6
	slli	r6, r10, #24
	lbu	r10, [r5 + #0]
	addi	r5, r5, #1
	srai	r6, r6, #24
	add	r2, r2, r6
	or	r4, r2, r4
	addi	r2, r10, #-58
	andi	r6, r2, #255
	lw	r2, [r15 + #68]
	lw	r13, [r15 + #84]
	sltu	r2, r6, r2
	bltu	r13, r6, L_BB0_312
	b	L_BB0_313
L_BB0_313:                              ;   in Loop: Header=BB0_312 Depth=2
	and	r6, r10, r3
	lw	r13, [r15 + #28]
	addi	r6, r6, #-71
	andi	r6, r6, #255
	bltu	r6, r13, L_BB0_320
	b	L_BB0_312
L_BB0_320:                              ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	lw	r5, [r15 + #100]
	lw	r10, [r15 + #20]
	addi	r3, r0, #0
	li	r13, #1073741824
	be	r4, r3, L_BB0_17
	b	L_BB0_322
L_BB0_121:                              ; %.preheader139
                                        ;   in Loop: Header=BB0_17 Depth=1
	la	r2, .L.str.3
	lw	r6, [r15 + #76]
	b	L_BB0_125
L_BB0_125:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_127 Depth 3
                                        ;       Child Loop BB0_129 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_127
	b	L_BB0_126
L_BB0_126:                              ;   in Loop: Header=BB0_125 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_42
	b	L_BB0_129
L_BB0_127:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_125 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_127
	b	L_BB0_128
L_BB0_128:                              ;   in Loop: Header=BB0_125 Depth=2
	sw	r6, [r13 + #0]
L_BB0_129:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_125 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_129
	b	L_BB0_130
L_BB0_130:                              ;   in Loop: Header=BB0_125 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_125
L_BB0_42:                               ; %.loopexit140
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
L_BB0_363:                              ; %.preheader81
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r3, [r15 + #100]
	lw	r10, [r15 + #20]
	la	r2, .L.str.3
	li	r13, #1073741824
	lw	r6, [r15 + #76]
	li	r12, #1073741828
	b	L_BB0_367
L_BB0_367:                              ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_369 Depth 3
                                        ;       Child Loop BB0_371 Depth 3
	lbu	r3, [r2 + #0]
	be	r3, r10, L_BB0_369
	b	L_BB0_368
L_BB0_368:                              ;   in Loop: Header=BB0_367 Depth=2
	addi	r4, r0, #0
	be	r3, r4, L_BB0_30
	b	L_BB0_371
L_BB0_369:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_367 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_369
	b	L_BB0_370
L_BB0_370:                              ;   in Loop: Header=BB0_367 Depth=2
	sw	r6, [r13 + #0]
L_BB0_371:                              ;   Parent Loop BB0_17 Depth=1
                                        ;     Parent Loop BB0_367 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r5, r0, #0
	andi	r4, r4, #1
	be	r4, r5, L_BB0_371
	b	L_BB0_372
L_BB0_372:                              ;   in Loop: Header=BB0_367 Depth=2
	sw	r3, [r13 + #0]
	addi	r2, r2, #1
	b	L_BB0_367
L_BB0_30:                               ; %.loopexit82
                                        ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #16]
	b	L_BB0_17
	.cfi_endproc
                                        ; -- End function
dump_range:                             ; -- Begin function dump_range
                                        ; @dump_range
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-40
	addi	r12, r2, #0
	sw	r8, [r15 + #36]
	sw	r9, [r15 + #32]
	sw	r10, [r15 + #28]
	sw	r11, [r15 + #24]
	bltu	r3, r12, L_BB1_45
	b	L_BB1_1
L_BB1_1:                                ; %.preheader11
	la	r2, .L.str.5
	addi	r10, r0, #10
	li	r8, #1073741832
	addi	r9, r0, #0
	sw	r2, [r15 + #0]
	addi	r2, r0, #13
	sw	r2, [r15 + #20]
	la	r2, .L.str.6
	sw	r2, [r15 + #8]
	addi	r2, r0, #32
	sw	r2, [r15 + #16]
	sw	r3, [r15 + #4]
L_BB1_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
                                        ;       Child Loop BB1_6 Depth 3
                                        ;       Child Loop BB1_8 Depth 3
                                        ;     Child Loop BB1_10 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;       Child Loop BB1_15 Depth 3
                                        ;       Child Loop BB1_17 Depth 3
                                        ;       Child Loop BB1_19 Depth 3
                                        ;       Child Loop BB1_22 Depth 3
                                        ;         Child Loop BB1_24 Depth 4
                                        ;         Child Loop BB1_26 Depth 4
                                        ;       Child Loop BB1_28 Depth 3
                                        ;     Child Loop BB1_30 Depth 2
                                        ;     Child Loop BB1_32 Depth 2
                                        ;       Child Loop BB1_37 Depth 3
                                        ;       Child Loop BB1_35 Depth 3
                                        ;     Child Loop BB1_41 Depth 2
                                        ;     Child Loop BB1_43 Depth 2
	srli	r2, r12, #16
	sw	r12, [r15 + #12]
	jal	r11, print_hex16
	lw	r2, [r15 + #12]
	andi	r2, r2, #65535
	jal	r11, print_hex16
	lw	r12, [r15 + #12]
	lw	r3, [r15 + #4]
	lw	r2, [r15 + #0]
	li	r7, #1073741824
L_BB1_3:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_6 Depth 3
                                        ;       Child Loop BB1_8 Depth 3
	lbu	r5, [r2 + #0]
	be	r5, r10, L_BB1_6
	b	L_BB1_4
L_BB1_4:                                ;   in Loop: Header=BB1_3 Depth=2
	bne	r5, r9, L_BB1_8
	b	L_BB1_5
L_BB1_6:                                ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB1_6
	b	L_BB1_7
L_BB1_7:                                ;   in Loop: Header=BB1_3 Depth=2
	lw	r4, [r15 + #20]
	sw	r4, [r7 + #0]
L_BB1_8:                                ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_3 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB1_8
	b	L_BB1_9
L_BB1_9:                                ;   in Loop: Header=BB1_3 Depth=2
	sw	r5, [r7 + #0]
	addi	r2, r2, #1
	b	L_BB1_3
L_BB1_5:                                ; %.preheader10
                                        ;   in Loop: Header=BB1_2 Depth=1
	addi	r2, r9, #0
	addi	r13, r9, #0
	b	L_BB1_10
L_BB1_10:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;       Child Loop BB1_15 Depth 3
                                        ;       Child Loop BB1_17 Depth 3
                                        ;       Child Loop BB1_19 Depth 3
                                        ;       Child Loop BB1_22 Depth 3
                                        ;         Child Loop BB1_24 Depth 4
                                        ;         Child Loop BB1_26 Depth 4
                                        ;       Child Loop BB1_28 Depth 3
	add	r4, r12, r13
	sltu	r5, r3, r4
	be	r5, r0, L_BB1_12
	b	L_BB1_11
L_BB1_11:                               ; %.preheader3
                                        ;   in Loop: Header=BB1_10 Depth=2
	lw	r4, [r15 + #8]
	b	L_BB1_22
L_BB1_22:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_24 Depth 4
                                        ;         Child Loop BB1_26 Depth 4
	lbu	r5, [r4 + #0]
	be	r5, r10, L_BB1_24
	b	L_BB1_23
L_BB1_23:                               ;   in Loop: Header=BB1_22 Depth=3
	be	r5, r9, L_BB1_21
	b	L_BB1_26
L_BB1_24:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ;       Parent Loop BB1_22 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r9, L_BB1_24
	b	L_BB1_25
L_BB1_25:                               ;   in Loop: Header=BB1_22 Depth=3
	lw	r6, [r15 + #20]
	sw	r6, [r7 + #0]
L_BB1_26:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ;       Parent Loop BB1_22 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	lw	r6, [r8 + #0]
	andi	r6, r6, #1
	be	r6, r9, L_BB1_26
	b	L_BB1_27
L_BB1_27:                               ;   in Loop: Header=BB1_22 Depth=3
	sw	r5, [r7 + #0]
	addi	r4, r4, #1
	b	L_BB1_22
L_BB1_12:                               ;   in Loop: Header=BB1_10 Depth=2
	lbu	r4, [r4 + #0]
	la	r5, .L.str.7
	srli	r6, r4, #4
	add	r6, r6, r5
	lbu	r7, [r6 + #0]
	bne	r7, r10, L_BB1_15
	b	L_BB1_13
L_BB1_13:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	addi	r12, r0, #0
	andi	r6, r6, #1
	be	r6, r12, L_BB1_13
	b	L_BB1_14
L_BB1_14:                               ;   in Loop: Header=BB1_10 Depth=2
	lw	r12, [r15 + #20]
	li	r6, #1073741824
	sw	r12, [r6 + #0]
L_BB1_15:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r6, [r8 + #0]
	andi	r12, r6, #1
	addi	r6, r0, #0
	be	r12, r6, L_BB1_15
	b	L_BB1_16
L_BB1_16:                               ;   in Loop: Header=BB1_10 Depth=2
	andi	r4, r4, #15
	li	r12, #1073741824
	sw	r7, [r12 + #0]
	add	r4, r4, r5
	addi	r7, r12, #0
	lbu	r4, [r4 + #0]
	bne	r4, r10, L_BB1_19
	b	L_BB1_17
L_BB1_17:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r6, L_BB1_17
	b	L_BB1_18
L_BB1_18:                               ;   in Loop: Header=BB1_10 Depth=2
	lw	r5, [r15 + #20]
	sw	r5, [r7 + #0]
L_BB1_19:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	andi	r5, r5, #1
	be	r5, r6, L_BB1_19
	b	L_BB1_20
L_BB1_20:                               ;   in Loop: Header=BB1_10 Depth=2
	sw	r4, [r7 + #0]
	lw	r12, [r15 + #12]
L_BB1_21:                               ;   in Loop: Header=BB1_10 Depth=2
	b	L_BB1_28
L_BB1_28:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	andi	r4, r4, #1
	be	r4, r9, L_BB1_28
	b	L_BB1_29
L_BB1_29:                               ;   in Loop: Header=BB1_10 Depth=2
	lw	r4, [r15 + #16]
	addi	r13, r13, #1
	sw	r4, [r7 + #0]
	sltu	r4, r0, r13
	xori	r4, r4, #1
	add	r2, r2, r4
	xori	r4, r13, #16
	or	r4, r4, r2
	bne	r4, r9, L_BB1_10
	b	L_BB1_30
L_BB1_30:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r9, L_BB1_30
	b	L_BB1_31
L_BB1_31:                               ;   in Loop: Header=BB1_2 Depth=1
	lw	r2, [r15 + #16]
	sw	r2, [r7 + #0]
	addi	r2, r9, #0
	addi	r7, r9, #0
L_BB1_32:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_37 Depth 3
                                        ;       Child Loop BB1_35 Depth 3
	add	r4, r12, r7
	bltu	r3, r4, L_BB1_39
	b	L_BB1_33
L_BB1_33:                               ;   in Loop: Header=BB1_32 Depth=2
	lbu	r4, [r4 + #0]
	addi	r6, r0, #95
	addi	r5, r4, #-32
	andi	r5, r5, #255
	bltu	r5, r6, L_BB1_35
	b	L_BB1_34
L_BB1_35:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_32 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r5, [r8 + #0]
	addi	r6, r0, #0
	andi	r5, r5, #1
	be	r5, r6, L_BB1_35
	b	L_BB1_36
L_BB1_36:                               ;   in Loop: Header=BB1_32 Depth=2
	b	L_BB1_38
L_BB1_34:                               ; %.preheader2
                                        ;   in Loop: Header=BB1_32 Depth=2
	b	L_BB1_37
L_BB1_37:                               ;   Parent Loop BB1_2 Depth=1
                                        ;     Parent Loop BB1_32 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	lw	r4, [r8 + #0]
	addi	r6, r0, #0
	andi	r5, r4, #1
	addi	r4, r0, #46
	be	r5, r6, L_BB1_37
	b	L_BB1_38
L_BB1_38:                               ;   in Loop: Header=BB1_32 Depth=2
	li	r5, #1073741824
	sw	r4, [r5 + #0]
L_BB1_39:                               ;   in Loop: Header=BB1_32 Depth=2
	addi	r7, r7, #1
	sltu	r4, r0, r7
	xori	r4, r4, #1
	add	r2, r2, r4
	xori	r4, r7, #16
	or	r5, r4, r2
	addi	r4, r0, #0
	bne	r5, r4, L_BB1_32
	b	L_BB1_40
L_BB1_40:                               ;   in Loop: Header=BB1_2 Depth=1
	sub	r2, r3, r12
	addi	r5, r0, #16
	bltu	r2, r5, L_BB1_45
	b	L_BB1_41
L_BB1_41:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB1_41
	b	L_BB1_42
L_BB1_42:                               ;   in Loop: Header=BB1_2 Depth=1
	lw	r2, [r15 + #20]
	li	r5, #1073741824
	sw	r2, [r5 + #0]
L_BB1_43:                               ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r2, [r8 + #0]
	andi	r2, r2, #1
	be	r2, r4, L_BB1_43
	b	L_BB1_44
L_BB1_44:                               ;   in Loop: Header=BB1_2 Depth=1
	addi	r12, r12, #16
	sw	r10, [r5 + #0]
	sltu	r2, r3, r12
	be	r2, r0, L_BB1_2
	b	L_BB1_45
L_BB1_45:
	lw	r11, [r15 + #24]
	lw	r10, [r15 + #28]
	lw	r9, [r15 + #32]
	lw	r8, [r15 + #36]
	addi	r15, r15, #40
	ret
	.cfi_endproc
                                        ; -- End function
print_hex16:                            ; -- Begin function print_hex16
                                        ; @print_hex16
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-4
	srli	r3, r2, #12
	la	r6, .L.str.7
	sw	r8, [r15 + #0]
	addi	r7, r0, #10
	addi	r5, r0, #0
	li	r4, #1073741824
	andi	r3, r3, #15
	add	r3, r3, r6
	lbu	r12, [r3 + #0]
	li	r3, #1073741832
	bne	r12, r7, L_BB2_3
	b	L_BB2_1
L_BB2_1:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_1
	b	L_BB2_2
L_BB2_2:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_3:
	srli	r13, r2, #8
L_BB2_4:                                ; =>This Inner Loop Header: Depth=1
	lw	r8, [r3 + #0]
	andi	r8, r8, #1
	be	r8, r5, L_BB2_4
	b	L_BB2_5
L_BB2_5:
	sw	r12, [r4 + #0]
	andi	r12, r13, #15
	add	r12, r12, r6
	lbu	r12, [r12 + #0]
	bne	r12, r7, L_BB2_8
	b	L_BB2_6
L_BB2_6:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_6
	b	L_BB2_7
L_BB2_7:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_8:                                ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_8
	b	L_BB2_9
L_BB2_9:
	sw	r12, [r4 + #0]
	srli	r12, r2, #4
	andi	r12, r12, #15
	add	r12, r12, r6
	lbu	r12, [r12 + #0]
	bne	r12, r7, L_BB2_12
	b	L_BB2_10
L_BB2_10:                               ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_10
	b	L_BB2_11
L_BB2_11:
	addi	r13, r0, #13
	sw	r13, [r4 + #0]
L_BB2_12:                               ; =>This Inner Loop Header: Depth=1
	lw	r13, [r3 + #0]
	andi	r13, r13, #1
	be	r13, r5, L_BB2_12
	b	L_BB2_13
L_BB2_13:
	andi	r2, r2, #15
	sw	r12, [r4 + #0]
	add	r2, r2, r6
	lbu	r2, [r2 + #0]
	bne	r2, r7, L_BB2_16
	b	L_BB2_14
L_BB2_14:                               ; =>This Inner Loop Header: Depth=1
	lw	r6, [r3 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB2_14
	b	L_BB2_15
L_BB2_15:
	addi	r6, r0, #13
	sw	r6, [r4 + #0]
L_BB2_16:                               ; =>This Inner Loop Header: Depth=1
	lw	r6, [r3 + #0]
	andi	r6, r6, #1
	be	r6, r5, L_BB2_16
	b	L_BB2_17
L_BB2_17:
	sw	r2, [r4 + #0]
	lw	r8, [r15 + #0]
	addi	r15, r15, #4
	ret
	.cfi_endproc
                                        ; -- End function
	.data
.L.str:                                 ; @.str
	db	10
	db	110
	db	101
	db	111
	db	32
	db	109
	db	111
	db	110
	db	105
	db	116
	db	111
	db	114
	db	10
	db	0

.L.str.1:                               ; @.str.1
	db	116
	db	121
	db	112
	db	101
	db	32
	db	63
	db	32
	db	102
	db	111
	db	114
	db	32
	db	104
	db	101
	db	108
	db	112
	db	10
	db	0

.L.str.2:                               ; @.str.2
	db	10
	db	10
	db	92
	db	32
	db	0

.L.str.3:                               ; @.str.3
	db	10
	db	63
	db	0

.L.str.4:                               ; @.str.4
	db	10
	db	111
	db	107
	db	0

.L.str.5:                               ; @.str.5
	db	58
	db	32
	db	0

.L.str.6:                               ; @.str.6
	db	32
	db	32
	db	0

.L.str.7:                               ; @.str.7
	db	48
	db	49
	db	50
	db	51
	db	52
	db	53
	db	54
	db	55
	db	56
	db	57
	db	65
	db	66
	db	67
	db	68
	db	69
	db	70
	db	0

.L.str.8:                               ; @.str.8
	db	10
	db	99
	db	111
	db	109
	db	109
	db	97
	db	110
	db	100
	db	115
	db	32
	db	40
	db	104
	db	101
	db	120
	db	32
	db	97
	db	114
	db	103
	db	115
	db	41
	db	58
	db	10
	db	0

.L.str.9:                               ; @.str.9
	db	32
	db	32
	db	63
	db	32
	db	47
	db	32
	db	72
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	104
	db	101
	db	108
	db	112
	db	10
	db	0

.L.str.10:                              ; @.str.10
	db	32
	db	32
	db	68
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	91
	db	108
	db	101
	db	110
	db	93
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	109
	db	101
	db	109
	db	111
	db	114
	db	121
	db	10
	db	0

.L.str.11:                              ; @.str.11
	db	32
	db	32
	db	87
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	98
	db	48
	db	32
	db	98
	db	49
	db	32
	db	46
	db	46
	db	46
	db	32
	db	32
	db	32
	db	32
	db	119
	db	114
	db	105
	db	116
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.12:                              ; @.str.12
	db	32
	db	32
	db	70
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	108
	db	101
	db	110
	db	32
	db	98
	db	121
	db	116
	db	101
	db	32
	db	32
	db	32
	db	32
	db	32
	db	102
	db	105
	db	108
	db	108
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.13:                              ; @.str.13
	db	32
	db	32
	db	77
	db	32
	db	115
	db	114
	db	99
	db	32
	db	100
	db	115
	db	116
	db	32
	db	108
	db	101
	db	110
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	109
	db	111
	db	118
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.14:                              ; @.str.14
	db	32
	db	32
	db	67
	db	32
	db	97
	db	32
	db	98
	db	32
	db	108
	db	101
	db	110
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	99
	db	111
	db	109
	db	112
	db	97
	db	114
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.15:                              ; @.str.15
	db	32
	db	32
	db	71
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	106
	db	117
	db	109
	db	112
	db	32
	db	116
	db	111
	db	32
	db	97
	db	100
	db	100
	db	114
	db	10
	db	0

.L.str.16:                              ; @.str.16
	db	10
	db	119
	db	111
	db	122
	db	32
	db	115
	db	116
	db	121
	db	108
	db	101
	db	58
	db	10
	db	0

.L.str.17:                              ; @.str.17
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	102
	db	114
	db	111
	db	109
	db	32
	db	65
	db	65
	db	65
	db	65
	db	10
	db	0

.L.str.18:                              ; @.str.18
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	46
	db	66
	db	66
	db	66
	db	66
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	100
	db	117
	db	109
	db	112
	db	32
	db	114
	db	97
	db	110
	db	103
	db	101
	db	10
	db	0

.L.str.19:                              ; @.str.19
	db	32
	db	32
	db	65
	db	65
	db	65
	db	65
	db	58
	db	32
	db	48
	db	49
	db	32
	db	48
	db	50
	db	32
	db	48
	db	51
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	119
	db	114
	db	105
	db	116
	db	101
	db	32
	db	98
	db	121
	db	116
	db	101
	db	115
	db	10
	db	0

.L.str.20:                              ; @.str.20
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	68
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	91
	db	108
	db	101
	db	110
	db	93
	db	0

.L.str.21:                              ; @.str.21
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	87
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	98
	db	48
	db	32
	db	98
	db	49
	db	32
	db	46
	db	46
	db	46
	db	0

.L.str.22:                              ; @.str.22
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	70
	db	32
	db	97
	db	100
	db	100
	db	114
	db	32
	db	108
	db	101
	db	110
	db	32
	db	98
	db	121
	db	116
	db	101
	db	0

.L.str.23:                              ; @.str.23
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	77
	db	32
	db	115
	db	114
	db	99
	db	32
	db	100
	db	115
	db	116
	db	32
	db	108
	db	101
	db	110
	db	0

.L.str.24:                              ; @.str.24
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	67
	db	32
	db	97
	db	32
	db	98
	db	32
	db	108
	db	101
	db	110
	db	0

.L.str.25:                              ; @.str.25
	db	10
	db	109
	db	105
	db	115
	db	109
	db	97
	db	116
	db	99
	db	104
	db	32
	db	64
	db	0

.L.str.26:                              ; @.str.26
	db	32
	db	33
	db	61
	db	32
	db	0

.L.str.27:                              ; @.str.27
	db	10
	db	109
	db	97
	db	116
	db	99
	db	104
	db	0

.L.str.28:                              ; @.str.28
	db	10
	db	117
	db	115
	db	97
	db	103
	db	101
	db	58
	db	32
	db	71
	db	32
	db	97
	db	100
	db	100
	db	114
	db	0

.L.str.29:                              ; @.str.29
	db	10
	db	119
	db	111
	db	117
	db	108
	db	100
	db	32
	db	106
	db	117
	db	109
	db	112
	db	32
	db	116
	db	111
	db	32
	db	0

.L.str.30:                              ; @.str.30
	db	10
	db	105
	db	110
	db	100
	db	105
	db	114
	db	101
	db	99
	db	116
	db	32
	db	106
	db	117
	db	109
	db	112
	db	32
	db	110
	db	111
	db	116
	db	32
	db	115
	db	117
	db	112
	db	112
	db	111
	db	114
	db	116
	db	101
	db	100
	db	32
	db	98
	db	121
	db	32
	db	116
	db	104
	db	105
	db	115
	db	32
	db	98
	db	97
	db	99
	db	107
	db	101
	db	110
	db	100
	db	0

	.section	".note.GNU-stack","",@progbits
