	.file	"out.txt"
	.text
	.globl	fat
	.align	16, 0x90
	.type	fat,@function
fat:                                    # @fat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movl	$0, -12(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, %rsp
	testl	%ebx, %ebx
	jne	.LBB0_3
# BB#1:                                 # %l2
	movl	$1, -16(%rax)
	movl	$1, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %l1
	movl	$1, -16(%rax)
	leal	-1(%rbx), %edi
	callq	fat
	imull	%ebx, %eax
.LBB0_2:                                # %l2
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	fat, .Ltmp7-fat
	.cfi_endproc

	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 16
	movl	$6, 4(%rsp)
	movl	$6, %edi
	callq	fat
	popq	%rdx
	ret
.Ltmp10:
	.size	a, .Ltmp10-a
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
.Ltmp11:
	.size	b, .Ltmp11-b
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
