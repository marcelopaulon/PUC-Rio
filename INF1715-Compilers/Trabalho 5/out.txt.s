	.file	"out.txt"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1073741824              # float 2
	.text
	.globl	b
	.align	16, 0x90
	.type	b,@function
b:                                      # @b
	.cfi_startproc
# BB#0:
	movl	$1073741824, -16(%rsp)  # imm = 0x40000000
	vmovss	-16(%rsp), %xmm0
	vmovss	%xmm0, -4(%rsp)
	movl	$1, -20(%rsp)
	movl	$1, -8(%rsp)
	vmovss	-4(%rsp), %xmm0
	movl	$1065353216, -24(%rsp)  # imm = 0x3F800000
	vaddss	-24(%rsp), %xmm0, %xmm0
	movl	$1, -28(%rsp)
	vaddss	.LCPI0_0(%rip), %xmm0, %xmm0
	movl	-8(%rsp), %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm1
	movl	$1073741824, -32(%rsp)  # imm = 0x40000000
	vdivss	.LCPI0_1(%rip), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -12(%rsp)
	ret
.Ltmp0:
	.size	b, .Ltmp0-b
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
.Ltmp1:
	.size	a, .Ltmp1-a
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
