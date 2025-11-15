
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
   f:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  14:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  1b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  20:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2e:	00 00 
  30:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  34:	31 c0                	xor    %eax,%eax
  36:	b8 00 00 00 00       	mov    $0x0,%eax
  3b:	e8 00 00 00 00       	call   40 <main+0x40>
  40:	85 c0                	test   %eax,%eax
  42:	75 16                	jne    5a <main+0x5a>
  44:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4b <main+0x4b>
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	call   53 <main+0x53>
  53:	b8 00 00 00 00       	mov    $0x0,%eax
  58:	eb 4e                	jmp    a8 <main+0xa8>
  5a:	c7 85 1c df ff ff 00 	movl   $0x0,-0x20e4(%rbp)
  61:	00 00 00 
  64:	48 8d 95 1c df ff ff 	lea    -0x20e4(%rbp),%rdx
  6b:	48 8d 85 20 df ff ff 	lea    -0x20e0(%rbp),%rax
  72:	48 89 d6             	mov    %rdx,%rsi
  75:	48 89 c7             	mov    %rax,%rdi
  78:	e8 00 00 00 00       	call   7d <main+0x7d>
  7d:	8b 95 1c df ff ff    	mov    -0x20e4(%rbp),%edx
  83:	48 8d 85 20 df ff ff 	lea    -0x20e0(%rbp),%rax
  8a:	89 d6                	mov    %edx,%esi
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	call   94 <main+0x94>
  94:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 9b <main+0x9b>
  9b:	48 89 c7             	mov    %rax,%rdi
  9e:	e8 00 00 00 00       	call   a3 <main+0xa3>
  a3:	b8 00 00 00 00       	mov    $0x0,%eax
  a8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  ac:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  b3:	00 00 
  b5:	74 05                	je     bc <main+0xbc>
  b7:	e8 00 00 00 00       	call   bc <main+0xbc>
  bc:	c9                   	leave
  bd:	c3                   	ret
