	.file	"test.ll"
	.text
	.globl	main                            # -- Begin function main
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	r2, r0, 42
	jalr	r0, r11, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
