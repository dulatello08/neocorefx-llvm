	.text
	.global	Proc_6                          ; -- Begin function Proc_6
Proc_6:                                 ; @Proc_6
; %bb.0:
	addi	r4, r0, #2
	xor	r5, r2, r4
	sltu	r5, r0, r5
	xori	r5, r5, #1
	xori	r5, r5, #3
	sw	r5, [r3 + #0]
	addi	r5, r0, #1
	blt	r5, r2, L_BB0_3
	b	L_BB0_1
L_BB0_1:
	addi	r4, r0, #0
	be	r2, r4, L_BB0_8
	b	L_BB0_2
L_BB0_2:
	addi	r4, r0, #1
	be	r2, r4, L_BB0_5
	b	L_BB0_9
L_BB0_5:
	la	r2, Int_Glob
	lw	r2, [r2 + #0]
	addi	r4, r0, #100
	slt	r2, r4, r2
	addi	r2, r2, #-1
	andi	r2, r2, #3
	b	L_BB0_8
L_BB0_3:
	be	r2, r4, L_BB0_6
	b	L_BB0_4
L_BB0_4:
	addi	r5, r0, #4
	be	r2, r5, L_BB0_7
	b	L_BB0_9
L_BB0_7:
	addi	r2, r4, #0
L_BB0_8:
	sw	r2, [r3 + #0]
L_BB0_9:
	ret
L_BB0_6:
	addi	r2, r5, #0
	b	L_BB0_8
                                        ; -- End function
	.global	Proc_7                          ; -- Begin function Proc_7
Proc_7:                                 ; @Proc_7
; %bb.0:
	add	r2, r2, r3
	addi	r2, r2, #2
	sw	r2, [r4 + #0]
	ret
                                        ; -- End function
	.global	Proc_8                          ; -- Begin function Proc_8
Proc_8:                                 ; @Proc_8
; %bb.0:
	addi	r15, r15, #-4
	sw	r8, [r15 + #0]
	addi	r6, r4, #5
	slli	r7, r6, #2
	add	r12, r2, r7
	sw	r5, [r12 + #0]
	slli	r13, r4, #2
	add	r8, r2, r13
	sw	r6, [r8 + #140]
	addi	r8, r13, #24
	add	r2, r2, r8
	sw	r5, [r2 + #0]
	addi	r2, r0, #200
	mul	r2, r4, r2
	add	r2, r3, r2
	addi	r3, r2, #1000
	add	r4, r3, r7
	sw	r6, [r4 + #0]
	add	r4, r3, r8
	sw	r6, [r4 + #0]
	add	r3, r13, r3
	lw	r4, [r3 + #16]
	addi	r4, r4, #1
	sw	r4, [r3 + #16]
	add	r2, r2, r7
	lw	r3, [r12 + #0]
	sw	r3, [r2 + #5000]
	la	r2, Int_Glob
	addi	r3, r0, #5
	sw	r3, [r2 + #0]
	lw	r8, [r15 + #0]
	addi	r15, r15, #4
	ret
                                        ; -- End function
	.global	Func_1                          ; -- Begin function Func_1
Func_1:                                 ; @Func_1
; %bb.0:
	xor	r3, r3, r2
	andi	r4, r3, #255
	addi	r3, r0, #0
	bne	r4, r3, L_BB3_2
	b	L_BB3_1
L_BB3_1:
	la	r3, Ch_1_Glob
	sb	r2, [r3 + #0]
	addi	r3, r0, #1
L_BB3_2:
	addi	r2, r3, #0
	ret
                                        ; -- End function
	.global	Func_2                          ; -- Begin function Func_2
Func_2:                                 ; @Func_2
; %bb.0:
	addi	r15, r15, #-4
	sw	r11, [r15 + #0]
	lbu	r4, [r2 + #2]
	lbu	r5, [r3 + #3]
	bne	r5, r4, L_BB4_3
	b	L_BB4_1
L_BB4_1:
	la	r2, Ch_1_Glob
	sb	r4, [r2 + #0]
L_BB4_2:                                ; =>This Inner Loop Header: Depth=1
	b	L_BB4_2
L_BB4_3:
	jal	r11, strcmp
	addi	r3, r2, #0
	addi	r2, r0, #0
	addi	r4, r0, #1
	blt	r3, r4, L_BB4_5
	b	L_BB4_4
L_BB4_4:
	la	r2, Int_Glob
	addi	r3, r0, #10
	sw	r3, [r2 + #0]
	addi	r2, r4, #0
L_BB4_5:
	lw	r11, [r15 + #0]
	addi	r15, r15, #4
	ret
                                        ; -- End function
	.global	Func_3                          ; -- Begin function Func_3
Func_3:                                 ; @Func_3
; %bb.0:
	addi	r3, r0, #2
	xor	r2, r2, r3
	sltu	r2, r0, r2
	xori	r2, r2, #1
	ret
                                        ; -- End function
	.section	".note.GNU-stack","",@progbits
