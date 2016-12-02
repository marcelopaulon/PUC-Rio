	.file	"out.txt"
	.text
	.globl	vagner
	.align	16, 0x90
	.type	vagner,@function
vagner:                                 # @vagner
	.cfi_startproc
# BB#0:
	movl	$56, -4(%rsp)
	movl	$56, %eax
	ret
.Ltmp0:
	.size	vagner, .Ltmp0-vagner
	.cfi_endproc

	.globl	a
	.align	16, 0x90
	.type	a,@function
a:                                      # @a
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 32
	movl	$1, 12(%rsp)
	movl	$1, 20(%rsp)
	movl	$10, 8(%rsp)
	movl	$10, 16(%rsp)
	cmpl	$9, 20(%rsp)
	jg	.LBB1_2
# BB#1:                                 # %l2
	callq	vagner
	addq	$24, %rsp
	ret
.LBB1_2:                                # %l1
	movl	20(%rsp), %eax
	addq	$24, %rsp
	ret
.Ltmp3:
	.size	a, .Ltmp3-a
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
