	.text
	.global	runtime_init                    ; -- Begin function runtime_init
runtime_init:                           ; @runtime_init
; %bb.0:
	addi	r15, r15, #-8
	sw	r8, [r15 + #4]
	sw	r11, [r15 + #0]
	la	r2, g_uart_inited
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB0_2
	b	L_BB0_1
L_BB0_1:
	b	L_BB0_3
L_BB0_2:
	addi	r8, r0, #12
	addi	r3, r0, #3
	addi	r2, r8, #0
	jal	r11, ncx_mmio_write
	addi	r2, r0, #16
	addi	r3, r0, #27
	jal	r11, ncx_mmio_write
	addi	r2, r0, #8
	addi	r3, r8, #0
	jal	r11, ncx_mmio_write
	la	r2, g_uart_inited
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB0_3
L_BB0_3:
	lw	r11, [r15 + #0]
	lw	r8, [r15 + #4]
	addi	r15, r15, #8
	ret
                                        ; -- End function
ncx_mmio_write:                         ; -- Begin function ncx_mmio_write
                                        ; @ncx_mmio_write
; %bb.0:
	addi	r15, r15, #-16
	sw	r8, [r15 + #12]
	sw	r11, [r15 + #8]
	addi	r4, r15, #4
	sw	r2, [r4 + #0]
	addi	r2, r15, #0
	sw	r3, [r2 + #0]
	lw	r8, [r2 + #0]
	lw	r2, [r4 + #0]
	jal	r11, ncx_mmio_ptr
	sw	r8, [r2 + #0]
	lw	r11, [r15 + #8]
	lw	r8, [r15 + #12]
	addi	r15, r15, #16
	ret
                                        ; -- End function
	.global	printf                          ; -- Begin function printf
printf:                                 ; @printf
; %bb.0:
	addi	r15, r15, #-92
	sw	r8, [r15 + #88]
	sw	r9, [r15 + #84]
	sw	r11, [r15 + #80]
	addi	r6, r15, #92
	lw	r7, [r6 + #0]
	addi	r7, r15, #96
	lw	r12, [r7 + #0]
	addi	r12, r15, #100
	lw	r13, [r12 + #0]
	addi	r13, r15, #104
	lw	r8, [r13 + #0]
	addi	r8, r15, #108
	lw	r9, [r8 + #0]
	addi	r9, r15, #76
	sw	r2, [r9 + #0]
	addi	r2, r15, #72
	sw	r3, [r2 + #0]
	addi	r3, r15, #68
	sw	r4, [r3 + #0]
	addi	r4, r15, #64
	sw	r5, [r4 + #0]
	addi	r5, r15, #60
	addi	r9, r0, #0
	sw	r9, [r5 + #0]
	addi	r5, r15, #56
	sw	r9, [r5 + #0]
	lw	r2, [r2 + #0]
	addi	r5, r15, #24
	sw	r2, [r5 + #0]
	lw	r2, [r3 + #0]
	sw	r2, [r5 + #4]
	lw	r2, [r4 + #0]
	sw	r2, [r5 + #8]
	lw	r2, [r6 + #0]
	sw	r2, [r5 + #12]
	lw	r2, [r7 + #0]
	sw	r2, [r5 + #16]
	lw	r2, [r12 + #0]
	sw	r2, [r5 + #20]
	lw	r2, [r13 + #0]
	sw	r2, [r5 + #24]
	lw	r2, [r8 + #0]
	sw	r2, [r5 + #28]
	jal	r11, runtime_init
	b	L_BB2_1
L_BB2_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_36 Depth 2
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB2_40
	b	L_BB2_2
L_BB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #37
	be	r2, r3, L_BB2_5
	b	L_BB2_3
L_BB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r8, r15, #76
	lw	r2, [r8 + #0]
	lb	r2, [r2 + #0]
	jal	r11, runtime_putc
	lw	r2, [r8 + #0]
	addi	r2, r2, #1
	sw	r2, [r8 + #0]
	addi	r2, r15, #60
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_4:                                ; %.backedge
                                        ;   in Loop: Header=BB2_1 Depth=1
	b	L_BB2_1
L_BB2_5:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB2_7
	b	L_BB2_6
L_BB2_6:
	b	L_BB2_41
L_BB2_7:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #37
	bne	r2, r3, L_BB2_9
	b	L_BB2_8
L_BB2_8:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r0, #37
	jal	r11, runtime_putc
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	addi	r2, r15, #60
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_9:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #100
	be	r2, r3, L_BB2_11
	b	L_BB2_10
L_BB2_10:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #105
	bne	r2, r3, L_BB2_14
	b	L_BB2_11
L_BB2_11:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #20
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_13
	b	L_BB2_12
L_BB2_12:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #20
	sw	r2, [r3 + #0]
	b	L_BB2_13
L_BB2_13:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	jal	r11, runtime_print_i32
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_14:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #117
	bne	r2, r3, L_BB2_18
	b	L_BB2_15
L_BB2_15:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #16
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_17
	b	L_BB2_16
L_BB2_16:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #16
	sw	r2, [r3 + #0]
	b	L_BB2_17
L_BB2_17:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #10
	addi	r4, r0, #0
	jal	r11, runtime_print_u32
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_18:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #120
	bne	r2, r3, L_BB2_22
	b	L_BB2_19
L_BB2_19:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #12
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_21
	b	L_BB2_20
L_BB2_20:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #12
	sw	r2, [r3 + #0]
	b	L_BB2_21
L_BB2_21:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #16
	addi	r4, r0, #0
	jal	r11, runtime_print_u32
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_22:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #88
	bne	r2, r3, L_BB2_26
	b	L_BB2_23
L_BB2_23:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #8
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_25
	b	L_BB2_24
L_BB2_24:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	b	L_BB2_25
L_BB2_25:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #16
	addi	r4, r0, #1
	jal	r11, runtime_print_u32
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_26:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #99
	bne	r2, r3, L_BB2_30
	b	L_BB2_27
L_BB2_27:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #4
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_29
	b	L_BB2_28
L_BB2_28:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	b	L_BB2_29
L_BB2_29:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #4
	ori	r2, r2, #3
	lb	r2, [r2 + #0]
	jal	r11, runtime_putc
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	addi	r2, r15, #60
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_30:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #115
	bne	r2, r3, L_BB2_39
	b	L_BB2_31
L_BB2_31:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #0
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #56
	lw	r2, [r2 + #0]
	addi	r3, r0, #7
	blt	r3, r2, L_BB2_33
	b	L_BB2_32
L_BB2_32:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #56
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	slli	r2, r3, #2
	addi	r3, r15, #24
	add	r2, r3, r2
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	b	L_BB2_33
L_BB2_33:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB2_35
	b	L_BB2_34
L_BB2_34:                               ;   in Loop: Header=BB2_1 Depth=1
	la	r2, .L.str
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	b	L_BB2_35
L_BB2_35:                               ;   in Loop: Header=BB2_1 Depth=1
	b	L_BB2_36
L_BB2_36:                               ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB2_38
	b	L_BB2_37
L_BB2_37:                               ;   in Loop: Header=BB2_36 Depth=2
	addi	r2, r15, #0
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	lb	r2, [r3 + #0]
	jal	r11, runtime_putc
	addi	r2, r15, #60
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_36
L_BB2_38:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #76
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_4
L_BB2_39:                               ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r0, #37
	jal	r11, runtime_putc
	addi	r8, r15, #76
	lw	r2, [r8 + #0]
	lb	r2, [r2 + #0]
	jal	r11, runtime_putc
	lw	r2, [r8 + #0]
	addi	r2, r2, #1
	sw	r2, [r8 + #0]
	b	L_BB2_4
L_BB2_40:                               ; %.loopexit
	b	L_BB2_41
L_BB2_41:
	addi	r2, r15, #60
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #80]
	lw	r9, [r15 + #84]
	lw	r8, [r15 + #88]
	addi	r15, r15, #92
	ret
                                        ; -- End function
runtime_putc:                           ; -- Begin function runtime_putc
                                        ; @runtime_putc
; %bb.0:
	addi	r15, r15, #-8
	sw	r11, [r15 + #4]
	addi	r3, r15, #3
	sb	r2, [r3 + #0]
	lb	r2, [r3 + #0]
	addi	r3, r0, #10
	bne	r2, r3, L_BB3_2
	b	L_BB3_1
L_BB3_1:
	addi	r2, r0, #0
	addi	r3, r0, #13
	jal	r11, ncx_mmio_write
	b	L_BB3_2
L_BB3_2:
	addi	r2, r15, #3
	lbu	r3, [r2 + #0]
	addi	r2, r0, #0
	jal	r11, ncx_mmio_write
	lw	r11, [r15 + #4]
	addi	r15, r15, #8
	ret
                                        ; -- End function
runtime_print_i32:                      ; -- Begin function runtime_print_i32
                                        ; @runtime_print_i32
; %bb.0:
	addi	r15, r15, #-12
	sw	r11, [r15 + #8]
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB4_2
	b	L_BB4_1
L_BB4_1:
	addi	r2, r0, #45
	jal	r11, runtime_putc
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	b	L_BB4_3
L_BB4_2:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	b	L_BB4_3
L_BB4_3:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #10
	addi	r4, r0, #0
	jal	r11, runtime_print_u32
	lw	r11, [r15 + #8]
	addi	r15, r15, #12
	ret
                                        ; -- End function
runtime_print_u32:                      ; -- Begin function runtime_print_u32
                                        ; @runtime_print_u32
; %bb.0:
	addi	r15, r15, #-36
	sw	r11, [r15 + #32]
	addi	r5, r15, #28
	sw	r2, [r5 + #0]
	addi	r2, r15, #24
	sw	r3, [r2 + #0]
	addi	r2, r15, #20
	sw	r4, [r2 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB5_2
	b	L_BB5_1
L_BB5_1:
	la	r2, .L.str.1
	addi	r3, r15, #16
	sw	r2, [r3 + #0]
	b	L_BB5_3
L_BB5_2:
	la	r2, .L.str.2
	addi	r3, r15, #16
	sw	r2, [r3 + #0]
	b	L_BB5_3
L_BB5_3:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r3, r0, #2
	bltu	r2, r3, L_BB5_5
	b	L_BB5_4
L_BB5_4:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r3, r0, #17
	bltu	r2, r3, L_BB5_6
	b	L_BB5_5
L_BB5_5:
	b	L_BB5_27
L_BB5_6:
	addi	r2, r15, #28
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_8
	b	L_BB5_7
L_BB5_7:
	addi	r2, r0, #48
	jal	r11, runtime_putc
	b	L_BB5_27
L_BB5_8:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r3, r0, #16
	bne	r2, r3, L_BB5_18
	b	L_BB5_9
L_BB5_9:
	addi	r2, r0, #48
	jal	r11, runtime_putc
	addi	r2, r0, #120
	jal	r11, runtime_putc
	addi	r2, r15, #12
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #8
	addi	r3, r0, #28
	sw	r3, [r2 + #0]
	b	L_BB5_10
L_BB5_10:                               ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	blt	r2, r3, L_BB5_17
	b	L_BB5_11
L_BB5_11:                               ;   in Loop: Header=BB5_10 Depth=1
	addi	r2, r15, #28
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	srl	r2, r2, r3
	andi	r2, r2, #15
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_14
	b	L_BB5_12
L_BB5_12:                               ;   in Loop: Header=BB5_10 Depth=1
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_14
	b	L_BB5_13
L_BB5_13:                               ;   in Loop: Header=BB5_10 Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_15
	b	L_BB5_14
L_BB5_14:                               ;   in Loop: Header=BB5_10 Depth=1
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	lb	r2, [r2 + #0]
	jal	r11, runtime_putc
	addi	r2, r15, #12
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB5_15
L_BB5_15:                               ;   in Loop: Header=BB5_10 Depth=1
	b	L_BB5_16
L_BB5_16:                               ;   in Loop: Header=BB5_10 Depth=1
	addi	r2, r15, #8
	lw	r3, [r2 + #0]
	addi	r3, r3, #-4
	sw	r3, [r2 + #0]
	b	L_BB5_10
L_BB5_17:
	b	L_BB5_27
L_BB5_18:
	addi	r2, r0, #48
	jal	r11, runtime_putc
	addi	r2, r0, #120
	jal	r11, runtime_putc
	addi	r2, r15, #12
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	addi	r2, r15, #8
	addi	r3, r0, #28
	sw	r3, [r2 + #0]
	b	L_BB5_19
L_BB5_19:                               ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	blt	r2, r3, L_BB5_26
	b	L_BB5_20
L_BB5_20:                               ;   in Loop: Header=BB5_19 Depth=1
	addi	r2, r15, #28
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	srl	r2, r2, r3
	andi	r2, r2, #15
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_23
	b	L_BB5_21
L_BB5_21:                               ;   in Loop: Header=BB5_19 Depth=1
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_23
	b	L_BB5_22
L_BB5_22:                               ;   in Loop: Header=BB5_19 Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB5_24
	b	L_BB5_23
L_BB5_23:                               ;   in Loop: Header=BB5_19 Depth=1
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	lb	r2, [r2 + #0]
	jal	r11, runtime_putc
	addi	r2, r15, #12
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB5_24
L_BB5_24:                               ;   in Loop: Header=BB5_19 Depth=1
	b	L_BB5_25
L_BB5_25:                               ;   in Loop: Header=BB5_19 Depth=1
	addi	r2, r15, #8
	lw	r3, [r2 + #0]
	addi	r3, r3, #-4
	sw	r3, [r2 + #0]
	b	L_BB5_19
L_BB5_26:                               ; %.loopexit
	b	L_BB5_27
L_BB5_27:
	lw	r11, [r15 + #32]
	addi	r15, r15, #36
	ret
                                        ; -- End function
	.global	strcpy                          ; -- Begin function strcpy
strcpy:                                 ; @strcpy
; %bb.0:
	addi	r15, r15, #-12
	addi	r4, r15, #8
	sw	r2, [r4 + #0]
	addi	r2, r15, #4
	sw	r3, [r2 + #0]
	lw	r2, [r4 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	b	L_BB6_1
L_BB6_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB6_3
	b	L_BB6_2
L_BB6_2:                                ;   in Loop: Header=BB6_1 Depth=1
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r4, r3, #1
	sw	r4, [r2 + #0]
	lbu	r2, [r3 + #0]
	addi	r3, r15, #8
	lw	r4, [r3 + #0]
	addi	r5, r4, #1
	sw	r5, [r3 + #0]
	sb	r2, [r4 + #0]
	b	L_BB6_1
L_BB6_3:
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sb	r3, [r2 + #0]
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r15, r15, #12
	ret
                                        ; -- End function
	.global	strcmp                          ; -- Begin function strcmp
strcmp:                                 ; @strcmp
; %bb.0:
	addi	r15, r15, #-12
	addi	r4, r15, #4
	sw	r2, [r4 + #0]
	addi	r2, r15, #0
	sw	r3, [r2 + #0]
	b	L_BB7_1
L_BB7_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	lb	r3, [r2 + #0]
	addi	r2, r0, #0
	be	r3, r2, L_BB7_3
	b	L_BB7_2
L_BB7_2:                                ;   in Loop: Header=BB7_1 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	sltu	r2, r0, r2
	b	L_BB7_3
L_BB7_3:                                ;   in Loop: Header=BB7_1 Depth=1
	andi	r2, r2, #1
	addi	r3, r0, #0
	be	r2, r3, L_BB7_7
	b	L_BB7_4
L_BB7_4:                                ;   in Loop: Header=BB7_1 Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	lb	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	lb	r3, [r3 + #0]
	be	r2, r3, L_BB7_6
	b	L_BB7_5
L_BB7_5:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	lbu	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	lbu	r3, [r3 + #0]
	sub	r2, r2, r3
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	b	L_BB7_8
L_BB7_6:                                ;   in Loop: Header=BB7_1 Depth=1
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	addi	r2, r15, #0
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB7_1
L_BB7_7:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	lbu	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	lbu	r3, [r3 + #0]
	sub	r2, r2, r3
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	b	L_BB7_8
L_BB7_8:
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r15, r15, #12
	ret
                                        ; -- End function
	.global	memset                          ; -- Begin function memset
memset:                                 ; @memset
; %bb.0:
	addi	r15, r15, #-20
	addi	r5, r15, #16
	sw	r2, [r5 + #0]
	addi	r2, r15, #12
	sw	r3, [r2 + #0]
	addi	r2, r15, #8
	sw	r4, [r2 + #0]
	lw	r2, [r5 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	addi	r2, r15, #4
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB8_1
L_BB8_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	sltu	r2, r2, r3
	be	r2, r0, L_BB8_4
	b	L_BB8_2
L_BB8_2:                                ;   in Loop: Header=BB8_1 Depth=1
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	addi	r4, r15, #4
	lw	r4, [r4 + #0]
	add	r3, r3, r4
	sb	r2, [r3 + #0]
	b	L_BB8_3
L_BB8_3:                                ;   in Loop: Header=BB8_1 Depth=1
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB8_1
L_BB8_4:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r15, r15, #20
	ret
                                        ; -- End function
	.global	memcpy                          ; -- Begin function memcpy
memcpy:                                 ; @memcpy
; %bb.0:
	addi	r15, r15, #-24
	addi	r5, r15, #20
	sw	r2, [r5 + #0]
	addi	r2, r15, #16
	sw	r3, [r2 + #0]
	addi	r3, r15, #12
	sw	r4, [r3 + #0]
	lw	r3, [r5 + #0]
	addi	r4, r15, #4
	sw	r3, [r4 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	addi	r2, r15, #8
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB9_1
L_BB9_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r15, #12
	lw	r3, [r3 + #0]
	sltu	r2, r2, r3
	be	r2, r0, L_BB9_4
	b	L_BB9_2
L_BB9_2:                                ;   in Loop: Header=BB9_1 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	lbu	r2, [r2 + #0]
	addi	r4, r15, #4
	lw	r4, [r4 + #0]
	add	r3, r4, r3
	sb	r2, [r3 + #0]
	b	L_BB9_3
L_BB9_3:                                ;   in Loop: Header=BB9_1 Depth=1
	addi	r2, r15, #8
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB9_1
L_BB9_4:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	addi	r15, r15, #24
	ret
                                        ; -- End function
	.global	memmove                         ; -- Begin function memmove
memmove:                                ; @memmove
; %bb.0:
	addi	r15, r15, #-28
	addi	r5, r15, #20
	sw	r2, [r5 + #0]
	addi	r2, r15, #16
	sw	r3, [r2 + #0]
	addi	r3, r15, #12
	sw	r4, [r3 + #0]
	lw	r3, [r5 + #0]
	addi	r4, r15, #4
	sw	r3, [r4 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	lw	r2, [r4 + #0]
	lw	r3, [r3 + #0]
	be	r2, r3, L_BB10_2
	b	L_BB10_1
L_BB10_1:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB10_3
	b	L_BB10_2
L_BB10_2:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	addi	r3, r15, #24
	sw	r2, [r3 + #0]
	b	L_BB10_15
L_BB10_3:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	sltu	r2, r2, r3
	be	r2, r0, L_BB10_9
	b	L_BB10_4
L_BB10_4:
	addi	r2, r15, #8
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB10_5
L_BB10_5:                               ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r15, #12
	lw	r3, [r3 + #0]
	sltu	r2, r2, r3
	be	r2, r0, L_BB10_8
	b	L_BB10_6
L_BB10_6:                               ;   in Loop: Header=BB10_5 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	lbu	r2, [r2 + #0]
	addi	r4, r15, #4
	lw	r4, [r4 + #0]
	add	r3, r4, r3
	sb	r2, [r3 + #0]
	b	L_BB10_7
L_BB10_7:                               ;   in Loop: Header=BB10_5 Depth=1
	addi	r2, r15, #8
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB10_5
L_BB10_8:
	b	L_BB10_14
L_BB10_9:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	b	L_BB10_10
L_BB10_10:                              ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB10_13
	b	L_BB10_11
L_BB10_11:                              ;   in Loop: Header=BB10_10 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	addi	r3, r3, #-1
	add	r2, r2, r3
	lbu	r2, [r2 + #0]
	addi	r4, r15, #4
	lw	r4, [r4 + #0]
	add	r3, r4, r3
	sb	r2, [r3 + #0]
	b	L_BB10_12
L_BB10_12:                              ;   in Loop: Header=BB10_10 Depth=1
	addi	r2, r15, #8
	lw	r3, [r2 + #0]
	addi	r3, r3, #-1
	sw	r3, [r2 + #0]
	b	L_BB10_10
L_BB10_13:
	b	L_BB10_14
L_BB10_14:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	addi	r3, r15, #24
	sw	r2, [r3 + #0]
	b	L_BB10_15
L_BB10_15:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r15, r15, #28
	ret
                                        ; -- End function
	.global	malloc                          ; -- Begin function malloc
malloc:                                 ; @malloc
; %bb.0:
	addi	r15, r15, #-28
	sw	r8, [r15 + #24]
	sw	r11, [r15 + #20]
	addi	r3, r15, #12
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r2, r2, #3
	addi	r3, r0, #-4
	and	r2, r2, r3
	addi	r8, r15, #4
	sw	r2, [r8 + #0]
	jal	r11, runtime_init
	lw	r2, [r8 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB11_2
	b	L_BB11_1
L_BB11_1:
	addi	r2, r15, #16
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB11_5
L_BB11_2:
	la	r2, g_heap_off
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	addi	r3, r0, #1025
	bltu	r2, r3, L_BB11_4
	b	L_BB11_3
L_BB11_3:
	addi	r2, r15, #16
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB11_5
L_BB11_4:
	la	r2, g_heap_off
	lw	r3, [r2 + #0]
	la	r4, g_heap
	add	r3, r3, r4
	addi	r4, r15, #0
	sw	r3, [r4 + #0]
	addi	r3, r15, #4
	lw	r3, [r3 + #0]
	lw	r5, [r2 + #0]
	add	r3, r5, r3
	sw	r3, [r2 + #0]
	lw	r2, [r4 + #0]
	addi	r3, r15, #16
	sw	r2, [r3 + #0]
	b	L_BB11_5
L_BB11_5:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #20]
	lw	r8, [r15 + #24]
	addi	r15, r15, #28
	ret
                                        ; -- End function
	.global	free                            ; -- Begin function free
free:                                   ; @free
; %bb.0:
	addi	r15, r15, #-4
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	addi	r15, r15, #4
	ret
                                        ; -- End function
	.global	time                            ; -- Begin function time
time:                                   ; @time
; %bb.0:
	addi	r15, r15, #-16
	sw	r8, [r15 + #12]
	sw	r11, [r15 + #8]
	addi	r8, r15, #4
	sw	r2, [r8 + #0]
	addi	r2, r0, #256
	jal	r11, ncx_mmio_read
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	lw	r2, [r8 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB13_2
	b	L_BB13_1
L_BB13_1:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	lw	r3, [r3 + #0]
	sw	r2, [r3 + #0]
	b	L_BB13_2
L_BB13_2:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #8]
	lw	r8, [r15 + #12]
	addi	r15, r15, #16
	ret
                                        ; -- End function
ncx_mmio_read:                          ; -- Begin function ncx_mmio_read
                                        ; @ncx_mmio_read
; %bb.0:
	addi	r15, r15, #-8
	sw	r11, [r15 + #4]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	jal	r11, ncx_mmio_ptr
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #4]
	addi	r15, r15, #8
	ret
                                        ; -- End function
	.global	__udivsi3                       ; -- Begin function __udivsi3
__udivsi3:                              ; @__udivsi3
; %bb.0:
	addi	r15, r15, #-12
	sw	r11, [r15 + #8]
	addi	r4, r15, #4
	sw	r2, [r4 + #0]
	addi	r5, r15, #0
	sw	r3, [r5 + #0]
	lw	r2, [r4 + #0]
	lw	r3, [r5 + #0]
	addi	r4, r0, #0
	jal	r11, udivmod_u32
	lw	r11, [r15 + #8]
	addi	r15, r15, #12
	ret
                                        ; -- End function
udivmod_u32:                            ; -- Begin function udivmod_u32
                                        ; @udivmod_u32
; %bb.0:
	addi	r15, r15, #-28
	addi	r5, r15, #20
	sw	r2, [r5 + #0]
	addi	r2, r15, #16
	sw	r3, [r2 + #0]
	addi	r3, r15, #12
	sw	r4, [r3 + #0]
	addi	r3, r15, #8
	addi	r4, r0, #0
	sw	r4, [r3 + #0]
	addi	r3, r15, #4
	sw	r4, [r3 + #0]
	lw	r2, [r2 + #0]
	bne	r2, r4, L_BB16_4
	b	L_BB16_1
L_BB16_1:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB16_3
	b	L_BB16_2
L_BB16_2:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB16_3
L_BB16_3:
	addi	r2, r15, #24
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB16_13
L_BB16_4:
	addi	r2, r15, #0
	addi	r3, r0, #31
	sw	r3, [r2 + #0]
	b	L_BB16_5
L_BB16_5:                               ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	blt	r2, r3, L_BB16_10
	b	L_BB16_6
L_BB16_6:                               ;   in Loop: Header=BB16_5 Depth=1
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	slli	r3, r3, #1
	addi	r4, r15, #20
	lw	r4, [r4 + #0]
	addi	r5, r15, #0
	lw	r5, [r5 + #0]
	srl	r4, r4, r5
	andi	r4, r4, #1
	or	r3, r3, r4
	sw	r3, [r2 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r15, #16
	lw	r3, [r3 + #0]
	bltu	r2, r3, L_BB16_8
	b	L_BB16_7
L_BB16_7:                               ;   in Loop: Header=BB16_5 Depth=1
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	lw	r4, [r3 + #0]
	sub	r2, r4, r2
	sw	r2, [r3 + #0]
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #1
	sll	r2, r3, r2
	addi	r3, r15, #8
	lw	r4, [r3 + #0]
	or	r2, r4, r2
	sw	r2, [r3 + #0]
	b	L_BB16_8
L_BB16_8:                               ;   in Loop: Header=BB16_5 Depth=1
	b	L_BB16_9
L_BB16_9:                               ;   in Loop: Header=BB16_5 Depth=1
	addi	r2, r15, #0
	lw	r3, [r2 + #0]
	addi	r3, r3, #-1
	sw	r3, [r2 + #0]
	b	L_BB16_5
L_BB16_10:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB16_12
	b	L_BB16_11
L_BB16_11:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #12
	lw	r3, [r3 + #0]
	sw	r2, [r3 + #0]
	b	L_BB16_12
L_BB16_12:
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r3, r15, #24
	sw	r2, [r3 + #0]
	b	L_BB16_13
L_BB16_13:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r15, r15, #28
	ret
                                        ; -- End function
	.global	__umodsi3                       ; -- Begin function __umodsi3
__umodsi3:                              ; @__umodsi3
; %bb.0:
	addi	r15, r15, #-20
	sw	r8, [r15 + #16]
	sw	r11, [r15 + #12]
	addi	r4, r15, #8
	sw	r2, [r4 + #0]
	addi	r5, r15, #4
	sw	r3, [r5 + #0]
	addi	r8, r15, #0
	addi	r2, r0, #0
	sw	r2, [r8 + #0]
	lw	r2, [r4 + #0]
	lw	r3, [r5 + #0]
	addi	r4, r8, #0
	jal	r11, udivmod_u32
	lw	r2, [r8 + #0]
	lw	r11, [r15 + #12]
	lw	r8, [r15 + #16]
	addi	r15, r15, #20
	ret
                                        ; -- End function
	.global	__divsi3                        ; -- Begin function __divsi3
__divsi3:                               ; @__divsi3
; %bb.0:
	addi	r15, r15, #-36
	sw	r8, [r15 + #32]
	sw	r11, [r15 + #28]
	addi	r4, r15, #20
	sw	r2, [r4 + #0]
	addi	r2, r15, #16
	sw	r3, [r2 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB18_2
	b	L_BB18_1
L_BB18_1:
	addi	r2, r15, #24
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB18_11
L_BB18_2:
	addi	r2, r15, #20
	lw	r3, [r2 + #0]
	addi	r4, r0, #0
	slt	r3, r3, r4
	addi	r5, r15, #16
	lw	r5, [r5 + #0]
	slt	r4, r5, r4
	xor	r3, r3, r4
	addi	r4, r15, #0
	sw	r3, [r4 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB18_4
	b	L_BB18_3
L_BB18_3:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	b	L_BB18_5
L_BB18_4:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	b	L_BB18_5
L_BB18_5:
	addi	r3, r15, #12
	sw	r2, [r3 + #0]
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB18_7
	b	L_BB18_6
L_BB18_6:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	b	L_BB18_8
L_BB18_7:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	b	L_BB18_8
L_BB18_8:
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	lw	r3, [r3 + #0]
	addi	r8, r0, #0
	addi	r4, r8, #0
	jal	r11, udivmod_u32
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	be	r2, r8, L_BB18_10
	b	L_BB18_9
L_BB18_9:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	addi	r3, r15, #24
	sw	r2, [r3 + #0]
	b	L_BB18_11
L_BB18_10:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #24
	sw	r2, [r3 + #0]
	b	L_BB18_11
L_BB18_11:
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #28]
	lw	r8, [r15 + #32]
	addi	r15, r15, #36
	ret
                                        ; -- End function
	.global	__modsi3                        ; -- Begin function __modsi3
__modsi3:                               ; @__modsi3
; %bb.0:
	addi	r15, r15, #-28
	sw	r11, [r15 + #24]
	addi	r4, r15, #16
	sw	r2, [r4 + #0]
	addi	r2, r15, #12
	sw	r3, [r2 + #0]
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	bne	r2, r3, L_BB19_2
	b	L_BB19_1
L_BB19_1:
	addi	r2, r15, #20
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB19_11
L_BB19_2:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB19_4
	b	L_BB19_3
L_BB19_3:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	b	L_BB19_5
L_BB19_4:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	b	L_BB19_5
L_BB19_5:
	addi	r3, r15, #8
	sw	r2, [r3 + #0]
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB19_7
	b	L_BB19_6
L_BB19_6:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	b	L_BB19_8
L_BB19_7:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	b	L_BB19_8
L_BB19_8:
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	lw	r3, [r3 + #0]
	addi	r4, r15, #0
	jal	r11, udivmod_u32
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r3, r0, #-1
	blt	r3, r2, L_BB19_10
	b	L_BB19_9
L_BB19_9:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sub	r2, r3, r2
	addi	r3, r15, #20
	sw	r2, [r3 + #0]
	b	L_BB19_11
L_BB19_10:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #20
	sw	r2, [r3 + #0]
	b	L_BB19_11
L_BB19_11:
	addi	r2, r15, #20
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #24]
	addi	r15, r15, #28
	ret
                                        ; -- End function
ncx_mmio_ptr:                           ; -- Begin function ncx_mmio_ptr
                                        ; @ncx_mmio_ptr
; %bb.0:
	addi	r15, r15, #-8
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	addi	r2, r15, #0
	addi	r4, r0, #1
	sw	r4, [r2 + #0]
	lw	r4, [r2 + #0]
	slli	r4, r4, #30
	sw	r4, [r2 + #0]
	lw	r2, [r2 + #0]
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	addi	r15, r15, #8
	ret
                                        ; -- End function
	.local	g_uart_inited                   ; @g_uart_inited
	.comm	g_uart_inited,4,4
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
