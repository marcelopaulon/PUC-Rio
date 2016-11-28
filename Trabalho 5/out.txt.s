	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$1067450368, -12(%rsp)  # imm = 0x3FA00000
	movl	$1067450368, -4(%rsp)   # imm = 0x3FA00000
	movl	$2, -16(%rsp)
	movl	$2, -8(%rsp)
	vmovss	-4(%rsp), %xmm0
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
