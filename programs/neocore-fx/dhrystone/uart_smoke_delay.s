	.text
	.global	_start
_start:
	li	r15, #0x0000FFFC

	li	r2, #0x4000000C
	li	r3, #0x00000003
	sw	r3, [r2 + #0]

	li	r2, #0x40000010
	li	r3, #27
	sw	r3, [r2 + #0]

	li	r2, #0x40000008
	li	r3, #0x0000000C
	sw	r3, [r2 + #0]

	li	r2, #0x40000000

	li	r3, #85
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #65
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #82
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #84
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #32
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #79
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #75
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #13
	sw	r3, [r2 + #0]
	jal	r11, delay
	li	r3, #10
	sw	r3, [r2 + #0]

	halt

delay:
	li	r6, #2000
L_delay:
	addi	r6, r6, #-1
	blt	r0, r6, L_delay
	ret
