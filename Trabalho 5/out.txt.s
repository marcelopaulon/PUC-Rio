	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$6, -4(%rsp)
	movl	$10, -8(%rsp)
	movl	$5, -12(%rsp)
	movl	$56, %eax
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
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

	.globl	c
	.align	16, 0x90
	.type	c,@function
c:                                      # @c
	.cfi_startproc
# BB#0:
	movb	$86, -1(%rsp)
	movb	$86, %al
	ret
.Ltmp2:
	.size	c, .Ltmp2-c
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
