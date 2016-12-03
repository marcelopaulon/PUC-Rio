	.file	"output.txt"
	.text
	.globl	b
	.align	16, 0x90
	.type	b,@function
b:                                      # @b
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_2
# BB#1:                                 # %l2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$1065353216, -16(%rax)  # imm = 0x3F800000
	movl	$-1082130432, -4(%rbp)  # imm = 0xFFFFFFFFBF800000
.LBB0_2:                                # %l1
	vmovss	-4(%rbp), %xmm0
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# BB#3:                                 # %l4
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$1065353216, -16(%rax)  # imm = 0x3F800000
	movl	$1065353216, -4(%rbp)   # imm = 0x3F800000
.LBB0_4:                                # %l3
	vmovss	-4(%rbp), %xmm0
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	b, .Ltmp5-b
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
.Ltmp6:
	.size	a, .Ltmp6-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
