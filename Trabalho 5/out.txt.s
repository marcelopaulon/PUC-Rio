	.file	"out.txt"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1073741824              # float 2
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	movl	$1065353216, -8(%rsp)   # imm = 0x3F800000
	movl	$1065353216, -4(%rsp)   # imm = 0x3F800000
	movl	$1113325568, -20(%rsp)  # imm = 0x425C0000
	movl	$1113325568, -12(%rsp)  # imm = 0x425C0000
	movl	$1073741824, -24(%rsp)  # imm = 0x40000000
	movl	$1073741824, -16(%rsp)  # imm = 0x40000000
	vmovss	-12(%rsp), %xmm0
	vdivss	.LCPI0_0(%rip), %xmm0, %xmm0
	ret
.Ltmp0:
	.size	a, .Ltmp0-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
