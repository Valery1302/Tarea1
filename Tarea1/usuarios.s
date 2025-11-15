	.file	"usuarios.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"vendedores.txt"
	.align 8
.LC2:
	.string	"No se encontr\303\263 vendedores.txt"
.LC3:
	.string	"Usuario: "
.LC4:
	.string	"%s"
.LC5:
	.string	"Clave: "
.LC6:
	.string	"Bienvenido %s\n"
.LC7:
	.string	"%[^,],%[^,],%[^\n]\n"
	.align 8
.LC8:
	.string	"Usuario o clave incorrecta (%d/3)\n"
	.text
	.globl	validarUsuario
	.type	validarUsuario, @function
validarUsuario:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L11
.L2:
	movl	$0, -352(%rbp)
	jmp	.L4
.L10:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$0, -348(%rbp)
	jmp	.L5
.L8:
	leaq	-336(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	leaq	-336(%rbp), %rax
	leaq	50(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	leaq	-336(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -348(%rbp)
	jmp	.L7
.L5:
	leaq	-336(%rbp), %rax
	leaq	100(%rax), %rsi
	leaq	-336(%rbp), %rax
	leaq	50(%rax), %rcx
	leaq	-336(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	cmpl	$-1, %eax
	jne	.L8
.L7:
	cmpl	$0, -348(%rbp)
	je	.L9
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L11
.L9:
	addl	$1, -352(%rbp)
	movl	-352(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	cmpl	$2, -352(%rbp)
	jle	.L10
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L11:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	validarUsuario, .-validarUsuario
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
