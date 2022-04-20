本文件的生成方法：
gcc  movsz.c  -c -g
objdump -S movsz.o > movsz.ss

movsz.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	89 7d ec             	mov    %edi,-0x14(%rbp)
   b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	int n;
	unsigned int un;
	char c1 = 'a';
   f:	c6 45 f6 61          	movb   $0x61,-0xa(%rbp)
	unsigned char c2 = 'b';
  13:	c6 45 f7 62          	movb   $0x62,-0x9(%rbp)

	n = c1;
  17:	0f be 45 f6          	movsbl -0xa(%rbp),%eax
  1b:	89 45 f8             	mov    %eax,-0x8(%rbp)
	un = c1;
  1e:	0f be 45 f6          	movsbl -0xa(%rbp),%eax
  22:	89 45 fc             	mov    %eax,-0x4(%rbp)
	n = c2;
  25:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  29:	89 45 f8             	mov    %eax,-0x8(%rbp)
	un = c2;
  2c:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
  30:	89 45 fc             	mov    %eax,-0x4(%rbp)

	return 0;
  33:	b8 00 00 00 00       	mov    $0x0,%eax
}
  38:	5d                   	pop    %rbp
  39:	c3                   	retq   
