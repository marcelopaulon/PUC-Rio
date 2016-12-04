	.file	"out.txt"
	.text
	.globl	changeGlobal
	.align	16, 0x90
	.type	changeGlobal,@function
changeGlobal:                           # @changeGlobal
	.cfi_startproc
# BB#0:
	movl	$1058642330, -4(%rsp)   # imm = 0x3F19999A
	movl	$1058642330, t1(%rip)   # imm = 0x3F19999A
	movl	$5, -8(%rsp)
	movl	$5, t2(%rip)
	movl	$0, -12(%rsp)
	xorl	%eax, %eax
	ret
.Ltmp0:
	.size	changeGlobal, .Ltmp0-changeGlobal
	.cfi_endproc

	.globl	b
	.align	16, 0x90
	.type	b,@function
b:                                      # @b
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movl	$2, 4(%rsp)
	movl	$1073741824, t1(%rip)   # imm = 0x40000000
	movl	$2, (%rsp)
	movl	$2, t2(%rip)
	callq	changeGlobal
	vcvtsi2ssl	t2(%rip), %xmm0, %xmm0
	vaddss	t1(%rip), %xmm0, %xmm0
	popq	%rax
	ret
.Ltmp3:
	.size	b, .Ltmp3-b
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
.Ltmp4:
	.size	a, .Ltmp4-a
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
.Ltmp5:
	.size	c, .Ltmp5-c
	.cfi_endproc

	.type	t1,@object              # @t1
	.comm	t1,4,4
	.type	t2,@object              # @t2
	.comm	t2,4,4

	.section	".note.GNU-stack","",@progbits
