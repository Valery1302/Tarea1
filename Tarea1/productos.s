	.file	"productos.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"producto.txt"
.LC2:
	.string	"No se encontr\303\263 producto.txt"
.LC3:
	.string	"%[^,],%[^,],%d,%f,%f\n"
	.text
	.globl	cargarProductos
	.type	cargarProductos, @function
cargarProductos:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -8(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L1
.L5:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	80(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	76(%rax), %r8
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	72(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	20(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	addq	$16, %rsp
	cmpl	$-1, %eax
	jne	.L5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cargarProductos, .-cargarProductos
	.section	.rodata
.LC4:
	.string	"w"
.LC5:
	.string	"%s,%s,%d,%.2f,%.2f\n"
	.text
	.globl	guardarProductos
	.type	guardarProductos, @function
guardarProductos:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	80(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	76(%rax), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	72(%rax), %edi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	20(%rax), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%edi, %r8d
	movq	%rsi, %rcx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L7:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	guardarProductos, .-guardarProductos
	.section	.rodata
.LC6:
	.string	"a+"
.LC7:
	.string	"ventas.txt"
.LC8:
	.string	"%d,"
.LC9:
	.string	"%Y-%m-%d"
.LC10:
	.string	"\nC\303\263digo producto: "
.LC11:
	.string	"%s"
.LC12:
	.string	"Cantidad a vender: "
.LC13:
	.string	"%d"
.LC14:
	.string	"%s x%d = %.2f\n"
.LC15:
	.string	"%d,%s,%s,%d,%.2f,%.2f,%s\n"
.LC16:
	.string	"No hay suficiente inventario."
.LC17:
	.string	"Producto no encontrado."
	.align 8
.LC18:
	.string	"\302\277Registrar otro producto? (1=S\303\255, 0=No): "
	.text
	.globl	registrarVenta
	.type	registrarVenta, @function
registrarVenta:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -272(%rbp)
	movl	$1, -304(%rbp)
	jmp	.L10
.L11:
	leaq	-304(%rbp), %rdx
	leaq	-208(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
.L10:
	movq	-272(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L11
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -280(%rbp)
	leaq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-251(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC9(%rip), %rdx
	movl	$11, %esi
	movq	%rax, %rdi
	call	strftime@PLT
	movl	$1, -300(%rbp)
	jmp	.L12
.L18:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-296(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	jmp	.L13
.L16:
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$1, -292(%rbp)
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movl	72(%rax), %edx
	movl	-296(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L15
	movl	-296(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movss	80(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -284(%rbp)
	pxor	%xmm2, %xmm2
	cvtss2sd	-284(%rbp), %xmm2
	movq	%xmm2, %rsi
	movl	-296(%rbp), %ecx
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	addq	$20, %rax
	movq	%rsi, %xmm0
	movl	%ecx, %edx
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movl	72(%rax), %esi
	movl	-296(%rbp), %ecx
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	subl	%ecx, %esi
	movl	%esi, %edx
	movl	%edx, 72(%rax)
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movss	80(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movss	76(%rax), %xmm1
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	movq	%xmm3, %rcx
	movl	-296(%rbp), %edi
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	leaq	20(%rax), %r8
	movl	-288(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %r10
	movl	-304(%rbp), %edx
	movq	-272(%rbp), %rax
	subq	$8, %rsp
	leaq	-251(%rbp), %rsi
	pushq	%rsi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%edi, %r9d
	movq	%r10, %rcx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L14
.L15:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L14:
	addl	$1, -288(%rbp)
.L13:
	movl	-288(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jl	.L16
	cmpl	$0, -292(%rbp)
	jne	.L17
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L17:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-300(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L12:
	movl	-300(%rbp), %eax
	testl	%eax, %eax
	jne	.L18
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-316(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	guardarProductos
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	registrarVenta, .-registrarVenta
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
