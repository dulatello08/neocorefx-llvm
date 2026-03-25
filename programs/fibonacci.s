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
	addi	r15, r15, #-136
	sw	r8, [r15 + #132]
	sw	r9, [r15 + #128]
	sw	r10, [r15 + #124]
	sw	r11, [r15 + #120]
	li	r2, #1073741836
	addi	r3, r0, #3
	sw	r3, [r2 + #0]
	li	r2, #1073741840
	addi	r3, r0, #346
	sw	r3, [r2 + #0]
	li	r2, #1073741832
	addi	r3, r0, #12
	sw	r3, [r2 + #0]
	li	r13, #1073741824
	addi	r3, r0, #87
	sw	r3, [r13 + #0]
	addi	r3, r0, #104
	sw	r3, [r13 + #0]
	addi	r4, r0, #97
	sw	r4, [r13 + #0]
	addi	r3, r0, #116
	sw	r3, [r13 + #0]
	addi	r3, r0, #32
	sw	r3, [r13 + #0]
	addi	r5, r0, #105
	sw	r5, [r15 + #24]
	sw	r5, [r13 + #0]
	addi	r5, r0, #115
	sw	r5, [r13 + #0]
	sw	r3, [r13 + #0]
	addi	r5, r0, #121
	sw	r5, [r13 + #0]
	addi	r5, r0, #111
	sw	r5, [r13 + #0]
	addi	r5, r0, #117
	sw	r5, [r13 + #0]
	addi	r5, r0, #114
	sw	r5, [r13 + #0]
	sw	r3, [r13 + #0]
	addi	r5, r0, #110
	sw	r5, [r13 + #0]
	sw	r4, [r13 + #0]
	addi	r4, r0, #109
	sw	r4, [r13 + #0]
	addi	r4, r0, #101
	sw	r4, [r13 + #0]
	addi	r4, r0, #63
	sw	r4, [r13 + #0]
	addi	r5, r0, #0
	li	r6, #1073741828
	addi	r10, r0, #10
	addi	r4, r0, #13
	sw	r4, [r15 + #36]
	addi	r7, r0, #62
	addi	r4, r15, #44
	addi	r12, r5, #0
L_BB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	sw	r3, [r13 + #0]
L_BB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r2 + #0]
	andi	r3, r3, #2
	be	r3, r5, L_BB0_2
	b	L_BB0_3
L_BB0_3:                                ;   in Loop: Header=BB0_2 Depth=2
	lw	r13, [r6 + #0]
	andi	r3, r13, #255
	be	r3, r10, L_BB0_7
	b	L_BB0_4
L_BB0_4:                                ;   in Loop: Header=BB0_2 Depth=2
	lw	r8, [r15 + #36]
	be	r3, r8, L_BB0_7
	b	L_BB0_5
L_BB0_5:                                ;   in Loop: Header=BB0_2 Depth=2
	bltu	r7, r12, L_BB0_2
	b	L_BB0_6
L_BB0_6:                                ;   in Loop: Header=BB0_1 Depth=1
	add	r8, r4, r12
	sb	r13, [r8 + #0]
	addi	r12, r12, #1
	li	r13, #1073741824
	b	L_BB0_1
L_BB0_7:
	add	r3, r4, r12
	addi	r2, r0, #0
	sb	r2, [r3 + #0]
	li	r12, #1073741824
	lw	r13, [r15 + #36]
	sw	r13, [r12 + #0]
	sw	r10, [r12 + #0]
	addi	r3, r0, #72
	sw	r3, [r12 + #0]
	lw	r3, [r15 + #24]
	sw	r3, [r12 + #0]
	addi	r3, r0, #32
	sw	r3, [r15 + #32]
	sw	r3, [r12 + #0]
	lbu	r5, [r4 + #0]
	be	r5, r2, L_BB0_12
	b	L_BB0_8
L_BB0_8:                                ; %.preheader2
	addi	r3, r4, #1
L_BB0_9:                                ; =>This Inner Loop Header: Depth=1
	andi	r4, r5, #255
	bne	r4, r10, L_BB0_11
	b	L_BB0_10
L_BB0_10:                               ;   in Loop: Header=BB0_9 Depth=1
	sw	r13, [r12 + #0]
L_BB0_11:                               ;   in Loop: Header=BB0_9 Depth=1
	sw	r4, [r12 + #0]
	addi	r4, r3, #1
	lbu	r5, [r3 + #0]
	addi	r3, r4, #0
	bne	r5, r2, L_BB0_9
	b	L_BB0_12
L_BB0_12:
	addi	r6, r0, #33
	la	r3, .L.str.2
	addi	r4, r2, #0
	addi	r5, r2, #0
L_BB0_13:                               ; =>This Inner Loop Header: Depth=1
	andi	r6, r6, #255
	bne	r6, r10, L_BB0_15
	b	L_BB0_14
L_BB0_14:                               ;   in Loop: Header=BB0_13 Depth=1
	sw	r13, [r12 + #0]
L_BB0_15:                               ;   in Loop: Header=BB0_13 Depth=1
	addi	r5, r5, #1
	sltu	r7, r0, r5
	xori	r7, r7, #1
	add	r4, r4, r7
	sw	r6, [r12 + #0]
	xori	r6, r5, #57
	or	r7, r6, r4
	add	r6, r5, r3
	lbu	r6, [r6 + #0]
	bne	r7, r2, L_BB0_13
	b	L_BB0_16
L_BB0_16:                               ; %.preheader1
	addi	r7, r0, #0
	addi	r2, r0, #102
	sw	r2, [r15 + #20]
	addi	r2, r0, #98
	sw	r2, [r15 + #16]
	addi	r2, r0, #40
	sw	r2, [r15 + #12]
	addi	r8, r15, #108
	addi	r2, r0, #48
	sw	r2, [r15 + #0]
	addi	r9, r0, #1
	addi	r2, r0, #41
	sw	r2, [r15 + #8]
	addi	r2, r0, #61
	sw	r2, [r15 + #4]
	addi	r4, r7, #0
	sw	r7, [r15 + #28]
L_BB0_17:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_20 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;     Child Loop BB0_28 Depth 2
                                        ;     Child Loop BB0_31 Depth 2
	lw	r2, [r15 + #32]
	sw	r2, [r12 + #0]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #20]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #24]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #16]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #12]
	sw	r2, [r12 + #0]
	sw	r4, [r15 + #40]
	be	r4, r7, L_BB0_19
	b	L_BB0_18
L_BB0_18:                               ; %.preheader
                                        ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #0
	addi	r3, r2, #0
	li	r13, #-858993459
	b	L_BB0_20
L_BB0_20:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r5, r4, #0
	add	r6, r8, r2
	mulhu	r4, r5, r13
	srli	r4, r4, #3
	mul	r7, r4, r10
	sub	r7, r5, r7
	ori	r7, r7, #48
	sb	r7, [r6 + #0]
	addi	r2, r2, #1
	sltu	r6, r0, r2
	xori	r6, r6, #1
	add	r3, r3, r6
	addi	r6, r0, #9
	bltu	r6, r5, L_BB0_20
	b	L_BB0_21
L_BB0_21:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r3, r0, #0
	lw	r13, [r15 + #36]
L_BB0_22:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r4, r2, #0
	addi	r2, r4, #-1
	add	r5, r8, r2
	lbu	r5, [r5 + #0]
	bne	r5, r10, L_BB0_24
	b	L_BB0_23
L_BB0_23:                               ;   in Loop: Header=BB0_22 Depth=2
	sw	r13, [r12 + #0]
L_BB0_24:                               ;   in Loop: Header=BB0_22 Depth=2
	sltu	r6, r0, r4
	xori	r6, r6, #1
	sub	r3, r3, r6
	sw	r5, [r12 + #0]
	blt	r9, r4, L_BB0_22
	b	L_BB0_25
L_BB0_25:                               ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #8]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #32]
	sw	r2, [r12 + #0]
	lw	r3, [r15 + #4]
	sw	r3, [r12 + #0]
	sw	r2, [r12 + #0]
	lw	r2, [r15 + #40]
	jal	r11, fibonacci
	lw	r7, [r15 + #28]
	be	r2, r7, L_BB0_27
	b	L_BB0_26
L_BB0_26:                               ;   in Loop: Header=BB0_17 Depth=1
	srai	r3, r2, #31
	xor	r4, r2, r3
	sub	r5, r4, r3
	addi	r3, r0, #0
	addi	r4, r3, #0
	li	r13, #-858993459
	b	L_BB0_28
L_BB0_28:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r6, r5, #0
	add	r7, r8, r3
	mulhu	r5, r6, r13
	srli	r5, r5, #3
	mul	r12, r5, r10
	sub	r12, r6, r12
	ori	r12, r12, #48
	sb	r12, [r7 + #0]
	addi	r3, r3, #1
	sltu	r7, r0, r3
	xori	r7, r7, #1
	add	r4, r4, r7
	addi	r7, r0, #9
	bltu	r7, r6, L_BB0_28
	b	L_BB0_29
L_BB0_29:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r4, r0, #0
	addi	r5, r0, #-1
	li	r12, #1073741824
	lw	r13, [r15 + #36]
	lw	r7, [r15 + #28]
	blt	r5, r2, L_BB0_31
	b	L_BB0_30
L_BB0_30:                               ;   in Loop: Header=BB0_17 Depth=1
	addi	r2, r0, #45
	sw	r2, [r12 + #0]
L_BB0_31:                               ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r2, r3, #0
	addi	r3, r2, #-1
	add	r5, r8, r3
	lbu	r5, [r5 + #0]
	bne	r5, r10, L_BB0_33
	b	L_BB0_32
L_BB0_32:                               ;   in Loop: Header=BB0_31 Depth=2
	sw	r13, [r12 + #0]
L_BB0_33:                               ;   in Loop: Header=BB0_31 Depth=2
	sltu	r6, r0, r2
	xori	r6, r6, #1
	sub	r4, r4, r6
	sw	r5, [r12 + #0]
	addi	r5, r0, #1
	blt	r5, r2, L_BB0_31
	b	L_BB0_34
L_BB0_34:                               ;   in Loop: Header=BB0_17 Depth=1
	sw	r13, [r12 + #0]
	sw	r10, [r12 + #0]
	lw	r4, [r15 + #40]
	addi	r4, r4, #1
	addi	r2, r0, #11
	bne	r4, r2, L_BB0_17
	b	L_BB0_35
L_BB0_19:                               ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #0]
	sb	r2, [r8 + #0]
	addi	r3, r7, #0
	addi	r2, r9, #0
	b	L_BB0_22
L_BB0_27:                               ;   in Loop: Header=BB0_17 Depth=1
	lw	r2, [r15 + #0]
	sb	r2, [r8 + #0]
	addi	r4, r7, #0
	addi	r3, r9, #0
	li	r12, #1073741824
	lw	r13, [r15 + #36]
	b	L_BB0_31
L_BB0_35:
	addi	r2, r0, #0
	lw	r11, [r15 + #120]
	lw	r10, [r15 + #124]
	lw	r9, [r15 + #128]
	lw	r8, [r15 + #132]
	addi	r15, r15, #136
	ret
	.cfi_endproc
                                        ; -- End function
fibonacci:                              ; -- Begin function fibonacci
                                        ; @fibonacci
	.cfi_startproc
; %bb.0:
	addi	r15, r15, #-28
	sw	r8, [r15 + #24]
	sw	r9, [r15 + #20]
	sw	r10, [r15 + #16]
	sw	r11, [r15 + #12]
	addi	r3, r0, #0
	addi	r4, r0, #1
	sw	r4, [r15 + #8]
	blt	r2, r4, L_BB1_5
	b	L_BB1_1
L_BB1_1:                                ; %.preheader
	addi	r9, r2, #-1
	addi	r4, r0, #0
	addi	r3, r0, #2
	sw	r3, [r15 + #0]
	addi	r10, r4, #0
	sw	r4, [r15 + #4]
L_BB1_2:                                ; =>This Inner Loop Header: Depth=1
	addi	r8, r2, #0
	lw	r3, [r15 + #8]
	be	r9, r4, L_BB1_4
	b	L_BB1_3
L_BB1_3:                                ;   in Loop: Header=BB1_2 Depth=1
	addi	r2, r8, #-1
	jal	r11, fibonacci
	lw	r4, [r15 + #4]
	add	r10, r2, r10
	addi	r9, r9, #-2
	addi	r2, r8, #-2
	addi	r3, r4, #0
	lw	r5, [r15 + #0]
	bltu	r5, r8, L_BB1_2
	b	L_BB1_4
L_BB1_4:
	add	r3, r3, r10
L_BB1_5:
	addi	r2, r3, #0
	lw	r11, [r15 + #12]
	lw	r10, [r15 + #16]
	lw	r9, [r15 + #20]
	lw	r8, [r15 + #24]
	addi	r15, r15, #28
	ret
	.cfi_endproc
                                        ; -- End function
	.data
.L.str.2:                               ; @.str.2
	db	33
	db	32
	db	72
	db	101
	db	114
	db	101
	db	32
	db	105
	db	115
	db	32
	db	116
	db	104
	db	101
	db	32
	db	114
	db	101
	db	99
	db	117
	db	114
	db	115
	db	105
	db	118
	db	101
	db	108
	db	121
	db	32
	db	99
	db	97
	db	108
	db	99
	db	117
	db	108
	db	97
	db	116
	db	101
	db	100
	db	32
	db	70
	db	105
	db	98
	db	111
	db	110
	db	97
	db	99
	db	99
	db	105
	db	32
	db	115
	db	101
	db	113
	db	117
	db	101
	db	110
	db	99
	db	101
	db	58
	db	10
	db	0

	.section	".note.GNU-stack","",@progbits
