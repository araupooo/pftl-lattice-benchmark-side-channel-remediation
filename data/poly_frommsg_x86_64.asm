
<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/compress.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tobytes:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frombytes:

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 54                	push   %r12
   6:	48 89 f1             	mov    %rsi,%rcx
   9:	48 89 fa             	mov    %rdi,%rdx
   c:	4c 8d a7 00 02 00 00 	lea    0x200(%rdi),%r12
  13:	55                   	push   %rbp
  14:	41 bb 04 00 00 00    	mov    $0x4,%r11d
  1a:	bd 01 00 00 00       	mov    $0x1,%ebp
  1f:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  25:	53                   	push   %rbx
  26:	41 b9 10 00 00 00    	mov    $0x10,%r9d
  2c:	bb 02 00 00 00       	mov    $0x2,%ebx
  31:	41 b8 20 00 00 00    	mov    $0x20,%r8d
  37:	bf 40 00 00 00       	mov    $0x40,%edi
  3c:	be 80 ff ff ff       	mov    $0xffffff80,%esi
  41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  48:	89 e8                	mov    %ebp,%eax
  4a:	22 01                	and    (%rcx),%al
  4c:	0f b6 c0             	movzbl %al,%eax
  4f:	f7 d8                	neg    %eax
  51:	c1 f8 10             	sar    $0x10,%eax
  54:	66 25 81 06          	and    $0x681,%ax
  58:	66 89 02             	mov    %ax,(%rdx)
  5b:	89 d8                	mov    %ebx,%eax
  5d:	22 01                	and    (%rcx),%al
  5f:	0f b6 c0             	movzbl %al,%eax
  62:	f7 d8                	neg    %eax
  64:	c1 f8 10             	sar    $0x10,%eax
  67:	66 25 81 06          	and    $0x681,%ax
  6b:	66 89 42 02          	mov    %ax,0x2(%rdx)
  6f:	44 89 d8             	mov    %r11d,%eax
  72:	22 01                	and    (%rcx),%al
  74:	0f b6 c0             	movzbl %al,%eax
  77:	f7 d8                	neg    %eax
  79:	c1 f8 10             	sar    $0x10,%eax
  7c:	66 25 81 06          	and    $0x681,%ax
  80:	66 89 42 04          	mov    %ax,0x4(%rdx)
  84:	44 89 d0             	mov    %r10d,%eax
  87:	22 01                	and    (%rcx),%al
  89:	0f b6 c0             	movzbl %al,%eax
  8c:	f7 d8                	neg    %eax
  8e:	c1 f8 10             	sar    $0x10,%eax
  91:	66 25 81 06          	and    $0x681,%ax
  95:	66 89 42 06          	mov    %ax,0x6(%rdx)
  99:	44 89 c8             	mov    %r9d,%eax
  9c:	22 01                	and    (%rcx),%al
  9e:	0f b6 c0             	movzbl %al,%eax
  a1:	f7 d8                	neg    %eax
  a3:	c1 f8 10             	sar    $0x10,%eax
  a6:	66 25 81 06          	and    $0x681,%ax
  aa:	66 89 42 08          	mov    %ax,0x8(%rdx)
  ae:	44 89 c0             	mov    %r8d,%eax
  b1:	22 01                	and    (%rcx),%al
  b3:	0f b6 c0             	movzbl %al,%eax
  b6:	f7 d8                	neg    %eax
  b8:	c1 f8 10             	sar    $0x10,%eax
  bb:	66 25 81 06          	and    $0x681,%ax
  bf:	66 89 42 0a          	mov    %ax,0xa(%rdx)
  c3:	89 f8                	mov    %edi,%eax
  c5:	22 01                	and    (%rcx),%al
  c7:	0f b6 c0             	movzbl %al,%eax
  ca:	f7 d8                	neg    %eax
  cc:	c1 f8 10             	sar    $0x10,%eax
  cf:	66 25 81 06          	and    $0x681,%ax
  d3:	66 89 42 0c          	mov    %ax,0xc(%rdx)
  d7:	89 f0                	mov    %esi,%eax
  d9:	22 01                	and    (%rcx),%al
  db:	0f b6 c0             	movzbl %al,%eax
  de:	f7 d8                	neg    %eax
  e0:	c1 f8 10             	sar    $0x10,%eax
  e3:	48 83 c2 10          	add    $0x10,%rdx
  e7:	48 83 c1 01          	add    $0x1,%rcx
  eb:	66 25 81 06          	and    $0x681,%ax
  ef:	66 89 42 fe          	mov    %ax,-0x2(%rdx)
  f3:	49 39 d4             	cmp    %rdx,%r12
  f6:	0f 85 4c ff ff ff    	jne    48 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frommsg+0x48>
  fc:	5b                   	pop    %rbx
  fd:	5d                   	pop    %rbp
  fe:	41 5c                	pop    %r12
 100:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg:
