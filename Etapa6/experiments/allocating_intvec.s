	.file	"allocating_intvec.c"
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 8
a:
	.long	2
	.long	2
	.comm	b,8,4
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a+4(%rip), %edx
	movl	b(%rip), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
