	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$55, -12(%rsp)
	movl	$55, -4(%rsp)
	movl	$2, -16(%rsp)
	movl	$2, -8(%rsp)
	movl	-4(%rsp), %eax
	addl	$-2, %eax
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
