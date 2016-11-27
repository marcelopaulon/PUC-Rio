	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$1, -4(%rsp)
	movl	$1, %eax
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
