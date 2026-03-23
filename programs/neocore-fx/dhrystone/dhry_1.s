	.text
	.global	_start
_start:
	li	r15, #0x0000FFFC
	jal	r11, main
	halt
	.global	main                            ; -- Begin function main
main:                                   ; @main
; %bb.0:
	addi	r15, r15, #-164
	sw	r8, [r15 + #160]
	sw	r9, [r15 + #156]
	sw	r10, [r15 + #152]
	sw	r11, [r15 + #148]
	addi	r8, r0, #48
	addi	r2, r8, #0
	jal	r11, malloc
	la	r9, Next_Ptr_Glob
	sw	r2, [r9 + #0]
	addi	r2, r8, #0
	jal	r11, malloc
	la	r10, Ptr_Glob
	sw	r2, [r10 + #0]
	sw	r9, [r15 + #4]
	lw	r3, [r9 + #0]
	sw	r3, [r2 + #0]
	lw	r2, [r10 + #0]
	addi	r9, r0, #0
	sw	r9, [r2 + #4]
	addi	r3, r0, #2
	sw	r3, [r2 + #8]
	addi	r3, r0, #40
	sw	r3, [r2 + #12]
	addi	r2, r2, #16
	la	r3, .L.str
	jal	r11, strcpy
	addi	r2, r15, #109
	la	r3, .L.str.1
	jal	r11, strcpy
	la	r2, Arr_2_Glob
	addi	r3, r0, #10
	sw	r3, [r2 + #1628]
	la	r8, .L.str.2
	addi	r2, r8, #0
	jal	r11, printf
	la	r2, .L.str.3
	jal	r11, printf
	addi	r2, r8, #0
	jal	r11, printf
	la	r2, .L.str.4
	la	r3, .L.str.5
	xor	r3, r3, r2
	la	r4, Reg
	lw	r4, [r4 + #0]
	sltu	r4, r0, r4
	xori	r4, r4, #1
	sub	r4, r9, r4
	and	r3, r3, r4
	xor	r2, r3, r2
	jal	r11, printf
	addi	r2, r8, #0
	jal	r11, printf
	la	r2, .L.str.6
	addi	r3, r0, #60
	jal	r11, printf
	sw	r9, [r15 + #44]
	addi	r2, r9, #0
	jal	r11, time
	la	r3, Begin_Time
	sw	r2, [r3 + #0]
	addi	r8, r0, #1
	la	r2, Bool_Glob
	sw	r2, [r15 + #48]
	la	r2, Ch_1_Glob
	sw	r2, [r15 + #40]
	addi	r2, r0, #65
	sw	r2, [r15 + #52]
	la	r2, Ch_2_Glob
	sw	r2, [r15 + #72]
	addi	r2, r0, #66
	sw	r2, [r15 + #16]
	addi	r2, r15, #78
	sw	r2, [r15 + #12]
	sw	r8, [r15 + #20]
	sw	r10, [r15 + #56]
L_BB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	lw	r2, [r15 + #48]
	lw	r9, [r15 + #20]
	sw	r9, [r2 + #0]
	lw	r2, [r15 + #40]
	lw	r3, [r15 + #52]
	sb	r3, [r2 + #0]
	lw	r2, [r15 + #72]
	lw	r3, [r15 + #16]
	sb	r3, [r2 + #0]
	la	r3, .L.str.7
	lw	r10, [r15 + #12]
	addi	r2, r10, #0
	jal	r11, strcpy
	addi	r2, r15, #140
	sw	r2, [r15 + #68]
	sw	r9, [r2 + #0]
	addi	r2, r15, #109
	addi	r3, r10, #0
	jal	r11, Func_2
	addi	r9, r15, #144
	addi	r3, r0, #7
	sw	r3, [r15 + #36]
	sw	r3, [r9 + #0]
	sltu	r2, r0, r2
	xori	r2, r2, #1
	lw	r3, [r15 + #48]
	sw	r2, [r3 + #0]
	addi	r2, r0, #2
	addi	r10, r0, #3
	addi	r3, r10, #0
	addi	r4, r9, #0
	jal	r11, Proc_7
	sw	r9, [r15 + #32]
	lw	r5, [r9 + #0]
	la	r2, Arr_1_Glob
	la	r3, Arr_2_Glob
	sw	r2, [r15 + #24]
	sw	r3, [r15 + #28]
	sw	r10, [r15 + #64]
	addi	r4, r10, #0
	jal	r11, Proc_8
	lw	r2, [r15 + #56]
	lw	r9, [r2 + #0]
	lw	r10, [r9 + #0]
	addi	r4, r0, #48
	addi	r2, r10, #0
	addi	r3, r9, #0
	call	memcpy
	addi	r2, r0, #5
	sw	r2, [r9 + #12]
	sw	r2, [r10 + #12]
	lw	r2, [r9 + #0]
	sw	r2, [r10 + #0]
	lw	r4, [r15 + #56]
	lw	r2, [r4 + #0]
	lw	r2, [r2 + #0]
	sw	r2, [r10 + #0]
	la	r2, Int_Glob
	sw	r2, [r15 + #60]
	lw	r3, [r2 + #0]
	lw	r2, [r4 + #0]
	addi	r4, r2, #12
	addi	r2, r0, #10
	jal	r11, Proc_7
	lw	r2, [r10 + #4]
	lw	r3, [r15 + #44]
	bne	r2, r3, L_BB0_3
	b	L_BB0_2
L_BB0_3:                                ;   in Loop: Header=BB0_1 Depth=1
	lw	r3, [r9 + #0]
	addi	r4, r0, #48
	addi	r2, r9, #0
	call	memcpy
L_BB0_4:                                ;   in Loop: Header=BB0_1 Depth=1
	lw	r2, [r15 + #72]
	lb	r2, [r2 + #0]
	addi	r3, r0, #9
	lw	r4, [r15 + #52]
	blt	r2, r4, L_BB0_10
	b	L_BB0_5
L_BB0_5:                                ; %.preheader
                                        ;   in Loop: Header=BB0_1 Depth=1
	lw	r2, [r15 + #52]
L_BB0_6:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lw	r3, [r15 + #68]
	lw	r10, [r3 + #0]
	slli	r9, r2, #24
	srai	r2, r9, #24
	addi	r3, r0, #67
	jal	r11, Func_1
	bne	r10, r2, L_BB0_8
	b	L_BB0_7
L_BB0_7:                                ;   in Loop: Header=BB0_6 Depth=2
	addi	r2, r0, #0
	addi	r3, r15, #140
	jal	r11, Proc_6
	addi	r2, r15, #78
	la	r3, .L.str.8
	jal	r11, strcpy
	lw	r2, [r15 + #60]
	sw	r8, [r2 + #0]
	sw	r8, [r15 + #64]
L_BB0_8:                                ;   in Loop: Header=BB0_6 Depth=2
	li	r2, #16777216
	add	r2, r9, r2
	srai	r2, r2, #24
	lw	r3, [r15 + #72]
	lb	r3, [r3 + #0]
	slt	r3, r3, r2
	be	r3, r0, L_BB0_6
	b	L_BB0_9
L_BB0_9:                                ;   in Loop: Header=BB0_1 Depth=1
	addi	r2, r0, #3
	lw	r3, [r15 + #64]
	mul	r3, r3, r2
L_BB0_10:                               ;   in Loop: Header=BB0_1 Depth=1
	addi	r8, r8, #1
	addi	r2, r0, #61
	lw	r10, [r15 + #56]
	bne	r8, r2, L_BB0_1
	b	L_BB0_11
L_BB0_2:                                ;   in Loop: Header=BB0_1 Depth=1
	addi	r2, r10, #12
	sw	r2, [r15 + #8]
	addi	r2, r0, #6
	sw	r2, [r10 + #12]
	lw	r2, [r9 + #8]
	addi	r3, r10, #8
	jal	r11, Proc_6
	lw	r2, [r15 + #56]
	lw	r2, [r2 + #0]
	lw	r2, [r2 + #0]
	sw	r2, [r10 + #0]
	lw	r2, [r10 + #12]
	addi	r3, r0, #10
	lw	r4, [r15 + #8]
	jal	r11, Proc_7
	b	L_BB0_4
L_BB0_11:
	lw	r2, [r15 + #40]
	lbu	r2, [r2 + #0]
	sw	r2, [r15 + #20]
	lw	r9, [r15 + #60]
	lw	r2, [r9 + #0]
	sw	r2, [r15 + #16]
	lw	r2, [r15 + #32]
	lw	r2, [r2 + #0]
	sw	r2, [r15 + #12]
	lw	r2, [r15 + #44]
	sw	r3, [r15 + #64]
	jal	r11, time
	la	r3, End_Time
	sw	r2, [r3 + #0]
	la	r2, .L.str.9
	jal	r11, printf
	la	r8, .L.str.2
	sw	r8, [r15 + #52]
	addi	r2, r8, #0
	jal	r11, printf
	la	r2, .L.str.10
	jal	r11, printf
	addi	r2, r8, #0
	jal	r11, printf
	lw	r3, [r9 + #0]
	la	r2, .L.str.11
	jal	r11, printf
	la	r8, .L.str.12
	addi	r3, r0, #5
	sw	r3, [r15 + #8]
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r15 + #48]
	lw	r3, [r2 + #0]
	la	r2, .L.str.13
	jal	r11, printf
	addi	r3, r0, #1
	sw	r3, [r15 + #60]
	addi	r2, r8, #0
	addi	r9, r8, #0
	jal	r11, printf
	lw	r2, [r15 + #40]
	lb	r3, [r2 + #0]
	la	r2, .L.str.14
	jal	r11, printf
	la	r8, .L.str.15
	addi	r3, r0, #65
	sw	r3, [r15 + #48]
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r15 + #72]
	lb	r3, [r2 + #0]
	la	r2, .L.str.16
	jal	r11, printf
	addi	r3, r0, #66
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r15 + #24]
	lw	r3, [r2 + #32]
	la	r2, .L.str.17
	jal	r11, printf
	addi	r8, r9, #0
	addi	r2, r8, #0
	lw	r3, [r15 + #36]
	jal	r11, printf
	lw	r2, [r15 + #28]
	lw	r3, [r2 + #1628]
	la	r2, .L.str.18
	jal	r11, printf
	la	r2, .L.str.19
	jal	r11, printf
	la	r2, .L.str.20
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #0]
	la	r2, .L.str.21
	sw	r2, [r15 + #72]
	jal	r11, printf
	la	r2, .L.str.22
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #4]
	la	r2, .L.str.23
	sw	r2, [r15 + #40]
	jal	r11, printf
	addi	r2, r8, #0
	lw	r3, [r15 + #44]
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #8]
	la	r2, .L.str.24
	sw	r2, [r15 + #28]
	jal	r11, printf
	addi	r3, r0, #2
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #12]
	la	r2, .L.str.25
	sw	r2, [r15 + #24]
	jal	r11, printf
	addi	r3, r0, #17
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r10 + #0]
	addi	r3, r2, #16
	la	r2, .L.str.26
	sw	r2, [r15 + #56]
	jal	r11, printf
	la	r9, .L.str.27
	addi	r2, r9, #0
	jal	r11, printf
	la	r2, .L.str.28
	jal	r11, printf
	lw	r10, [r15 + #4]
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #0]
	lw	r2, [r15 + #72]
	jal	r11, printf
	la	r2, .L.str.29
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #4]
	lw	r2, [r15 + #40]
	jal	r11, printf
	addi	r2, r8, #0
	lw	r3, [r15 + #44]
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #8]
	lw	r2, [r15 + #28]
	jal	r11, printf
	addi	r2, r8, #0
	sw	r8, [r15 + #0]
	lw	r3, [r15 + #60]
	jal	r11, printf
	lw	r2, [r10 + #0]
	lw	r3, [r2 + #12]
	lw	r2, [r15 + #24]
	jal	r11, printf
	addi	r3, r0, #18
	addi	r2, r8, #0
	jal	r11, printf
	lw	r2, [r10 + #0]
	addi	r3, r2, #16
	lw	r2, [r15 + #56]
	jal	r11, printf
	addi	r2, r9, #0
	jal	r11, printf
	lw	r2, [r15 + #64]
	lw	r2, [r15 + #64]
	lw	r9, [r15 + #12]
	addi	r3, r9, #0
	call	__divsi3
	addi	r8, r2, #0
	lw	r2, [r15 + #16]
	sub	r2, r8, r2
	addi	r2, r2, #9
	xor	r2, r2, r8
	lw	r3, [r15 + #20]
	lw	r4, [r15 + #48]
	xor	r3, r3, r4
	sltu	r3, r0, r3
	xori	r3, r3, #1
	lw	r4, [r15 + #44]
	sub	r3, r4, r3
	and	r2, r2, r3
	xor	r3, r8, r2
	la	r2, .L.str.30
	jal	r11, printf
	lw	r10, [r15 + #0]
	addi	r2, r10, #0
	lw	r3, [r15 + #8]
	jal	r11, printf
	lw	r2, [r15 + #64]
	sub	r2, r2, r9
	lw	r9, [r15 + #36]
	mul	r2, r2, r9
	sub	r3, r2, r8
	la	r2, .L.str.31
	jal	r11, printf
	addi	r3, r0, #13
	addi	r2, r10, #0
	jal	r11, printf
	lw	r2, [r15 + #32]
	lw	r3, [r2 + #0]
	la	r2, .L.str.32
	jal	r11, printf
	addi	r2, r10, #0
	addi	r3, r9, #0
	jal	r11, printf
	lw	r2, [r15 + #68]
	lw	r3, [r2 + #0]
	la	r2, .L.str.33
	jal	r11, printf
	addi	r2, r10, #0
	lw	r3, [r15 + #60]
	jal	r11, printf
	la	r2, .L.str.34
	addi	r3, r15, #109
	jal	r11, printf
	la	r2, .L.str.35
	jal	r11, printf
	la	r2, .L.str.36
	addi	r3, r15, #78
	jal	r11, printf
	la	r2, .L.str.37
	jal	r11, printf
	lw	r8, [r15 + #52]
	addi	r2, r8, #0
	jal	r11, printf
	la	r2, .L.str.38
	jal	r11, printf
	addi	r2, r8, #0
	jal	r11, printf
	lw	r11, [r15 + #148]
	lw	r10, [r15 + #152]
	lw	r9, [r15 + #156]
	lw	r8, [r15 + #160]
	addi	r15, r15, #164
	ret
                                        ; -- End function
	.global	Proc_1                          ; -- Begin function Proc_1
Proc_1:                                 ; @Proc_1
; %bb.0:
	addi	r15, r15, #-20
	sw	r8, [r15 + #16]
	sw	r9, [r15 + #12]
	sw	r10, [r15 + #8]
	sw	r11, [r15 + #4]
	addi	r9, r2, #0
	lw	r8, [r9 + #0]
	la	r10, Ptr_Glob
	lw	r3, [r10 + #0]
	addi	r4, r0, #48
	addi	r2, r8, #0
	call	memcpy
	addi	r2, r0, #5
	sw	r2, [r9 + #12]
	sw	r2, [r8 + #12]
	lw	r2, [r9 + #0]
	sw	r2, [r8 + #0]
	lw	r2, [r10 + #0]
	lw	r2, [r2 + #0]
	sw	r2, [r8 + #0]
	la	r2, Int_Glob
	lw	r3, [r2 + #0]
	lw	r2, [r10 + #0]
	addi	r4, r2, #12
	addi	r2, r0, #10
	jal	r11, Proc_7
	lw	r2, [r8 + #4]
	addi	r3, r0, #0
	bne	r2, r3, L_BB1_2
	b	L_BB1_1
L_BB1_2:
	lw	r3, [r9 + #0]
	addi	r4, r0, #48
	addi	r2, r9, #0
	call	memcpy
L_BB1_3:
	lw	r11, [r15 + #4]
	lw	r10, [r15 + #8]
	lw	r9, [r15 + #12]
	lw	r8, [r15 + #16]
	addi	r15, r15, #20
	ret
L_BB1_1:
	addi	r2, r8, #12
	sw	r2, [r15 + #0]
	addi	r2, r0, #6
	sw	r2, [r8 + #12]
	lw	r2, [r9 + #8]
	addi	r3, r8, #8
	jal	r11, Proc_6
	lw	r2, [r10 + #0]
	lw	r2, [r2 + #0]
	sw	r2, [r8 + #0]
	lw	r2, [r8 + #12]
	addi	r3, r0, #10
	lw	r4, [r15 + #0]
	jal	r11, Proc_7
	b	L_BB1_3
                                        ; -- End function
	.global	Proc_2                          ; -- Begin function Proc_2
Proc_2:                                 ; @Proc_2
; %bb.0:
	la	r3, Ch_1_Glob
	lbu	r3, [r3 + #0]
	addi	r4, r0, #65
	bne	r3, r4, L_BB2_2
	b	L_BB2_1
L_BB2_1:
	la	r3, Int_Glob
	lw	r3, [r3 + #0]
	lw	r4, [r2 + #0]
	sub	r3, r4, r3
	addi	r3, r3, #9
	sw	r3, [r2 + #0]
L_BB2_2:
	ret
                                        ; -- End function
	.global	Proc_3                          ; -- Begin function Proc_3
Proc_3:                                 ; @Proc_3
; %bb.0:
	addi	r15, r15, #-4
	sw	r11, [r15 + #0]
	la	r4, Ptr_Glob
	lw	r3, [r4 + #0]
	lw	r3, [r3 + #0]
	sw	r3, [r2 + #0]
	la	r2, Int_Glob
	lw	r3, [r2 + #0]
	lw	r2, [r4 + #0]
	addi	r4, r2, #12
	addi	r2, r0, #10
	jal	r11, Proc_7
	lw	r11, [r15 + #0]
	addi	r15, r15, #4
	ret
                                        ; -- End function
	.global	Proc_4                          ; -- Begin function Proc_4
Proc_4:                                 ; @Proc_4
; %bb.0:
	la	r2, Ch_2_Glob
	addi	r3, r0, #66
	sb	r3, [r2 + #0]
	la	r2, Ch_1_Glob
	lbu	r2, [r2 + #0]
	addi	r3, r0, #65
	xor	r2, r2, r3
	sltu	r2, r0, r2
	xori	r2, r2, #1
	la	r3, Bool_Glob
	lw	r4, [r3 + #0]
	or	r2, r4, r2
	sw	r2, [r3 + #0]
	ret
                                        ; -- End function
	.global	Proc_5                          ; -- Begin function Proc_5
Proc_5:                                 ; @Proc_5
; %bb.0:
	la	r2, Bool_Glob
	addi	r3, r0, #0
	sw	r3, [r2 + #0]
	la	r2, Ch_1_Glob
	addi	r3, r0, #65
	sb	r3, [r2 + #0]
	ret
                                        ; -- End function
	.data
	.global	Reg                             ; @Reg
	.p2align	2, 0x0
Reg:
	db	0                               ; 0x0
	db	0
	db	0
	db	0

	.comm	Next_Ptr_Glob,4,4               ; @Next_Ptr_Glob
	.comm	Ptr_Glob,4,4                    ; @Ptr_Glob
.L.str:                                 ; @.str
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	83
	db	79
	db	77
	db	69
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	0

.L.str.1:                               ; @.str.1
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	49
	db	39
	db	83
	db	84
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	0

	.comm	Arr_2_Glob,10000,4              ; @Arr_2_Glob
.L.str.2:                               ; @.str.2
	db	10
	db	0

.L.str.3:                               ; @.str.3
	db	68
	db	104
	db	114
	db	121
	db	115
	db	116
	db	111
	db	110
	db	101
	db	32
	db	66
	db	101
	db	110
	db	99
	db	104
	db	109
	db	97
	db	114
	db	107
	db	44
	db	32
	db	86
	db	101
	db	114
	db	115
	db	105
	db	111
	db	110
	db	32
	db	50
	db	46
	db	49
	db	32
	db	40
	db	76
	db	97
	db	110
	db	103
	db	117
	db	97
	db	103
	db	101
	db	58
	db	32
	db	67
	db	41
	db	10
	db	0

.L.str.4:                               ; @.str.4
	db	80
	db	114
	db	111
	db	103
	db	114
	db	97
	db	109
	db	32
	db	99
	db	111
	db	109
	db	112
	db	105
	db	108
	db	101
	db	100
	db	32
	db	119
	db	105
	db	116
	db	104
	db	32
	db	39
	db	114
	db	101
	db	103
	db	105
	db	115
	db	116
	db	101
	db	114
	db	39
	db	32
	db	97
	db	116
	db	116
	db	114
	db	105
	db	98
	db	117
	db	116
	db	101
	db	10
	db	0

.L.str.5:                               ; @.str.5
	db	80
	db	114
	db	111
	db	103
	db	114
	db	97
	db	109
	db	32
	db	99
	db	111
	db	109
	db	112
	db	105
	db	108
	db	101
	db	100
	db	32
	db	119
	db	105
	db	116
	db	104
	db	111
	db	117
	db	116
	db	32
	db	39
	db	114
	db	101
	db	103
	db	105
	db	115
	db	116
	db	101
	db	114
	db	39
	db	32
	db	97
	db	116
	db	116
	db	114
	db	105
	db	98
	db	117
	db	116
	db	101
	db	10
	db	0

.L.str.6:                               ; @.str.6
	db	69
	db	120
	db	101
	db	99
	db	117
	db	116
	db	105
	db	111
	db	110
	db	32
	db	115
	db	116
	db	97
	db	114
	db	116
	db	115
	db	44
	db	32
	db	37
	db	100
	db	32
	db	114
	db	117
	db	110
	db	115
	db	32
	db	116
	db	104
	db	114
	db	111
	db	117
	db	103
	db	104
	db	32
	db	68
	db	104
	db	114
	db	121
	db	115
	db	116
	db	111
	db	110
	db	101
	db	10
	db	0

	.comm	Begin_Time,4,4                  ; @Begin_Time
.L.str.7:                               ; @.str.7
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	50
	db	39
	db	78
	db	68
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	0

	.comm	Bool_Glob,4,4                   ; @Bool_Glob
	.comm	Arr_1_Glob,200,4                ; @Arr_1_Glob
	.comm	Ch_2_Glob,1,1                   ; @Ch_2_Glob
.L.str.8:                               ; @.str.8
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	51
	db	39
	db	82
	db	68
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	0

	.comm	Int_Glob,4,4                    ; @Int_Glob
	.comm	End_Time,4,4                    ; @End_Time
.L.str.9:                               ; @.str.9
	db	69
	db	120
	db	101
	db	99
	db	117
	db	116
	db	105
	db	111
	db	110
	db	32
	db	101
	db	110
	db	100
	db	115
	db	10
	db	0

.L.str.10:                              ; @.str.10
	db	70
	db	105
	db	110
	db	97
	db	108
	db	32
	db	118
	db	97
	db	108
	db	117
	db	101
	db	115
	db	32
	db	111
	db	102
	db	32
	db	116
	db	104
	db	101
	db	32
	db	118
	db	97
	db	114
	db	105
	db	97
	db	98
	db	108
	db	101
	db	115
	db	32
	db	117
	db	115
	db	101
	db	100
	db	32
	db	105
	db	110
	db	32
	db	116
	db	104
	db	101
	db	32
	db	98
	db	101
	db	110
	db	99
	db	104
	db	109
	db	97
	db	114
	db	107
	db	58
	db	10
	db	0

.L.str.11:                              ; @.str.11
	db	73
	db	110
	db	116
	db	95
	db	71
	db	108
	db	111
	db	98
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.12:                              ; @.str.12
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	37
	db	100
	db	10
	db	0

.L.str.13:                              ; @.str.13
	db	66
	db	111
	db	111
	db	108
	db	95
	db	71
	db	108
	db	111
	db	98
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.14:                              ; @.str.14
	db	67
	db	104
	db	95
	db	49
	db	95
	db	71
	db	108
	db	111
	db	98
	db	58
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
	db	37
	db	99
	db	10
	db	0

	.comm	Ch_1_Glob,1,1                   ; @Ch_1_Glob
.L.str.15:                              ; @.str.15
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	37
	db	99
	db	10
	db	0

.L.str.16:                              ; @.str.16
	db	67
	db	104
	db	95
	db	50
	db	95
	db	71
	db	108
	db	111
	db	98
	db	58
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
	db	37
	db	99
	db	10
	db	0

.L.str.17:                              ; @.str.17
	db	65
	db	114
	db	114
	db	95
	db	49
	db	95
	db	71
	db	108
	db	111
	db	98
	db	91
	db	56
	db	93
	db	58
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	37
	db	100
	db	10
	db	0

.L.str.18:                              ; @.str.18
	db	65
	db	114
	db	114
	db	95
	db	50
	db	95
	db	71
	db	108
	db	111
	db	98
	db	91
	db	56
	db	93
	db	91
	db	55
	db	93
	db	58
	db	32
	db	32
	db	32
	db	32
	db	37
	db	100
	db	10
	db	0

.L.str.19:                              ; @.str.19
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	78
	db	117
	db	109
	db	98
	db	101
	db	114
	db	95
	db	79
	db	102
	db	95
	db	82
	db	117
	db	110
	db	115
	db	32
	db	43
	db	32
	db	49
	db	48
	db	10
	db	0

.L.str.20:                              ; @.str.20
	db	80
	db	116
	db	114
	db	95
	db	71
	db	108
	db	111
	db	98
	db	45
	db	62
	db	10
	db	0

.L.str.21:                              ; @.str.21
	db	32
	db	32
	db	80
	db	116
	db	114
	db	95
	db	67
	db	111
	db	109
	db	112
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.22:                              ; @.str.22
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	40
	db	105
	db	109
	db	112
	db	108
	db	101
	db	109
	db	101
	db	110
	db	116
	db	97
	db	116
	db	105
	db	111
	db	110
	db	45
	db	100
	db	101
	db	112
	db	101
	db	110
	db	100
	db	101
	db	110
	db	116
	db	41
	db	10
	db	0

.L.str.23:                              ; @.str.23
	db	32
	db	32
	db	68
	db	105
	db	115
	db	99
	db	114
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.24:                              ; @.str.24
	db	32
	db	32
	db	69
	db	110
	db	117
	db	109
	db	95
	db	67
	db	111
	db	109
	db	112
	db	58
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	37
	db	100
	db	10
	db	0

.L.str.25:                              ; @.str.25
	db	32
	db	32
	db	73
	db	110
	db	116
	db	95
	db	67
	db	111
	db	109
	db	112
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.26:                              ; @.str.26
	db	32
	db	32
	db	83
	db	116
	db	114
	db	95
	db	67
	db	111
	db	109
	db	112
	db	58
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
	db	37
	db	115
	db	10
	db	0

.L.str.27:                              ; @.str.27
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	83
	db	79
	db	77
	db	69
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	10
	db	0

.L.str.28:                              ; @.str.28
	db	78
	db	101
	db	120
	db	116
	db	95
	db	80
	db	116
	db	114
	db	95
	db	71
	db	108
	db	111
	db	98
	db	45
	db	62
	db	10
	db	0

.L.str.29:                              ; @.str.29
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	40
	db	105
	db	109
	db	112
	db	108
	db	101
	db	109
	db	101
	db	110
	db	116
	db	97
	db	116
	db	105
	db	111
	db	110
	db	45
	db	100
	db	101
	db	112
	db	101
	db	110
	db	100
	db	101
	db	110
	db	116
	db	41
	db	44
	db	32
	db	115
	db	97
	db	109
	db	101
	db	32
	db	97
	db	115
	db	32
	db	97
	db	98
	db	111
	db	118
	db	101
	db	10
	db	0

.L.str.30:                              ; @.str.30
	db	73
	db	110
	db	116
	db	95
	db	49
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.31:                              ; @.str.31
	db	73
	db	110
	db	116
	db	95
	db	50
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.32:                              ; @.str.32
	db	73
	db	110
	db	116
	db	95
	db	51
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.33:                              ; @.str.33
	db	69
	db	110
	db	117
	db	109
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	100
	db	10
	db	0

.L.str.34:                              ; @.str.34
	db	83
	db	116
	db	114
	db	95
	db	49
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	115
	db	10
	db	0

.L.str.35:                              ; @.str.35
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	49
	db	39
	db	83
	db	84
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	10
	db	0

.L.str.36:                              ; @.str.36
	db	83
	db	116
	db	114
	db	95
	db	50
	db	95
	db	76
	db	111
	db	99
	db	58
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
	db	37
	db	115
	db	10
	db	0

.L.str.37:                              ; @.str.37
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	115
	db	104
	db	111
	db	117
	db	108
	db	100
	db	32
	db	98
	db	101
	db	58
	db	32
	db	32
	db	32
	db	68
	db	72
	db	82
	db	89
	db	83
	db	84
	db	79
	db	78
	db	69
	db	32
	db	80
	db	82
	db	79
	db	71
	db	82
	db	65
	db	77
	db	44
	db	32
	db	50
	db	39
	db	78
	db	68
	db	32
	db	83
	db	84
	db	82
	db	73
	db	78
	db	71
	db	10
	db	0

.L.str.38:                              ; @.str.38
	db	84
	db	105
	db	109
	db	105
	db	110
	db	103
	db	32
	db	115
	db	117
	db	109
	db	109
	db	97
	db	114
	db	121
	db	32
	db	100
	db	105
	db	115
	db	97
	db	98
	db	108
	db	101
	db	100
	db	32
	db	40
	db	68
	db	72
	db	82
	db	89
	db	95
	db	78
	db	79
	db	95
	db	84
	db	73
	db	77
	db	73
	db	78
	db	71
	db	41
	db	10
	db	0

	.comm	User_Time,4,4                   ; @User_Time
	.comm	Microseconds,4,4                ; @Microseconds
	.comm	Dhrystones_Per_Second,4,4       ; @Dhrystones_Per_Second
	.section	".note.GNU-stack","",@progbits
