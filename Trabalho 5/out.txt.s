	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$1, -8(%rsp)
	movl	$1, -4(%rsp)
	movl	$55, -20(%rsp)
	movl	$55, -12(%rsp)
	movl	$2, -24(%rsp)
	movl	$2, -16(%rsp)
	movl	-12(%rsp), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
