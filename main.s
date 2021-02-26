	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Type a number: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "\12%d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movb	$10, 31(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	31(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movzbl	31(%esp), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	leave
	ret
	.ident	"GCC: (tdm-1) 4.9.2"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
