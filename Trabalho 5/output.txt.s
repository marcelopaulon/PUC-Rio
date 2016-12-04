	.file	"output.txt"
	.text
	.globl	c
	.align	16, 0x90
	.type	c,@function
c:                                      # @c
	.cfi_startproc
# BB#0:
	movb	$118, -1(%rsp)
	movb	$118, %al
	ret
.Ltmp0:
	.size	c, .Ltmp0-c
	.cfi_endproc

	.globl	b
	.align	16, 0x90
	.type	b,@function
b:                                      # @b
	.cfi_startproc
# BB#0:
	movl	$0, -4(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	ret
.Ltmp1:
	.size	b, .Ltmp1-b
	.cfi_endproc

	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$0, -4(%rsp)
	xorl	%eax, %eax
	ret
.Ltmp2:
	.size	a, .Ltmp2-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
