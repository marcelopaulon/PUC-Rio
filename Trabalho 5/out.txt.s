	.file	"out.txt"
	.text
	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
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
	movl	$1, -8(%rbp)
	movl	$1, -4(%rbp)
	movl	$1, -12(%rbp)
	movl	$2, -16(%rbp)
	movb	$1, %al
	testb	%al, %al
	je	.LBB0_1
# BB#2:                                 # %l2
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	cmpl	$7, -4(%rbp)
	movl	$7, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	jne	.LBB0_4
# BB#3:                                 # %l4
	movl	$0, -16(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_1:                                # %l1
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	movl	$2, -16(%rax)
	movl	$2, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %l5
	movl	$7, -16(%rax)
	movl	$7, -4(%rbp)
.LBB0_5:                                # %l3
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	a, .Ltmp5-a
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
.Ltmp6:
	.size	b, .Ltmp6-b
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
.Ltmp7:
	.size	c, .Ltmp7-c
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
