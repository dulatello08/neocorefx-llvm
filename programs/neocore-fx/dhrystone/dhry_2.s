	.text
	.global	Proc_6                          ; -- Begin function Proc_6
Proc_6:                                 ; @Proc_6
; %bb.0:
	addi	r15, r15, #-16
	sw	r11, [r15 + #12]
	addi	r4, r15, #4
	sw	r2, [r4 + #0]
	addi	r2, r15, #0
	sw	r3, [r2 + #0]
	lw	r3, [r4 + #0]
	lw	r2, [r2 + #0]
	sw	r3, [r2 + #0]
	lw	r2, [r4 + #0]
	jal	r11, Func_3
	addi	r3, r0, #0
	bne	r2, r3, L_BB0_2
	b	L_BB0_1
L_BB0_1:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #3
	sw	r3, [r2 + #0]
	b	L_BB0_2
L_BB0_2:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	be	r2, r3, L_BB0_7
	b	L_BB0_3
L_BB0_3:
	addi	r3, r0, #1
	be	r2, r3, L_BB0_8
	b	L_BB0_4
L_BB0_4:
	addi	r3, r0, #2
	be	r2, r3, L_BB0_12
	b	L_BB0_5
L_BB0_5:
	addi	r3, r0, #3
	be	r2, r3, L_BB0_13
	b	L_BB0_6
L_BB0_6:
	addi	r3, r0, #4
	be	r2, r3, L_BB0_14
	b	L_BB0_15
L_BB0_7:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB0_15
L_BB0_8:
	la	r2, Int_Glob
	lw	r2, [r2 + #0]
	addi	r3, r0, #101
	blt	r2, r3, L_BB0_10
	b	L_BB0_9
L_BB0_9:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB0_11
L_BB0_10:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #3
	sw	r3, [r2 + #0]
	b	L_BB0_11
L_BB0_11:
	b	L_BB0_15
L_BB0_12:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB0_15
L_BB0_13:
	b	L_BB0_15
L_BB0_14:
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r0, #2
	sw	r3, [r2 + #0]
	b	L_BB0_15
L_BB0_15:
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #12]
	addi	r15, r15, #16
	ret
                                        ; -- End function
	.global	Proc_7                          ; -- Begin function Proc_7
Proc_7:                                 ; @Proc_7
; %bb.0:
	addi	r15, r15, #-20
	addi	r5, r15, #12
	sw	r2, [r5 + #0]
	addi	r2, r15, #8
	sw	r3, [r2 + #0]
	addi	r3, r15, #4
	sw	r4, [r3 + #0]
	lw	r4, [r5 + #0]
	addi	r4, r4, #2
	addi	r5, r15, #0
	sw	r4, [r5 + #0]
	lw	r2, [r2 + #0]
	lw	r4, [r5 + #0]
	add	r2, r2, r4
	lw	r3, [r3 + #0]
	sw	r2, [r3 + #0]
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	addi	r15, r15, #20
	ret
                                        ; -- End function
	.global	Proc_8                          ; -- Begin function Proc_8
Proc_8:                                 ; @Proc_8
; %bb.0:
	addi	r15, r15, #-28
	addi	r6, r15, #20
	sw	r2, [r6 + #0]
	addi	r2, r15, #16
	sw	r3, [r2 + #0]
	addi	r2, r15, #12
	sw	r4, [r2 + #0]
	addi	r3, r15, #8
	sw	r5, [r3 + #0]
	lw	r2, [r2 + #0]
	addi	r2, r2, #5
	addi	r4, r15, #0
	sw	r2, [r4 + #0]
	lw	r2, [r3 + #0]
	lw	r3, [r6 + #0]
	lw	r5, [r4 + #0]
	slli	r5, r5, #2
	add	r3, r3, r5
	sw	r2, [r3 + #0]
	lw	r2, [r6 + #0]
	lw	r3, [r4 + #0]
	slli	r3, r3, #2
	add	r2, r2, r3
	lw	r3, [r2 + #0]
	sw	r3, [r2 + #4]
	lw	r2, [r4 + #0]
	lw	r3, [r6 + #0]
	slli	r5, r2, #2
	add	r3, r5, r3
	sw	r2, [r3 + #120]
	lw	r2, [r4 + #0]
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	b	L_BB2_1
L_BB2_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r15, #0
	lw	r3, [r3 + #0]
	addi	r3, r3, #1
	blt	r3, r2, L_BB2_4
	b	L_BB2_2
L_BB2_2:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #0
	lw	r2, [r2 + #0]
	addi	r3, r15, #16
	lw	r3, [r3 + #0]
	addi	r4, r0, #200
	mul	r4, r2, r4
	add	r3, r3, r4
	addi	r4, r15, #4
	lw	r4, [r4 + #0]
	slli	r4, r4, #2
	add	r3, r3, r4
	sw	r2, [r3 + #0]
	b	L_BB2_3
L_BB2_3:                                ;   in Loop: Header=BB2_1 Depth=1
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB2_1
L_BB2_4:
	addi	r2, r15, #16
	lw	r3, [r2 + #0]
	addi	r4, r15, #0
	lw	r5, [r4 + #0]
	addi	r6, r0, #200
	mul	r7, r5, r6
	add	r3, r3, r7
	slli	r5, r5, #2
	add	r3, r5, r3
	lw	r5, [r3 + #-4]
	addi	r5, r5, #1
	sw	r5, [r3 + #-4]
	addi	r3, r15, #20
	lw	r3, [r3 + #0]
	lw	r4, [r4 + #0]
	slli	r5, r4, #2
	add	r3, r3, r5
	lw	r3, [r3 + #0]
	lw	r2, [r2 + #0]
	mul	r4, r4, r6
	add	r2, r4, r2
	add	r2, r2, r5
	sw	r3, [r2 + #4000]
	la	r2, Int_Glob
	addi	r3, r0, #5
	sw	r3, [r2 + #0]
	addi	r2, r15, #24
	lw	r2, [r2 + #0]
	addi	r15, r15, #28
	ret
                                        ; -- End function
	.global	Func_1                          ; -- Begin function Func_1
Func_1:                                 ; @Func_1
; %bb.0:
	addi	r15, r15, #-8
	addi	r4, r15, #3
	sb	r2, [r4 + #0]
	addi	r2, r15, #2
	sb	r3, [r2 + #0]
	lbu	r3, [r4 + #0]
	addi	r4, r15, #1
	sb	r3, [r4 + #0]
	lbu	r3, [r4 + #0]
	addi	r4, r15, #0
	sb	r3, [r4 + #0]
	lb	r3, [r4 + #0]
	lb	r2, [r2 + #0]
	be	r3, r2, L_BB3_2
	b	L_BB3_1
L_BB3_1:
	addi	r2, r15, #4
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB3_3
L_BB3_2:
	addi	r2, r15, #1
	lbu	r2, [r2 + #0]
	la	r3, Ch_1_Glob
	sb	r2, [r3 + #0]
	addi	r2, r15, #4
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB3_3
L_BB3_3:
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r15, r15, #8
	ret
                                        ; -- End function
	.global	Func_2                          ; -- Begin function Func_2
Func_2:                                 ; @Func_2
; %bb.0:
	addi	r15, r15, #-24
	sw	r11, [r15 + #20]
	addi	r4, r15, #12
	sw	r2, [r4 + #0]
	addi	r2, r15, #8
	sw	r3, [r2 + #0]
	addi	r2, r15, #4
	addi	r3, r0, #2
	sw	r3, [r2 + #0]
	b	L_BB4_1
L_BB4_1:                                ; =>This Inner Loop Header: Depth=1
	addi	r2, r15, #4
	lw	r2, [r2 + #0]
	addi	r3, r0, #2
	blt	r3, r2, L_BB4_5
	b	L_BB4_2
L_BB4_2:                                ;   in Loop: Header=BB4_1 Depth=1
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r15, #4
	lw	r3, [r3 + #0]
	add	r2, r2, r3
	lb	r2, [r2 + #0]
	addi	r4, r15, #8
	lw	r4, [r4 + #0]
	add	r3, r3, r4
	lb	r3, [r3 + #1]
	jal	r11, Func_1
	addi	r3, r0, #0
	bne	r2, r3, L_BB4_4
	b	L_BB4_3
L_BB4_3:                                ;   in Loop: Header=BB4_1 Depth=1
	addi	r2, r15, #3
	addi	r3, r0, #65
	sb	r3, [r2 + #0]
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r3, r3, #1
	sw	r3, [r2 + #0]
	b	L_BB4_4
L_BB4_4:                                ;   in Loop: Header=BB4_1 Depth=1
	b	L_BB4_1
L_BB4_5:
	addi	r2, r15, #3
	lb	r2, [r2 + #0]
	addi	r3, r0, #87
	blt	r2, r3, L_BB4_8
	b	L_BB4_6
L_BB4_6:
	addi	r2, r15, #3
	lb	r2, [r2 + #0]
	addi	r3, r0, #89
	blt	r3, r2, L_BB4_8
	b	L_BB4_7
L_BB4_7:
	addi	r2, r15, #4
	addi	r3, r0, #7
	sw	r3, [r2 + #0]
	b	L_BB4_8
L_BB4_8:
	addi	r2, r15, #3
	lb	r2, [r2 + #0]
	addi	r3, r0, #82
	bne	r2, r3, L_BB4_10
	b	L_BB4_9
L_BB4_9:
	addi	r2, r15, #16
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB4_13
L_BB4_10:
	addi	r2, r15, #12
	lw	r2, [r2 + #0]
	addi	r3, r15, #8
	lw	r3, [r3 + #0]
	jal	r11, strcmp
	addi	r3, r0, #1
	blt	r2, r3, L_BB4_12
	b	L_BB4_11
L_BB4_11:
	addi	r2, r15, #4
	lw	r3, [r2 + #0]
	addi	r3, r3, #7
	sw	r3, [r2 + #0]
	lw	r2, [r2 + #0]
	la	r3, Int_Glob
	sw	r2, [r3 + #0]
	addi	r2, r15, #16
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB4_13
L_BB4_12:
	addi	r2, r15, #16
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB4_13
L_BB4_13:
	addi	r2, r15, #16
	lw	r2, [r2 + #0]
	lw	r11, [r15 + #20]
	addi	r15, r15, #24
	ret
                                        ; -- End function
	.global	Func_3                          ; -- Begin function Func_3
Func_3:                                 ; @Func_3
; %bb.0:
	addi	r15, r15, #-12
	addi	r3, r15, #4
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r15, #0
	sw	r2, [r3 + #0]
	lw	r2, [r3 + #0]
	addi	r3, r0, #2
	bne	r2, r3, L_BB5_2
	b	L_BB5_1
L_BB5_1:
	addi	r2, r15, #8
	addi	r3, r0, #1
	sw	r3, [r2 + #0]
	b	L_BB5_3
L_BB5_2:
	addi	r2, r15, #8
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	b	L_BB5_3
L_BB5_3:
	addi	r2, r15, #8
	lw	r2, [r2 + #0]
	addi	r15, r15, #12
	ret
                                        ; -- End function
	.section	".note.GNU-stack","",@progbits
