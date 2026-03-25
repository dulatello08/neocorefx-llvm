	.text
	.global	runtime_init                    ; -- Begin function runtime_init
runtime_init:                           ; @runtime_init
; %bb.0:
	la	r2, g_uart_inited
	lbu	r3, [r2 + #0]
	bne	r3, r0, L_BB0_2
	b	L_BB0_1
L_BB0_1:
	li	r3, #1073741836
	addi	r4, r0, #3
	sw	r4, [r3 + #0]
	li	r3, #1073741840
	addi	r4, r0, #27
	sw	r4, [r3 + #0]
	li	r3, #1073741832
	addi	r4, r0, #12
	sw	r4, [r3 + #0]
	addi	r3, r0, #1
	sb	r3, [r2 + #0]
L_BB0_2:
	ret
                                        ; -- End function
	.global	printf                          ; -- Begin function printf
printf:                                 ; @printf
; %bb.0:
	addi	r15, r15, #-88
	sw	r8, [r15 + #84]
	sw	r9, [r15 + #80]
	sw	r10, [r15 + #76]
	sw	r11, [r15 + #72]
	addi	r8, r2, #0
	addi	r2, r15, #88
	lw	r2, [r2 + #0]
	addi	r6, r15, #92
	lw	r6, [r6 + #0]
	addi	r7, r15, #96
	lw	r7, [r7 + #0]
	addi	r12, r15, #100
	lw	r12, [r12 + #0]
	addi	r13, r15, #104
	lw	r13, [r13 + #0]
	addi	r9, r15, #40
	sw	r13, [r9 + #28]
	sw	r12, [r9 + #24]
	sw	r7, [r9 + #20]
	sw	r6, [r9 + #16]
	sw	r2, [r9 + #12]
	sw	r5, [r9 + #8]
	sw	r4, [r9 + #4]
	sw	r9, [r15 + #12]
	sw	r3, [r9 + #0]
	la	r2, g_uart_inited
	lbu	r3, [r2 + #0]
	bne	r3, r0, L_BB1_2
	b	L_BB1_1
L_BB1_1:
	li	r3, #1073741836
	addi	r4, r0, #3
	sw	r4, [r3 + #0]
	li	r3, #1073741840
	addi	r4, r0, #27
	sw	r4, [r3 + #0]
	li	r3, #1073741832
	addi	r4, r0, #12
	sw	r4, [r3 + #0]
	addi	r3, r0, #1
	sb	r3, [r2 + #0]
L_BB1_2:
	addi	r2, r0, #0
	addi	r9, r0, #10
	li	r6, #1073741824
	addi	r7, r0, #13
	addi	r12, r0, #37
	addi	r3, r0, #104
	sw	r3, [r15 + #36]
	addi	r3, r0, #98
	sw	r3, [r15 + #16]
	addi	r3, r0, #88
	sw	r3, [r15 + #8]
	addi	r3, r0, #7
	sw	r3, [r15 + #32]
	addi	r3, r0, #16
	sw	r3, [r15 + #0]
	addi	r10, r2, #0
	sw	r2, [r15 + #4]
	addi	r13, r2, #0
	sw	r7, [r15 + #28]
	sw	r12, [r15 + #24]
	sw	r9, [r15 + #20]
L_BB1_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_42 Depth 2
	lbu	r2, [r8 + #0]
	be	r2, r9, L_BB1_6
	b	L_BB1_4
L_BB1_4:                                ;   in Loop: Header=BB1_3 Depth=1
	be	r2, r12, L_BB1_8
	b	L_BB1_5
L_BB1_5:                                ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #0
	be	r2, r3, L_BB1_49
	b	L_BB1_7
L_BB1_8:                                ;   in Loop: Header=BB1_3 Depth=1
	lbu	r2, [r8 + #1]
	lw	r3, [r15 + #36]
	blt	r3, r2, L_BB1_15
	b	L_BB1_9
L_BB1_9:                                ;   in Loop: Header=BB1_3 Depth=1
	lw	r3, [r15 + #16]
	blt	r3, r2, L_BB1_13
	b	L_BB1_10
L_BB1_10:                               ;   in Loop: Header=BB1_3 Depth=1
	be	r2, r12, L_BB1_20
	b	L_BB1_11
L_BB1_11:                               ;   in Loop: Header=BB1_3 Depth=1
	lw	r3, [r15 + #8]
	be	r2, r3, L_BB1_31
	b	L_BB1_12
L_BB1_31:                               ;   in Loop: Header=BB1_3 Depth=1
	lw	r2, [r15 + #4]
	lw	r3, [r15 + #32]
	blt	r3, r13, L_BB1_33
	b	L_BB1_32
L_BB1_32:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r2, r13, #2
	lw	r3, [r15 + #12]
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r13, r13, #1
L_BB1_33:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r4, r0, #1
	lw	r3, [r15 + #0]
	addi	r9, r13, #0
	jal	r11, runtime_print_u32
	addi	r13, r9, #0
	addi	r8, r8, #2
	li	r6, #1073741824
	lw	r7, [r15 + #28]
	lw	r12, [r15 + #24]
	lw	r9, [r15 + #20]
	b	L_BB1_3
L_BB1_6:                                ;   in Loop: Header=BB1_3 Depth=1
	sw	r7, [r6 + #0]
L_BB1_7:                                ;   in Loop: Header=BB1_3 Depth=1
	sw	r2, [r6 + #0]
	addi	r10, r10, #1
	addi	r8, r8, #1
	b	L_BB1_3
L_BB1_15:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #116
	blt	r3, r2, L_BB1_18
	b	L_BB1_16
L_BB1_16:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #105
	be	r2, r3, L_BB1_21
	b	L_BB1_17
L_BB1_17:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #115
	be	r2, r3, L_BB1_38
	b	L_BB1_46
L_BB1_38:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r0, #0
	addi	r3, r2, #0
	lw	r4, [r15 + #32]
	blt	r4, r13, L_BB1_40
	b	L_BB1_39
L_BB1_39:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r3, r13, #2
	lw	r4, [r15 + #12]
	add	r3, r4, r3
	lw	r3, [r3 + #0]
	addi	r13, r13, #1
L_BB1_40:                               ;   in Loop: Header=BB1_3 Depth=1
	la	r4, .L.str
	xor	r4, r3, r4
	sltu	r5, r0, r3
	xori	r5, r5, #1
	sub	r5, r2, r5
	and	r4, r4, r5
	xor	r4, r3, r4
	lbu	r3, [r4 + #0]
	be	r3, r2, L_BB1_45
	b	L_BB1_41
L_BB1_41:                               ; %.preheader
                                        ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r4, #1
L_BB1_42:                               ;   Parent Loop BB1_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	andi	r3, r3, #255
	bne	r3, r9, L_BB1_44
	b	L_BB1_43
L_BB1_43:                               ;   in Loop: Header=BB1_42 Depth=2
	sw	r7, [r6 + #0]
L_BB1_44:                               ;   in Loop: Header=BB1_42 Depth=2
	sw	r3, [r6 + #0]
	addi	r4, r2, #1
	addi	r10, r10, #1
	lbu	r3, [r2 + #0]
	addi	r5, r0, #0
	addi	r2, r4, #0
	bne	r3, r5, L_BB1_42
	b	L_BB1_45
L_BB1_45:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r8, r8, #2
	b	L_BB1_3
L_BB1_13:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #99
	be	r2, r3, L_BB1_34
	b	L_BB1_14
L_BB1_14:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #100
	be	r2, r3, L_BB1_21
	b	L_BB1_46
L_BB1_21:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r0, #0
	lw	r3, [r15 + #32]
	blt	r3, r13, L_BB1_24
	b	L_BB1_22
L_BB1_22:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r2, r13, #2
	lw	r3, [r15 + #12]
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r13, r13, #1
	addi	r3, r0, #-1
	blt	r3, r2, L_BB1_24
	b	L_BB1_23
L_BB1_23:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #45
	sw	r3, [r6 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
L_BB1_24:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #10
	addi	r4, r0, #0
	addi	r9, r13, #0
	jal	r11, runtime_print_u32
	addi	r13, r9, #0
	li	r6, #1073741824
	addi	r8, r8, #2
	lw	r7, [r15 + #28]
	lw	r12, [r15 + #24]
	lw	r9, [r15 + #20]
	b	L_BB1_3
L_BB1_18:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #117
	be	r2, r3, L_BB1_25
	b	L_BB1_19
L_BB1_19:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #120
	be	r2, r3, L_BB1_28
	b	L_BB1_46
L_BB1_28:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r0, #0
	lw	r3, [r15 + #32]
	blt	r3, r13, L_BB1_30
	b	L_BB1_29
L_BB1_29:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r2, r13, #2
	lw	r3, [r15 + #12]
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r13, r13, #1
L_BB1_30:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #16
	addi	r4, r0, #0
	addi	r9, r13, #0
	jal	r11, runtime_print_u32
	addi	r13, r9, #0
	addi	r8, r8, #2
	li	r6, #1073741824
	lw	r7, [r15 + #28]
	lw	r12, [r15 + #24]
	lw	r9, [r15 + #20]
	b	L_BB1_3
L_BB1_34:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r0, #0
	lw	r3, [r15 + #32]
	blt	r3, r13, L_BB1_37
	b	L_BB1_35
L_BB1_35:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r2, r13, #2
	lw	r3, [r15 + #12]
	add	r2, r3, r2
	ori	r2, r2, #3
	lbu	r2, [r2 + #0]
	addi	r13, r13, #1
	bne	r2, r9, L_BB1_37
	b	L_BB1_36
L_BB1_36:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r7, [r6 + #0]
	addi	r2, r9, #0
L_BB1_37:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r2, [r6 + #0]
	addi	r10, r10, #1
	addi	r8, r8, #2
	b	L_BB1_3
L_BB1_25:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r2, r0, #0
	lw	r3, [r15 + #32]
	blt	r3, r13, L_BB1_27
	b	L_BB1_26
L_BB1_26:                               ;   in Loop: Header=BB1_3 Depth=1
	slli	r2, r13, #2
	lw	r3, [r15 + #12]
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r13, r13, #1
L_BB1_27:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #10
	addi	r4, r0, #0
	addi	r9, r13, #0
	jal	r11, runtime_print_u32
	addi	r13, r9, #0
	addi	r8, r8, #2
	li	r6, #1073741824
	lw	r7, [r15 + #28]
	lw	r12, [r15 + #24]
	lw	r9, [r15 + #20]
	b	L_BB1_3
L_BB1_20:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r12, [r6 + #0]
	addi	r10, r10, #1
	addi	r8, r8, #2
	b	L_BB1_3
L_BB1_12:                               ;   in Loop: Header=BB1_3 Depth=1
	addi	r3, r0, #0
	be	r2, r3, L_BB1_49
	b	L_BB1_46
L_BB1_46:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r12, [r6 + #0]
	lbu	r2, [r8 + #1]
	bne	r2, r9, L_BB1_48
	b	L_BB1_47
L_BB1_47:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r7, [r6 + #0]
L_BB1_48:                               ;   in Loop: Header=BB1_3 Depth=1
	sw	r2, [r6 + #0]
	addi	r8, r8, #2
	b	L_BB1_3
L_BB1_49:
	addi	r2, r10, #0
	lw	r11, [r15 + #72]
	lw	r10, [r15 + #76]
	lw	r9, [r15 + #80]
	lw	r8, [r15 + #84]
	addi	r15, r15, #88
	ret
                                        ; -- End function
runtime_print_u32:                      ; -- Begin function runtime_print_u32
                                        ; @runtime_print_u32
; %bb.0:
	addi	r6, r0, #0
	addi	r7, r0, #48
	li	r5, #1073741824
	be	r2, r6, L_BB2_61
	b	L_BB2_1
L_BB2_1:
	la	r7, .L.str.1
	la	r12, .L.str.2
	xor	r12, r12, r7
	sltu	r4, r0, r4
	xori	r4, r4, #1
	sub	r4, r6, r4
	and	r4, r12, r4
	xor	r4, r4, r7
	addi	r7, r0, #48
	sw	r7, [r5 + #0]
	addi	r7, r0, #120
	sw	r7, [r5 + #0]
	addi	r7, r0, #16
	bne	r3, r7, L_BB2_31
	b	L_BB2_2
L_BB2_2:
	addi	r3, r0, #0
	li	r7, #268435456
	addi	r6, r3, #0
	bltu	r2, r7, L_BB2_6
	b	L_BB2_3
L_BB2_3:
	srli	r6, r2, #28
	add	r6, r4, r6
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_5
	b	L_BB2_4
L_BB2_4:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_5:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_6:
	srli	r7, r2, #24
	andi	r7, r7, #15
	or	r12, r7, r6
	addi	r6, r3, #0
	be	r12, r3, L_BB2_10
	b	L_BB2_7
L_BB2_7:
	add	r6, r4, r7
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_9
	b	L_BB2_8
L_BB2_8:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_9:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_10:
	srli	r7, r2, #20
	andi	r7, r7, #15
	or	r12, r7, r6
	addi	r6, r3, #0
	be	r12, r3, L_BB2_14
	b	L_BB2_11
L_BB2_11:
	add	r6, r4, r7
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_13
	b	L_BB2_12
L_BB2_12:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_13:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_14:
	srli	r7, r2, #16
	andi	r7, r7, #15
	or	r12, r7, r6
	addi	r6, r3, #0
	be	r12, r3, L_BB2_18
	b	L_BB2_15
L_BB2_15:
	add	r6, r4, r7
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_17
	b	L_BB2_16
L_BB2_16:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_17:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_18:
	srli	r7, r2, #12
	andi	r7, r7, #15
	or	r12, r7, r6
	addi	r6, r3, #0
	be	r12, r3, L_BB2_22
	b	L_BB2_19
L_BB2_19:
	add	r6, r4, r7
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_21
	b	L_BB2_20
L_BB2_20:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_21:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_22:
	srli	r7, r2, #8
	andi	r7, r7, #15
	or	r12, r7, r6
	addi	r6, r3, #0
	be	r12, r3, L_BB2_26
	b	L_BB2_23
L_BB2_23:
	add	r6, r4, r7
	lbu	r6, [r6 + #0]
	addi	r7, r0, #10
	bne	r6, r7, L_BB2_25
	b	L_BB2_24
L_BB2_24:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_25:
	sw	r6, [r5 + #0]
	addi	r6, r0, #1
L_BB2_26:
	srli	r7, r2, #4
	andi	r7, r7, #15
	or	r6, r7, r6
	be	r6, r3, L_BB2_30
	b	L_BB2_27
L_BB2_27:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r6, r0, #10
	bne	r3, r6, L_BB2_29
	b	L_BB2_28
L_BB2_28:
	addi	r6, r0, #13
	sw	r6, [r5 + #0]
L_BB2_29:
	sw	r3, [r5 + #0]
L_BB2_30:
	andi	r2, r2, #15
	add	r2, r4, r2
	lbu	r7, [r2 + #0]
	addi	r2, r0, #10
	be	r7, r2, L_BB2_60
	b	L_BB2_61
L_BB2_31:
	li	r7, #268435456
	addi	r3, r6, #0
	bltu	r2, r7, L_BB2_35
	b	L_BB2_32
L_BB2_32:
	srli	r3, r2, #28
	add	r3, r4, r3
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_34
	b	L_BB2_33
L_BB2_33:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_34:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_35:
	srli	r7, r2, #24
	andi	r7, r7, #15
	or	r12, r7, r3
	addi	r3, r6, #0
	be	r12, r6, L_BB2_39
	b	L_BB2_36
L_BB2_36:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_38
	b	L_BB2_37
L_BB2_37:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_38:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_39:
	srli	r7, r2, #20
	andi	r7, r7, #15
	or	r12, r7, r3
	addi	r3, r6, #0
	be	r12, r6, L_BB2_43
	b	L_BB2_40
L_BB2_40:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_42
	b	L_BB2_41
L_BB2_41:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_42:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_43:
	srli	r7, r2, #16
	andi	r7, r7, #15
	or	r12, r7, r3
	addi	r3, r6, #0
	be	r12, r6, L_BB2_47
	b	L_BB2_44
L_BB2_44:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_46
	b	L_BB2_45
L_BB2_45:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_46:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_47:
	srli	r7, r2, #12
	andi	r7, r7, #15
	or	r12, r7, r3
	addi	r3, r6, #0
	be	r12, r6, L_BB2_51
	b	L_BB2_48
L_BB2_48:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_50
	b	L_BB2_49
L_BB2_49:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_50:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_51:
	srli	r7, r2, #8
	andi	r7, r7, #15
	or	r12, r7, r3
	addi	r3, r6, #0
	be	r12, r6, L_BB2_55
	b	L_BB2_52
L_BB2_52:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r7, r0, #10
	bne	r3, r7, L_BB2_54
	b	L_BB2_53
L_BB2_53:
	addi	r7, r0, #13
	sw	r7, [r5 + #0]
L_BB2_54:
	sw	r3, [r5 + #0]
	addi	r3, r0, #1
L_BB2_55:
	srli	r7, r2, #4
	andi	r7, r7, #15
	or	r3, r7, r3
	be	r3, r6, L_BB2_59
	b	L_BB2_56
L_BB2_56:
	add	r3, r4, r7
	lbu	r3, [r3 + #0]
	addi	r6, r0, #10
	bne	r3, r6, L_BB2_58
	b	L_BB2_57
L_BB2_57:
	addi	r6, r0, #13
	sw	r6, [r5 + #0]
L_BB2_58:
	sw	r3, [r5 + #0]
L_BB2_59:
	andi	r2, r2, #15
	add	r2, r4, r2
	lbu	r7, [r2 + #0]
	addi	r2, r0, #10
	bne	r7, r2, L_BB2_61
	b	L_BB2_60
L_BB2_60:
	addi	r2, r0, #13
	sw	r2, [r5 + #0]
L_BB2_61:
	sw	r7, [r5 + #0]
	ret
                                        ; -- End function
	.global	strcpy                          ; -- Begin function strcpy
strcpy:                                 ; @strcpy
; %bb.0:
	addi	r4, r0, #0
	addi	r5, r4, #0
L_BB3_1:                                ; =>This Inner Loop Header: Depth=1
	add	r6, r2, r5
	add	r7, r3, r5
	lbu	r7, [r7 + #0]
	sb	r7, [r6 + #0]
	addi	r5, r5, #1
	bne	r7, r4, L_BB3_1
	b	L_BB3_2
L_BB3_2:
	ret
                                        ; -- End function
	.global	strcmp                          ; -- Begin function strcmp
strcmp:                                 ; @strcmp
; %bb.0:
	addi	r4, r2, #0
	addi	r2, r0, #0
L_BB4_1:                                ; =>This Inner Loop Header: Depth=1
	lbu	r6, [r3 + #0]
	lbu	r5, [r4 + #0]
	be	r5, r6, L_BB4_3
	b	L_BB4_2
L_BB4_3:                                ;   in Loop: Header=BB4_1 Depth=1
	addi	r4, r4, #1
	addi	r3, r3, #1
	bne	r5, r2, L_BB4_1
	b	L_BB4_4
L_BB4_2:
	sub	r2, r5, r6
	b	L_BB4_4
L_BB4_4:
	ret
                                        ; -- End function
	.global	memset                          ; -- Begin function memset
memset:                                 ; @memset
; %bb.0:
	addi	r5, r0, #0
	be	r4, r5, L_BB5_3
	b	L_BB5_1
L_BB5_1:
	addi	r6, r2, #0
L_BB5_2:                                ; =>This Inner Loop Header: Depth=1
	sb	r3, [r6 + #0]
	addi	r6, r6, #1
	addi	r4, r4, #-1
	bne	r4, r5, L_BB5_2
	b	L_BB5_3
L_BB5_3:
	ret
                                        ; -- End function
	.global	memcpy                          ; -- Begin function memcpy
memcpy:                                 ; @memcpy
; %bb.0:
	addi	r5, r0, #0
	be	r4, r5, L_BB6_3
	b	L_BB6_1
L_BB6_1:                                ; %.preheader
	addi	r6, r2, #0
L_BB6_2:                                ; =>This Inner Loop Header: Depth=1
	lbu	r7, [r3 + #0]
	sb	r7, [r6 + #0]
	addi	r3, r3, #1
	addi	r6, r6, #1
	addi	r4, r4, #-1
	bne	r4, r5, L_BB6_2
	b	L_BB6_3
L_BB6_3:
	ret
                                        ; -- End function
	.global	memmove                         ; -- Begin function memmove
memmove:                                ; @memmove
; %bb.0:
	be	r2, r3, L_BB7_7
	b	L_BB7_1
L_BB7_1:
	addi	r5, r0, #0
	be	r4, r5, L_BB7_7
	b	L_BB7_2
L_BB7_2:
	bltu	r2, r3, L_BB7_4
	b	L_BB7_3
L_BB7_4:                                ; %.preheader
	addi	r6, r2, #0
L_BB7_5:                                ; =>This Inner Loop Header: Depth=1
	lbu	r7, [r3 + #0]
	sb	r7, [r6 + #0]
	addi	r3, r3, #1
	addi	r6, r6, #1
	addi	r4, r4, #-1
	be	r4, r5, L_BB7_7
	b	L_BB7_5
L_BB7_3:                                ; %.preheader1
	addi	r3, r3, #-1
	addi	r6, r2, #-1
	b	L_BB7_6
L_BB7_6:                                ; =>This Inner Loop Header: Depth=1
	add	r7, r6, r4
	add	r12, r3, r4
	lbu	r12, [r12 + #0]
	sb	r12, [r7 + #0]
	addi	r4, r4, #-1
	bne	r4, r5, L_BB7_6
	b	L_BB7_7
L_BB7_7:
	ret
                                        ; -- End function
	.global	malloc                          ; -- Begin function malloc
malloc:                                 ; @malloc
; %bb.0:
	addi	r2, r2, #3
	addi	r3, r0, #-4
	and	r3, r2, r3
	la	r2, g_uart_inited
	lbu	r4, [r2 + #0]
	bne	r4, r0, L_BB8_2
	b	L_BB8_1
L_BB8_1:
	li	r4, #1073741836
	addi	r5, r0, #3
	sw	r5, [r4 + #0]
	li	r4, #1073741840
	addi	r5, r0, #27
	sw	r5, [r4 + #0]
	li	r4, #1073741832
	addi	r5, r0, #12
	sw	r5, [r4 + #0]
	addi	r4, r0, #1
	sb	r4, [r2 + #0]
L_BB8_2:
	addi	r2, r0, #0
	be	r3, r2, L_BB8_5
	b	L_BB8_3
L_BB8_3:
	la	r5, g_heap_off
	lw	r4, [r5 + #0]
	add	r3, r4, r3
	addi	r6, r0, #1024
	bltu	r6, r3, L_BB8_5
	b	L_BB8_4
L_BB8_4:
	sw	r3, [r5 + #0]
	la	r2, g_heap
	add	r2, r4, r2
L_BB8_5:
	ret
                                        ; -- End function
	.global	free                            ; -- Begin function free
free:                                   ; @free
; %bb.0:
	ret
                                        ; -- End function
	.global	time                            ; -- Begin function time
time:                                   ; @time
; %bb.0:
	addi	r3, r2, #0
	li	r2, #1073742080
	lw	r2, [r2 + #0]
	addi	r4, r0, #0
	be	r3, r4, L_BB10_2
	b	L_BB10_1
L_BB10_1:
	sw	r2, [r3 + #0]
L_BB10_2:
	ret
                                        ; -- End function
	.global	__udivsi3                       ; -- Begin function __udivsi3
__udivsi3:                              ; @__udivsi3
; %bb.0:
	addi	r15, r15, #-8
	sw	r8, [r15 + #4]
	sw	r9, [r15 + #0]
	addi	r4, r0, #0
	be	r3, r4, L_BB11_3
	b	L_BB11_1
L_BB11_1:                               ; %.preheader
	addi	r5, r0, #0
	addi	r6, r0, #31
	addi	r7, r0, #1
	addi	r12, r0, #-1
	addi	r13, r5, #0
	addi	r4, r5, #0
L_BB11_2:                               ; =>This Inner Loop Header: Depth=1
	srl	r8, r2, r6
	andi	r8, r8, #1
	slli	r13, r13, #1
	or	r13, r8, r13
	sltu	r8, r13, r3
	sub	r8, r5, r8
	and	r9, r3, r8
	xor	r9, r3, r9
	sub	r13, r13, r9
	sll	r9, r7, r6
	and	r8, r9, r8
	xor	r8, r9, r8
	or	r4, r8, r4
	addi	r6, r6, #-1
	bne	r6, r12, L_BB11_2
	b	L_BB11_3
L_BB11_3:
	addi	r2, r4, #0
	lw	r9, [r15 + #0]
	lw	r8, [r15 + #4]
	addi	r15, r15, #8
	ret
                                        ; -- End function
	.global	__umodsi3                       ; -- Begin function __umodsi3
__umodsi3:                              ; @__umodsi3
; %bb.0:
	addi	r4, r0, #0
	be	r3, r4, L_BB12_3
	b	L_BB12_1
L_BB12_1:                               ; %.preheader
	addi	r5, r0, #0
	addi	r6, r0, #31
	addi	r7, r0, #-1
	addi	r4, r5, #0
L_BB12_2:                               ; =>This Inner Loop Header: Depth=1
	srl	r12, r2, r6
	andi	r12, r12, #1
	slli	r4, r4, #1
	or	r4, r12, r4
	sltu	r12, r4, r3
	sub	r12, r5, r12
	and	r12, r3, r12
	xor	r12, r3, r12
	sub	r4, r4, r12
	addi	r6, r6, #-1
	bne	r6, r7, L_BB12_2
	b	L_BB12_3
L_BB12_3:
	addi	r2, r4, #0
	ret
                                        ; -- End function
	.global	__divsi3                        ; -- Begin function __divsi3
__divsi3:                               ; @__divsi3
; %bb.0:
	addi	r15, r15, #-16
	sw	r8, [r15 + #12]
	sw	r9, [r15 + #8]
	sw	r10, [r15 + #4]
	sw	r14, [r15 + #0]
	addi	r4, r0, #0
	be	r3, r4, L_BB13_4
	b	L_BB13_1
L_BB13_1:
	srai	r4, r3, #31
	xor	r5, r3, r4
	sub	r4, r5, r4
	srai	r5, r2, #31
	xor	r6, r2, r5
	sub	r6, r6, r5
	addi	r7, r0, #0
	addi	r12, r0, #31
	addi	r13, r0, #1
	addi	r8, r0, #-1
	addi	r9, r7, #0
	addi	r5, r7, #0
L_BB13_2:                               ; =>This Inner Loop Header: Depth=1
	srl	r10, r6, r12
	andi	r10, r10, #1
	slli	r9, r9, #1
	or	r9, r10, r9
	sltu	r10, r9, r4
	sub	r10, r7, r10
	and	r14, r4, r10
	xor	r14, r4, r14
	sub	r9, r9, r14
	sll	r14, r13, r12
	and	r10, r14, r10
	xor	r10, r14, r10
	or	r5, r10, r5
	addi	r12, r12, #-1
	bne	r12, r8, L_BB13_2
	b	L_BB13_3
L_BB13_3:
	addi	r4, r0, #0
	sub	r6, r4, r5
	xor	r6, r6, r5
	xor	r2, r3, r2
	slt	r2, r2, r4
	sub	r2, r4, r2
	and	r2, r6, r2
	xor	r4, r5, r2
L_BB13_4:
	addi	r2, r4, #0
	lw	r14, [r15 + #0]
	lw	r10, [r15 + #4]
	lw	r9, [r15 + #8]
	lw	r8, [r15 + #12]
	addi	r15, r15, #16
	ret
                                        ; -- End function
	.global	__modsi3                        ; -- Begin function __modsi3
__modsi3:                               ; @__modsi3
; %bb.0:
	addi	r4, r0, #0
	be	r3, r4, L_BB14_4
	b	L_BB14_1
L_BB14_1:
	srai	r4, r3, #31
	xor	r3, r3, r4
	sub	r3, r3, r4
	srai	r4, r2, #31
	xor	r5, r2, r4
	sub	r4, r5, r4
	addi	r5, r0, #0
	addi	r6, r0, #31
	addi	r7, r0, #-1
	addi	r12, r5, #0
L_BB14_2:                               ; =>This Inner Loop Header: Depth=1
	srl	r13, r4, r6
	andi	r13, r13, #1
	slli	r12, r12, #1
	or	r12, r13, r12
	sltu	r13, r12, r3
	sub	r13, r5, r13
	and	r13, r3, r13
	xor	r13, r3, r13
	sub	r12, r12, r13
	addi	r6, r6, #-1
	bne	r6, r7, L_BB14_2
	b	L_BB14_3
L_BB14_3:
	addi	r3, r0, #0
	slt	r2, r2, r3
	sub	r2, r3, r2
	sub	r3, r3, r12
	xor	r3, r3, r12
	and	r2, r3, r2
	xor	r4, r12, r2
L_BB14_4:
	addi	r2, r4, #0
	ret
                                        ; -- End function
	.local	g_uart_inited                   ; @g_uart_inited
	.comm	g_uart_inited,1,4
	.data
.L.str:                                 ; @.str
	db	40
	db	110
	db	117
	db	108
	db	108
	db	41
	db	0

	.local	g_heap_off                      ; @g_heap_off
	.comm	g_heap_off,4,4
	.local	g_heap                          ; @g_heap
	.comm	g_heap,1024,1
.L.str.1:                               ; @.str.1
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

.L.str.2:                               ; @.str.2
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
	db	97
	db	98
	db	99
	db	100
	db	101
	db	102
	db	0

	.section	".note.GNU-stack","",@progbits
