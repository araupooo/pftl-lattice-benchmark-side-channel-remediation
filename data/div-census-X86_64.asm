
<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/compress.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tobytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tobytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	e9 00 00 00 00       	jmp    9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tobytes+0x9>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frombytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frombytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	e9 00 00 00 00       	jmp    9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_frombytes+0x9>

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

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 86 00 02 00 00 	lea    0x200(%rsi),%r8
   b:	48 89 f0             	mov    %rsi,%rax
   e:	4c 39 c7             	cmp    %r8,%rdi
  11:	73 0d                	jae    20 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg+0x20>
  13:	48 8d 57 20          	lea    0x20(%rdi),%rdx
  17:	48 39 d6             	cmp    %rdx,%rsi
  1a:	0f 82 18 0a 00 00    	jb     a38 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg+0xa38>
  20:	55                   	push   %rbp
  21:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  25:	ba ff ff 00 00       	mov    $0xffff,%edx
  2a:	48 89 e5             	mov    %rsp,%rbp
  2d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  31:	48 83 ec 08          	sub    $0x8,%rsp
  35:	c5 fe 7f 07          	vmovdqu %ymm0,(%rdi)
  39:	c5 f9 6e c2          	vmovd  %edx,%xmm0
  3d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  42:	c5 fd 6f 30          	vmovdqa (%rax),%ymm6
  46:	c5 fd db 48 20       	vpand  0x20(%rax),%ymm0,%ymm1
  4b:	c5 fd db 20          	vpand  (%rax),%ymm0,%ymm4
  4f:	c5 fd 6f 58 60       	vmovdqa 0x60(%rax),%ymm3
  54:	c5 fd 6f 78 40       	vmovdqa 0x40(%rax),%ymm7
  59:	c5 fd 6f a8 a0 00 00 	vmovdqa 0xa0(%rax),%ymm5
  60:	00 
  61:	c4 e2 5d 2b e1       	vpackusdw %ymm1,%ymm4,%ymm4
  66:	c5 f5 72 d6 10       	vpsrld $0x10,%ymm6,%ymm1
  6b:	c5 fd 6f 70 20       	vmovdqa 0x20(%rax),%ymm6
  70:	c5 7d db 90 c0 00 00 	vpand  0xc0(%rax),%ymm0,%ymm10
  77:	00 
  78:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
  7d:	c5 d5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm5
  82:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
  88:	c5 7d 6f a8 20 01 00 	vmovdqa 0x120(%rax),%ymm13
  8f:	00 
  90:	c5 ed 72 d6 10       	vpsrld $0x10,%ymm6,%ymm2
  95:	c5 fd db 70 40       	vpand  0x40(%rax),%ymm0,%ymm6
  9a:	c5 7d 6f b0 60 01 00 	vmovdqa 0x160(%rax),%ymm14
  a1:	00 
  a2:	c4 e2 75 2b ca       	vpackusdw %ymm2,%ymm1,%ymm1
  a7:	c5 fd db 50 60       	vpand  0x60(%rax),%ymm0,%ymm2
  ac:	c4 e3 fd 00 c9 d8    	vpermq $0xd8,%ymm1,%ymm1
  b2:	c4 e2 4d 2b f2       	vpackusdw %ymm2,%ymm6,%ymm6
  b7:	c5 ed 72 d3 10       	vpsrld $0x10,%ymm3,%ymm2
  bc:	c5 fd db 98 80 00 00 	vpand  0x80(%rax),%ymm0,%ymm3
  c3:	00 
  c4:	c4 e2 45 2b fa       	vpackusdw %ymm2,%ymm7,%ymm7
  c9:	c5 fd db 90 a0 00 00 	vpand  0xa0(%rax),%ymm0,%ymm2
  d0:	00 
  d1:	c4 e3 fd 00 f6 d8    	vpermq $0xd8,%ymm6,%ymm6
  d7:	c5 7d db c6          	vpand  %ymm6,%ymm0,%ymm8
  db:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
  e0:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
  e6:	c4 e2 65 2b da       	vpackusdw %ymm2,%ymm3,%ymm3
  eb:	c5 fd 6f 90 80 00 00 	vmovdqa 0x80(%rax),%ymm2
  f2:	00 
  f3:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
  f9:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
  fe:	c4 e2 6d 2b d5       	vpackusdw %ymm5,%ymm2,%ymm2
 103:	c5 fd db a8 e0 00 00 	vpand  0xe0(%rax),%ymm0,%ymm5
 10a:	00 
 10b:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 111:	c4 62 2d 2b d5       	vpackusdw %ymm5,%ymm10,%ymm10
 116:	c5 fd 6f a8 c0 00 00 	vmovdqa 0xc0(%rax),%ymm5
 11d:	00 
 11e:	c4 43 fd 00 d2 d8    	vpermq $0xd8,%ymm10,%ymm10
 124:	c5 b5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm9
 129:	c5 fd 6f a8 e0 00 00 	vmovdqa 0xe0(%rax),%ymm5
 130:	00 
 131:	c5 d5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm5
 136:	c4 62 35 2b cd       	vpackusdw %ymm5,%ymm9,%ymm9
 13b:	c5 fd db ec          	vpand  %ymm4,%ymm0,%ymm5
 13f:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 144:	c4 c2 55 2b e8       	vpackusdw %ymm8,%ymm5,%ymm5
 149:	c5 7d db c3          	vpand  %ymm3,%ymm0,%ymm8
 14d:	c4 e2 5d 2b e6       	vpackusdw %ymm6,%ymm4,%ymm4
 152:	c4 c1 7d db f2       	vpand  %ymm10,%ymm0,%ymm6
 157:	c4 43 fd 00 c9 d8    	vpermq $0xd8,%ymm9,%ymm9
 15d:	c4 62 3d 2b c6       	vpackusdw %ymm6,%ymm8,%ymm8
 162:	c4 c1 2d 72 d2 10    	vpsrld $0x10,%ymm10,%ymm10
 168:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 16e:	c5 cd 72 d3 10       	vpsrld $0x10,%ymm3,%ymm6
 173:	c5 fd db d9          	vpand  %ymm1,%ymm0,%ymm3
 177:	c4 43 fd 00 c0 d8    	vpermq $0xd8,%ymm8,%ymm8
 17d:	c4 c2 4d 2b f2       	vpackusdw %ymm10,%ymm6,%ymm6
 182:	c5 f5 72 d1 10       	vpsrld $0x10,%ymm1,%ymm1
 187:	c5 7d db d7          	vpand  %ymm7,%ymm0,%ymm10
 18b:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 190:	c4 c2 65 2b da       	vpackusdw %ymm10,%ymm3,%ymm3
 195:	c4 41 7d db d1       	vpand  %ymm9,%ymm0,%ymm10
 19a:	c4 e2 75 2b cf       	vpackusdw %ymm7,%ymm1,%ymm1
 19f:	c4 c1 35 72 d1 10    	vpsrld $0x10,%ymm9,%ymm9
 1a5:	c5 fd db fa          	vpand  %ymm2,%ymm0,%ymm7
 1a9:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
 1ae:	c4 c2 45 2b fa       	vpackusdw %ymm10,%ymm7,%ymm7
 1b3:	c4 41 7d db d0       	vpand  %ymm8,%ymm0,%ymm10
 1b8:	c4 c2 6d 2b d1       	vpackusdw %ymm9,%ymm2,%ymm2
 1bd:	c5 7d db cd          	vpand  %ymm5,%ymm0,%ymm9
 1c1:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 1c7:	c4 42 35 2b ca       	vpackusdw %ymm10,%ymm9,%ymm9
 1cc:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 1d2:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 1d8:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 1de:	c5 d5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm5
 1e3:	c4 43 fd 00 f9 d8    	vpermq $0xd8,%ymm9,%ymm15
 1e9:	c4 e3 fd 00 f6 d8    	vpermq $0xd8,%ymm6,%ymm6
 1ef:	c5 7d db cb          	vpand  %ymm3,%ymm0,%ymm9
 1f3:	c4 c2 55 2b e8       	vpackusdw %ymm8,%ymm5,%ymm5
 1f8:	c5 7d 7f 7c 24 e8    	vmovdqa %ymm15,-0x18(%rsp)
 1fe:	c5 7d db c7          	vpand  %ymm7,%ymm0,%ymm8
 202:	c5 e5 72 d3 10       	vpsrld $0x10,%ymm3,%ymm3
 207:	c4 e3 fd 00 c9 d8    	vpermq $0xd8,%ymm1,%ymm1
 20d:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 212:	c4 42 35 2b c8       	vpackusdw %ymm8,%ymm9,%ymm9
 217:	c5 7d db c4          	vpand  %ymm4,%ymm0,%ymm8
 21b:	c4 e2 65 2b df       	vpackusdw %ymm7,%ymm3,%ymm3
 220:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 225:	c5 fd db fe          	vpand  %ymm6,%ymm0,%ymm7
 229:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 22e:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 234:	c5 7d db d1          	vpand  %ymm1,%ymm0,%ymm10
 238:	c4 e2 5d 2b e6       	vpackusdw %ymm6,%ymm4,%ymm4
 23d:	c4 62 3d 2b c7       	vpackusdw %ymm7,%ymm8,%ymm8
 242:	c4 41 7d db fd       	vpand  %ymm13,%ymm0,%ymm15
 247:	c5 fd 6f b0 80 01 00 	vmovdqa 0x180(%rax),%ymm6
 24e:	00 
 24f:	c4 e3 fd 00 fc d8    	vpermq $0xd8,%ymm4,%ymm7
 255:	c5 f5 72 d1 10       	vpsrld $0x10,%ymm1,%ymm1
 25a:	c5 fd db e2          	vpand  %ymm2,%ymm0,%ymm4
 25e:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
 263:	c5 fd 7f 7c 24 c8    	vmovdqa %ymm7,-0x38(%rsp)
 269:	c4 c1 15 72 d5 10    	vpsrld $0x10,%ymm13,%ymm13
 26f:	c5 fd 6f b8 00 01 00 	vmovdqa 0x100(%rax),%ymm7
 276:	00 
 277:	c4 e2 75 2b ca       	vpackusdw %ymm2,%ymm1,%ymm1
 27c:	c4 62 2d 2b d4       	vpackusdw %ymm4,%ymm10,%ymm10
 281:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 287:	c4 e3 fd 00 d1 d8    	vpermq $0xd8,%ymm1,%ymm2
 28d:	c5 fd db cf          	vpand  %ymm7,%ymm0,%ymm1
 291:	c4 43 fd 00 d2 d8    	vpermq $0xd8,%ymm10,%ymm10
 297:	c5 fd 7f 54 24 a8    	vmovdqa %ymm2,-0x58(%rsp)
 29d:	c4 43 fd 00 c9 d8    	vpermq $0xd8,%ymm9,%ymm9
 2a3:	c4 43 fd 00 c0 d8    	vpermq $0xd8,%ymm8,%ymm8
 2a9:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 2af:	c5 fd 6f 90 40 01 00 	vmovdqa 0x140(%rax),%ymm2
 2b6:	00 
 2b7:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 2bc:	c5 7d 6f 98 a0 01 00 	vmovdqa 0x1a0(%rax),%ymm11
 2c3:	00 
 2c4:	c4 c2 75 2b cf       	vpackusdw %ymm15,%ymm1,%ymm1
 2c9:	c4 c2 45 2b fd       	vpackusdw %ymm13,%ymm7,%ymm7
 2ce:	c4 41 7d db fe       	vpand  %ymm14,%ymm0,%ymm15
 2d3:	c4 e3 fd 00 c9 d8    	vpermq $0xd8,%ymm1,%ymm1
 2d9:	c5 fd 6f a0 c0 01 00 	vmovdqa 0x1c0(%rax),%ymm4
 2e0:	00 
 2e1:	c5 7d db ea          	vpand  %ymm2,%ymm0,%ymm13
 2e5:	c4 c1 0d 72 d6 10    	vpsrld $0x10,%ymm14,%ymm14
 2eb:	c5 7d 6f a0 e0 01 00 	vmovdqa 0x1e0(%rax),%ymm12
 2f2:	00 
 2f3:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 2f9:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
 2fe:	c4 42 15 2b ef       	vpackusdw %ymm15,%ymm13,%ymm13
 303:	c4 41 7d db fb       	vpand  %ymm11,%ymm0,%ymm15
 308:	b8 b8 af 13 00       	mov    $0x13afb8,%eax
 30d:	c4 c2 6d 2b d6       	vpackusdw %ymm14,%ymm2,%ymm2
 312:	c4 c1 25 72 d3 10    	vpsrld $0x10,%ymm11,%ymm11
 318:	c4 43 fd 00 ed d8    	vpermq $0xd8,%ymm13,%ymm13
 31e:	c4 63 fd 00 f2 d8    	vpermq $0xd8,%ymm2,%ymm14
 324:	c5 fd db d6          	vpand  %ymm6,%ymm0,%ymm2
 328:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 32d:	c4 c2 6d 2b d7       	vpackusdw %ymm15,%ymm2,%ymm2
 332:	c4 41 7d db fc       	vpand  %ymm12,%ymm0,%ymm15
 337:	c4 c2 4d 2b f3       	vpackusdw %ymm11,%ymm6,%ymm6
 33c:	c4 c1 1d 72 d4 10    	vpsrld $0x10,%ymm12,%ymm12
 342:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 348:	c4 63 fd 00 de d8    	vpermq $0xd8,%ymm6,%ymm11
 34e:	c5 fd db f4          	vpand  %ymm4,%ymm0,%ymm6
 352:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 357:	c4 c2 4d 2b f7       	vpackusdw %ymm15,%ymm6,%ymm6
 35c:	c4 41 7d db fd       	vpand  %ymm13,%ymm0,%ymm15
 361:	c4 c2 5d 2b e4       	vpackusdw %ymm12,%ymm4,%ymm4
 366:	c4 c1 15 72 d5 10    	vpsrld $0x10,%ymm13,%ymm13
 36c:	c4 e3 fd 00 f6 d8    	vpermq $0xd8,%ymm6,%ymm6
 372:	c4 63 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm12
 378:	c5 fd db e1          	vpand  %ymm1,%ymm0,%ymm4
 37c:	c5 f5 72 d1 10       	vpsrld $0x10,%ymm1,%ymm1
 381:	c4 c2 5d 2b e7       	vpackusdw %ymm15,%ymm4,%ymm4
 386:	c5 7d db fe          	vpand  %ymm6,%ymm0,%ymm15
 38a:	c4 c2 75 2b cd       	vpackusdw %ymm13,%ymm1,%ymm1
 38f:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 394:	c5 7d db ea          	vpand  %ymm2,%ymm0,%ymm13
 398:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
 39d:	c4 42 15 2b ef       	vpackusdw %ymm15,%ymm13,%ymm13
 3a2:	c4 41 7d db fe       	vpand  %ymm14,%ymm0,%ymm15
 3a7:	c4 e2 6d 2b d6       	vpackusdw %ymm6,%ymm2,%ymm2
 3ac:	c4 c1 0d 72 d6 10    	vpsrld $0x10,%ymm14,%ymm14
 3b2:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 3b8:	c4 e3 fd 00 f2 d8    	vpermq $0xd8,%ymm2,%ymm6
 3be:	c5 fd db d7          	vpand  %ymm7,%ymm0,%ymm2
 3c2:	c4 43 fd 00 ed d8    	vpermq $0xd8,%ymm13,%ymm13
 3c8:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 3cd:	c4 c2 6d 2b d7       	vpackusdw %ymm15,%ymm2,%ymm2
 3d2:	c4 41 7d db fc       	vpand  %ymm12,%ymm0,%ymm15
 3d7:	c4 c2 45 2b fe       	vpackusdw %ymm14,%ymm7,%ymm7
 3dc:	c4 c1 1d 72 d4 10    	vpsrld $0x10,%ymm12,%ymm12
 3e2:	c4 41 7d db f3       	vpand  %ymm11,%ymm0,%ymm14
 3e7:	c4 c1 25 72 d3 10    	vpsrld $0x10,%ymm11,%ymm11
 3ed:	c4 42 0d 2b f7       	vpackusdw %ymm15,%ymm14,%ymm14
 3f2:	c4 41 7d db fd       	vpand  %ymm13,%ymm0,%ymm15
 3f7:	c4 42 25 2b dc       	vpackusdw %ymm12,%ymm11,%ymm11
 3fc:	c5 7d db e4          	vpand  %ymm4,%ymm0,%ymm12
 400:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 406:	c4 42 1d 2b e7       	vpackusdw %ymm15,%ymm12,%ymm12
 40b:	c4 c1 15 72 d5 10    	vpsrld $0x10,%ymm13,%ymm13
 411:	c4 43 fd 00 f6 d8    	vpermq $0xd8,%ymm14,%ymm14
 417:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 41c:	c4 43 fd 00 e4 d8    	vpermq $0xd8,%ymm12,%ymm12
 422:	c4 e3 fd 00 c9 d8    	vpermq $0xd8,%ymm1,%ymm1
 428:	c4 c2 5d 2b e5       	vpackusdw %ymm13,%ymm4,%ymm4
 42d:	c5 7d 7f 64 24 88    	vmovdqa %ymm12,-0x78(%rsp)
 433:	c4 41 7d db ee       	vpand  %ymm14,%ymm0,%ymm13
 438:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 43e:	c4 63 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm12
 444:	c4 c1 0d 72 d6 10    	vpsrld $0x10,%ymm14,%ymm14
 44a:	c5 fd db e2          	vpand  %ymm2,%ymm0,%ymm4
 44e:	c5 ed 72 d2 10       	vpsrld $0x10,%ymm2,%ymm2
 453:	c4 c2 5d 2b e5       	vpackusdw %ymm13,%ymm4,%ymm4
 458:	c5 7d db e9          	vpand  %ymm1,%ymm0,%ymm13
 45c:	c4 c2 6d 2b d6       	vpackusdw %ymm14,%ymm2,%ymm2
 461:	c5 f5 72 d1 10       	vpsrld $0x10,%ymm1,%ymm1
 466:	c5 7d db f6          	vpand  %ymm6,%ymm0,%ymm14
 46a:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 46f:	c4 43 fd 00 db d8    	vpermq $0xd8,%ymm11,%ymm11
 475:	c4 42 15 2b ee       	vpackusdw %ymm14,%ymm13,%ymm13
 47a:	c4 e2 75 2b ce       	vpackusdw %ymm6,%ymm1,%ymm1
 47f:	c4 41 7d db f3       	vpand  %ymm11,%ymm0,%ymm14
 484:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 48a:	c4 e3 fd 00 f1 d8    	vpermq $0xd8,%ymm1,%ymm6
 490:	c4 c1 25 72 d3 10    	vpsrld $0x10,%ymm11,%ymm11
 496:	c5 fd db cf          	vpand  %ymm7,%ymm0,%ymm1
 49a:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 49f:	c4 c2 75 2b ce       	vpackusdw %ymm14,%ymm1,%ymm1
 4a4:	c4 43 fd 00 ed d8    	vpermq $0xd8,%ymm13,%ymm13
 4aa:	c4 c2 45 2b fb       	vpackusdw %ymm11,%ymm7,%ymm7
 4af:	c4 42 7d 23 da       	vpmovsxwd %xmm10,%ymm11
 4b4:	c4 43 7d 39 d2 01    	vextracti128 $0x1,%ymm10,%xmm10
 4ba:	c4 63 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm15
 4c0:	c5 f9 6e f8          	vmovd  %eax,%xmm7
 4c4:	c4 42 7d 23 d2       	vpmovsxwd %xmm10,%ymm10
 4c9:	b8 00 00 00 40       	mov    $0x40000000,%eax
 4ce:	c4 e2 7d 58 ff       	vpbroadcastd %xmm7,%ymm7
 4d3:	c4 63 fd 00 f1 d8    	vpermq $0xd8,%ymm1,%ymm14
 4d9:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 4dd:	b8 ff 00 00 00       	mov    $0xff,%eax
 4e2:	c4 62 25 40 df       	vpmulld %ymm7,%ymm11,%ymm11
 4e7:	c4 62 2d 40 d7       	vpmulld %ymm7,%ymm10,%ymm10
 4ec:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
 4f1:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 4f7:	c5 25 fe d9          	vpaddd %ymm1,%ymm11,%ymm11
 4fb:	c5 2d fe d1          	vpaddd %ymm1,%ymm10,%ymm10
 4ff:	c4 c1 25 72 d3 1f    	vpsrld $0x1f,%ymm11,%ymm11
 505:	c4 c1 2d 72 d2 1f    	vpsrld $0x1f,%ymm10,%ymm10
 50b:	c4 41 7d db d2       	vpand  %ymm10,%ymm0,%ymm10
 510:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 515:	c4 42 25 2b da       	vpackusdw %ymm10,%ymm11,%ymm11
 51a:	c4 43 fd 00 d3 d8    	vpermq $0xd8,%ymm11,%ymm10
 520:	c4 42 7d 23 de       	vpmovsxwd %xmm14,%ymm11
 525:	c4 43 7d 39 f6 01    	vextracti128 $0x1,%ymm14,%xmm14
 52b:	c4 42 7d 23 f6       	vpmovsxwd %xmm14,%ymm14
 530:	c4 62 25 40 df       	vpmulld %ymm7,%ymm11,%ymm11
 535:	c4 62 0d 40 f7       	vpmulld %ymm7,%ymm14,%ymm14
 53a:	c5 25 fe d9          	vpaddd %ymm1,%ymm11,%ymm11
 53e:	c5 0d fe f1          	vpaddd %ymm1,%ymm14,%ymm14
 542:	c4 c1 25 72 d3 1f    	vpsrld $0x1f,%ymm11,%ymm11
 548:	c4 c1 0d 72 d6 1f    	vpsrld $0x1f,%ymm14,%ymm14
 54e:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 553:	c4 41 7d db f6       	vpand  %ymm14,%ymm0,%ymm14
 558:	c4 42 25 2b de       	vpackusdw %ymm14,%ymm11,%ymm11
 55d:	c4 43 fd 00 f3 d8    	vpermq $0xd8,%ymm11,%ymm14
 563:	c5 79 6e d8          	vmovd  %eax,%xmm11
 567:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
 56c:	c4 42 7d 79 db       	vpbroadcastw %xmm11,%ymm11
 571:	c4 41 25 db f6       	vpand  %ymm14,%ymm11,%ymm14
 576:	c4 41 25 db d2       	vpand  %ymm10,%ymm11,%ymm10
 57b:	c4 41 2d 67 d6       	vpackuswb %ymm14,%ymm10,%ymm10
 580:	c4 43 fd 00 d2 d8    	vpermq $0xd8,%ymm10,%ymm10
 586:	c4 41 2d fc d2       	vpaddb %ymm10,%ymm10,%ymm10
 58b:	c4 41 2d fc d2       	vpaddb %ymm10,%ymm10,%ymm10
 590:	c4 41 2d fc f2       	vpaddb %ymm10,%ymm10,%ymm14
 595:	c4 62 7d 23 d5       	vpmovsxwd %xmm5,%ymm10
 59a:	c4 e3 7d 39 ed 01    	vextracti128 $0x1,%ymm5,%xmm5
 5a0:	c4 e2 7d 23 ed       	vpmovsxwd %xmm5,%ymm5
 5a5:	c4 62 2d 40 d7       	vpmulld %ymm7,%ymm10,%ymm10
 5aa:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 5af:	c5 2d fe d1          	vpaddd %ymm1,%ymm10,%ymm10
 5b3:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 5b7:	c4 c1 2d 72 d2 1f    	vpsrld $0x1f,%ymm10,%ymm10
 5bd:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 5c2:	c4 41 7d db d2       	vpand  %ymm10,%ymm0,%ymm10
 5c7:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 5cb:	c4 62 2d 2b d5       	vpackusdw %ymm5,%ymm10,%ymm10
 5d0:	c4 c3 fd 00 ea d8    	vpermq $0xd8,%ymm10,%ymm5
 5d6:	c4 42 7d 23 d4       	vpmovsxwd %xmm12,%ymm10
 5db:	c4 43 7d 39 e4 01    	vextracti128 $0x1,%ymm12,%xmm12
 5e1:	c4 42 7d 23 e4       	vpmovsxwd %xmm12,%ymm12
 5e6:	c4 62 2d 40 d7       	vpmulld %ymm7,%ymm10,%ymm10
 5eb:	c5 a5 db ed          	vpand  %ymm5,%ymm11,%ymm5
 5ef:	c4 62 1d 40 e7       	vpmulld %ymm7,%ymm12,%ymm12
 5f4:	c5 2d fe d1          	vpaddd %ymm1,%ymm10,%ymm10
 5f8:	c5 1d fe e1          	vpaddd %ymm1,%ymm12,%ymm12
 5fc:	c4 c1 2d 72 d2 1f    	vpsrld $0x1f,%ymm10,%ymm10
 602:	c4 c1 1d 72 d4 1f    	vpsrld $0x1f,%ymm12,%ymm12
 608:	c4 41 7d db d2       	vpand  %ymm10,%ymm0,%ymm10
 60d:	c4 41 7d db e4       	vpand  %ymm12,%ymm0,%ymm12
 612:	c4 42 2d 2b d4       	vpackusdw %ymm12,%ymm10,%ymm10
 617:	c4 43 fd 00 d2 d8    	vpermq $0xd8,%ymm10,%ymm10
 61d:	c4 41 25 db d2       	vpand  %ymm10,%ymm11,%ymm10
 622:	c4 c1 55 67 ea       	vpackuswb %ymm10,%ymm5,%ymm5
 627:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 62d:	c5 d5 fc ed          	vpaddb %ymm5,%ymm5,%ymm5
 631:	c5 d5 fc ed          	vpaddb %ymm5,%ymm5,%ymm5
 635:	c5 d5 fc ed          	vpaddb %ymm5,%ymm5,%ymm5
 639:	c5 d5 fc ed          	vpaddb %ymm5,%ymm5,%ymm5
 63d:	c5 0d eb d5          	vpor   %ymm5,%ymm14,%ymm10
 641:	c4 c2 7d 23 e9       	vpmovsxwd %xmm9,%ymm5
 646:	c4 43 7d 39 c9 01    	vextracti128 $0x1,%ymm9,%xmm9
 64c:	c4 42 7d 23 c9       	vpmovsxwd %xmm9,%ymm9
 651:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 656:	c4 62 35 40 cf       	vpmulld %ymm7,%ymm9,%ymm9
 65b:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 65f:	c5 35 fe c9          	vpaddd %ymm1,%ymm9,%ymm9
 663:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 668:	c4 c1 35 72 d1 1f    	vpsrld $0x1f,%ymm9,%ymm9
 66e:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 672:	c4 41 7d db c9       	vpand  %ymm9,%ymm0,%ymm9
 677:	c4 c2 55 2b e9       	vpackusdw %ymm9,%ymm5,%ymm5
 67c:	c4 62 7d 23 cc       	vpmovsxwd %xmm4,%ymm9
 681:	c4 e3 7d 39 e4 01    	vextracti128 $0x1,%ymm4,%xmm4
 687:	c4 e2 7d 23 e4       	vpmovsxwd %xmm4,%ymm4
 68c:	c4 62 35 40 cf       	vpmulld %ymm7,%ymm9,%ymm9
 691:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 697:	c4 e2 5d 40 e7       	vpmulld %ymm7,%ymm4,%ymm4
 69c:	c5 a5 db ed          	vpand  %ymm5,%ymm11,%ymm5
 6a0:	c5 35 fe c9          	vpaddd %ymm1,%ymm9,%ymm9
 6a4:	c5 dd fe e1          	vpaddd %ymm1,%ymm4,%ymm4
 6a8:	c4 c1 35 72 d1 1f    	vpsrld $0x1f,%ymm9,%ymm9
 6ae:	c5 dd 72 d4 1f       	vpsrld $0x1f,%ymm4,%ymm4
 6b3:	c4 41 7d db c9       	vpand  %ymm9,%ymm0,%ymm9
 6b8:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 6bc:	c4 62 35 2b cc       	vpackusdw %ymm4,%ymm9,%ymm9
 6c1:	c4 c3 fd 00 e1 d8    	vpermq $0xd8,%ymm9,%ymm4
 6c7:	c4 43 7d 39 e9 01    	vextracti128 $0x1,%ymm13,%xmm9
 6cd:	c5 a5 db e4          	vpand  %ymm4,%ymm11,%ymm4
 6d1:	c4 42 7d 23 c9       	vpmovsxwd %xmm9,%ymm9
 6d6:	c5 d5 67 ec          	vpackuswb %ymm4,%ymm5,%ymm5
 6da:	c4 62 35 40 cf       	vpmulld %ymm7,%ymm9,%ymm9
 6df:	c4 c2 7d 23 e0       	vpmovsxwd %xmm8,%ymm4
 6e4:	c4 43 7d 39 c0 01    	vextracti128 $0x1,%ymm8,%xmm8
 6ea:	c4 e2 5d 40 e7       	vpmulld %ymm7,%ymm4,%ymm4
 6ef:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 6f5:	c4 42 7d 23 c0       	vpmovsxwd %xmm8,%ymm8
 6fa:	c5 d5 fc ed          	vpaddb %ymm5,%ymm5,%ymm5
 6fe:	c4 62 3d 40 c7       	vpmulld %ymm7,%ymm8,%ymm8
 703:	c5 35 fe c9          	vpaddd %ymm1,%ymm9,%ymm9
 707:	c5 dd fe e1          	vpaddd %ymm1,%ymm4,%ymm4
 70b:	c4 c1 35 72 d1 1f    	vpsrld $0x1f,%ymm9,%ymm9
 711:	c5 dd 72 d4 1f       	vpsrld $0x1f,%ymm4,%ymm4
 716:	c4 41 7d db c9       	vpand  %ymm9,%ymm0,%ymm9
 71b:	c5 3d fe c1          	vpaddd %ymm1,%ymm8,%ymm8
 71f:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 723:	c4 c1 3d 72 d0 1f    	vpsrld $0x1f,%ymm8,%ymm8
 729:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 72e:	c4 c2 5d 2b e0       	vpackusdw %ymm8,%ymm4,%ymm4
 733:	c4 42 7d 23 c5       	vpmovsxwd %xmm13,%ymm8
 738:	c4 62 3d 40 c7       	vpmulld %ymm7,%ymm8,%ymm8
 73d:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 743:	c5 a5 db e4          	vpand  %ymm4,%ymm11,%ymm4
 747:	c5 3d fe c1          	vpaddd %ymm1,%ymm8,%ymm8
 74b:	c4 c1 3d 72 d0 1f    	vpsrld $0x1f,%ymm8,%ymm8
 751:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 756:	c4 42 3d 2b c1       	vpackusdw %ymm9,%ymm8,%ymm8
 75b:	c4 43 fd 00 c0 d8    	vpermq $0xd8,%ymm8,%ymm8
 761:	c4 41 25 db c0       	vpand  %ymm8,%ymm11,%ymm8
 766:	c4 c1 5d 67 e0       	vpackuswb %ymm8,%ymm4,%ymm4
 76b:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 771:	c5 dd fc e4          	vpaddb %ymm4,%ymm4,%ymm4
 775:	c5 dd fc e4          	vpaddb %ymm4,%ymm4,%ymm4
 779:	c5 d5 eb e4          	vpor   %ymm4,%ymm5,%ymm4
 77d:	c4 e2 7d 23 eb       	vpmovsxwd %xmm3,%ymm5
 782:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
 788:	c4 e2 7d 23 db       	vpmovsxwd %xmm3,%ymm3
 78d:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 792:	c5 ad eb e4          	vpor   %ymm4,%ymm10,%ymm4
 796:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 79b:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 79f:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 7a3:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 7a8:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 7ad:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 7b1:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 7b5:	c4 e2 55 2b db       	vpackusdw %ymm3,%ymm5,%ymm3
 7ba:	c4 e2 7d 23 ea       	vpmovsxwd %xmm2,%ymm5
 7bf:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
 7c5:	c4 e2 7d 23 d2       	vpmovsxwd %xmm2,%ymm2
 7ca:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 7cf:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 7d5:	c4 e2 6d 40 d7       	vpmulld %ymm7,%ymm2,%ymm2
 7da:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 7de:	c5 ed fe d1          	vpaddd %ymm1,%ymm2,%ymm2
 7e2:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 7e7:	c5 ed 72 d2 1f       	vpsrld $0x1f,%ymm2,%ymm2
 7ec:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 7f0:	c5 fd db d2          	vpand  %ymm2,%ymm0,%ymm2
 7f4:	c4 e2 55 2b ea       	vpackusdw %ymm2,%ymm5,%ymm5
 7f9:	c5 a5 db d3          	vpand  %ymm3,%ymm11,%ymm2
 7fd:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 803:	c5 a5 db dd          	vpand  %ymm5,%ymm11,%ymm3
 807:	c5 ed 67 d3          	vpackuswb %ymm3,%ymm2,%ymm2
 80b:	c5 fd 6f 5c 24 c8    	vmovdqa -0x38(%rsp),%ymm3
 811:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 817:	c4 e2 7d 23 eb       	vpmovsxwd %xmm3,%ymm5
 81c:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
 822:	c5 ed fc d2          	vpaddb %ymm2,%ymm2,%ymm2
 826:	c4 e2 7d 23 db       	vpmovsxwd %xmm3,%ymm3
 82b:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 830:	c5 ed fc d2          	vpaddb %ymm2,%ymm2,%ymm2
 834:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 839:	c5 ed fc d2          	vpaddb %ymm2,%ymm2,%ymm2
 83d:	c5 ed fc d2          	vpaddb %ymm2,%ymm2,%ymm2
 841:	c5 ed fc d2          	vpaddb %ymm2,%ymm2,%ymm2
 845:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 849:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 84d:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 852:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 857:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 85b:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 85f:	c4 e2 55 2b db       	vpackusdw %ymm3,%ymm5,%ymm3
 864:	c4 e2 7d 23 ee       	vpmovsxwd %xmm6,%ymm5
 869:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
 86f:	c4 e2 7d 23 f6       	vpmovsxwd %xmm6,%ymm6
 874:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 879:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 87f:	c4 e2 4d 40 f7       	vpmulld %ymm7,%ymm6,%ymm6
 884:	c5 a5 db db          	vpand  %ymm3,%ymm11,%ymm3
 888:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 88c:	c5 cd fe f1          	vpaddd %ymm1,%ymm6,%ymm6
 890:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 895:	c5 cd 72 d6 1f       	vpsrld $0x1f,%ymm6,%ymm6
 89a:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 89e:	c5 fd db f6          	vpand  %ymm6,%ymm0,%ymm6
 8a2:	c4 e2 55 2b ee       	vpackusdw %ymm6,%ymm5,%ymm5
 8a7:	c5 fd 6f 74 24 e8    	vmovdqa -0x18(%rsp),%ymm6
 8ad:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 8b3:	c5 a5 db ed          	vpand  %ymm5,%ymm11,%ymm5
 8b7:	c5 e5 67 dd          	vpackuswb %ymm5,%ymm3,%ymm3
 8bb:	c4 63 7d 39 fd 01    	vextracti128 $0x1,%ymm15,%xmm5
 8c1:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 8c7:	c4 e2 7d 23 ed       	vpmovsxwd %xmm5,%ymm5
 8cc:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8d0:	c4 e2 55 40 ef       	vpmulld %ymm7,%ymm5,%ymm5
 8d5:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8d9:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8dd:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8e1:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8e5:	c5 e5 fc db          	vpaddb %ymm3,%ymm3,%ymm3
 8e9:	c5 d5 fe e9          	vpaddd %ymm1,%ymm5,%ymm5
 8ed:	c5 ed eb d3          	vpor   %ymm3,%ymm2,%ymm2
 8f1:	c5 d5 72 d5 1f       	vpsrld $0x1f,%ymm5,%ymm5
 8f6:	c5 dd eb e2          	vpor   %ymm2,%ymm4,%ymm4
 8fa:	c5 fd 6f 54 24 a8    	vmovdqa -0x58(%rsp),%ymm2
 900:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 904:	c4 e2 7d 23 da       	vpmovsxwd %xmm2,%ymm3
 909:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
 90f:	c4 e2 7d 23 d2       	vpmovsxwd %xmm2,%ymm2
 914:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 919:	c4 e2 6d 40 d7       	vpmulld %ymm7,%ymm2,%ymm2
 91e:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 922:	c5 ed fe d1          	vpaddd %ymm1,%ymm2,%ymm2
 926:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 92b:	c5 ed 72 d2 1f       	vpsrld $0x1f,%ymm2,%ymm2
 930:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 934:	c5 fd db d2          	vpand  %ymm2,%ymm0,%ymm2
 938:	c4 e2 65 2b d2       	vpackusdw %ymm2,%ymm3,%ymm2
 93d:	c4 c2 7d 23 df       	vpmovsxwd %xmm15,%ymm3
 942:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 947:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 94d:	c5 a5 db d2          	vpand  %ymm2,%ymm11,%ymm2
 951:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 955:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 95a:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 95e:	c4 e2 65 2b dd       	vpackusdw %ymm5,%ymm3,%ymm3
 963:	c5 f9 6e e8          	vmovd  %eax,%xmm5
 967:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 96d:	c4 e2 7d 78 ed       	vpbroadcastb %xmm5,%ymm5
 972:	c5 a5 db db          	vpand  %ymm3,%ymm11,%ymm3
 976:	c5 ed 67 d3          	vpackuswb %ymm3,%ymm2,%ymm2
 97a:	c4 e2 7d 23 de       	vpmovsxwd %xmm6,%ymm3
 97f:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 985:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 98a:	c5 ed 71 f2 07       	vpsllw $0x7,%ymm2,%ymm2
 98f:	c5 d5 db ea          	vpand  %ymm2,%ymm5,%ymm5
 993:	c4 e3 7d 39 f2 01    	vextracti128 $0x1,%ymm6,%xmm2
 999:	c5 fd 6f 74 24 88    	vmovdqa -0x78(%rsp),%ymm6
 99f:	c4 e2 7d 23 d2       	vpmovsxwd %xmm2,%ymm2
 9a4:	c4 e2 6d 40 d7       	vpmulld %ymm7,%ymm2,%ymm2
 9a9:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 9ad:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 9b2:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 9b6:	c5 ed fe d1          	vpaddd %ymm1,%ymm2,%ymm2
 9ba:	c5 ed 72 d2 1f       	vpsrld $0x1f,%ymm2,%ymm2
 9bf:	c5 fd db d2          	vpand  %ymm2,%ymm0,%ymm2
 9c3:	c4 e2 65 2b d2       	vpackusdw %ymm2,%ymm3,%ymm2
 9c8:	c4 e2 7d 23 de       	vpmovsxwd %xmm6,%ymm3
 9cd:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
 9d3:	c4 e2 7d 23 f6       	vpmovsxwd %xmm6,%ymm6
 9d8:	c4 e2 65 40 df       	vpmulld %ymm7,%ymm3,%ymm3
 9dd:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 9e3:	c4 e2 4d 40 f7       	vpmulld %ymm7,%ymm6,%ymm6
 9e8:	c5 a5 db d2          	vpand  %ymm2,%ymm11,%ymm2
 9ec:	c5 e5 fe d9          	vpaddd %ymm1,%ymm3,%ymm3
 9f0:	c5 cd fe f1          	vpaddd %ymm1,%ymm6,%ymm6
 9f4:	c5 e5 72 d3 1f       	vpsrld $0x1f,%ymm3,%ymm3
 9f9:	c5 cd 72 d6 1f       	vpsrld $0x1f,%ymm6,%ymm6
 9fe:	c5 fd db cb          	vpand  %ymm3,%ymm0,%ymm1
 a02:	c5 fd db c6          	vpand  %ymm6,%ymm0,%ymm0
 a06:	c4 e2 75 2b c0       	vpackusdw %ymm0,%ymm1,%ymm0
 a0b:	c4 e3 fd 00 c0 d8    	vpermq $0xd8,%ymm0,%ymm0
 a11:	c5 25 db d8          	vpand  %ymm0,%ymm11,%ymm11
 a15:	c4 c1 6d 67 c3       	vpackuswb %ymm11,%ymm2,%ymm0
 a1a:	c4 e3 fd 00 c0 d8    	vpermq $0xd8,%ymm0,%ymm0
 a20:	c5 d5 eb e8          	vpor   %ymm0,%ymm5,%ymm5
 a24:	c5 dd eb e5          	vpor   %ymm5,%ymm4,%ymm4
 a28:	c5 fe 7f 27          	vmovdqu %ymm4,(%rdi)
 a2c:	c5 f8 77             	vzeroupper
 a2f:	c9                   	leave
 a30:	c3                   	ret
 a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a38:	c6 07 00             	movb   $0x0,(%rdi)
 a3b:	0f bf 10             	movswl (%rax),%edx
 a3e:	69 d2 b8 af 13 00    	imul   $0x13afb8,%edx,%edx
 a44:	81 c2 00 00 00 40    	add    $0x40000000,%edx
 a4a:	c1 ea 1f             	shr    $0x1f,%edx
 a4d:	88 17                	mov    %dl,(%rdi)
 a4f:	0f bf 48 02          	movswl 0x2(%rax),%ecx
 a53:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
 a59:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
 a5f:	c1 e9 1f             	shr    $0x1f,%ecx
 a62:	01 c9                	add    %ecx,%ecx
 a64:	09 d1                	or     %edx,%ecx
 a66:	88 0f                	mov    %cl,(%rdi)
 a68:	0f bf 50 04          	movswl 0x4(%rax),%edx
 a6c:	69 d2 b8 af 13 00    	imul   $0x13afb8,%edx,%edx
 a72:	81 c2 00 00 00 40    	add    $0x40000000,%edx
 a78:	c1 ea 1f             	shr    $0x1f,%edx
 a7b:	c1 e2 02             	shl    $0x2,%edx
 a7e:	09 ca                	or     %ecx,%edx
 a80:	88 17                	mov    %dl,(%rdi)
 a82:	0f bf 48 06          	movswl 0x6(%rax),%ecx
 a86:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
 a8c:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
 a92:	c1 e9 1f             	shr    $0x1f,%ecx
 a95:	c1 e1 03             	shl    $0x3,%ecx
 a98:	09 d1                	or     %edx,%ecx
 a9a:	88 0f                	mov    %cl,(%rdi)
 a9c:	0f bf 50 08          	movswl 0x8(%rax),%edx
 aa0:	69 d2 b8 af 13 00    	imul   $0x13afb8,%edx,%edx
 aa6:	81 c2 00 00 00 40    	add    $0x40000000,%edx
 aac:	c1 ea 1f             	shr    $0x1f,%edx
 aaf:	c1 e2 04             	shl    $0x4,%edx
 ab2:	09 ca                	or     %ecx,%edx
 ab4:	88 17                	mov    %dl,(%rdi)
 ab6:	0f bf 48 0a          	movswl 0xa(%rax),%ecx
 aba:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
 ac0:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
 ac6:	c1 e9 1f             	shr    $0x1f,%ecx
 ac9:	c1 e1 05             	shl    $0x5,%ecx
 acc:	09 d1                	or     %edx,%ecx
 ace:	88 0f                	mov    %cl,(%rdi)
 ad0:	0f bf 50 0c          	movswl 0xc(%rax),%edx
 ad4:	69 d2 b8 af 13 00    	imul   $0x13afb8,%edx,%edx
 ada:	81 c2 00 00 00 40    	add    $0x40000000,%edx
 ae0:	c1 ea 1f             	shr    $0x1f,%edx
 ae3:	c1 e2 06             	shl    $0x6,%edx
 ae6:	09 ca                	or     %ecx,%edx
 ae8:	48 83 c0 10          	add    $0x10,%rax
 aec:	48 83 c7 01          	add    $0x1,%rdi
 af0:	88 57 ff             	mov    %dl,-0x1(%rdi)
 af3:	0f bf 48 fe          	movswl -0x2(%rax),%ecx
 af7:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
 afd:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
 b03:	c1 e9 1f             	shr    $0x1f,%ecx
 b06:	c1 e1 07             	shl    $0x7,%ecx
 b09:	09 ca                	or     %ecx,%edx
 b0b:	88 57 ff             	mov    %dl,-0x1(%rdi)
 b0e:	49 39 c0             	cmp    %rax,%r8
 b11:	0f 85 21 ff ff ff    	jne    a38 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomsg+0xa38>
 b17:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/debug.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/indcpa.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	31 c9                	xor    %ecx,%ecx
   7:	48 89 e5             	mov    %rsp,%rbp
   a:	41 55                	push   %r13
   c:	41 54                	push   %r12
   e:	53                   	push   %rbx
   f:	48 89 fb             	mov    %rdi,%rbx
  12:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  16:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  1d:	c5 fe 6f 06          	vmovdqu (%rsi),%ymm0
  21:	48 8d b7 00 02 00 00 	lea    0x200(%rdi),%rsi
  28:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2f:	00 00 
  31:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
  38:	00 
  39:	31 c0                	xor    %eax,%eax
  3b:	66 89 4c 24 20       	mov    %cx,0x20(%rsp)
  40:	48 8d 87 00 04 00 00 	lea    0x400(%rdi),%rax
  47:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
  4c:	c5 fd 7f 44 24 40    	vmovdqa %ymm0,0x40(%rsp)
  52:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  59:	00 00 
  5b:	c5 fd 7f 84 24 c0 00 	vmovdqa %ymm0,0xc0(%rsp)
  62:	00 00 
  64:	85 d2                	test   %edx,%edx
  66:	0f 85 24 01 00 00    	jne    190 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x190>
  6c:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  72:	ba 00 01 00 00       	mov    $0x100,%edx
  77:	41 bd 02 00 00 00    	mov    $0x2,%r13d
  7d:	66 44 89 64 24 60    	mov    %r12w,0x60(%rsp)
  83:	49 89 e4             	mov    %rsp,%r12
  86:	48 8d 8f 00 06 00 00 	lea    0x600(%rdi),%rcx
  8d:	66 89 94 24 e0 00 00 	mov    %dx,0xe0(%rsp)
  94:	00 
  95:	4d 89 e0             	mov    %r12,%r8
  98:	48 89 c2             	mov    %rax,%rdx
  9b:	66 44 89 ac 24 a0 00 	mov    %r13w,0xa0(%rsp)
  a2:	00 00 
  a4:	c5 f8 77             	vzeroupper
  a7:	e8 00 00 00 00       	call   ac <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0xac>
  ac:	31 f6                	xor    %esi,%esi
  ae:	b9 02 00 00 00       	mov    $0x2,%ecx
  b3:	ba 01 00 00 00       	mov    $0x1,%edx
  b8:	b8 02 00 00 00       	mov    $0x2,%eax
  bd:	bf 01 01 00 00       	mov    $0x101,%edi
  c2:	88 54 24 61          	mov    %dl,0x61(%rsp)
  c6:	4d 89 e0             	mov    %r12,%r8
  c9:	4c 8d ab 00 12 00 00 	lea    0x1200(%rbx),%r13
  d0:	66 89 7c 24 20       	mov    %di,0x20(%rsp)
  d5:	48 8d bb 00 08 00 00 	lea    0x800(%rbx),%rdi
  dc:	40 88 b4 24 a0 00 00 	mov    %sil,0xa0(%rsp)
  e3:	00 
  e4:	48 8d b3 00 0a 00 00 	lea    0xa00(%rbx),%rsi
  eb:	88 8c 24 a1 00 00 00 	mov    %cl,0xa1(%rsp)
  f2:	48 8d 8b 00 0e 00 00 	lea    0xe00(%rbx),%rcx
  f9:	88 94 24 e0 00 00 00 	mov    %dl,0xe0(%rsp)
 100:	48 8d 93 00 0c 00 00 	lea    0xc00(%rbx),%rdx
 107:	88 44 24 60          	mov    %al,0x60(%rsp)
 10b:	88 84 24 e1 00 00 00 	mov    %al,0xe1(%rsp)
 112:	e8 00 00 00 00       	call   117 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x117>
 117:	41 b8 02 02 00 00    	mov    $0x202,%r8d
 11d:	48 8d bb 00 10 00 00 	lea    0x1000(%rbx),%rdi
 124:	4c 89 e6             	mov    %r12,%rsi
 127:	66 44 89 44 24 20    	mov    %r8w,0x20(%rsp)
 12d:	e8 00 00 00 00       	call   132 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x132>
 132:	48 89 df             	mov    %rbx,%rdi
 135:	e8 00 00 00 00       	call   13a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x13a>
 13a:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
 141:	e8 00 00 00 00       	call   146 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x146>
 146:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
 14d:	48 81 c3 00 06 00 00 	add    $0x600,%rbx
 154:	e8 00 00 00 00       	call   159 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x159>
 159:	4c 39 eb             	cmp    %r13,%rbx
 15c:	75 d4                	jne    132 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x132>
 15e:	31 c0                	xor    %eax,%eax
 160:	4c 89 e7             	mov    %r12,%rdi
 163:	b9 20 00 00 00       	mov    $0x20,%ecx
 168:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 16b:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
 172:	00 
 173:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 17a:	00 00 
 17c:	75 6a                	jne    1e8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x1e8>
 17e:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
 182:	5b                   	pop    %rbx
 183:	41 5c                	pop    %r12
 185:	41 5d                	pop    %r13
 187:	5d                   	pop    %rbp
 188:	c3                   	ret
 189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 190:	41 b9 00 01 00 00    	mov    $0x100,%r9d
 196:	41 ba 00 02 00 00    	mov    $0x200,%r10d
 19c:	49 89 e4             	mov    %rsp,%r12
 19f:	48 89 c2             	mov    %rax,%rdx
 1a2:	41 bb 01 00 00 00    	mov    $0x1,%r11d
 1a8:	66 44 89 4c 24 60    	mov    %r9w,0x60(%rsp)
 1ae:	4d 89 e0             	mov    %r12,%r8
 1b1:	48 8d 8f 00 06 00 00 	lea    0x600(%rdi),%rcx
 1b8:	66 44 89 94 24 a0 00 	mov    %r10w,0xa0(%rsp)
 1bf:	00 00 
 1c1:	66 44 89 9c 24 e0 00 	mov    %r11w,0xe0(%rsp)
 1c8:	00 00 
 1ca:	c5 f8 77             	vzeroupper
 1cd:	e8 00 00 00 00       	call   1d2 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x1d2>
 1d2:	be 02 00 00 00       	mov    $0x2,%esi
 1d7:	31 c9                	xor    %ecx,%ecx
 1d9:	ba 02 00 00 00       	mov    $0x2,%edx
 1de:	b8 01 00 00 00       	mov    $0x1,%eax
 1e3:	e9 d5 fe ff ff       	jmp    bd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0xbd>
 1e8:	e8 00 00 00 00       	call   1ed <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_gen_matrix+0x1ed>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   d:	41 ff 72 f8          	push   -0x8(%r10)
  11:	55                   	push   %rbp
  12:	48 89 e5             	mov    %rsp,%rbp
  15:	41 57                	push   %r15
  17:	41 56                	push   %r14
  19:	41 55                	push   %r13
  1b:	41 54                	push   %r12
  1d:	41 52                	push   %r10
  1f:	53                   	push   %rbx
  20:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  27:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  2c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  33:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  38:	48 81 ec e0 07 00 00 	sub    $0x7e0,%rsp
  3f:	c5 fe 6f 0a          	vmovdqu (%rdx),%ymm1
  43:	ba 21 00 00 00       	mov    $0x21,%edx
  48:	48 89 bd 10 d8 ff ff 	mov    %rdi,-0x27f0(%rbp)
  4f:	48 8d 9d 70 ff ff ff 	lea    -0x90(%rbp),%rbx
  56:	4c 8d b5 30 ed ff ff 	lea    -0x12d0(%rbp),%r14
  5d:	48 89 b5 08 d8 ff ff 	mov    %rsi,-0x27f8(%rbp)
  64:	48 89 df             	mov    %rbx,%rdi
  67:	48 8d b5 30 ff ff ff 	lea    -0xd0(%rbp),%rsi
  6e:	4c 8d 65 90          	lea    -0x70(%rbp),%r12
  72:	4c 8d ad 30 d8 ff ff 	lea    -0x27d0(%rbp),%r13
  79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  80:	00 00 
  82:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  86:	31 c0                	xor    %eax,%eax
  88:	48 89 b5 28 d8 ff ff 	mov    %rsi,-0x27d8(%rbp)
  8f:	48 89 9d 00 d8 ff ff 	mov    %rbx,-0x2800(%rbp)
  96:	c6 85 50 ff ff ff 03 	movb   $0x3,-0xb0(%rbp)
  9d:	c5 fd 7f 8d 30 ff ff 	vmovdqa %ymm1,-0xd0(%rbp)
  a4:	ff 
  a5:	c5 f8 77             	vzeroupper
  a8:	e8 00 00 00 00       	call   ad <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0xad>
  ad:	48 89 de             	mov    %rbx,%rsi
  b0:	31 d2                	xor    %edx,%edx
  b2:	4c 89 f7             	mov    %r14,%rdi
  b5:	4c 89 b5 18 d8 ff ff 	mov    %r14,-0x27e8(%rbp)
  bc:	48 8d 9d 30 e7 ff ff 	lea    -0x18d0(%rbp),%rbx
  c3:	e8 00 00 00 00       	call   c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0xc8>
  c8:	48 83 ec 08          	sub    $0x8,%rsp
  cc:	4d 89 e0             	mov    %r12,%r8
  cf:	45 31 c9             	xor    %r9d,%r9d
  d2:	68 ff 00 00 00       	push   $0xff
  d7:	48 8d 95 30 eb ff ff 	lea    -0x14d0(%rbp),%rdx
  de:	31 c9                	xor    %ecx,%ecx
  e0:	48 89 df             	mov    %rbx,%rdi
  e3:	6a 02                	push   $0x2
  e5:	48 8d b5 30 e9 ff ff 	lea    -0x16d0(%rbp),%rsi
  ec:	6a 01                	push   $0x1
  ee:	e8 00 00 00 00       	call   f3 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0xf3>
  f3:	48 83 c4 18          	add    $0x18,%rsp
  f7:	4d 89 e0             	mov    %r12,%r8
  fa:	31 c9                	xor    %ecx,%ecx
  fc:	48 8d 85 30 db ff ff 	lea    -0x24d0(%rbp),%rax
 103:	48 8d 95 30 df ff ff 	lea    -0x20d0(%rbp),%rdx
 10a:	41 b9 03 00 00 00    	mov    $0x3,%r9d
 110:	48 89 85 20 d8 ff ff 	mov    %rax,-0x27e0(%rbp)
 117:	48 89 c7             	mov    %rax,%rdi
 11a:	48 8d b5 30 dd ff ff 	lea    -0x22d0(%rbp),%rsi
 121:	49 89 c7             	mov    %rax,%r15
 124:	68 ff 00 00 00       	push   $0xff
 129:	4c 8d a5 30 e1 ff ff 	lea    -0x1ed0(%rbp),%r12
 130:	6a 05                	push   $0x5
 132:	6a 04                	push   $0x4
 134:	e8 00 00 00 00       	call   139 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x139>
 139:	48 83 c4 20          	add    $0x20,%rsp
 13d:	48 89 df             	mov    %rbx,%rdi
 140:	e8 00 00 00 00       	call   145 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x145>
 145:	4c 89 ff             	mov    %r15,%rdi
 148:	4d 89 e7             	mov    %r12,%r15
 14b:	e8 00 00 00 00       	call   150 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x150>
 150:	48 89 de             	mov    %rbx,%rsi
 153:	4c 89 ef             	mov    %r13,%rdi
 156:	e8 00 00 00 00       	call   15b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x15b>
 15b:	4c 89 f6             	mov    %r14,%rsi
 15e:	4c 89 ff             	mov    %r15,%rdi
 161:	4c 89 e9             	mov    %r13,%rcx
 164:	48 89 da             	mov    %rbx,%rdx
 167:	e8 00 00 00 00       	call   16c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x16c>
 16c:	48 8b 85 28 d8 ff ff 	mov    -0x27d8(%rbp),%rax
 173:	49 81 c6 00 06 00 00 	add    $0x600,%r14
 17a:	49 81 c7 00 02 00 00 	add    $0x200,%r15
 181:	49 39 c6             	cmp    %rax,%r14
 184:	75 d5                	jne    15b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x15b>
 186:	4c 89 e7             	mov    %r12,%rdi
 189:	e8 00 00 00 00       	call   18e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x18e>
 18e:	48 8b b5 20 d8 ff ff 	mov    -0x27e0(%rbp),%rsi
 195:	4c 89 e7             	mov    %r12,%rdi
 198:	e8 00 00 00 00       	call   19d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x19d>
 19d:	4c 89 e7             	mov    %r12,%rdi
 1a0:	e8 00 00 00 00       	call   1a5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x1a5>
 1a5:	48 89 df             	mov    %rbx,%rdi
 1a8:	e8 00 00 00 00       	call   1ad <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x1ad>
 1ad:	48 8b bd 08 d8 ff ff 	mov    -0x27f8(%rbp),%rdi
 1b4:	48 89 de             	mov    %rbx,%rsi
 1b7:	e8 00 00 00 00       	call   1bc <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x1bc>
 1bc:	4c 8b bd 10 d8 ff ff 	mov    -0x27f0(%rbp),%r15
 1c3:	4c 89 e6             	mov    %r12,%rsi
 1c6:	4c 89 ff             	mov    %r15,%rdi
 1c9:	e8 00 00 00 00       	call   1ce <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x1ce>
 1ce:	31 c0                	xor    %eax,%eax
 1d0:	4c 89 ef             	mov    %r13,%rdi
 1d3:	b9 60 00 00 00       	mov    $0x60,%ecx
 1d8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 1db:	c5 fd 6f 95 70 ff ff 	vmovdqa -0x90(%rbp),%ymm2
 1e2:	ff 
 1e3:	c4 c1 7e 7f 97 80 04 	vmovdqu %ymm2,0x480(%r15)
 1ea:	00 00 
 1ec:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 1f1:	48 89 df             	mov    %rbx,%rdi
 1f4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 1f7:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 1fc:	4c 89 e7             	mov    %r12,%rdi
 1ff:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 202:	48 8b bd 20 d8 ff ff 	mov    -0x27e0(%rbp),%rdi
 209:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 20e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 211:	48 8b bd 20 d8 ff ff 	mov    -0x27e0(%rbp),%rdi
 218:	48 8b bd 18 d8 ff ff 	mov    -0x27e8(%rbp),%rdi
 21f:	b9 40 02 00 00       	mov    $0x240,%ecx
 224:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 227:	48 8b bd 18 d8 ff ff 	mov    -0x27e8(%rbp),%rdi
 22e:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
 232:	c6 85 50 ff ff ff 00 	movb   $0x0,-0xb0(%rbp)
 239:	c5 fd 7f 85 30 ff ff 	vmovdqa %ymm0,-0xd0(%rbp)
 240:	ff 
 241:	48 8b 85 00 d8 ff ff 	mov    -0x2800(%rbp),%rax
 248:	c5 fd 7f 85 70 ff ff 	vmovdqa %ymm0,-0x90(%rbp)
 24f:	ff 
 250:	c5 fd 7f 45 90       	vmovdqa %ymm0,-0x70(%rbp)
 255:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 259:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 260:	00 00 
 262:	75 1a                	jne    27e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x27e>
 264:	31 c0                	xor    %eax,%eax
 266:	c5 f8 77             	vzeroupper
 269:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 26d:	5b                   	pop    %rbx
 26e:	41 5a                	pop    %r10
 270:	41 5c                	pop    %r12
 272:	41 5d                	pop    %r13
 274:	41 5e                	pop    %r14
 276:	41 5f                	pop    %r15
 278:	5d                   	pop    %rbp
 279:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 27d:	c3                   	ret
 27e:	c5 f8 77             	vzeroupper
 281:	e8 00 00 00 00       	call   286 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_keypair_derand+0x286>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   d:	41 ff 72 f8          	push   -0x8(%r10)
  11:	55                   	push   %rbp
  12:	48 89 e5             	mov    %rsp,%rbp
  15:	41 57                	push   %r15
  17:	41 56                	push   %r14
  19:	41 55                	push   %r13
  1b:	41 54                	push   %r12
  1d:	41 52                	push   %r10
  1f:	53                   	push   %rbx
  20:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  27:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  2c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  33:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  38:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  3f:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  44:	48 81 ec 80 03 00 00 	sub    $0x380,%rsp
  4b:	48 89 bd 68 cc ff ff 	mov    %rdi,-0x3398(%rbp)
  52:	48 89 f3             	mov    %rsi,%rbx
  55:	48 89 d6             	mov    %rdx,%rsi
  58:	49 89 cd             	mov    %rcx,%r13
  5b:	49 89 d4             	mov    %rdx,%r12
  5e:	4c 8d bd 90 ed ff ff 	lea    -0x1270(%rbp),%r15
  65:	4c 8d b5 90 d2 ff ff 	lea    -0x2d70(%rbp),%r14
  6c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  73:	00 00 
  75:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  79:	31 c0                	xor    %eax,%eax
  7b:	48 8d 85 90 db ff ff 	lea    -0x2470(%rbp),%rax
  82:	48 89 c7             	mov    %rax,%rdi
  85:	48 89 85 78 cc ff ff 	mov    %rax,-0x3388(%rbp)
  8c:	e8 00 00 00 00       	call   91 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x91>
  91:	48 8d 85 90 ce ff ff 	lea    -0x3170(%rbp),%rax
  98:	48 89 de             	mov    %rbx,%rsi
  9b:	c4 c1 7e 6f 8c 24 80 	vmovdqu 0x480(%r12),%ymm1
  a2:	04 00 00 
  a5:	48 89 85 70 cc ff ff 	mov    %rax,-0x3390(%rbp)
  ac:	48 89 c7             	mov    %rax,%rdi
  af:	48 8d 9d 90 d5 ff ff 	lea    -0x2a70(%rbp),%rbx
  b6:	c5 fd 7f 4d 90       	vmovdqa %ymm1,-0x70(%rbp)
  bb:	c5 f8 77             	vzeroupper
  be:	e8 00 00 00 00       	call   c3 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0xc3>
  c3:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  c7:	ba 01 00 00 00       	mov    $0x1,%edx
  cc:	48 89 c6             	mov    %rax,%rsi
  cf:	4c 89 ff             	mov    %r15,%rdi
  d2:	48 89 85 58 cc ff ff 	mov    %rax,-0x33a8(%rbp)
  d9:	4c 89 bd 60 cc ff ff 	mov    %r15,-0x33a0(%rbp)
  e0:	e8 00 00 00 00       	call   e5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0xe5>
  e5:	48 83 ec 08          	sub    $0x8,%rsp
  e9:	4d 89 e8             	mov    %r13,%r8
  ec:	45 31 c9             	xor    %r9d,%r9d
  ef:	68 ff 00 00 00       	push   $0xff
  f4:	48 8d 95 90 d9 ff ff 	lea    -0x2670(%rbp),%rdx
  fb:	31 c9                	xor    %ecx,%ecx
  fd:	48 89 df             	mov    %rbx,%rdi
 100:	6a 02                	push   $0x2
 102:	48 8d b5 90 d7 ff ff 	lea    -0x2870(%rbp),%rsi
 109:	6a 01                	push   $0x1
 10b:	e8 00 00 00 00       	call   110 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x110>
 110:	48 83 c4 18          	add    $0x18,%rsp
 114:	48 8d 85 90 e1 ff ff 	lea    -0x1e70(%rbp),%rax
 11b:	48 8d 8d 90 d0 ff ff 	lea    -0x2f70(%rbp),%rcx
 122:	48 89 8d 88 cc ff ff 	mov    %rcx,-0x3378(%rbp)
 129:	4d 89 e8             	mov    %r13,%r8
 12c:	48 89 c7             	mov    %rax,%rdi
 12f:	48 8d 95 90 e5 ff ff 	lea    -0x1a70(%rbp),%rdx
 136:	48 89 85 80 cc ff ff 	mov    %rax,-0x3380(%rbp)
 13d:	48 8d b5 90 e3 ff ff 	lea    -0x1c70(%rbp),%rsi
 144:	41 b9 03 00 00 00    	mov    $0x3,%r9d
 14a:	4c 8d ad 90 e7 ff ff 	lea    -0x1870(%rbp),%r13
 151:	6a 06                	push   $0x6
 153:	6a 05                	push   $0x5
 155:	6a 04                	push   $0x4
 157:	e8 00 00 00 00       	call   15c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x15c>
 15c:	48 83 c4 20          	add    $0x20,%rsp
 160:	48 89 df             	mov    %rbx,%rdi
 163:	e8 00 00 00 00       	call   168 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x168>
 168:	48 89 de             	mov    %rbx,%rsi
 16b:	4c 89 f7             	mov    %r14,%rdi
 16e:	e8 00 00 00 00       	call   173 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x173>
 173:	4c 89 ad 50 cc ff ff 	mov    %r13,-0x33b0(%rbp)
 17a:	4c 8b a5 58 cc ff ff 	mov    -0x33a8(%rbp),%r12
 181:	4c 89 fe             	mov    %r15,%rsi
 184:	4c 89 ef             	mov    %r13,%rdi
 187:	4c 89 f1             	mov    %r14,%rcx
 18a:	48 89 da             	mov    %rbx,%rdx
 18d:	49 81 c7 00 06 00 00 	add    $0x600,%r15
 194:	49 81 c5 00 02 00 00 	add    $0x200,%r13
 19b:	e8 00 00 00 00       	call   1a0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1a0>
 1a0:	4d 39 e7             	cmp    %r12,%r15
 1a3:	75 dc                	jne    181 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x181>
 1a5:	4c 8d a5 90 cc ff ff 	lea    -0x3370(%rbp),%r12
 1ac:	4c 8b ad 50 cc ff ff 	mov    -0x33b0(%rbp),%r13
 1b3:	4c 89 f1             	mov    %r14,%rcx
 1b6:	48 89 da             	mov    %rbx,%rdx
 1b9:	48 8b b5 78 cc ff ff 	mov    -0x3388(%rbp),%rsi
 1c0:	4c 89 e7             	mov    %r12,%rdi
 1c3:	e8 00 00 00 00       	call   1c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1c8>
 1c8:	4c 89 ef             	mov    %r13,%rdi
 1cb:	e8 00 00 00 00       	call   1d0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1d0>
 1d0:	4c 89 e7             	mov    %r12,%rdi
 1d3:	e8 00 00 00 00       	call   1d8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1d8>
 1d8:	48 8b b5 80 cc ff ff 	mov    -0x3380(%rbp),%rsi
 1df:	4c 89 ef             	mov    %r13,%rdi
 1e2:	e8 00 00 00 00       	call   1e7 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1e7>
 1e7:	48 8b b5 88 cc ff ff 	mov    -0x3378(%rbp),%rsi
 1ee:	4c 89 e7             	mov    %r12,%rdi
 1f1:	e8 00 00 00 00       	call   1f6 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x1f6>
 1f6:	48 8b b5 70 cc ff ff 	mov    -0x3390(%rbp),%rsi
 1fd:	4c 89 e7             	mov    %r12,%rdi
 200:	e8 00 00 00 00       	call   205 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x205>
 205:	4c 89 ef             	mov    %r13,%rdi
 208:	e8 00 00 00 00       	call   20d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x20d>
 20d:	4c 89 e7             	mov    %r12,%rdi
 210:	e8 00 00 00 00       	call   215 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x215>
 215:	48 8b bd 68 cc ff ff 	mov    -0x3398(%rbp),%rdi
 21c:	4c 89 ee             	mov    %r13,%rsi
 21f:	e8 00 00 00 00       	call   224 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x224>
 224:	48 8b 85 68 cc ff ff 	mov    -0x3398(%rbp),%rax
 22b:	4c 89 e6             	mov    %r12,%rsi
 22e:	48 05 c0 03 00 00    	add    $0x3c0,%rax
 234:	48 89 c7             	mov    %rax,%rdi
 237:	e8 00 00 00 00       	call   23c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x23c>
 23c:	31 c0                	xor    %eax,%eax
 23e:	4c 89 f7             	mov    %r14,%rdi
 241:	b9 60 00 00 00       	mov    $0x60,%ecx
 246:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 249:	48 8b bd 88 cc ff ff 	mov    -0x3378(%rbp),%rdi
 250:	b9 40 00 00 00       	mov    $0x40,%ecx
 255:	48 8b 95 88 cc ff ff 	mov    -0x3378(%rbp),%rdx
 25c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 25f:	48 8b bd 70 cc ff ff 	mov    -0x3390(%rbp),%rdi
 266:	b9 40 00 00 00       	mov    $0x40,%ecx
 26b:	48 8b 95 70 cc ff ff 	mov    -0x3390(%rbp),%rdx
 272:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 275:	b9 40 00 00 00       	mov    $0x40,%ecx
 27a:	4c 89 e7             	mov    %r12,%rdi
 27d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 280:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 285:	4c 89 ef             	mov    %r13,%rdi
 288:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 28b:	48 8b bd 80 cc ff ff 	mov    -0x3380(%rbp),%rdi
 292:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 297:	48 8b 95 80 cc ff ff 	mov    -0x3380(%rbp),%rdx
 29e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2a1:	48 8b bd 78 cc ff ff 	mov    -0x3388(%rbp),%rdi
 2a8:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 2ad:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2b0:	48 8b bd 78 cc ff ff 	mov    -0x3388(%rbp),%rdi
 2b7:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 2bc:	48 89 df             	mov    %rbx,%rdi
 2bf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2c2:	48 8b bd 60 cc ff ff 	mov    -0x33a0(%rbp),%rdi
 2c9:	b9 40 02 00 00       	mov    $0x240,%ecx
 2ce:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2d1:	48 8b bd 60 cc ff ff 	mov    -0x33a0(%rbp),%rdi
 2d8:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
 2dc:	c5 fd 7f 45 90       	vmovdqa %ymm0,-0x70(%rbp)
 2e1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 2e5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 2ec:	00 00 
 2ee:	75 1a                	jne    30a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x30a>
 2f0:	31 c0                	xor    %eax,%eax
 2f2:	c5 f8 77             	vzeroupper
 2f5:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 2f9:	5b                   	pop    %rbx
 2fa:	41 5a                	pop    %r10
 2fc:	41 5c                	pop    %r12
 2fe:	41 5d                	pop    %r13
 300:	41 5e                	pop    %r14
 302:	41 5f                	pop    %r15
 304:	5d                   	pop    %rbp
 305:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 309:	c3                   	ret
 30a:	c5 f8 77             	vzeroupper
 30d:	e8 00 00 00 00       	call   312 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_enc+0x312>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	41 56                	push   %r14
   c:	41 55                	push   %r13
   e:	41 54                	push   %r12
  10:	53                   	push   %rbx
  11:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  15:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  1c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  21:	48 81 ec 40 03 00 00 	sub    $0x340,%rsp
  28:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  2d:	48 8d 9c 24 20 07 00 	lea    0x720(%rsp),%rbx
  34:	00 
  35:	49 89 f4             	mov    %rsi,%r12
  38:	49 89 d5             	mov    %rdx,%r13
  3b:	48 89 df             	mov    %rbx,%rdi
  3e:	4c 8d bc 24 20 0d 00 	lea    0xd20(%rsp),%r15
  45:	00 
  46:	4c 8d b4 24 20 04 00 	lea    0x420(%rsp),%r14
  4d:	00 
  4e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  55:	00 00 
  57:	48 89 84 24 38 13 00 	mov    %rax,0x1338(%rsp)
  5e:	00 
  5f:	31 c0                	xor    %eax,%eax
  61:	e8 00 00 00 00       	call   66 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x66>
  66:	49 8d b4 24 c0 03 00 	lea    0x3c0(%r12),%rsi
  6d:	00 
  6e:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  73:	4c 89 e7             	mov    %r12,%rdi
  76:	e8 00 00 00 00       	call   7b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x7b>
  7b:	4c 89 ee             	mov    %r13,%rsi
  7e:	4c 89 ff             	mov    %r15,%rdi
  81:	4c 8d ac 24 20 02 00 	lea    0x220(%rsp),%r13
  88:	00 
  89:	e8 00 00 00 00       	call   8e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x8e>
  8e:	48 89 df             	mov    %rbx,%rdi
  91:	e8 00 00 00 00       	call   96 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x96>
  96:	48 89 de             	mov    %rbx,%rsi
  99:	4c 89 f7             	mov    %r14,%rdi
  9c:	e8 00 00 00 00       	call   a1 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xa1>
  a1:	4c 89 f1             	mov    %r14,%rcx
  a4:	48 89 da             	mov    %rbx,%rdx
  a7:	4c 89 fe             	mov    %r15,%rsi
  aa:	4c 89 ef             	mov    %r13,%rdi
  ad:	e8 00 00 00 00       	call   b2 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xb2>
  b2:	4c 89 ef             	mov    %r13,%rdi
  b5:	e8 00 00 00 00       	call   ba <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xba>
  ba:	4c 89 ee             	mov    %r13,%rsi
  bd:	4c 89 e7             	mov    %r12,%rdi
  c0:	e8 00 00 00 00       	call   c5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xc5>
  c5:	4c 89 e7             	mov    %r12,%rdi
  c8:	e8 00 00 00 00       	call   cd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xcd>
  cd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  d2:	4c 89 e6             	mov    %r12,%rsi
  d5:	e8 00 00 00 00       	call   da <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0xda>
  da:	31 c0                	xor    %eax,%eax
  dc:	4c 89 f7             	mov    %r14,%rdi
  df:	b9 60 00 00 00       	mov    $0x60,%ecx
  e4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  e7:	b9 40 00 00 00       	mov    $0x40,%ecx
  ec:	4c 89 ef             	mov    %r13,%rdi
  ef:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  f2:	b9 40 00 00 00       	mov    $0x40,%ecx
  f7:	4c 89 e7             	mov    %r12,%rdi
  fa:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  fd:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 102:	4c 89 ff             	mov    %r15,%rdi
 105:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 108:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 10d:	48 89 df             	mov    %rbx,%rdi
 110:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 113:	48 8b 84 24 38 13 00 	mov    0x1338(%rsp),%rax
 11a:	00 
 11b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 122:	00 00 
 124:	75 11                	jne    137 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x137>
 126:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 12a:	31 c0                	xor    %eax,%eax
 12c:	5b                   	pop    %rbx
 12d:	41 5c                	pop    %r12
 12f:	41 5d                	pop    %r13
 131:	41 5e                	pop    %r14
 133:	41 5f                	pop    %r15
 135:	5d                   	pop    %rbp
 136:	c3                   	ret
 137:	e8 00 00 00 00       	call   13c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_indcpa_dec+0x13c>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/kem.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 fe             	mov    %rdi,%rsi
   8:	48 89 e5             	mov    %rsp,%rbp
   b:	41 55                	push   %r13
   d:	49 89 fd             	mov    %rdi,%r13
  10:	41 54                	push   %r12
  12:	53                   	push   %rbx
  13:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  17:	48 81 ec a0 0a 00 00 	sub    $0xaa0,%rsp
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 84 24 98 0a 00 	mov    %rax,0xa98(%rsp)
  2e:	00 
  2f:	31 c0                	xor    %eax,%eax
  31:	48 89 e3             	mov    %rsp,%rbx
  34:	4c 8d a4 24 00 06 00 	lea    0x600(%rsp),%r12
  3b:	00 
  3c:	48 89 df             	mov    %rbx,%rdi
  3f:	e8 00 00 00 00       	call   44 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x44>
  44:	48 89 df             	mov    %rbx,%rdi
  47:	e8 00 00 00 00       	call   4c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x4c>
  4c:	48 89 de             	mov    %rbx,%rsi
  4f:	4c 89 e7             	mov    %r12,%rdi
  52:	e8 00 00 00 00       	call   57 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x57>
  57:	c5 e9 ef d2          	vpxor  %xmm2,%xmm2,%xmm2
  5b:	31 c0                	xor    %eax,%eax
  5d:	c5 fd 6f ca          	vmovdqa %ymm2,%ymm1
  61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68:	c4 c1 7e 6f 5c 05 00 	vmovdqu 0x0(%r13,%rax,1),%ymm3
  6f:	c4 c1 65 ef 04 04    	vpxor  (%r12,%rax,1),%ymm3,%ymm0
  75:	48 83 c0 20          	add    $0x20,%rax
  79:	c5 f5 eb c8          	vpor   %ymm0,%ymm1,%ymm1
  7d:	c5 ed ef d0          	vpxor  %ymm0,%ymm2,%ymm2
  81:	48 3d 80 04 00 00    	cmp    $0x480,%rax
  87:	75 df                	jne    68 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x68>
  89:	c5 f9 6f c2          	vmovdqa %xmm2,%xmm0
  8d:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  93:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
  97:	c5 e9 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm2
  9c:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
  a0:	c5 e9 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm2
  a5:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
  a9:	c5 e9 73 d8 02       	vpsrldq $0x2,%xmm0,%xmm2
  ae:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
  b2:	c5 e9 73 d8 01       	vpsrldq $0x1,%xmm0,%xmm2
  b7:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
  bb:	c4 e3 79 14 c6 00    	vpextrb $0x0,%xmm0,%esi
  c1:	c4 e3 7d 39 c8 01    	vextracti128 $0x1,%ymm1,%xmm0
  c7:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  cb:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  d0:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  d4:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  d9:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  dd:	c5 f1 73 d8 02       	vpsrldq $0x2,%xmm0,%xmm1
  e2:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  e6:	c5 f1 73 d8 01       	vpsrldq $0x1,%xmm0,%xmm1
  eb:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  ef:	c4 e3 79 14 c2 00    	vpextrb $0x0,%xmm0,%edx
  f5:	f7 da                	neg    %edx
  f7:	c1 fa 10             	sar    $0x10,%edx
  fa:	31 f2                	xor    %esi,%edx
  fc:	31 c0                	xor    %eax,%eax
  fe:	4c 89 e7             	mov    %r12,%rdi
 101:	b9 90 00 00 00       	mov    $0x90,%ecx
 106:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 109:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 10e:	48 89 df             	mov    %rbx,%rdi
 111:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 114:	31 c0                	xor    %eax,%eax
 116:	40 38 f2             	cmp    %sil,%dl
 119:	0f 95 c0             	setne  %al
 11c:	f7 d8                	neg    %eax
 11e:	48 8b 94 24 98 0a 00 	mov    0xa98(%rsp),%rdx
 125:	00 
 126:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 12d:	00 00 
 12f:	75 0e                	jne    13f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x13f>
 131:	c5 f8 77             	vzeroupper
 134:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
 138:	5b                   	pop    %rbx
 139:	41 5c                	pop    %r12
 13b:	41 5d                	pop    %r13
 13d:	5d                   	pop    %rbp
 13e:	c3                   	ret
 13f:	c5 f8 77             	vzeroupper
 142:	e8 00 00 00 00       	call   147 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_pk+0x147>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 8d b7 80 04 00 00 	lea    0x480(%rdi),%rsi
   c:	ba a0 04 00 00       	mov    $0x4a0,%edx
  11:	48 89 e5             	mov    %rsp,%rbp
  14:	41 54                	push   %r12
  16:	53                   	push   %rbx
  17:	48 89 fb             	mov    %rdi,%rbx
  1a:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1e:	48 83 ec 40          	sub    $0x40,%rsp
  22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  29:	00 00 
  2b:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  30:	31 c0                	xor    %eax,%eax
  32:	49 89 e4             	mov    %rsp,%r12
  35:	4c 89 e7             	mov    %r12,%rdi
  38:	e8 00 00 00 00       	call   3d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk+0x3d>
  3d:	c5 fe 6f 93 20 09 00 	vmovdqu 0x920(%rbx),%ymm2
  44:	00 
  45:	c5 ed ef 14 24       	vpxor  (%rsp),%ymm2,%ymm2
  4a:	c5 f9 6f c2          	vmovdqa %xmm2,%xmm0
  4e:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
  54:	c5 f9 ef ca          	vpxor  %xmm2,%xmm0,%xmm1
  58:	c5 f9 eb c2          	vpor   %xmm2,%xmm0,%xmm0
  5c:	c5 e1 73 d9 08       	vpsrldq $0x8,%xmm1,%xmm3
  61:	c5 f1 ef cb          	vpxor  %xmm3,%xmm1,%xmm1
  65:	c5 e1 73 d9 04       	vpsrldq $0x4,%xmm1,%xmm3
  6a:	c5 f1 ef cb          	vpxor  %xmm3,%xmm1,%xmm1
  6e:	c5 e1 73 d9 02       	vpsrldq $0x2,%xmm1,%xmm3
  73:	c5 f1 ef cb          	vpxor  %xmm3,%xmm1,%xmm1
  77:	c5 e1 73 d9 01       	vpsrldq $0x1,%xmm1,%xmm3
  7c:	c5 f1 ef cb          	vpxor  %xmm3,%xmm1,%xmm1
  80:	c4 e3 79 14 ca 00    	vpextrb $0x0,%xmm1,%edx
  86:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
  8b:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  8f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
  94:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  98:	c5 f1 73 d8 02       	vpsrldq $0x2,%xmm0,%xmm1
  9d:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  a1:	c5 f1 73 d8 01       	vpsrldq $0x1,%xmm0,%xmm1
  a6:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
  aa:	c4 e3 79 14 c0 00    	vpextrb $0x0,%xmm0,%eax
  b0:	f7 d8                	neg    %eax
  b2:	c1 f8 10             	sar    $0x10,%eax
  b5:	31 d0                	xor    %edx,%eax
  b7:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  bb:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
  c0:	38 d0                	cmp    %dl,%al
  c2:	0f 95 c0             	setne  %al
  c5:	0f b6 c0             	movzbl %al,%eax
  c8:	f7 d8                	neg    %eax
  ca:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  cf:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  d6:	00 00 
  d8:	75 0c                	jne    e6 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk+0xe6>
  da:	c5 f8 77             	vzeroupper
  dd:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
  e1:	5b                   	pop    %rbx
  e2:	41 5c                	pop    %r12
  e4:	5d                   	pop    %rbp
  e5:	c3                   	ret
  e6:	c5 f8 77             	vzeroupper
  e9:	e8 00 00 00 00       	call   ee <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_check_sk+0xee>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair_derand>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 56                	push   %r14
   a:	41 55                	push   %r13
   c:	49 89 fd             	mov    %rdi,%r13
   f:	41 54                	push   %r12
  11:	49 89 d4             	mov    %rdx,%r12
  14:	53                   	push   %rbx
  15:	48 89 f3             	mov    %rsi,%rbx
  18:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1c:	e8 00 00 00 00       	call   21 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair_derand+0x21>
  21:	41 89 c6             	mov    %eax,%r14d
  24:	85 c0                	test   %eax,%eax
  26:	0f 85 7c 00 00 00    	jne    a8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair_derand+0xa8>
  2c:	49 8b 45 00          	mov    0x0(%r13),%rax
  30:	48 8d bb 88 04 00 00 	lea    0x488(%rbx),%rdi
  37:	48 8d 8b 80 04 00 00 	lea    0x480(%rbx),%rcx
  3e:	4c 89 ee             	mov    %r13,%rsi
  41:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  45:	48 89 83 80 04 00 00 	mov    %rax,0x480(%rbx)
  4c:	48 29 f9             	sub    %rdi,%rcx
  4f:	49 8b 95 98 04 00 00 	mov    0x498(%r13),%rdx
  56:	48 8d 83 20 09 00 00 	lea    0x920(%rbx),%rax
  5d:	48 29 ce             	sub    %rcx,%rsi
  60:	81 c1 a0 04 00 00    	add    $0x4a0,%ecx
  66:	48 89 93 18 09 00 00 	mov    %rdx,0x918(%rbx)
  6d:	c1 e9 03             	shr    $0x3,%ecx
  70:	ba a0 04 00 00       	mov    $0x4a0,%edx
  75:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
  78:	4c 89 ee             	mov    %r13,%rsi
  7b:	48 89 c7             	mov    %rax,%rdi
  7e:	e8 00 00 00 00       	call   83 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair_derand+0x83>
  83:	c4 c1 7e 6f 44 24 20 	vmovdqu 0x20(%r12),%ymm0
  8a:	44 89 f0             	mov    %r14d,%eax
  8d:	c5 fe 7f 83 40 09 00 	vmovdqu %ymm0,0x940(%rbx)
  94:	00 
  95:	c5 f8 77             	vzeroupper
  98:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  9c:	5b                   	pop    %rbx
  9d:	41 5c                	pop    %r12
  9f:	41 5d                	pop    %r13
  a1:	41 5e                	pop    %r14
  a3:	5d                   	pop    %rbp
  a4:	c3                   	ret
  a5:	0f 1f 00             	nopl   (%rax)
  a8:	49 8d 7d 08          	lea    0x8(%r13),%rdi
  ac:	4c 89 e9             	mov    %r13,%rcx
  af:	31 c0                	xor    %eax,%eax
  b1:	49 c7 45 00 00 00 00 	movq   $0x0,0x0(%r13)
  b8:	00 
  b9:	49 c7 85 98 04 00 00 	movq   $0x0,0x498(%r13)
  c0:	00 00 00 00 
  c4:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  c8:	48 29 f9             	sub    %rdi,%rcx
  cb:	81 c1 a0 04 00 00    	add    $0x4a0,%ecx
  d1:	c1 e9 03             	shr    $0x3,%ecx
  d4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  d7:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  db:	48 89 d9             	mov    %rbx,%rcx
  de:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
  e5:	48 c7 83 58 09 00 00 	movq   $0x0,0x958(%rbx)
  ec:	00 00 00 00 
  f0:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  f4:	48 29 f9             	sub    %rdi,%rcx
  f7:	81 c1 60 09 00 00    	add    $0x960,%ecx
  fd:	c1 e9 03             	shr    $0x3,%ecx
 100:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 103:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
 107:	44 89 f0             	mov    %r14d,%eax
 10a:	5b                   	pop    %rbx
 10b:	41 5c                	pop    %r12
 10d:	41 5d                	pop    %r13
 10f:	41 5e                	pop    %r14
 111:	5d                   	pop    %rbp
 112:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 55                	push   %r13
   a:	49 89 f5             	mov    %rsi,%r13
   d:	be 40 00 00 00       	mov    $0x40,%esi
  12:	41 54                	push   %r12
  14:	49 89 fc             	mov    %rdi,%r12
  17:	53                   	push   %rbx
  18:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1c:	48 83 ec 60          	sub    $0x60,%rsp
  20:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  27:	00 00 
  29:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  2e:	31 c0                	xor    %eax,%eax
  30:	48 89 e3             	mov    %rsp,%rbx
  33:	48 89 df             	mov    %rbx,%rdi
  36:	e8 00 00 00 00       	call   3b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair+0x3b>
  3b:	48 89 da             	mov    %rbx,%rdx
  3e:	4c 89 ee             	mov    %r13,%rsi
  41:	4c 89 e7             	mov    %r12,%rdi
  44:	e8 00 00 00 00       	call   49 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair+0x49>
  49:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  4d:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
  52:	c5 fd 7f 44 24 20    	vmovdqa %ymm0,0x20(%rsp)
  58:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  5d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  64:	00 00 
  66:	75 0e                	jne    76 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair+0x76>
  68:	c5 f8 77             	vzeroupper
  6b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  6f:	5b                   	pop    %rbx
  70:	41 5c                	pop    %r12
  72:	41 5d                	pop    %r13
  74:	5d                   	pop    %rbp
  75:	c3                   	ret
  76:	c5 f8 77             	vzeroupper
  79:	e8 00 00 00 00       	call   7e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_keypair+0x7e>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	41 56                	push   %r14
   c:	49 89 f6             	mov    %rsi,%r14
   f:	41 55                	push   %r13
  11:	49 89 cd             	mov    %rcx,%r13
  14:	41 54                	push   %r12
  16:	49 89 fc             	mov    %rdi,%r12
  19:	48 89 d7             	mov    %rdx,%rdi
  1c:	53                   	push   %rbx
  1d:	48 89 d3             	mov    %rdx,%rbx
  20:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  24:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  2b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  32:	00 00 
  34:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  3b:	00 
  3c:	31 c0                	xor    %eax,%eax
  3e:	e8 00 00 00 00       	call   43 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0x43>
  43:	85 c0                	test   %eax,%eax
  45:	74 49                	je     90 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0x90>
  47:	49 89 e5             	mov    %rsp,%r13
  4a:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
  4f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  53:	c5 fd 7f 44 24 40    	vmovdqa %ymm0,0x40(%rsp)
  59:	c5 fd 7f 44 24 60    	vmovdqa %ymm0,0x60(%rsp)
  5f:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
  64:	c5 fd 7f 44 24 20    	vmovdqa %ymm0,0x20(%rsp)
  6a:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  71:	00 
  72:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  79:	00 00 
  7b:	75 76                	jne    f3 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0xf3>
  7d:	c5 f8 77             	vzeroupper
  80:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  84:	5b                   	pop    %rbx
  85:	41 5c                	pop    %r12
  87:	41 5d                	pop    %r13
  89:	41 5e                	pop    %r14
  8b:	41 5f                	pop    %r15
  8d:	5d                   	pop    %rbp
  8e:	c3                   	ret
  8f:	90                   	nop
  90:	c4 c1 7e 6f 4d 00    	vmovdqu 0x0(%r13),%ymm1
  96:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  9b:	49 89 e5             	mov    %rsp,%r13
  9e:	ba a0 04 00 00       	mov    $0x4a0,%edx
  a3:	48 89 de             	mov    %rbx,%rsi
  a6:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
  ab:	c5 fd 7f 0c 24       	vmovdqa %ymm1,(%rsp)
  b0:	c5 f8 77             	vzeroupper
  b3:	e8 00 00 00 00       	call   b8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0xb8>
  b8:	ba 40 00 00 00       	mov    $0x40,%edx
  bd:	4c 89 ee             	mov    %r13,%rsi
  c0:	4c 89 ff             	mov    %r15,%rdi
  c3:	e8 00 00 00 00       	call   c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0xc8>
  c8:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
  cd:	48 89 da             	mov    %rbx,%rdx
  d0:	4c 89 ee             	mov    %r13,%rsi
  d3:	4c 89 e7             	mov    %r12,%rdi
  d6:	e8 00 00 00 00       	call   db <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0xdb>
  db:	85 c0                	test   %eax,%eax
  dd:	0f 85 6c ff ff ff    	jne    4f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0x4f>
  e3:	c5 fd 6f 54 24 40    	vmovdqa 0x40(%rsp),%ymm2
  e9:	c4 c1 7e 7f 16       	vmovdqu %ymm2,(%r14)
  ee:	e9 5c ff ff ff       	jmp    4f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0x4f>
  f3:	c5 f8 77             	vzeroupper
  f6:	e8 00 00 00 00       	call   fb <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc_derand+0xfb>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 56                	push   %r14
   a:	49 89 d6             	mov    %rdx,%r14
   d:	41 55                	push   %r13
   f:	49 89 f5             	mov    %rsi,%r13
  12:	be 20 00 00 00       	mov    $0x20,%esi
  17:	41 54                	push   %r12
  19:	49 89 fc             	mov    %rdi,%r12
  1c:	53                   	push   %rbx
  1d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  21:	48 83 ec 40          	sub    $0x40,%rsp
  25:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2c:	00 00 
  2e:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  33:	31 c0                	xor    %eax,%eax
  35:	48 89 e3             	mov    %rsp,%rbx
  38:	48 89 df             	mov    %rbx,%rdi
  3b:	e8 00 00 00 00       	call   40 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc+0x40>
  40:	48 89 d9             	mov    %rbx,%rcx
  43:	4c 89 f2             	mov    %r14,%rdx
  46:	4c 89 ee             	mov    %r13,%rsi
  49:	4c 89 e7             	mov    %r12,%rdi
  4c:	e8 00 00 00 00       	call   51 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc+0x51>
  51:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  55:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
  5a:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  5f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  66:	00 00 
  68:	75 10                	jne    7a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc+0x7a>
  6a:	c5 f8 77             	vzeroupper
  6d:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  71:	5b                   	pop    %rbx
  72:	41 5c                	pop    %r12
  74:	41 5d                	pop    %r13
  76:	41 5e                	pop    %r14
  78:	5d                   	pop    %rbp
  79:	c3                   	ret
  7a:	c5 f8 77             	vzeroupper
  7d:	e8 00 00 00 00       	call   82 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_enc+0x82>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	41 56                	push   %r14
   c:	49 89 f6             	mov    %rsi,%r14
   f:	41 55                	push   %r13
  11:	49 89 d5             	mov    %rdx,%r13
  14:	41 54                	push   %r12
  16:	49 89 fc             	mov    %rdi,%r12
  19:	48 89 d7             	mov    %rdx,%rdi
  1c:	53                   	push   %rbx
  1d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  21:	48 81 ec 20 05 00 00 	sub    $0x520,%rsp
  28:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2f:	00 00 
  31:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  38:	00 
  39:	31 c0                	xor    %eax,%eax
  3b:	e8 00 00 00 00       	call   40 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x40>
  40:	85 c0                	test   %eax,%eax
  42:	74 6c                	je     b0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0xb0>
  44:	89 c3                	mov    %eax,%ebx
  46:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
  4b:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
  50:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
  57:	00 
  58:	31 c0                	xor    %eax,%eax
  5a:	4c 89 c7             	mov    %r8,%rdi
  5d:	b9 8c 00 00 00       	mov    $0x8c,%ecx
  62:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  65:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  69:	c5 fd 7f 44 24 60    	vmovdqa %ymm0,0x60(%rsp)
  6f:	c5 fd 7f 84 24 80 00 	vmovdqa %ymm0,0x80(%rsp)
  76:	00 00 
  78:	c5 fd 7f 44 24 20    	vmovdqa %ymm0,0x20(%rsp)
  7e:	c5 fd 7f 44 24 40    	vmovdqa %ymm0,0x40(%rsp)
  84:	48 8b 84 24 18 05 00 	mov    0x518(%rsp),%rax
  8b:	00 
  8c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  93:	00 00 
  95:	0f 85 fe 01 00 00    	jne    299 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x299>
  9b:	c5 f8 77             	vzeroupper
  9e:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  a2:	89 d8                	mov    %ebx,%eax
  a4:	5b                   	pop    %rbx
  a5:	41 5c                	pop    %r12
  a7:	41 5d                	pop    %r13
  a9:	41 5e                	pop    %r14
  ab:	41 5f                	pop    %r15
  ad:	5d                   	pop    %rbp
  ae:	c3                   	ret
  af:	90                   	nop
  b0:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
  b5:	4c 89 ea             	mov    %r13,%rdx
  b8:	4c 89 f6             	mov    %r14,%rsi
  bb:	4c 89 d7             	mov    %r10,%rdi
  be:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
  c3:	e8 00 00 00 00       	call   c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0xc8>
  c8:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  cd:	85 c0                	test   %eax,%eax
  cf:	89 c3                	mov    %eax,%ebx
  d1:	74 15                	je     e8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0xe8>
  d3:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
  d8:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
  df:	00 
  e0:	e9 73 ff ff ff       	jmp    58 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x58>
  e5:	0f 1f 00             	nopl   (%rax)
  e8:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
  ed:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
  f2:	4c 89 d6             	mov    %r10,%rsi
  f5:	ba 40 00 00 00       	mov    $0x40,%edx
  fa:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  ff:	4c 89 cf             	mov    %r9,%rdi
 102:	c4 c1 7e 6f a5 20 09 	vmovdqu 0x920(%r13),%ymm4
 109:	00 00 
 10b:	c5 fd 7f 64 24 40    	vmovdqa %ymm4,0x40(%rsp)
 111:	c5 f8 77             	vzeroupper
 114:	e8 00 00 00 00       	call   119 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x119>
 119:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
 11e:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
 125:	00 
 126:	4c 89 c7             	mov    %r8,%rdi
 129:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
 130:	00 
 131:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 136:	49 8d 95 80 04 00 00 	lea    0x480(%r13),%rdx
 13d:	4c 89 d6             	mov    %r10,%rsi
 140:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
 145:	e8 00 00 00 00       	call   14a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x14a>
 14a:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 14f:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
 154:	85 c0                	test   %eax,%eax
 156:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 15b:	89 c3                	mov    %eax,%ebx
 15d:	0f 85 f5 fe ff ff    	jne    58 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x58>
 163:	c5 e9 ef d2          	vpxor  %xmm2,%xmm2,%xmm2
 167:	31 c0                	xor    %eax,%eax
 169:	c5 fd 6f ca          	vmovdqa %ymm2,%ymm1
 16d:	0f 1f 00             	nopl   (%rax)
 170:	c4 c1 7e 6f 1c 06    	vmovdqu (%r14,%rax,1),%ymm3
 176:	c4 c1 65 ef 04 00    	vpxor  (%r8,%rax,1),%ymm3,%ymm0
 17c:	48 83 c0 20          	add    $0x20,%rax
 180:	c5 f5 eb c8          	vpor   %ymm0,%ymm1,%ymm1
 184:	c5 ed ef d0          	vpxor  %ymm0,%ymm2,%ymm2
 188:	48 3d 40 04 00 00    	cmp    $0x440,%rax
 18e:	75 e0                	jne    170 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x170>
 190:	c5 f9 6f c2          	vmovdqa %xmm2,%xmm0
 194:	c4 e3 7d 39 d2 01    	vextracti128 $0x1,%ymm2,%xmm2
 19a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
 19f:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
 1a3:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
 1a8:	c5 e9 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm2
 1ad:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
 1b1:	c5 e9 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm2
 1b6:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
 1ba:	c5 e9 73 d8 02       	vpsrldq $0x2,%xmm0,%xmm2
 1bf:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
 1c3:	c5 e9 73 d8 01       	vpsrldq $0x1,%xmm0,%xmm2
 1c8:	c5 f9 ef c2          	vpxor  %xmm2,%xmm0,%xmm0
 1cc:	c4 e3 79 14 c0 00    	vpextrb $0x0,%xmm0,%eax
 1d2:	c4 e3 7d 39 c8 01    	vextracti128 $0x1,%ymm1,%xmm0
 1d8:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
 1dc:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
 1e1:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
 1e5:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
 1ea:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
 1ee:	c5 f1 73 d8 02       	vpsrldq $0x2,%xmm0,%xmm1
 1f3:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
 1f7:	c5 f1 73 d8 01       	vpsrldq $0x1,%xmm0,%xmm1
 1fc:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
 200:	c4 c3 79 14 c7 00    	vpextrb $0x0,%xmm0,%r15d
 206:	41 f7 df             	neg    %r15d
 209:	41 c1 ff 10          	sar    $0x10,%r15d
 20d:	41 31 c7             	xor    %eax,%r15d
 210:	41 31 c7             	xor    %eax,%r15d
 213:	b9 88 00 00 00       	mov    $0x88,%ecx
 218:	4c 89 f6             	mov    %r14,%rsi
 21b:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 220:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
 227:	00 
 228:	4c 89 c2             	mov    %r8,%rdx
 22b:	45 0f b6 ff          	movzbl %r15b,%r15d
 22f:	c4 c1 7e 6f ad 40 09 	vmovdqu 0x940(%r13),%ymm5
 236:	00 00 
 238:	48 89 c7             	mov    %rax,%rdi
 23b:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
 23e:	b9 60 04 00 00       	mov    $0x460,%ecx
 243:	4c 89 e7             	mov    %r12,%rdi
 246:	c5 fd 7f ac 24 a0 00 	vmovdqa %ymm5,0xa0(%rsp)
 24d:	00 00 
 24f:	be 20 00 00 00       	mov    $0x20,%esi
 254:	c5 f8 77             	vzeroupper
 257:	e8 00 00 00 00       	call   25c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x25c>
 25c:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
 261:	41 f7 df             	neg    %r15d
 264:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
 269:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 26e:	31 c0                	xor    %eax,%eax
 270:	41 0f b6 34 01       	movzbl (%r9,%rax,1),%esi
 275:	44 89 f9             	mov    %r15d,%ecx
 278:	41 0f b6 14 04       	movzbl (%r12,%rax,1),%edx
 27d:	c1 f9 10             	sar    $0x10,%ecx
 280:	31 f2                	xor    %esi,%edx
 282:	21 ca                	and    %ecx,%edx
 284:	31 f2                	xor    %esi,%edx
 286:	41 88 14 04          	mov    %dl,(%r12,%rax,1)
 28a:	48 83 c0 01          	add    $0x1,%rax
 28e:	48 83 f8 20          	cmp    $0x20,%rax
 292:	75 dc                	jne    270 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x270>
 294:	e9 bf fd ff ff       	jmp    58 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x58>
 299:	c5 f8 77             	vzeroupper
 29c:	e8 00 00 00 00       	call   2a1 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_dec+0x2a1>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/poly.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	e9 00 00 00 00       	jmp    9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_tomont+0x9>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_reduce:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_reduce>:
   0:	f3 0f 1e fa          	endbr64
   4:	e9 00 00 00 00       	jmp    9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_reduce+0x9>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_add:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_add>:
   0:	f3 0f 1e fa          	endbr64
   4:	c5 fd 6f 0f          	vmovdqa (%rdi),%ymm1
   8:	c5 f5 fd 06          	vpaddw (%rsi),%ymm1,%ymm0
   c:	c5 fd 6f 57 20       	vmovdqa 0x20(%rdi),%ymm2
  11:	c5 fd 6f 5f 40       	vmovdqa 0x40(%rdi),%ymm3
  16:	c5 fd 7f 07          	vmovdqa %ymm0,(%rdi)
  1a:	c5 ed fd 46 20       	vpaddw 0x20(%rsi),%ymm2,%ymm0
  1f:	c5 fd 6f 67 60       	vmovdqa 0x60(%rdi),%ymm4
  24:	c5 fd 6f af 80 00 00 	vmovdqa 0x80(%rdi),%ymm5
  2b:	00 
  2c:	c5 fd 6f b7 a0 00 00 	vmovdqa 0xa0(%rdi),%ymm6
  33:	00 
  34:	c5 fd 7f 47 20       	vmovdqa %ymm0,0x20(%rdi)
  39:	c5 e5 fd 46 40       	vpaddw 0x40(%rsi),%ymm3,%ymm0
  3e:	c5 fd 6f bf c0 00 00 	vmovdqa 0xc0(%rdi),%ymm7
  45:	00 
  46:	c5 fd 6f 8f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm1
  4d:	00 
  4e:	c5 fd 6f 97 00 01 00 	vmovdqa 0x100(%rdi),%ymm2
  55:	00 
  56:	c5 fd 7f 47 40       	vmovdqa %ymm0,0x40(%rdi)
  5b:	c5 dd fd 46 60       	vpaddw 0x60(%rsi),%ymm4,%ymm0
  60:	c5 fd 6f 9f 20 01 00 	vmovdqa 0x120(%rdi),%ymm3
  67:	00 
  68:	c5 fd 6f a7 40 01 00 	vmovdqa 0x140(%rdi),%ymm4
  6f:	00 
  70:	c5 fd 7f 47 60       	vmovdqa %ymm0,0x60(%rdi)
  75:	c5 d5 fd 86 80 00 00 	vpaddw 0x80(%rsi),%ymm5,%ymm0
  7c:	00 
  7d:	c5 fd 7f 87 80 00 00 	vmovdqa %ymm0,0x80(%rdi)
  84:	00 
  85:	c5 cd fd 86 a0 00 00 	vpaddw 0xa0(%rsi),%ymm6,%ymm0
  8c:	00 
  8d:	c5 fd 7f 87 a0 00 00 	vmovdqa %ymm0,0xa0(%rdi)
  94:	00 
  95:	c5 c5 fd 86 c0 00 00 	vpaddw 0xc0(%rsi),%ymm7,%ymm0
  9c:	00 
  9d:	c5 fd 7f 87 c0 00 00 	vmovdqa %ymm0,0xc0(%rdi)
  a4:	00 
  a5:	c5 f5 fd 86 e0 00 00 	vpaddw 0xe0(%rsi),%ymm1,%ymm0
  ac:	00 
  ad:	c5 fd 7f 87 e0 00 00 	vmovdqa %ymm0,0xe0(%rdi)
  b4:	00 
  b5:	c5 ed fd 86 00 01 00 	vpaddw 0x100(%rsi),%ymm2,%ymm0
  bc:	00 
  bd:	c5 fd 7f 87 00 01 00 	vmovdqa %ymm0,0x100(%rdi)
  c4:	00 
  c5:	c5 e5 fd 86 20 01 00 	vpaddw 0x120(%rsi),%ymm3,%ymm0
  cc:	00 
  cd:	c5 fd 7f 87 20 01 00 	vmovdqa %ymm0,0x120(%rdi)
  d4:	00 
  d5:	c5 dd fd 86 40 01 00 	vpaddw 0x140(%rsi),%ymm4,%ymm0
  dc:	00 
  dd:	c5 fd 7f 87 40 01 00 	vmovdqa %ymm0,0x140(%rdi)
  e4:	00 
  e5:	c5 fd 6f af 60 01 00 	vmovdqa 0x160(%rdi),%ymm5
  ec:	00 
  ed:	c5 d5 fd 86 60 01 00 	vpaddw 0x160(%rsi),%ymm5,%ymm0
  f4:	00 
  f5:	c5 fd 6f b7 80 01 00 	vmovdqa 0x180(%rdi),%ymm6
  fc:	00 
  fd:	c5 fd 6f bf a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm7
 104:	00 
 105:	c5 fd 7f 87 60 01 00 	vmovdqa %ymm0,0x160(%rdi)
 10c:	00 
 10d:	c5 cd fd 86 80 01 00 	vpaddw 0x180(%rsi),%ymm6,%ymm0
 114:	00 
 115:	c5 fd 6f 8f c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm1
 11c:	00 
 11d:	c5 fd 7f 87 80 01 00 	vmovdqa %ymm0,0x180(%rdi)
 124:	00 
 125:	c5 c5 fd 86 a0 01 00 	vpaddw 0x1a0(%rsi),%ymm7,%ymm0
 12c:	00 
 12d:	c5 fd 7f 87 a0 01 00 	vmovdqa %ymm0,0x1a0(%rdi)
 134:	00 
 135:	c5 f5 fd 86 c0 01 00 	vpaddw 0x1c0(%rsi),%ymm1,%ymm0
 13c:	00 
 13d:	c5 fd 7f 87 c0 01 00 	vmovdqa %ymm0,0x1c0(%rdi)
 144:	00 
 145:	c5 fd 6f 86 e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm0
 14c:	00 
 14d:	c5 fd fd 87 e0 01 00 	vpaddw 0x1e0(%rdi),%ymm0,%ymm0
 154:	00 
 155:	c5 fd 7f 87 e0 01 00 	vmovdqa %ymm0,0x1e0(%rdi)
 15c:	00 
 15d:	c5 f8 77             	vzeroupper
 160:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_sub:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_sub>:
   0:	f3 0f 1e fa          	endbr64
   4:	c5 fd 6f 0f          	vmovdqa (%rdi),%ymm1
   8:	c5 f5 f9 06          	vpsubw (%rsi),%ymm1,%ymm0
   c:	c5 fd 6f 57 20       	vmovdqa 0x20(%rdi),%ymm2
  11:	c5 fd 6f 5f 40       	vmovdqa 0x40(%rdi),%ymm3
  16:	c5 fd 7f 07          	vmovdqa %ymm0,(%rdi)
  1a:	c5 ed f9 46 20       	vpsubw 0x20(%rsi),%ymm2,%ymm0
  1f:	c5 fd 6f 67 60       	vmovdqa 0x60(%rdi),%ymm4
  24:	c5 fd 6f af 80 00 00 	vmovdqa 0x80(%rdi),%ymm5
  2b:	00 
  2c:	c5 fd 6f b7 a0 00 00 	vmovdqa 0xa0(%rdi),%ymm6
  33:	00 
  34:	c5 fd 7f 47 20       	vmovdqa %ymm0,0x20(%rdi)
  39:	c5 e5 f9 46 40       	vpsubw 0x40(%rsi),%ymm3,%ymm0
  3e:	c5 fd 6f bf c0 00 00 	vmovdqa 0xc0(%rdi),%ymm7
  45:	00 
  46:	c5 fd 6f 8f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm1
  4d:	00 
  4e:	c5 fd 6f 97 00 01 00 	vmovdqa 0x100(%rdi),%ymm2
  55:	00 
  56:	c5 fd 7f 47 40       	vmovdqa %ymm0,0x40(%rdi)
  5b:	c5 dd f9 46 60       	vpsubw 0x60(%rsi),%ymm4,%ymm0
  60:	c5 fd 6f 9f 20 01 00 	vmovdqa 0x120(%rdi),%ymm3
  67:	00 
  68:	c5 fd 6f a7 40 01 00 	vmovdqa 0x140(%rdi),%ymm4
  6f:	00 
  70:	c5 fd 7f 47 60       	vmovdqa %ymm0,0x60(%rdi)
  75:	c5 d5 f9 86 80 00 00 	vpsubw 0x80(%rsi),%ymm5,%ymm0
  7c:	00 
  7d:	c5 fd 7f 87 80 00 00 	vmovdqa %ymm0,0x80(%rdi)
  84:	00 
  85:	c5 cd f9 86 a0 00 00 	vpsubw 0xa0(%rsi),%ymm6,%ymm0
  8c:	00 
  8d:	c5 fd 7f 87 a0 00 00 	vmovdqa %ymm0,0xa0(%rdi)
  94:	00 
  95:	c5 c5 f9 86 c0 00 00 	vpsubw 0xc0(%rsi),%ymm7,%ymm0
  9c:	00 
  9d:	c5 fd 7f 87 c0 00 00 	vmovdqa %ymm0,0xc0(%rdi)
  a4:	00 
  a5:	c5 f5 f9 86 e0 00 00 	vpsubw 0xe0(%rsi),%ymm1,%ymm0
  ac:	00 
  ad:	c5 fd 7f 87 e0 00 00 	vmovdqa %ymm0,0xe0(%rdi)
  b4:	00 
  b5:	c5 ed f9 86 00 01 00 	vpsubw 0x100(%rsi),%ymm2,%ymm0
  bc:	00 
  bd:	c5 fd 7f 87 00 01 00 	vmovdqa %ymm0,0x100(%rdi)
  c4:	00 
  c5:	c5 e5 f9 86 20 01 00 	vpsubw 0x120(%rsi),%ymm3,%ymm0
  cc:	00 
  cd:	c5 fd 7f 87 20 01 00 	vmovdqa %ymm0,0x120(%rdi)
  d4:	00 
  d5:	c5 dd f9 86 40 01 00 	vpsubw 0x140(%rsi),%ymm4,%ymm0
  dc:	00 
  dd:	c5 fd 7f 87 40 01 00 	vmovdqa %ymm0,0x140(%rdi)
  e4:	00 
  e5:	c5 fd 6f af 60 01 00 	vmovdqa 0x160(%rdi),%ymm5
  ec:	00 
  ed:	c5 d5 f9 86 60 01 00 	vpsubw 0x160(%rsi),%ymm5,%ymm0
  f4:	00 
  f5:	c5 fd 6f b7 80 01 00 	vmovdqa 0x180(%rdi),%ymm6
  fc:	00 
  fd:	c5 fd 6f bf a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm7
 104:	00 
 105:	c5 fd 7f 87 60 01 00 	vmovdqa %ymm0,0x160(%rdi)
 10c:	00 
 10d:	c5 cd f9 86 80 01 00 	vpsubw 0x180(%rsi),%ymm6,%ymm0
 114:	00 
 115:	c5 fd 6f 8f c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm1
 11c:	00 
 11d:	c5 fd 6f 97 e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm2
 124:	00 
 125:	c5 fd 7f 87 80 01 00 	vmovdqa %ymm0,0x180(%rdi)
 12c:	00 
 12d:	c5 c5 f9 86 a0 01 00 	vpsubw 0x1a0(%rsi),%ymm7,%ymm0
 134:	00 
 135:	c5 fd 7f 87 a0 01 00 	vmovdqa %ymm0,0x1a0(%rdi)
 13c:	00 
 13d:	c5 f5 f9 86 c0 01 00 	vpsubw 0x1c0(%rsi),%ymm1,%ymm0
 144:	00 
 145:	c5 fd 7f 87 c0 01 00 	vmovdqa %ymm0,0x1c0(%rdi)
 14c:	00 
 14d:	c5 ed f9 86 e0 01 00 	vpsubw 0x1e0(%rsi),%ymm2,%ymm0
 154:	00 
 155:	c5 fd 7f 87 e0 01 00 	vmovdqa %ymm0,0x1e0(%rdi)
 15c:	00 
 15d:	c5 f8 77             	vzeroupper
 160:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_mulcache_compute:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_mulcache_compute>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_mulcache_compute+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_mulcache_compute+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_ntt:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_ntt>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_ntt+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_ntt+0x10>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_invntt_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_invntt_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_invntt_tomont+0xb>
   b:	e9 00 00 00 00       	jmp    10 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_invntt_tomont+0x10>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/poly_k.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_compress_du:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_compress_du>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_compress_du+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 40 01 00 00 	lea    0x140(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_compress_du+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 80 02 00 00 	lea    0x280(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_compress_du+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du+0x15>
  15:	48 8d b5 40 01 00 00 	lea    0x140(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 80 02 00 00 	lea    0x280(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_decompress_du+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tobytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tobytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tobytes+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 80 01 00 00 	lea    0x180(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tobytes+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 03 00 00 	lea    0x300(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tobytes+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_frombytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_frombytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_frombytes+0x15>
  15:	48 8d b5 80 01 00 00 	lea    0x180(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_frombytes+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 03 00 00 	lea    0x300(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_frombytes+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_ntt:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_ntt>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_ntt+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_ntt+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_ntt+0x26>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_invntt_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_invntt_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_invntt_tomont+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_invntt_tomont+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_invntt_tomont+0x26>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_basemul_acc_montgomery_cached:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_basemul_acc_montgomery_cached>:
   0:	f3 0f 1e fa          	endbr64
   4:	e9 00 00 00 00       	jmp    9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_basemul_acc_montgomery_cached+0x9>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_mulcache_compute:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_mulcache_compute>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_mulcache_compute+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 00 01 00 00 	lea    0x100(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_mulcache_compute+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_mulcache_compute+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_reduce:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_reduce>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_reduce+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_reduce+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_reduce+0x26>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_add:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_add>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_add+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_add+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_add+0x41>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tomont+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tomont+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_tomont+0x26>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   9:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   d:	41 ff 72 f8          	push   -0x8(%r10)
  11:	55                   	push   %rbp
  12:	48 89 e5             	mov    %rsp,%rbp
  15:	41 57                	push   %r15
  17:	41 56                	push   %r14
  19:	4c 8d bd b0 fc ff ff 	lea    -0x350(%rbp),%r15
  20:	4c 8d b5 b0 fe ff ff 	lea    -0x150(%rbp),%r14
  27:	41 55                	push   %r13
  29:	4c 8d ad 30 ff ff ff 	lea    -0xd0(%rbp),%r13
  30:	41 54                	push   %r12
  32:	49 89 cc             	mov    %rcx,%r12
  35:	41 52                	push   %r10
  37:	53                   	push   %rbx
  38:	48 8d 9d b0 fd ff ff 	lea    -0x250(%rbp),%rbx
  3f:	48 81 ec 40 03 00 00 	sub    $0x340,%rsp
  46:	c4 c1 7e 6f 00       	vmovdqu (%r8),%ymm0
  4b:	41 8b 4a 08          	mov    0x8(%r10),%ecx
  4f:	48 89 b5 a0 fc ff ff 	mov    %rsi,-0x360(%rbp)
  56:	48 89 95 98 fc ff ff 	mov    %rdx,-0x368(%rbp)
  5d:	41 8b 32             	mov    (%r10),%esi
  60:	41 b8 80 00 00 00    	mov    $0x80,%r8d
  66:	48 89 bd a8 fc ff ff 	mov    %rdi,-0x358(%rbp)
  6d:	41 8b 52 10          	mov    0x10(%r10),%edx
  71:	4c 8d 95 30 fe ff ff 	lea    -0x1d0(%rbp),%r10
  78:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
  7f:	00 00 
  81:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  85:	31 ff                	xor    %edi,%edi
  87:	c5 fd 7f 85 b0 fc ff 	vmovdqa %ymm0,-0x350(%rbp)
  8e:	ff 
  8f:	48 89 df             	mov    %rbx,%rdi
  92:	c5 fd 7f 85 f0 fc ff 	vmovdqa %ymm0,-0x310(%rbp)
  99:	ff 
  9a:	c5 fd 7f 85 30 fd ff 	vmovdqa %ymm0,-0x2d0(%rbp)
  a1:	ff 
  a2:	c5 fd 7f 85 70 fd ff 	vmovdqa %ymm0,-0x290(%rbp)
  a9:	ff 
  aa:	40 88 b5 10 fd ff ff 	mov    %sil,-0x2f0(%rbp)
  b1:	48 8d b5 70 fd ff ff 	lea    -0x290(%rbp),%rsi
  b8:	44 88 8d d0 fc ff ff 	mov    %r9b,-0x330(%rbp)
  bf:	4d 89 f9             	mov    %r15,%r9
  c2:	88 8d 50 fd ff ff    	mov    %cl,-0x2b0(%rbp)
  c8:	4c 89 e9             	mov    %r13,%rcx
  cb:	88 95 90 fd ff ff    	mov    %dl,-0x270(%rbp)
  d1:	4c 89 f2             	mov    %r14,%rdx
  d4:	6a 21                	push   $0x21
  d6:	56                   	push   %rsi
  d7:	48 8d b5 30 fd ff ff 	lea    -0x2d0(%rbp),%rsi
  de:	56                   	push   %rsi
  df:	48 8d b5 f0 fc ff ff 	lea    -0x310(%rbp),%rsi
  e6:	56                   	push   %rsi
  e7:	4c 89 d6             	mov    %r10,%rsi
  ea:	4c 89 95 90 fc ff ff 	mov    %r10,-0x370(%rbp)
  f1:	c5 f8 77             	vzeroupper
  f4:	e8 00 00 00 00       	call   f9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0xf9>
  f9:	48 83 c4 20          	add    $0x20,%rsp
  fd:	48 89 de             	mov    %rbx,%rsi
 100:	48 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%rdi
 107:	e8 00 00 00 00       	call   10c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x10c>
 10c:	48 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%rsi
 113:	48 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%rdi
 11a:	e8 00 00 00 00       	call   11f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x11f>
 11f:	48 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%rdi
 126:	4c 89 f6             	mov    %r14,%rsi
 129:	e8 00 00 00 00       	call   12e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x12e>
 12e:	4d 85 e4             	test   %r12,%r12
 131:	74 0b                	je     13e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x13e>
 133:	4c 89 ee             	mov    %r13,%rsi
 136:	4c 89 e7             	mov    %r12,%rdi
 139:	e8 00 00 00 00       	call   13e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x13e>
 13e:	31 c0                	xor    %eax,%eax
 140:	48 89 df             	mov    %rbx,%rdi
 143:	b9 40 00 00 00       	mov    $0x40,%ecx
 148:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 14b:	b9 20 00 00 00       	mov    $0x20,%ecx
 150:	4c 89 ff             	mov    %r15,%rdi
 153:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 156:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 15a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 161:	00 00 
 163:	75 15                	jne    17a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x17a>
 165:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 169:	5b                   	pop    %rbx
 16a:	41 5a                	pop    %r10
 16c:	41 5c                	pop    %r12
 16e:	41 5d                	pop    %r13
 170:	41 5e                	pop    %r14
 172:	41 5f                	pop    %r15
 174:	5d                   	pop    %rbp
 175:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 179:	c3                   	ret
 17a:	e8 00 00 00 00       	call   17f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_getnoise_eta1_4x+0x17f>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/sampling.c.o:     file format elf64-x86-64


Disassembly of section .text.mlk_rej_uniform.constprop.0:

0000000000000000 <mlk_rej_uniform.constprop.0>:
   0:	55                   	push   %rbp
   1:	ba f8 01 00 00       	mov    $0x1f8,%edx
   6:	48 89 f5             	mov    %rsi,%rbp
   9:	53                   	push   %rbx
   a:	48 89 fb             	mov    %rdi,%rbx
   d:	48 83 ec 08          	sub    $0x8,%rsp
  11:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 18 <mlk_rej_uniform.constprop.0+0x18>
  18:	e8 00 00 00 00       	call   1d <mlk_rej_uniform.constprop.0+0x1d>
  1d:	83 f8 ff             	cmp    $0xffffffff,%eax
  20:	75 7f                	jne    a1 <mlk_rej_uniform.constprop.0+0xa1>
  22:	48 89 ee             	mov    %rbp,%rsi
  25:	4c 8d 85 f8 01 00 00 	lea    0x1f8(%rbp),%r8
  2c:	31 c0                	xor    %eax,%eax
  2e:	eb 2d                	jmp    5d <mlk_rej_uniform.constprop.0+0x5d>
  30:	8d 78 01             	lea    0x1(%rax),%edi
  33:	66 89 0c 43          	mov    %cx,(%rbx,%rax,2)
  37:	81 ff ff 00 00 00    	cmp    $0xff,%edi
  3d:	77 59                	ja     98 <mlk_rej_uniform.constprop.0+0x98>
  3f:	66 81 fa 00 0d       	cmp    $0xd00,%dx
  44:	7f 52                	jg     98 <mlk_rej_uniform.constprop.0+0x98>
  46:	8d 47 01             	lea    0x1(%rdi),%eax
  49:	66 89 14 7b          	mov    %dx,(%rbx,%rdi,2)
  4d:	3d 00 01 00 00       	cmp    $0x100,%eax
  52:	74 4d                	je     a1 <mlk_rej_uniform.constprop.0+0xa1>
  54:	48 83 c6 03          	add    $0x3,%rsi
  58:	4c 39 c6             	cmp    %r8,%rsi
  5b:	74 44                	je     a1 <mlk_rej_uniform.constprop.0+0xa1>
  5d:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
  61:	0f b6 0e             	movzbl (%rsi),%ecx
  64:	89 d7                	mov    %edx,%edi
  66:	c0 ea 04             	shr    $0x4,%dl
  69:	c1 e7 08             	shl    $0x8,%edi
  6c:	0f b6 d2             	movzbl %dl,%edx
  6f:	09 f9                	or     %edi,%ecx
  71:	0f b6 7e 02          	movzbl 0x2(%rsi),%edi
  75:	66 81 e1 ff 0f       	and    $0xfff,%cx
  7a:	c1 e7 04             	shl    $0x4,%edi
  7d:	09 fa                	or     %edi,%edx
  7f:	66 81 f9 00 0d       	cmp    $0xd00,%cx
  84:	7e aa                	jle    30 <mlk_rej_uniform.constprop.0+0x30>
  86:	66 81 fa 00 0d       	cmp    $0xd00,%dx
  8b:	7f c7                	jg     54 <mlk_rej_uniform.constprop.0+0x54>
  8d:	89 c7                	mov    %eax,%edi
  8f:	eb b5                	jmp    46 <mlk_rej_uniform.constprop.0+0x46>
  91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  98:	89 f8                	mov    %edi,%eax
  9a:	3d 00 01 00 00       	cmp    $0x100,%eax
  9f:	75 b3                	jne    54 <mlk_rej_uniform.constprop.0+0x54>
  a1:	48 83 c4 08          	add    $0x8,%rsp
  a5:	5b                   	pop    %rbx
  a6:	5d                   	pop    %rbp
  a7:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	49 89 ff             	mov    %rdi,%r15
   d:	41 56                	push   %r14
   f:	41 55                	push   %r13
  11:	41 54                	push   %r12
  13:	53                   	push   %rbx
  14:	4c 89 c3             	mov    %r8,%rbx
  17:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1b:	48 81 ec 80 08 00 00 	sub    $0x880,%rsp
  22:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  27:	4c 8d ac 24 60 06 00 	lea    0x660(%rsp),%r13
  2e:	00 
  2f:	4c 8d a4 24 60 04 00 	lea    0x460(%rsp),%r12
  36:	00 
  37:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  3c:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  41:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  48:	00 00 
  4a:	48 89 84 24 78 08 00 	mov    %rax,0x878(%rsp)
  51:	00 
  52:	31 c0                	xor    %eax,%eax
  54:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  59:	49 89 c6             	mov    %rax,%r14
  5c:	48 89 c7             	mov    %rax,%rdi
  5f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  64:	e8 00 00 00 00       	call   69 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x69>
  69:	48 8d 53 40          	lea    0x40(%rbx),%rdx
  6d:	48 89 de             	mov    %rbx,%rsi
  70:	4c 89 f7             	mov    %r14,%rdi
  73:	48 8d 8b 80 00 00 00 	lea    0x80(%rbx),%rcx
  7a:	4c 8d 83 c0 00 00 00 	lea    0xc0(%rbx),%r8
  81:	41 b9 22 00 00 00    	mov    $0x22,%r9d
  87:	e8 00 00 00 00       	call   8c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x8c>
  8c:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  91:	4d 89 f1             	mov    %r14,%r9
  94:	4c 89 e9             	mov    %r13,%rcx
  97:	4c 89 e2             	mov    %r12,%rdx
  9a:	41 b8 f8 01 00 00    	mov    $0x1f8,%r8d
  a0:	48 89 c3             	mov    %rax,%rbx
  a3:	48 89 c7             	mov    %rax,%rdi
  a6:	4c 8d 94 24 60 02 00 	lea    0x260(%rsp),%r10
  ad:	00 
  ae:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  b3:	4c 89 d6             	mov    %r10,%rsi
  b6:	4c 89 54 24 40       	mov    %r10,0x40(%rsp)
  bb:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
  c0:	4c 89 64 24 30       	mov    %r12,0x30(%rsp)
  c5:	e8 00 00 00 00       	call   ca <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0xca>
  ca:	48 89 de             	mov    %rbx,%rsi
  cd:	4c 89 ff             	mov    %r15,%rdi
  d0:	e8 00 00 00 00       	call   d5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0xd5>
  d5:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  da:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  df:	41 89 c6             	mov    %eax,%r14d
  e2:	e8 00 00 00 00       	call   e7 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0xe7>
  e7:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  ec:	4c 89 e6             	mov    %r12,%rsi
  ef:	89 c3                	mov    %eax,%ebx
  f1:	e8 00 00 00 00       	call   f6 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0xf6>
  f6:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  fb:	4c 89 ee             	mov    %r13,%rsi
  fe:	41 89 c4             	mov    %eax,%r12d
 101:	e8 00 00 00 00       	call   106 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x106>
 106:	41 89 c5             	mov    %eax,%r13d
 109:	48 8d 84 24 08 01 00 	lea    0x108(%rsp),%rax
 110:	00 
 111:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 116:	44 89 e8             	mov    %r13d,%eax
 119:	45 89 f5             	mov    %r14d,%r13d
 11c:	41 89 c6             	mov    %eax,%r14d
 11f:	90                   	nop
 120:	41 81 fd ff 00 00 00 	cmp    $0xff,%r13d
 127:	0f 86 dd 00 00 00    	jbe    20a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x20a>
 12d:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
 133:	76 16                	jbe    14b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x14b>
 135:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
 13c:	76 0d                	jbe    14b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x14b>
 13e:	41 81 fe ff 00 00 00 	cmp    $0xff,%r14d
 145:	0f 87 84 03 00 00    	ja     4cf <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4cf>
 14b:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
 150:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 155:	41 b8 a8 00 00 00    	mov    $0xa8,%r8d
 15b:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 160:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 165:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
 16a:	e8 00 00 00 00       	call   16f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x16f>
 16f:	85 db                	test   %ebx,%ebx
 171:	0f 85 ed 00 00 00    	jne    264 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x264>
 177:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 17c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 181:	ba a8 00 00 00       	mov    $0xa8,%edx
 186:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 18d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x18d>
 18d:	e8 00 00 00 00       	call   192 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x192>
 192:	83 f8 ff             	cmp    $0xffffffff,%eax
 195:	0f 84 d5 00 00 00    	je     270 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x270>
 19b:	89 c3                	mov    %eax,%ebx
 19d:	45 85 e4             	test   %r12d,%r12d
 1a0:	0f 85 82 02 00 00    	jne    428 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x428>
 1a6:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
 1ab:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
 1b0:	ba a8 00 00 00       	mov    $0xa8,%edx
 1b5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1bc <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1bc>
 1bc:	e8 00 00 00 00       	call   1c1 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1c1>
 1c1:	83 f8 ff             	cmp    $0xffffffff,%eax
 1c4:	0f 84 6b 02 00 00    	je     435 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x435>
 1ca:	41 89 c4             	mov    %eax,%r12d
 1cd:	45 85 f6             	test   %r14d,%r14d
 1d0:	0f 85 b2 01 00 00    	jne    388 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x388>
 1d6:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
 1db:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
 1e0:	ba a8 00 00 00       	mov    $0xa8,%edx
 1e5:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1ec <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1ec>
 1ec:	e8 00 00 00 00       	call   1f1 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1f1>
 1f1:	83 f8 ff             	cmp    $0xffffffff,%eax
 1f4:	0f 84 9b 01 00 00    	je     395 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x395>
 1fa:	41 89 c6             	mov    %eax,%r14d
 1fd:	41 81 fd ff 00 00 00 	cmp    $0xff,%r13d
 204:	0f 87 23 ff ff ff    	ja     12d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x12d>
 20a:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
 20f:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 214:	41 b8 a8 00 00 00    	mov    $0xa8,%r8d
 21a:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 21f:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 224:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
 229:	e8 00 00 00 00       	call   22e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x22e>
 22e:	45 85 ed             	test   %r13d,%r13d
 231:	0f 85 c9 00 00 00    	jne    300 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x300>
 237:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 23e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x23e>
 23e:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
 243:	ba a8 00 00 00       	mov    $0xa8,%edx
 248:	4c 89 ff             	mov    %r15,%rdi
 24b:	e8 00 00 00 00       	call   250 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x250>
 250:	83 f8 ff             	cmp    $0xffffffff,%eax
 253:	0f 84 a7 00 00 00    	je     300 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x300>
 259:	41 89 c5             	mov    %eax,%r13d
 25c:	85 db                	test   %ebx,%ebx
 25e:	0f 84 13 ff ff ff    	je     177 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x177>
 264:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
 26a:	0f 87 2d ff ff ff    	ja     19d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x19d>
 270:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
 275:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
 27a:	48 8d b4 24 08 03 00 	lea    0x308(%rsp),%rsi
 281:	00 
 282:	eb 43                	jmp    2c7 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x2c7>
 284:	0f 1f 40 00          	nopl   0x0(%rax)
 288:	8d 7b 01             	lea    0x1(%rbx),%edi
 28b:	66 41 89 14 58       	mov    %dx,(%r8,%rbx,2)
 290:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 296:	0f 87 2c 02 00 00    	ja     4c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4c8>
 29c:	66 3d 00 0d          	cmp    $0xd00,%ax
 2a0:	0f 8f 22 02 00 00    	jg     4c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4c8>
 2a6:	66 41 89 04 78       	mov    %ax,(%r8,%rdi,2)
 2ab:	8d 5f 01             	lea    0x1(%rdi),%ebx
 2ae:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 2b4:	0f 84 e3 fe ff ff    	je     19d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x19d>
 2ba:	48 83 c1 03          	add    $0x3,%rcx
 2be:	48 39 f1             	cmp    %rsi,%rcx
 2c1:	0f 84 d6 fe ff ff    	je     19d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x19d>
 2c7:	0f b6 41 01          	movzbl 0x1(%rcx),%eax
 2cb:	0f b6 11             	movzbl (%rcx),%edx
 2ce:	89 c7                	mov    %eax,%edi
 2d0:	c0 e8 04             	shr    $0x4,%al
 2d3:	c1 e7 08             	shl    $0x8,%edi
 2d6:	0f b6 c0             	movzbl %al,%eax
 2d9:	09 fa                	or     %edi,%edx
 2db:	0f b6 79 02          	movzbl 0x2(%rcx),%edi
 2df:	66 81 e2 ff 0f       	and    $0xfff,%dx
 2e4:	c1 e7 04             	shl    $0x4,%edi
 2e7:	09 f8                	or     %edi,%eax
 2e9:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 2ee:	7e 98                	jle    288 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x288>
 2f0:	66 3d 00 0d          	cmp    $0xd00,%ax
 2f4:	7f c4                	jg     2ba <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x2ba>
 2f6:	89 df                	mov    %ebx,%edi
 2f8:	eb ac                	jmp    2a6 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x2a6>
 2fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 300:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
 305:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 30a:	eb 3e                	jmp    34a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x34a>
 30c:	0f 1f 40 00          	nopl   0x0(%rax)
 310:	41 8d 4d 01          	lea    0x1(%r13),%ecx
 314:	66 43 89 14 6f       	mov    %dx,(%r15,%r13,2)
 319:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 31f:	77 5f                	ja     380 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x380>
 321:	66 3d 00 0d          	cmp    $0xd00,%ax
 325:	7f 59                	jg     380 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x380>
 327:	66 41 89 04 4f       	mov    %ax,(%r15,%rcx,2)
 32c:	44 8d 69 01          	lea    0x1(%rcx),%r13d
 330:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 337:	0f 84 32 fe ff ff    	je     16f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x16f>
 33d:	48 83 c6 03          	add    $0x3,%rsi
 341:	48 39 fe             	cmp    %rdi,%rsi
 344:	0f 84 25 fe ff ff    	je     16f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x16f>
 34a:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
 34e:	0f b6 16             	movzbl (%rsi),%edx
 351:	89 c1                	mov    %eax,%ecx
 353:	c0 e8 04             	shr    $0x4,%al
 356:	c1 e1 08             	shl    $0x8,%ecx
 359:	0f b6 c0             	movzbl %al,%eax
 35c:	09 ca                	or     %ecx,%edx
 35e:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
 362:	66 81 e2 ff 0f       	and    $0xfff,%dx
 367:	c1 e1 04             	shl    $0x4,%ecx
 36a:	09 c8                	or     %ecx,%eax
 36c:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 371:	7e 9d                	jle    310 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x310>
 373:	66 3d 00 0d          	cmp    $0xd00,%ax
 377:	7f c4                	jg     33d <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x33d>
 379:	44 89 e9             	mov    %r13d,%ecx
 37c:	eb a9                	jmp    327 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x327>
 37e:	66 90                	xchg   %ax,%ax
 380:	41 89 cd             	mov    %ecx,%r13d
 383:	eb ab                	jmp    330 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x330>
 385:	0f 1f 00             	nopl   (%rax)
 388:	41 81 fe ff 00 00 00 	cmp    $0xff,%r14d
 38f:	0f 87 8b fd ff ff    	ja     120 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x120>
 395:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 39a:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 39f:	48 8d b4 24 08 07 00 	lea    0x708(%rsp),%rsi
 3a6:	00 
 3a7:	eb 41                	jmp    3ea <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x3ea>
 3a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 3b0:	41 8d 7e 01          	lea    0x1(%r14),%edi
 3b4:	66 43 89 14 70       	mov    %dx,(%r8,%r14,2)
 3b9:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 3bf:	77 5f                	ja     420 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x420>
 3c1:	66 3d 00 0d          	cmp    $0xd00,%ax
 3c5:	7f 59                	jg     420 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x420>
 3c7:	66 41 89 04 78       	mov    %ax,(%r8,%rdi,2)
 3cc:	44 8d 77 01          	lea    0x1(%rdi),%r14d
 3d0:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 3d7:	0f 84 43 fd ff ff    	je     120 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x120>
 3dd:	48 83 c1 03          	add    $0x3,%rcx
 3e1:	48 39 f1             	cmp    %rsi,%rcx
 3e4:	0f 84 36 fd ff ff    	je     120 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x120>
 3ea:	0f b6 41 01          	movzbl 0x1(%rcx),%eax
 3ee:	0f b6 11             	movzbl (%rcx),%edx
 3f1:	89 c7                	mov    %eax,%edi
 3f3:	c0 e8 04             	shr    $0x4,%al
 3f6:	c1 e7 08             	shl    $0x8,%edi
 3f9:	0f b6 c0             	movzbl %al,%eax
 3fc:	09 fa                	or     %edi,%edx
 3fe:	0f b6 79 02          	movzbl 0x2(%rcx),%edi
 402:	66 81 e2 ff 0f       	and    $0xfff,%dx
 407:	c1 e7 04             	shl    $0x4,%edi
 40a:	09 f8                	or     %edi,%eax
 40c:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 411:	7e 9d                	jle    3b0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x3b0>
 413:	66 3d 00 0d          	cmp    $0xd00,%ax
 417:	7f c4                	jg     3dd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x3dd>
 419:	44 89 f7             	mov    %r14d,%edi
 41c:	eb a9                	jmp    3c7 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x3c7>
 41e:	66 90                	xchg   %ax,%ax
 420:	41 89 fe             	mov    %edi,%r14d
 423:	eb ab                	jmp    3d0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x3d0>
 425:	0f 1f 00             	nopl   (%rax)
 428:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
 42f:	0f 87 98 fd ff ff    	ja     1cd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1cd>
 435:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
 43a:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
 43f:	48 8d b4 24 08 05 00 	lea    0x508(%rsp),%rsi
 446:	00 
 447:	eb 42                	jmp    48b <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x48b>
 449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 450:	41 8d 7c 24 01       	lea    0x1(%r12),%edi
 455:	66 43 89 14 60       	mov    %dx,(%r8,%r12,2)
 45a:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 460:	77 5e                	ja     4c0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4c0>
 462:	66 3d 00 0d          	cmp    $0xd00,%ax
 466:	7f 58                	jg     4c0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4c0>
 468:	66 41 89 04 78       	mov    %ax,(%r8,%rdi,2)
 46d:	44 8d 67 01          	lea    0x1(%rdi),%r12d
 471:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
 478:	0f 84 4f fd ff ff    	je     1cd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1cd>
 47e:	48 83 c1 03          	add    $0x3,%rcx
 482:	48 39 f1             	cmp    %rsi,%rcx
 485:	0f 84 42 fd ff ff    	je     1cd <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x1cd>
 48b:	0f b6 41 01          	movzbl 0x1(%rcx),%eax
 48f:	0f b6 11             	movzbl (%rcx),%edx
 492:	89 c7                	mov    %eax,%edi
 494:	c0 e8 04             	shr    $0x4,%al
 497:	c1 e7 08             	shl    $0x8,%edi
 49a:	0f b6 c0             	movzbl %al,%eax
 49d:	09 fa                	or     %edi,%edx
 49f:	0f b6 79 02          	movzbl 0x2(%rcx),%edi
 4a3:	66 81 e2 ff 0f       	and    $0xfff,%dx
 4a8:	c1 e7 04             	shl    $0x4,%edi
 4ab:	09 f8                	or     %edi,%eax
 4ad:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 4b2:	7e 9c                	jle    450 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x450>
 4b4:	66 3d 00 0d          	cmp    $0xd00,%ax
 4b8:	7f c4                	jg     47e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x47e>
 4ba:	44 89 e7             	mov    %r12d,%edi
 4bd:	eb a9                	jmp    468 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x468>
 4bf:	90                   	nop
 4c0:	41 89 fc             	mov    %edi,%r12d
 4c3:	eb ac                	jmp    471 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x471>
 4c5:	0f 1f 00             	nopl   (%rax)
 4c8:	89 fb                	mov    %edi,%ebx
 4ca:	e9 df fd ff ff       	jmp    2ae <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x2ae>
 4cf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 4d4:	e8 00 00 00 00       	call   4d9 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x4d9>
 4d9:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
 4de:	31 c0                	xor    %eax,%eax
 4e0:	b9 00 01 00 00       	mov    $0x100,%ecx
 4e5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 4e8:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
 4ed:	48 8b 84 24 78 08 00 	mov    0x878(%rsp),%rax
 4f4:	00 
 4f5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 4fc:	00 00 
 4fe:	75 0f                	jne    50f <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x50f>
 500:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 504:	5b                   	pop    %rbx
 505:	41 5c                	pop    %r12
 507:	41 5d                	pop    %r13
 509:	41 5e                	pop    %r14
 50b:	41 5f                	pop    %r15
 50d:	5d                   	pop    %rbp
 50e:	c3                   	ret
 50f:	e8 00 00 00 00       	call   514 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform_x4+0x514>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	49 89 ff             	mov    %rdi,%r15
   d:	41 56                	push   %r14
   f:	41 55                	push   %r13
  11:	41 54                	push   %r12
  13:	53                   	push   %rbx
  14:	48 89 f3             	mov    %rsi,%rbx
  17:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1b:	48 81 ec 20 02 00 00 	sub    $0x220,%rsp
  22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  29:	00 00 
  2b:	48 89 84 24 18 02 00 	mov    %rax,0x218(%rsp)
  32:	00 
  33:	31 c0                	xor    %eax,%eax
  35:	4c 8d 64 24 18       	lea    0x18(%rsp),%r12
  3a:	4c 89 e7             	mov    %r12,%rdi
  3d:	e8 00 00 00 00       	call   42 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x42>
  42:	48 89 de             	mov    %rbx,%rsi
  45:	ba 22 00 00 00       	mov    $0x22,%edx
  4a:	4c 89 e7             	mov    %r12,%rdi
  4d:	e8 00 00 00 00       	call   52 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x52>
  52:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  57:	4c 89 e2             	mov    %r12,%rdx
  5a:	be f8 01 00 00       	mov    $0x1f8,%esi
  5f:	48 89 df             	mov    %rbx,%rdi
  62:	e8 00 00 00 00       	call   67 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x67>
  67:	ba f8 01 00 00       	mov    $0x1f8,%edx
  6c:	48 89 de             	mov    %rbx,%rsi
  6f:	4c 89 ff             	mov    %r15,%rdi
  72:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 79 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x79>
  79:	e8 00 00 00 00       	call   7e <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x7e>
  7e:	83 f8 ff             	cmp    $0xffffffff,%eax
  81:	0f 85 8b 00 00 00    	jne    112 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x112>
  87:	48 89 de             	mov    %rbx,%rsi
  8a:	48 8d bc 24 18 02 00 	lea    0x218(%rsp),%rdi
  91:	00 
  92:	45 31 f6             	xor    %r14d,%r14d
  95:	eb 47                	jmp    de <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0xde>
  97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  9e:	00 00 
  a0:	41 8d 4e 01          	lea    0x1(%r14),%ecx
  a4:	66 43 89 14 77       	mov    %dx,(%r15,%r14,2)
  a9:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
  af:	0f 87 f3 00 00 00    	ja     1a8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1a8>
  b5:	66 3d 00 0d          	cmp    $0xd00,%ax
  b9:	0f 8f e9 00 00 00    	jg     1a8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1a8>
  bf:	66 41 89 04 4f       	mov    %ax,(%r15,%rcx,2)
  c4:	44 8d 71 01          	lea    0x1(%rcx),%r14d
  c8:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
  cf:	0f 84 93 00 00 00    	je     168 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x168>
  d5:	48 83 c6 03          	add    $0x3,%rsi
  d9:	48 39 fe             	cmp    %rdi,%rsi
  dc:	74 3e                	je     11c <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x11c>
  de:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
  e2:	0f b6 16             	movzbl (%rsi),%edx
  e5:	89 c1                	mov    %eax,%ecx
  e7:	c0 e8 04             	shr    $0x4,%al
  ea:	c1 e1 08             	shl    $0x8,%ecx
  ed:	0f b6 c0             	movzbl %al,%eax
  f0:	09 ca                	or     %ecx,%edx
  f2:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
  f6:	66 81 e2 ff 0f       	and    $0xfff,%dx
  fb:	c1 e1 04             	shl    $0x4,%ecx
  fe:	09 c8                	or     %ecx,%eax
 100:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 105:	7e 99                	jle    a0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0xa0>
 107:	66 3d 00 0d          	cmp    $0xd00,%ax
 10b:	7f c8                	jg     d5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0xd5>
 10d:	44 89 f1             	mov    %r14d,%ecx
 110:	eb ad                	jmp    bf <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0xbf>
 112:	41 89 c6             	mov    %eax,%r14d
 115:	3d ff 00 00 00       	cmp    $0xff,%eax
 11a:	77 4c                	ja     168 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x168>
 11c:	4c 8d ac 24 c8 00 00 	lea    0xc8(%rsp),%r13
 123:	00 
 124:	0f 1f 40 00          	nopl   0x0(%rax)
 128:	4c 89 e2             	mov    %r12,%rdx
 12b:	be a8 00 00 00       	mov    $0xa8,%esi
 130:	48 89 df             	mov    %rbx,%rdi
 133:	e8 00 00 00 00       	call   138 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x138>
 138:	45 85 f6             	test   %r14d,%r14d
 13b:	75 73                	jne    1b0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1b0>
 13d:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 144 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x144>
 144:	ba a8 00 00 00       	mov    $0xa8,%edx
 149:	48 89 de             	mov    %rbx,%rsi
 14c:	4c 89 ff             	mov    %r15,%rdi
 14f:	e8 00 00 00 00       	call   154 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x154>
 154:	83 f8 ff             	cmp    $0xffffffff,%eax
 157:	74 57                	je     1b0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1b0>
 159:	41 89 c6             	mov    %eax,%r14d
 15c:	3d ff 00 00 00       	cmp    $0xff,%eax
 161:	76 c5                	jbe    128 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x128>
 163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 168:	4c 89 e7             	mov    %r12,%rdi
 16b:	e8 00 00 00 00       	call   170 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x170>
 170:	31 c0                	xor    %eax,%eax
 172:	48 89 df             	mov    %rbx,%rdi
 175:	b9 3f 00 00 00       	mov    $0x3f,%ecx
 17a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 17d:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
 184:	00 
 185:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 18c:	00 00 
 18e:	0f 85 a1 00 00 00    	jne    235 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x235>
 194:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 198:	5b                   	pop    %rbx
 199:	41 5c                	pop    %r12
 19b:	41 5d                	pop    %r13
 19d:	41 5e                	pop    %r14
 19f:	41 5f                	pop    %r15
 1a1:	5d                   	pop    %rbp
 1a2:	c3                   	ret
 1a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1a8:	41 89 ce             	mov    %ecx,%r14d
 1ab:	e9 18 ff ff ff       	jmp    c8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0xc8>
 1b0:	48 89 de             	mov    %rbx,%rsi
 1b3:	eb 3d                	jmp    1f2 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1f2>
 1b5:	0f 1f 00             	nopl   (%rax)
 1b8:	41 8d 4e 01          	lea    0x1(%r14),%ecx
 1bc:	66 43 89 14 77       	mov    %dx,(%r15,%r14,2)
 1c1:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 1c7:	77 67                	ja     230 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x230>
 1c9:	66 3d 00 0d          	cmp    $0xd00,%ax
 1cd:	7f 61                	jg     230 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x230>
 1cf:	66 41 89 04 4f       	mov    %ax,(%r15,%rcx,2)
 1d4:	44 8d 71 01          	lea    0x1(%rcx),%r14d
 1d8:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 1df:	0f 84 83 ff ff ff    	je     168 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x168>
 1e5:	48 83 c6 03          	add    $0x3,%rsi
 1e9:	4c 39 ee             	cmp    %r13,%rsi
 1ec:	0f 84 36 ff ff ff    	je     128 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x128>
 1f2:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
 1f6:	0f b6 16             	movzbl (%rsi),%edx
 1f9:	89 c1                	mov    %eax,%ecx
 1fb:	c0 e8 04             	shr    $0x4,%al
 1fe:	c1 e1 08             	shl    $0x8,%ecx
 201:	0f b6 c0             	movzbl %al,%eax
 204:	09 ca                	or     %ecx,%edx
 206:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
 20a:	66 81 e2 ff 0f       	and    $0xfff,%dx
 20f:	c1 e1 04             	shl    $0x4,%ecx
 212:	09 c8                	or     %ecx,%eax
 214:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 219:	7e 9d                	jle    1b8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1b8>
 21b:	66 3d 00 0d          	cmp    $0xd00,%ax
 21f:	7f c4                	jg     1e5 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1e5>
 221:	44 89 f1             	mov    %r14d,%ecx
 224:	eb a9                	jmp    1cf <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1cf>
 226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 22d:	00 00 00 
 230:	41 89 ce             	mov    %ecx,%r14d
 233:	eb a3                	jmp    1d8 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x1d8>
 235:	e8 00 00 00 00       	call   23a <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_rej_uniform+0x23a>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_cbd2:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_cbd2>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8d 86 80 00 00 00 	lea    0x80(%rsi),%rax
   b:	48 89 fa             	mov    %rdi,%rdx
   e:	48 39 c7             	cmp    %rax,%rdi
  11:	73 10                	jae    23 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_cbd2+0x23>
  13:	4c 8d 87 00 02 00 00 	lea    0x200(%rdi),%r8
  1a:	4c 39 c6             	cmp    %r8,%rsi
  1d:	0f 82 7d 07 00 00    	jb     7a0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_cbd2+0x7a0>
  23:	c5 fe 6f 0e          	vmovdqu (%rsi),%ymm1
  27:	b8 55 55 55 55       	mov    $0x55555555,%eax
  2c:	c5 fe 6f 6e 20       	vmovdqu 0x20(%rsi),%ymm5
  31:	c5 79 6e c8          	vmovd  %eax,%xmm9
  35:	b8 ff ff 00 00       	mov    $0xffff,%eax
  3a:	c5 ed 72 d1 01       	vpsrld $0x1,%ymm1,%ymm2
  3f:	c5 9d 72 d5 01       	vpsrld $0x1,%ymm5,%ymm12
  44:	c4 42 7d 58 c9       	vpbroadcastd %xmm9,%ymm9
  49:	c5 b5 db c1          	vpand  %ymm1,%ymm9,%ymm0
  4d:	c4 c1 6d db d1       	vpand  %ymm9,%ymm2,%ymm2
  52:	c4 41 1d db e1       	vpand  %ymm9,%ymm12,%ymm12
  57:	c5 ed fe d0          	vpaddd %ymm0,%ymm2,%ymm2
  5b:	c5 b5 db c5          	vpand  %ymm5,%ymm9,%ymm0
  5f:	c5 e5 72 d2 02       	vpsrld $0x2,%ymm2,%ymm3
  64:	c5 d5 72 d2 04       	vpsrld $0x4,%ymm2,%ymm5
  69:	c5 1d fe e0          	vpaddd %ymm0,%ymm12,%ymm12
  6d:	c4 c1 5d 72 d4 02    	vpsrld $0x2,%ymm12,%ymm4
  73:	c4 c1 45 72 d4 0a    	vpsrld $0xa,%ymm12,%ymm7
  79:	c5 f9 6e c0          	vmovd  %eax,%xmm0
  7d:	b8 03 00 00 00       	mov    $0x3,%eax
  82:	c4 c1 3d 72 d4 0e    	vpsrld $0xe,%ymm12,%ymm8
  88:	c5 ad 72 d2 10       	vpsrld $0x10,%ymm2,%ymm10
  8d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  92:	c4 c1 7d db cc       	vpand  %ymm12,%ymm0,%ymm1
  97:	c5 fd db f2          	vpand  %ymm2,%ymm0,%ymm6
  9b:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
  9f:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
  a3:	c4 e2 4d 2b f1       	vpackusdw %ymm1,%ymm6,%ymm6
  a8:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  ac:	c4 e2 65 2b dc       	vpackusdw %ymm4,%ymm3,%ymm3
  b1:	c4 e2 7d 79 c9       	vpbroadcastw %xmm1,%ymm1
  b6:	c4 e3 fd 00 f6 d8    	vpermq $0xd8,%ymm6,%ymm6
  bc:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
  c2:	c5 f5 db f6          	vpand  %ymm6,%ymm1,%ymm6
  c6:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
  ca:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
  ce:	c4 c1 5d 72 d4 06    	vpsrld $0x6,%ymm12,%ymm4
  d4:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
  d8:	c5 cd f9 f3          	vpsubw %ymm3,%ymm6,%ymm6
  dc:	c4 c1 65 72 d4 04    	vpsrld $0x4,%ymm12,%ymm3
  e2:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
  e6:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
  ea:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
  ef:	c4 41 7d db d2       	vpand  %ymm10,%ymm0,%ymm10
  f4:	c4 c1 25 72 d4 16    	vpsrld $0x16,%ymm12,%ymm11
  fa:	c4 c1 15 72 d4 1a    	vpsrld $0x1a,%ymm12,%ymm13
 100:	c4 e2 55 2b eb       	vpackusdw %ymm3,%ymm5,%ymm5
 105:	c5 e5 72 d2 06       	vpsrld $0x6,%ymm2,%ymm3
 10a:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 110:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 115:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 119:	c5 f5 db ed          	vpand  %ymm5,%ymm1,%ymm5
 11d:	c4 41 7d db ed       	vpand  %ymm13,%ymm0,%ymm13
 122:	c4 e2 65 2b dc       	vpackusdw %ymm4,%ymm3,%ymm3
 127:	c5 dd 72 d2 08       	vpsrld $0x8,%ymm2,%ymm4
 12c:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 132:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 136:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 13a:	c5 d5 f9 eb          	vpsubw %ymm3,%ymm5,%ymm5
 13e:	c4 c1 65 72 d4 08    	vpsrld $0x8,%ymm12,%ymm3
 144:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 148:	c4 e2 5d 2b e3       	vpackusdw %ymm3,%ymm4,%ymm4
 14d:	c5 e5 72 d2 0a       	vpsrld $0xa,%ymm2,%ymm3
 152:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 156:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 15c:	c4 e2 65 2b df       	vpackusdw %ymm7,%ymm3,%ymm3
 161:	c4 c1 45 72 d4 0c    	vpsrld $0xc,%ymm12,%ymm7
 167:	c5 f5 db e4          	vpand  %ymm4,%ymm1,%ymm4
 16b:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 171:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 175:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 179:	c5 dd f9 e3          	vpsubw %ymm3,%ymm4,%ymm4
 17d:	c5 e5 72 d2 0c       	vpsrld $0xc,%ymm2,%ymm3
 182:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 186:	c4 e2 65 2b df       	vpackusdw %ymm7,%ymm3,%ymm3
 18b:	c5 c5 72 d2 0e       	vpsrld $0xe,%ymm2,%ymm7
 190:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 194:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 19a:	c4 c2 45 2b f8       	vpackusdw %ymm8,%ymm7,%ymm7
 19f:	c4 c1 3d 72 d4 12    	vpsrld $0x12,%ymm12,%ymm8
 1a5:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 1a9:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 1af:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 1b4:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 1b8:	c5 e5 f9 df          	vpsubw %ymm7,%ymm3,%ymm3
 1bc:	c4 c1 45 72 d4 10    	vpsrld $0x10,%ymm12,%ymm7
 1c2:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 1c6:	c4 62 2d 2b d7       	vpackusdw %ymm7,%ymm10,%ymm10
 1cb:	c5 c5 72 d2 12       	vpsrld $0x12,%ymm2,%ymm7
 1d0:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 1d4:	c4 43 fd 00 d2 d8    	vpermq $0xd8,%ymm10,%ymm10
 1da:	c4 c2 45 2b f8       	vpackusdw %ymm8,%ymm7,%ymm7
 1df:	c5 bd 72 d2 14       	vpsrld $0x14,%ymm2,%ymm8
 1e4:	c4 41 75 db d2       	vpand  %ymm10,%ymm1,%ymm10
 1e9:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 1ef:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 1f4:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 1f8:	c5 2d f9 d7          	vpsubw %ymm7,%ymm10,%ymm10
 1fc:	c4 c1 45 72 d4 14    	vpsrld $0x14,%ymm12,%ymm7
 202:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 206:	c4 62 3d 2b c7       	vpackusdw %ymm7,%ymm8,%ymm8
 20b:	c5 c5 72 d2 16       	vpsrld $0x16,%ymm2,%ymm7
 210:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 214:	c4 43 fd 00 c0 d8    	vpermq $0xd8,%ymm8,%ymm8
 21a:	c4 c2 45 2b fb       	vpackusdw %ymm11,%ymm7,%ymm7
 21f:	c4 c1 25 72 d4 18    	vpsrld $0x18,%ymm12,%ymm11
 225:	c4 41 75 db c0       	vpand  %ymm8,%ymm1,%ymm8
 22a:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 230:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 235:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 239:	c5 3d f9 c7          	vpsubw %ymm7,%ymm8,%ymm8
 23d:	c5 c5 72 d2 18       	vpsrld $0x18,%ymm2,%ymm7
 242:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 246:	c4 c2 45 2b fb       	vpackusdw %ymm11,%ymm7,%ymm7
 24b:	c5 a5 72 d2 1a       	vpsrld $0x1a,%ymm2,%ymm11
 250:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 255:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 25b:	c4 42 25 2b dd       	vpackusdw %ymm13,%ymm11,%ymm11
 260:	c4 c1 15 72 d4 1c    	vpsrld $0x1c,%ymm12,%ymm13
 266:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 26a:	c4 43 fd 00 db d8    	vpermq $0xd8,%ymm11,%ymm11
 270:	c4 c1 1d 72 d4 1e    	vpsrld $0x1e,%ymm12,%ymm12
 276:	c4 41 7d db ed       	vpand  %ymm13,%ymm0,%ymm13
 27b:	c4 41 75 db db       	vpand  %ymm11,%ymm1,%ymm11
 280:	c4 41 7d db e4       	vpand  %ymm12,%ymm0,%ymm12
 285:	c4 c1 45 f9 fb       	vpsubw %ymm11,%ymm7,%ymm7
 28a:	c5 a5 72 d2 1c       	vpsrld $0x1c,%ymm2,%ymm11
 28f:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 294:	c5 ed 72 d2 1e       	vpsrld $0x1e,%ymm2,%ymm2
 299:	c4 42 25 2b dd       	vpackusdw %ymm13,%ymm11,%ymm11
 29e:	c5 fd db d2          	vpand  %ymm2,%ymm0,%ymm2
 2a2:	c4 c2 6d 2b d4       	vpackusdw %ymm12,%ymm2,%ymm2
 2a7:	c4 43 fd 00 db d8    	vpermq $0xd8,%ymm11,%ymm11
 2ad:	c4 41 75 db db       	vpand  %ymm11,%ymm1,%ymm11
 2b2:	c4 e3 fd 00 d2 d8    	vpermq $0xd8,%ymm2,%ymm2
 2b8:	c5 a5 f9 d2          	vpsubw %ymm2,%ymm11,%ymm2
 2bc:	c4 41 4d 61 da       	vpunpcklwd %ymm10,%ymm6,%ymm11
 2c1:	c4 c1 4d 69 f2       	vpunpckhwd %ymm10,%ymm6,%ymm6
 2c6:	c4 63 25 46 e6 20    	vperm2i128 $0x20,%ymm6,%ymm11,%ymm12
 2cc:	c4 63 25 46 d6 31    	vperm2i128 $0x31,%ymm6,%ymm11,%ymm10
 2d2:	c4 c1 55 61 f0       	vpunpcklwd %ymm8,%ymm5,%ymm6
 2d7:	c4 c1 55 69 e8       	vpunpckhwd %ymm8,%ymm5,%ymm5
 2dc:	c5 65 61 ea          	vpunpcklwd %ymm2,%ymm3,%ymm13
 2e0:	c5 e5 69 da          	vpunpckhwd %ymm2,%ymm3,%ymm3
 2e4:	c4 63 4d 46 dd 20    	vperm2i128 $0x20,%ymm5,%ymm6,%ymm11
 2ea:	c4 63 4d 46 c5 31    	vperm2i128 $0x31,%ymm5,%ymm6,%ymm8
 2f0:	c5 dd 61 ef          	vpunpcklwd %ymm7,%ymm4,%ymm5
 2f4:	c5 dd 69 e7          	vpunpckhwd %ymm7,%ymm4,%ymm4
 2f8:	c4 63 15 46 f3 20    	vperm2i128 $0x20,%ymm3,%ymm13,%ymm14
 2fe:	c4 63 15 46 eb 31    	vperm2i128 $0x31,%ymm3,%ymm13,%ymm13
 304:	c4 e3 55 46 f4 20    	vperm2i128 $0x20,%ymm4,%ymm5,%ymm6
 30a:	c4 e3 55 46 e4 31    	vperm2i128 $0x31,%ymm4,%ymm5,%ymm4
 310:	c4 c1 25 69 de       	vpunpckhwd %ymm14,%ymm11,%ymm3
 315:	c5 9d 69 d6          	vpunpckhwd %ymm6,%ymm12,%ymm2
 319:	c5 9d 61 ee          	vpunpcklwd %ymm6,%ymm12,%ymm5
 31d:	c5 ad 69 fc          	vpunpckhwd %ymm4,%ymm10,%ymm7
 321:	c4 e3 55 46 f2 20    	vperm2i128 $0x20,%ymm2,%ymm5,%ymm6
 327:	c4 e3 55 46 ea 31    	vperm2i128 $0x31,%ymm2,%ymm5,%ymm5
 32d:	c5 ad 61 d4          	vpunpcklwd %ymm4,%ymm10,%ymm2
 331:	c4 41 25 61 d6       	vpunpcklwd %ymm14,%ymm11,%ymm10
 336:	c4 e3 6d 46 e7 20    	vperm2i128 $0x20,%ymm7,%ymm2,%ymm4
 33c:	c4 e3 6d 46 d7 31    	vperm2i128 $0x31,%ymm7,%ymm2,%ymm2
 342:	c4 63 2d 46 db 20    	vperm2i128 $0x20,%ymm3,%ymm10,%ymm11
 348:	c4 c1 3d 69 fd       	vpunpckhwd %ymm13,%ymm8,%ymm7
 34d:	c4 63 2d 46 d3 31    	vperm2i128 $0x31,%ymm3,%ymm10,%ymm10
 353:	c4 c1 3d 61 dd       	vpunpcklwd %ymm13,%ymm8,%ymm3
 358:	c4 63 65 46 c7 20    	vperm2i128 $0x20,%ymm7,%ymm3,%ymm8
 35e:	c4 e3 65 46 df 31    	vperm2i128 $0x31,%ymm7,%ymm3,%ymm3
 364:	c4 c1 4d 61 fb       	vpunpcklwd %ymm11,%ymm6,%ymm7
 369:	c4 c1 4d 69 f3       	vpunpckhwd %ymm11,%ymm6,%ymm6
 36e:	c4 63 45 46 de 20    	vperm2i128 $0x20,%ymm6,%ymm7,%ymm11
 374:	c4 e3 45 46 fe 31    	vperm2i128 $0x31,%ymm6,%ymm7,%ymm7
 37a:	c4 c1 55 61 f2       	vpunpcklwd %ymm10,%ymm5,%ymm6
 37f:	c4 c1 55 69 ea       	vpunpckhwd %ymm10,%ymm5,%ymm5
 384:	c5 fd 7f 7a 20       	vmovdqa %ymm7,0x20(%rdx)
 389:	c4 e3 4d 46 fd 20    	vperm2i128 $0x20,%ymm5,%ymm6,%ymm7
 38f:	c4 e3 4d 46 f5 31    	vperm2i128 $0x31,%ymm5,%ymm6,%ymm6
 395:	c4 c1 5d 61 e8       	vpunpcklwd %ymm8,%ymm4,%ymm5
 39a:	c5 7d 7f 1a          	vmovdqa %ymm11,(%rdx)
 39e:	c4 c1 5d 69 e0       	vpunpckhwd %ymm8,%ymm4,%ymm4
 3a3:	c5 fd 7f 72 60       	vmovdqa %ymm6,0x60(%rdx)
 3a8:	c4 e3 55 46 f4 20    	vperm2i128 $0x20,%ymm4,%ymm5,%ymm6
 3ae:	c4 e3 55 46 ec 31    	vperm2i128 $0x31,%ymm4,%ymm5,%ymm5
 3b4:	c5 ed 61 e3          	vpunpcklwd %ymm3,%ymm2,%ymm4
 3b8:	c5 fd 7f 7a 40       	vmovdqa %ymm7,0x40(%rdx)
 3bd:	c5 ed 69 d3          	vpunpckhwd %ymm3,%ymm2,%ymm2
 3c1:	c5 fd 7f b2 80 00 00 	vmovdqa %ymm6,0x80(%rdx)
 3c8:	00 
 3c9:	c4 e3 5d 46 da 20    	vperm2i128 $0x20,%ymm2,%ymm4,%ymm3
 3cf:	c4 e3 5d 46 e2 31    	vperm2i128 $0x31,%ymm2,%ymm4,%ymm4
 3d5:	c5 fd 7f aa a0 00 00 	vmovdqa %ymm5,0xa0(%rdx)
 3dc:	00 
 3dd:	c5 fd 7f 9a c0 00 00 	vmovdqa %ymm3,0xc0(%rdx)
 3e4:	00 
 3e5:	c5 fd 7f a2 e0 00 00 	vmovdqa %ymm4,0xe0(%rdx)
 3ec:	00 
 3ed:	c5 fe 6f 66 40       	vmovdqu 0x40(%rsi),%ymm4
 3f2:	c5 fe 6f 5e 60       	vmovdqu 0x60(%rsi),%ymm3
 3f7:	c5 ed 72 d4 01       	vpsrld $0x1,%ymm4,%ymm2
 3fc:	c5 ad 72 d3 01       	vpsrld $0x1,%ymm3,%ymm10
 401:	c4 c1 5d db e1       	vpand  %ymm9,%ymm4,%ymm4
 406:	c4 c1 65 db d9       	vpand  %ymm9,%ymm3,%ymm3
 40b:	c4 c1 6d db d1       	vpand  %ymm9,%ymm2,%ymm2
 410:	c4 41 2d db d1       	vpand  %ymm9,%ymm10,%ymm10
 415:	c5 ed fe d4          	vpaddd %ymm4,%ymm2,%ymm2
 419:	c5 2d fe d3          	vpaddd %ymm3,%ymm10,%ymm10
 41d:	c4 c1 7d db da       	vpand  %ymm10,%ymm0,%ymm3
 422:	c4 c1 5d 72 d2 02    	vpsrld $0x2,%ymm10,%ymm4
 428:	c5 fd db f2          	vpand  %ymm2,%ymm0,%ymm6
 42c:	c4 e2 4d 2b f3       	vpackusdw %ymm3,%ymm6,%ymm6
 431:	c5 e5 72 d2 02       	vpsrld $0x2,%ymm2,%ymm3
 436:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 43a:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 43e:	c5 d5 72 d2 04       	vpsrld $0x4,%ymm2,%ymm5
 443:	c4 e3 fd 00 f6 d8    	vpermq $0xd8,%ymm6,%ymm6
 449:	c4 e2 65 2b dc       	vpackusdw %ymm4,%ymm3,%ymm3
 44e:	c5 f5 db f6          	vpand  %ymm6,%ymm1,%ymm6
 452:	c5 fd db ed          	vpand  %ymm5,%ymm0,%ymm5
 456:	c4 c1 5d 72 d2 06    	vpsrld $0x6,%ymm10,%ymm4
 45c:	c4 c1 45 72 d2 0a    	vpsrld $0xa,%ymm10,%ymm7
 462:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 468:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 46c:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 470:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 474:	c4 c1 3d 72 d2 0e    	vpsrld $0xe,%ymm10,%ymm8
 47a:	c5 b5 72 d2 10       	vpsrld $0x10,%ymm2,%ymm9
 47f:	c5 cd f9 f3          	vpsubw %ymm3,%ymm6,%ymm6
 483:	c4 c1 65 72 d2 04    	vpsrld $0x4,%ymm10,%ymm3
 489:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 48e:	c4 41 7d db c9       	vpand  %ymm9,%ymm0,%ymm9
 493:	c4 c1 25 72 d2 16    	vpsrld $0x16,%ymm10,%ymm11
 499:	c4 c1 1d 72 d2 1a    	vpsrld $0x1a,%ymm10,%ymm12
 49f:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 4a3:	c4 e2 55 2b eb       	vpackusdw %ymm3,%ymm5,%ymm5
 4a8:	c5 e5 72 d2 06       	vpsrld $0x6,%ymm2,%ymm3
 4ad:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 4b2:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 4b6:	c4 e3 fd 00 ed d8    	vpermq $0xd8,%ymm5,%ymm5
 4bc:	c4 41 7d db e4       	vpand  %ymm12,%ymm0,%ymm12
 4c1:	c4 e2 65 2b dc       	vpackusdw %ymm4,%ymm3,%ymm3
 4c6:	c5 dd 72 d2 08       	vpsrld $0x8,%ymm2,%ymm4
 4cb:	c5 f5 db ed          	vpand  %ymm5,%ymm1,%ymm5
 4cf:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 4d5:	c5 fd db e4          	vpand  %ymm4,%ymm0,%ymm4
 4d9:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 4dd:	c5 d5 f9 eb          	vpsubw %ymm3,%ymm5,%ymm5
 4e1:	c4 c1 65 72 d2 08    	vpsrld $0x8,%ymm10,%ymm3
 4e7:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 4eb:	c4 e2 5d 2b e3       	vpackusdw %ymm3,%ymm4,%ymm4
 4f0:	c5 e5 72 d2 0a       	vpsrld $0xa,%ymm2,%ymm3
 4f5:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 4f9:	c4 e3 fd 00 e4 d8    	vpermq $0xd8,%ymm4,%ymm4
 4ff:	c4 e2 65 2b df       	vpackusdw %ymm7,%ymm3,%ymm3
 504:	c4 c1 45 72 d2 0c    	vpsrld $0xc,%ymm10,%ymm7
 50a:	c5 f5 db e4          	vpand  %ymm4,%ymm1,%ymm4
 50e:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 514:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 518:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 51c:	c5 dd f9 e3          	vpsubw %ymm3,%ymm4,%ymm4
 520:	c5 e5 72 d2 0c       	vpsrld $0xc,%ymm2,%ymm3
 525:	c5 fd db db          	vpand  %ymm3,%ymm0,%ymm3
 529:	c4 e2 65 2b df       	vpackusdw %ymm7,%ymm3,%ymm3
 52e:	c5 c5 72 d2 0e       	vpsrld $0xe,%ymm2,%ymm7
 533:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 537:	c4 e3 fd 00 db d8    	vpermq $0xd8,%ymm3,%ymm3
 53d:	c4 c2 45 2b f8       	vpackusdw %ymm8,%ymm7,%ymm7
 542:	c4 c1 3d 72 d2 12    	vpsrld $0x12,%ymm10,%ymm8
 548:	c5 f5 db db          	vpand  %ymm3,%ymm1,%ymm3
 54c:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 552:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 557:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 55b:	c5 e5 f9 df          	vpsubw %ymm7,%ymm3,%ymm3
 55f:	c4 c1 45 72 d2 10    	vpsrld $0x10,%ymm10,%ymm7
 565:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 569:	c4 62 35 2b cf       	vpackusdw %ymm7,%ymm9,%ymm9
 56e:	c5 c5 72 d2 12       	vpsrld $0x12,%ymm2,%ymm7
 573:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 577:	c4 43 fd 00 c9 d8    	vpermq $0xd8,%ymm9,%ymm9
 57d:	c4 c2 45 2b f8       	vpackusdw %ymm8,%ymm7,%ymm7
 582:	c5 bd 72 d2 14       	vpsrld $0x14,%ymm2,%ymm8
 587:	c4 41 75 db c9       	vpand  %ymm9,%ymm1,%ymm9
 58c:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 592:	c4 41 7d db c0       	vpand  %ymm8,%ymm0,%ymm8
 597:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 59b:	c5 35 f9 cf          	vpsubw %ymm7,%ymm9,%ymm9
 59f:	c4 c1 45 72 d2 14    	vpsrld $0x14,%ymm10,%ymm7
 5a5:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 5a9:	c4 62 3d 2b c7       	vpackusdw %ymm7,%ymm8,%ymm8
 5ae:	c5 c5 72 d2 16       	vpsrld $0x16,%ymm2,%ymm7
 5b3:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 5b7:	c4 43 fd 00 c0 d8    	vpermq $0xd8,%ymm8,%ymm8
 5bd:	c4 c2 45 2b fb       	vpackusdw %ymm11,%ymm7,%ymm7
 5c2:	c4 c1 25 72 d2 18    	vpsrld $0x18,%ymm10,%ymm11
 5c8:	c4 41 75 db c0       	vpand  %ymm8,%ymm1,%ymm8
 5cd:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 5d3:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 5d8:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 5dc:	c5 3d f9 c7          	vpsubw %ymm7,%ymm8,%ymm8
 5e0:	c5 c5 72 d2 18       	vpsrld $0x18,%ymm2,%ymm7
 5e5:	c5 fd db ff          	vpand  %ymm7,%ymm0,%ymm7
 5e9:	c4 c2 45 2b fb       	vpackusdw %ymm11,%ymm7,%ymm7
 5ee:	c5 a5 72 d2 1a       	vpsrld $0x1a,%ymm2,%ymm11
 5f3:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 5f8:	c4 e3 fd 00 ff d8    	vpermq $0xd8,%ymm7,%ymm7
 5fe:	c4 42 25 2b dc       	vpackusdw %ymm12,%ymm11,%ymm11
 603:	c4 c1 1d 72 d2 1c    	vpsrld $0x1c,%ymm10,%ymm12
 609:	c5 f5 db ff          	vpand  %ymm7,%ymm1,%ymm7
 60d:	c4 43 fd 00 db d8    	vpermq $0xd8,%ymm11,%ymm11
 613:	c4 c1 2d 72 d2 1e    	vpsrld $0x1e,%ymm10,%ymm10
 619:	c4 41 7d db e4       	vpand  %ymm12,%ymm0,%ymm12
 61e:	c4 41 75 db db       	vpand  %ymm11,%ymm1,%ymm11
 623:	c4 c1 45 f9 fb       	vpsubw %ymm11,%ymm7,%ymm7
 628:	c5 a5 72 d2 1c       	vpsrld $0x1c,%ymm2,%ymm11
 62d:	c4 41 7d db db       	vpand  %ymm11,%ymm0,%ymm11
 632:	c4 42 25 2b dc       	vpackusdw %ymm12,%ymm11,%ymm11
 637:	c4 43 fd 00 db d8    	vpermq $0xd8,%ymm11,%ymm11
 63d:	c4 41 75 db db       	vpand  %ymm11,%ymm1,%ymm11
 642:	c5 f5 72 d2 1e       	vpsrld $0x1e,%ymm2,%ymm1
 647:	c4 c1 55 69 d0       	vpunpckhwd %ymm8,%ymm5,%ymm2
 64c:	c5 fd db c9          	vpand  %ymm1,%ymm0,%ymm1
 650:	c4 c1 7d db c2       	vpand  %ymm10,%ymm0,%ymm0
 655:	c4 41 55 61 d0       	vpunpcklwd %ymm8,%ymm5,%ymm10
 65a:	c4 e2 75 2b c0       	vpackusdw %ymm0,%ymm1,%ymm0
 65f:	c5 5d 61 c7          	vpunpcklwd %ymm7,%ymm4,%ymm8
 663:	c4 c1 4d 61 c9       	vpunpcklwd %ymm9,%ymm6,%ymm1
 668:	c5 dd 69 e7          	vpunpckhwd %ymm7,%ymm4,%ymm4
 66c:	c4 c1 4d 69 f1       	vpunpckhwd %ymm9,%ymm6,%ymm6
 671:	c4 e3 fd 00 c0 d8    	vpermq $0xd8,%ymm0,%ymm0
 677:	c4 63 75 46 ce 20    	vperm2i128 $0x20,%ymm6,%ymm1,%ymm9
 67d:	c5 a5 f9 c0          	vpsubw %ymm0,%ymm11,%ymm0
 681:	c4 63 3d 46 dc 20    	vperm2i128 $0x20,%ymm4,%ymm8,%ymm11
 687:	c4 e3 75 46 ce 31    	vperm2i128 $0x31,%ymm6,%ymm1,%ymm1
 68d:	c4 e3 2d 46 ea 31    	vperm2i128 $0x31,%ymm2,%ymm10,%ymm5
 693:	c4 e3 2d 46 f2 20    	vperm2i128 $0x20,%ymm2,%ymm10,%ymm6
 699:	c4 63 3d 46 c4 31    	vperm2i128 $0x31,%ymm4,%ymm8,%ymm8
 69f:	c5 e5 61 f8          	vpunpcklwd %ymm0,%ymm3,%ymm7
 6a3:	c4 c1 35 61 d3       	vpunpcklwd %ymm11,%ymm9,%ymm2
 6a8:	c5 e5 69 d8          	vpunpckhwd %ymm0,%ymm3,%ymm3
 6ac:	c4 c1 35 69 c3       	vpunpckhwd %ymm11,%ymm9,%ymm0
 6b1:	c4 63 45 46 d3 20    	vperm2i128 $0x20,%ymm3,%ymm7,%ymm10
 6b7:	c4 e3 6d 46 e0 20    	vperm2i128 $0x20,%ymm0,%ymm2,%ymm4
 6bd:	c4 e3 45 46 fb 31    	vperm2i128 $0x31,%ymm3,%ymm7,%ymm7
 6c3:	c4 e3 6d 46 d0 31    	vperm2i128 $0x31,%ymm0,%ymm2,%ymm2
 6c9:	c4 c1 75 69 d8       	vpunpckhwd %ymm8,%ymm1,%ymm3
 6ce:	c4 c1 75 61 c0       	vpunpcklwd %ymm8,%ymm1,%ymm0
 6d3:	c4 e3 7d 46 cb 20    	vperm2i128 $0x20,%ymm3,%ymm0,%ymm1
 6d9:	c4 e3 7d 46 c3 31    	vperm2i128 $0x31,%ymm3,%ymm0,%ymm0
 6df:	c4 c1 4d 61 da       	vpunpcklwd %ymm10,%ymm6,%ymm3
 6e4:	c4 c1 4d 69 f2       	vpunpckhwd %ymm10,%ymm6,%ymm6
 6e9:	c4 63 65 46 c6 20    	vperm2i128 $0x20,%ymm6,%ymm3,%ymm8
 6ef:	c4 e3 65 46 de 31    	vperm2i128 $0x31,%ymm6,%ymm3,%ymm3
 6f5:	c5 d5 61 f7          	vpunpcklwd %ymm7,%ymm5,%ymm6
 6f9:	c5 d5 69 ef          	vpunpckhwd %ymm7,%ymm5,%ymm5
 6fd:	c4 e3 4d 46 fd 20    	vperm2i128 $0x20,%ymm5,%ymm6,%ymm7
 703:	c4 e3 4d 46 ed 31    	vperm2i128 $0x31,%ymm5,%ymm6,%ymm5
 709:	c4 c1 5d 61 f0       	vpunpcklwd %ymm8,%ymm4,%ymm6
 70e:	c4 c1 5d 69 e0       	vpunpckhwd %ymm8,%ymm4,%ymm4
 713:	c4 63 4d 46 c4 20    	vperm2i128 $0x20,%ymm4,%ymm6,%ymm8
 719:	c4 e3 4d 46 f4 31    	vperm2i128 $0x31,%ymm4,%ymm6,%ymm6
 71f:	c5 ed 61 e3          	vpunpcklwd %ymm3,%ymm2,%ymm4
 723:	c5 ed 69 d3          	vpunpckhwd %ymm3,%ymm2,%ymm2
 727:	c5 7d 7f 82 00 01 00 	vmovdqa %ymm8,0x100(%rdx)
 72e:	00 
 72f:	c4 e3 5d 46 da 20    	vperm2i128 $0x20,%ymm2,%ymm4,%ymm3
 735:	c4 e3 5d 46 e2 31    	vperm2i128 $0x31,%ymm2,%ymm4,%ymm4
 73b:	c5 f5 61 d7          	vpunpcklwd %ymm7,%ymm1,%ymm2
 73f:	c5 fd 7f b2 20 01 00 	vmovdqa %ymm6,0x120(%rdx)
 746:	00 
 747:	c5 f5 69 cf          	vpunpckhwd %ymm7,%ymm1,%ymm1
 74b:	c5 fd 7f 9a 40 01 00 	vmovdqa %ymm3,0x140(%rdx)
 752:	00 
 753:	c4 e3 6d 46 d9 20    	vperm2i128 $0x20,%ymm1,%ymm2,%ymm3
 759:	c4 e3 6d 46 d1 31    	vperm2i128 $0x31,%ymm1,%ymm2,%ymm2
 75f:	c5 fd 61 cd          	vpunpcklwd %ymm5,%ymm0,%ymm1
 763:	c5 fd 7f a2 60 01 00 	vmovdqa %ymm4,0x160(%rdx)
 76a:	00 
 76b:	c5 fd 69 c5          	vpunpckhwd %ymm5,%ymm0,%ymm0
 76f:	c5 fd 7f 92 a0 01 00 	vmovdqa %ymm2,0x1a0(%rdx)
 776:	00 
 777:	c4 e3 75 46 d0 20    	vperm2i128 $0x20,%ymm0,%ymm1,%ymm2
 77d:	c4 e3 75 46 c8 31    	vperm2i128 $0x31,%ymm0,%ymm1,%ymm1
 783:	c5 fd 7f 9a 80 01 00 	vmovdqa %ymm3,0x180(%rdx)
 78a:	00 
 78b:	c5 fd 7f 92 c0 01 00 	vmovdqa %ymm2,0x1c0(%rdx)
 792:	00 
 793:	c5 fd 7f 8a e0 01 00 	vmovdqa %ymm1,0x1e0(%rdx)
 79a:	00 
 79b:	c5 f8 77             	vzeroupper
 79e:	c3                   	ret
 79f:	90                   	nop
 7a0:	8b 06                	mov    (%rsi),%eax
 7a2:	89 c1                	mov    %eax,%ecx
 7a4:	d1 e8                	shr    $1,%eax
 7a6:	81 e1 55 55 55 55    	and    $0x55555555,%ecx
 7ac:	25 55 55 55 55       	and    $0x55555555,%eax
 7b1:	01 c8                	add    %ecx,%eax
 7b3:	89 c7                	mov    %eax,%edi
 7b5:	89 c1                	mov    %eax,%ecx
 7b7:	c1 ef 02             	shr    $0x2,%edi
 7ba:	83 e1 03             	and    $0x3,%ecx
 7bd:	83 e7 03             	and    $0x3,%edi
 7c0:	29 f9                	sub    %edi,%ecx
 7c2:	89 c7                	mov    %eax,%edi
 7c4:	66 89 0a             	mov    %cx,(%rdx)
 7c7:	89 c1                	mov    %eax,%ecx
 7c9:	c1 ef 06             	shr    $0x6,%edi
 7cc:	c1 e9 04             	shr    $0x4,%ecx
 7cf:	83 e7 03             	and    $0x3,%edi
 7d2:	83 e1 03             	and    $0x3,%ecx
 7d5:	29 f9                	sub    %edi,%ecx
 7d7:	89 c7                	mov    %eax,%edi
 7d9:	66 89 4a 02          	mov    %cx,0x2(%rdx)
 7dd:	89 c1                	mov    %eax,%ecx
 7df:	c1 ef 0a             	shr    $0xa,%edi
 7e2:	c1 e9 08             	shr    $0x8,%ecx
 7e5:	83 e7 03             	and    $0x3,%edi
 7e8:	83 e1 03             	and    $0x3,%ecx
 7eb:	29 f9                	sub    %edi,%ecx
 7ed:	89 c7                	mov    %eax,%edi
 7ef:	66 89 4a 04          	mov    %cx,0x4(%rdx)
 7f3:	89 c1                	mov    %eax,%ecx
 7f5:	66 c1 ef 0e          	shr    $0xe,%di
 7f9:	c1 e9 0c             	shr    $0xc,%ecx
 7fc:	83 e1 03             	and    $0x3,%ecx
 7ff:	29 f9                	sub    %edi,%ecx
 801:	89 c7                	mov    %eax,%edi
 803:	66 89 4a 06          	mov    %cx,0x6(%rdx)
 807:	89 c1                	mov    %eax,%ecx
 809:	c1 ef 12             	shr    $0x12,%edi
 80c:	c1 e9 10             	shr    $0x10,%ecx
 80f:	83 e7 03             	and    $0x3,%edi
 812:	83 e1 03             	and    $0x3,%ecx
 815:	29 f9                	sub    %edi,%ecx
 817:	89 c7                	mov    %eax,%edi
 819:	66 89 4a 08          	mov    %cx,0x8(%rdx)
 81d:	89 c1                	mov    %eax,%ecx
 81f:	c1 ef 16             	shr    $0x16,%edi
 822:	c1 e9 14             	shr    $0x14,%ecx
 825:	83 e7 03             	and    $0x3,%edi
 828:	83 e1 03             	and    $0x3,%ecx
 82b:	29 f9                	sub    %edi,%ecx
 82d:	89 c7                	mov    %eax,%edi
 82f:	66 89 4a 0a          	mov    %cx,0xa(%rdx)
 833:	89 c1                	mov    %eax,%ecx
 835:	c1 e9 18             	shr    $0x18,%ecx
 838:	c1 ef 1a             	shr    $0x1a,%edi
 83b:	48 83 c2 10          	add    $0x10,%rdx
 83f:	48 83 c6 04          	add    $0x4,%rsi
 843:	83 e1 03             	and    $0x3,%ecx
 846:	83 e7 03             	and    $0x3,%edi
 849:	29 f9                	sub    %edi,%ecx
 84b:	66 89 4a fc          	mov    %cx,-0x4(%rdx)
 84f:	89 c1                	mov    %eax,%ecx
 851:	c1 e8 1e             	shr    $0x1e,%eax
 854:	c1 e9 1c             	shr    $0x1c,%ecx
 857:	83 e1 03             	and    $0x3,%ecx
 85a:	29 c1                	sub    %eax,%ecx
 85c:	66 89 4a fe          	mov    %cx,-0x2(%rdx)
 860:	4c 39 c2             	cmp    %r8,%rdx
 863:	0f 85 37 ff ff ff    	jne    7a0 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_cbd2+0x7a0>
 869:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/verify.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/compress_consts.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/consts.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/intt_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_invntt_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 a1 d8 a1 d8       	mov    $0xd8a1d8a1,%eax
  17:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  1b:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  20:	b8 a1 05 a1 05       	mov    $0x5a105a1,%eax
  25:	c5 f9 6e d8          	vmovd  %eax,%xmm3
  29:	c4 e2 7d 58 db       	vpbroadcastd %xmm3,%ymm3
  2e:	c5 fd 6f 27          	vmovdqa (%rdi),%ymm4
  32:	c5 fd 6f 77 40       	vmovdqa 0x40(%rdi),%ymm6
  37:	c5 fd 6f 6f 20       	vmovdqa 0x20(%rdi),%ymm5
  3c:	c5 fd 6f 7f 60       	vmovdqa 0x60(%rdi),%ymm7
  41:	c5 5d d5 e2          	vpmullw %ymm2,%ymm4,%ymm12
  45:	c5 dd e5 e3          	vpmulhw %ymm3,%ymm4,%ymm4
  49:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  4d:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
  52:	c5 4d d5 e2          	vpmullw %ymm2,%ymm6,%ymm12
  56:	c5 cd e5 f3          	vpmulhw %ymm3,%ymm6,%ymm6
  5a:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  5e:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
  63:	c5 55 d5 e2          	vpmullw %ymm2,%ymm5,%ymm12
  67:	c5 d5 e5 eb          	vpmulhw %ymm3,%ymm5,%ymm5
  6b:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  6f:	c4 c1 55 f9 ec       	vpsubw %ymm12,%ymm5,%ymm5
  74:	c5 45 d5 e2          	vpmullw %ymm2,%ymm7,%ymm12
  78:	c5 c5 e5 fb          	vpmulhw %ymm3,%ymm7,%ymm7
  7c:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  80:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
  85:	c5 7d 6f 87 80 00 00 	vmovdqa 0x80(%rdi),%ymm8
  8c:	00 
  8d:	c5 7d 6f 97 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm10
  94:	00 
  95:	c5 7d 6f 8f a0 00 00 	vmovdqa 0xa0(%rdi),%ymm9
  9c:	00 
  9d:	c5 7d 6f 9f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm11
  a4:	00 
  a5:	c5 3d d5 e2          	vpmullw %ymm2,%ymm8,%ymm12
  a9:	c5 3d e5 c3          	vpmulhw %ymm3,%ymm8,%ymm8
  ad:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  b1:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
  b6:	c5 2d d5 e2          	vpmullw %ymm2,%ymm10,%ymm12
  ba:	c5 2d e5 d3          	vpmulhw %ymm3,%ymm10,%ymm10
  be:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  c2:	c4 41 2d f9 d4       	vpsubw %ymm12,%ymm10,%ymm10
  c7:	c5 35 d5 e2          	vpmullw %ymm2,%ymm9,%ymm12
  cb:	c5 35 e5 cb          	vpmulhw %ymm3,%ymm9,%ymm9
  cf:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  d3:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
  d8:	c5 25 d5 e2          	vpmullw %ymm2,%ymm11,%ymm12
  dc:	c5 25 e5 db          	vpmulhw %ymm3,%ymm11,%ymm11
  e0:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  e4:	c4 41 25 f9 dc       	vpsubw %ymm12,%ymm11,%ymm11
  e9:	c4 63 fd 00 be a0 03 	vpermq $0x4e,0x3a0(%rsi),%ymm15
  f0:	00 00 4e 
  f3:	c4 e3 fd 00 8e 60 03 	vpermq $0x4e,0x360(%rsi),%ymm1
  fa:	00 00 4e 
  fd:	c4 e3 fd 00 96 c0 03 	vpermq $0x4e,0x3c0(%rsi),%ymm2
 104:	00 00 4e 
 107:	c4 e3 fd 00 9e 80 03 	vpermq $0x4e,0x380(%rsi),%ymm3
 10e:	00 00 4e 
 111:	c5 7d 6f 26          	vmovdqa (%rsi),%ymm12
 115:	c4 42 05 00 fc       	vpshufb %ymm12,%ymm15,%ymm15
 11a:	c4 c2 75 00 cc       	vpshufb %ymm12,%ymm1,%ymm1
 11f:	c4 c2 6d 00 d4       	vpshufb %ymm12,%ymm2,%ymm2
 124:	c4 c2 65 00 dc       	vpshufb %ymm12,%ymm3,%ymm3
 129:	c5 4d f9 e4          	vpsubw %ymm4,%ymm6,%ymm12
 12d:	c5 dd fd e6          	vpaddw %ymm6,%ymm4,%ymm4
 131:	c5 45 f9 ed          	vpsubw %ymm5,%ymm7,%ymm13
 135:	c4 c1 1d d5 f7       	vpmullw %ymm15,%ymm12,%ymm6
 13a:	c5 d5 fd ef          	vpaddw %ymm7,%ymm5,%ymm5
 13e:	c4 41 2d f9 f0       	vpsubw %ymm8,%ymm10,%ymm14
 143:	c4 c1 15 d5 ff       	vpmullw %ymm15,%ymm13,%ymm7
 148:	c4 41 3d fd c2       	vpaddw %ymm10,%ymm8,%ymm8
 14d:	c4 41 25 f9 f9       	vpsubw %ymm9,%ymm11,%ymm15
 152:	c5 0d d5 d1          	vpmullw %ymm1,%ymm14,%ymm10
 156:	c4 41 35 fd cb       	vpaddw %ymm11,%ymm9,%ymm9
 15b:	c5 05 d5 d9          	vpmullw %ymm1,%ymm15,%ymm11
 15f:	c5 1d e5 e2          	vpmulhw %ymm2,%ymm12,%ymm12
 163:	c5 15 e5 ea          	vpmulhw %ymm2,%ymm13,%ymm13
 167:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 16b:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 16f:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
 173:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 177:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 17b:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 17f:	c5 9d f9 f6          	vpsubw %ymm6,%ymm12,%ymm6
 183:	c5 95 f9 ff          	vpsubw %ymm7,%ymm13,%ymm7
 187:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 18c:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 191:	c4 e3 fd 00 96 20 03 	vpermq $0x4e,0x320(%rsi),%ymm2
 198:	00 00 4e 
 19b:	c4 e3 fd 00 9e 40 03 	vpermq $0x4e,0x340(%rsi),%ymm3
 1a2:	00 00 4e 
 1a5:	c5 fd 6f 0e          	vmovdqa (%rsi),%ymm1
 1a9:	c4 e2 6d 00 d1       	vpshufb %ymm1,%ymm2,%ymm2
 1ae:	c4 e2 65 00 d9       	vpshufb %ymm1,%ymm3,%ymm3
 1b3:	c5 3d f9 e4          	vpsubw %ymm4,%ymm8,%ymm12
 1b7:	c4 c1 5d fd e0       	vpaddw %ymm8,%ymm4,%ymm4
 1bc:	c5 35 f9 ed          	vpsubw %ymm5,%ymm9,%ymm13
 1c0:	c5 1d d5 c2          	vpmullw %ymm2,%ymm12,%ymm8
 1c4:	c4 c1 55 fd e9       	vpaddw %ymm9,%ymm5,%ymm5
 1c9:	c5 2d f9 f6          	vpsubw %ymm6,%ymm10,%ymm14
 1cd:	c5 15 d5 ca          	vpmullw %ymm2,%ymm13,%ymm9
 1d1:	c4 c1 4d fd f2       	vpaddw %ymm10,%ymm6,%ymm6
 1d6:	c5 25 f9 ff          	vpsubw %ymm7,%ymm11,%ymm15
 1da:	c5 0d d5 d2          	vpmullw %ymm2,%ymm14,%ymm10
 1de:	c4 c1 45 fd fb       	vpaddw %ymm11,%ymm7,%ymm7
 1e3:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 1e7:	c5 1d e5 e3          	vpmulhw %ymm3,%ymm12,%ymm12
 1eb:	c5 15 e5 eb          	vpmulhw %ymm3,%ymm13,%ymm13
 1ef:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 1f3:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 1f7:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 1fb:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 1ff:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 203:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 207:	c4 41 1d f9 c0       	vpsubw %ymm8,%ymm12,%ymm8
 20c:	c4 41 15 f9 c9       	vpsubw %ymm9,%ymm13,%ymm9
 211:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 216:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 21b:	c5 e5 72 f5 10       	vpslld $0x10,%ymm5,%ymm3
 220:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
 226:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 22b:	c4 e3 5d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm4,%ymm5
 231:	c5 dd 72 f7 10       	vpslld $0x10,%ymm7,%ymm4
 236:	c4 e3 4d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm6,%ymm4
 23c:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 241:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
 247:	c4 c1 4d 72 f1 10    	vpslld $0x10,%ymm9,%ymm6
 24d:	c4 e3 3d 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm8,%ymm6
 253:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 259:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
 25f:	c4 c1 3d 72 f3 10    	vpslld $0x10,%ymm11,%ymm8
 265:	c4 43 2d 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm10,%ymm8
 26b:	c4 c1 2d 72 d2 10    	vpsrld $0x10,%ymm10,%ymm10
 271:	c4 43 2d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm10,%ymm11
 277:	c5 7d 6f 66 20       	vmovdqa 0x20(%rsi),%ymm12
 27c:	c4 e2 1d 36 96 e0 02 	vpermd 0x2e0(%rsi),%ymm12,%ymm2
 283:	00 00 
 285:	c4 62 1d 36 96 00 03 	vpermd 0x300(%rsi),%ymm12,%ymm10
 28c:	00 00 
 28e:	c5 55 f9 e3          	vpsubw %ymm3,%ymm5,%ymm12
 292:	c5 e5 fd dd          	vpaddw %ymm5,%ymm3,%ymm3
 296:	c5 45 f9 ec          	vpsubw %ymm4,%ymm7,%ymm13
 29a:	c5 9d d5 ea          	vpmullw %ymm2,%ymm12,%ymm5
 29e:	c5 dd fd e7          	vpaddw %ymm7,%ymm4,%ymm4
 2a2:	c5 35 f9 f6          	vpsubw %ymm6,%ymm9,%ymm14
 2a6:	c5 95 d5 fa          	vpmullw %ymm2,%ymm13,%ymm7
 2aa:	c4 c1 4d fd f1       	vpaddw %ymm9,%ymm6,%ymm6
 2af:	c4 41 25 f9 f8       	vpsubw %ymm8,%ymm11,%ymm15
 2b4:	c5 0d d5 ca          	vpmullw %ymm2,%ymm14,%ymm9
 2b8:	c4 41 3d fd c3       	vpaddw %ymm11,%ymm8,%ymm8
 2bd:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 2c1:	c4 41 1d e5 e2       	vpmulhw %ymm10,%ymm12,%ymm12
 2c6:	c4 41 15 e5 ea       	vpmulhw %ymm10,%ymm13,%ymm13
 2cb:	c4 41 0d e5 f2       	vpmulhw %ymm10,%ymm14,%ymm14
 2d0:	c4 41 05 e5 fa       	vpmulhw %ymm10,%ymm15,%ymm15
 2d5:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 2d9:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 2dd:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 2e1:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 2e5:	c5 9d f9 ed          	vpsubw %ymm5,%ymm12,%ymm5
 2e9:	c5 95 f9 ff          	vpsubw %ymm7,%ymm13,%ymm7
 2ed:	c4 41 0d f9 c9       	vpsubw %ymm9,%ymm14,%ymm9
 2f2:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 2f7:	b8 bf 4e bf 4e       	mov    $0x4ebf4ebf,%eax
 2fc:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 300:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
 305:	c5 65 e5 e1          	vpmulhw %ymm1,%ymm3,%ymm12
 309:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 30f:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 313:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 318:	c5 7e 12 d4          	vmovsldup %ymm4,%ymm10
 31c:	c4 43 65 02 d2 aa    	vpblendd $0xaa,%ymm10,%ymm3,%ymm10
 322:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 327:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
 32d:	c4 c1 7e 12 d8       	vmovsldup %ymm8,%ymm3
 332:	c4 e3 4d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm6,%ymm3
 338:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 33d:	c4 43 4d 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm6,%ymm8
 343:	c5 fe 12 f7          	vmovsldup %ymm7,%ymm6
 347:	c4 e3 55 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm5,%ymm6
 34d:	c5 d5 73 d5 20       	vpsrlq $0x20,%ymm5,%ymm5
 352:	c4 e3 55 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm5,%ymm7
 358:	c4 c1 7e 12 eb       	vmovsldup %ymm11,%ymm5
 35d:	c4 e3 35 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm9,%ymm5
 363:	c4 c1 35 73 d1 20    	vpsrlq $0x20,%ymm9,%ymm9
 369:	c4 43 35 02 db aa    	vpblendd $0xaa,%ymm11,%ymm9,%ymm11
 36f:	c4 e3 fd 00 96 a0 02 	vpermq $0x1b,0x2a0(%rsi),%ymm2
 376:	00 00 1b 
 379:	c4 63 fd 00 8e c0 02 	vpermq $0x1b,0x2c0(%rsi),%ymm9
 380:	00 00 1b 
 383:	c4 41 5d f9 e2       	vpsubw %ymm10,%ymm4,%ymm12
 388:	c5 2d fd d4          	vpaddw %ymm4,%ymm10,%ymm10
 38c:	c5 3d f9 eb          	vpsubw %ymm3,%ymm8,%ymm13
 390:	c5 9d d5 e2          	vpmullw %ymm2,%ymm12,%ymm4
 394:	c4 c1 65 fd d8       	vpaddw %ymm8,%ymm3,%ymm3
 399:	c5 45 f9 f6          	vpsubw %ymm6,%ymm7,%ymm14
 39d:	c5 15 d5 c2          	vpmullw %ymm2,%ymm13,%ymm8
 3a1:	c5 cd fd f7          	vpaddw %ymm7,%ymm6,%ymm6
 3a5:	c5 25 f9 fd          	vpsubw %ymm5,%ymm11,%ymm15
 3a9:	c5 8d d5 fa          	vpmullw %ymm2,%ymm14,%ymm7
 3ad:	c4 c1 55 fd eb       	vpaddw %ymm11,%ymm5,%ymm5
 3b2:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 3b6:	c4 41 1d e5 e1       	vpmulhw %ymm9,%ymm12,%ymm12
 3bb:	c4 41 15 e5 e9       	vpmulhw %ymm9,%ymm13,%ymm13
 3c0:	c4 41 0d e5 f1       	vpmulhw %ymm9,%ymm14,%ymm14
 3c5:	c4 41 05 e5 f9       	vpmulhw %ymm9,%ymm15,%ymm15
 3ca:	c5 dd e5 e0          	vpmulhw %ymm0,%ymm4,%ymm4
 3ce:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 3d2:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 3d6:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 3da:	c5 9d f9 e4          	vpsubw %ymm4,%ymm12,%ymm4
 3de:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 3e3:	c5 8d f9 ff          	vpsubw %ymm7,%ymm14,%ymm7
 3e7:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 3ec:	c5 2d e5 e1          	vpmulhw %ymm1,%ymm10,%ymm12
 3f0:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 3f6:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 3fa:	c4 41 2d f9 d4       	vpsubw %ymm12,%ymm10,%ymm10
 3ff:	c5 2d 6c cb          	vpunpcklqdq %ymm3,%ymm10,%ymm9
 403:	c5 ad 6d db          	vpunpckhqdq %ymm3,%ymm10,%ymm3
 407:	c5 4d 6c d5          	vpunpcklqdq %ymm5,%ymm6,%ymm10
 40b:	c5 cd 6d ed          	vpunpckhqdq %ymm5,%ymm6,%ymm5
 40f:	c4 c1 5d 6c f0       	vpunpcklqdq %ymm8,%ymm4,%ymm6
 414:	c4 41 5d 6d c0       	vpunpckhqdq %ymm8,%ymm4,%ymm8
 419:	c4 c1 45 6c e3       	vpunpcklqdq %ymm11,%ymm7,%ymm4
 41e:	c4 41 45 6d db       	vpunpckhqdq %ymm11,%ymm7,%ymm11
 423:	c4 e3 fd 00 96 60 02 	vpermq $0x4e,0x260(%rsi),%ymm2
 42a:	00 00 4e 
 42d:	c4 e3 fd 00 be 80 02 	vpermq $0x4e,0x280(%rsi),%ymm7
 434:	00 00 4e 
 437:	c4 41 65 f9 e1       	vpsubw %ymm9,%ymm3,%ymm12
 43c:	c5 35 fd cb          	vpaddw %ymm3,%ymm9,%ymm9
 440:	c4 41 55 f9 ea       	vpsubw %ymm10,%ymm5,%ymm13
 445:	c5 9d d5 da          	vpmullw %ymm2,%ymm12,%ymm3
 449:	c5 2d fd d5          	vpaddw %ymm5,%ymm10,%ymm10
 44d:	c5 3d f9 f6          	vpsubw %ymm6,%ymm8,%ymm14
 451:	c5 95 d5 ea          	vpmullw %ymm2,%ymm13,%ymm5
 455:	c4 c1 4d fd f0       	vpaddw %ymm8,%ymm6,%ymm6
 45a:	c5 25 f9 fc          	vpsubw %ymm4,%ymm11,%ymm15
 45e:	c5 0d d5 c2          	vpmullw %ymm2,%ymm14,%ymm8
 462:	c4 c1 5d fd e3       	vpaddw %ymm11,%ymm4,%ymm4
 467:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 46b:	c5 1d e5 e7          	vpmulhw %ymm7,%ymm12,%ymm12
 46f:	c5 15 e5 ef          	vpmulhw %ymm7,%ymm13,%ymm13
 473:	c5 0d e5 f7          	vpmulhw %ymm7,%ymm14,%ymm14
 477:	c5 05 e5 ff          	vpmulhw %ymm7,%ymm15,%ymm15
 47b:	c5 e5 e5 d8          	vpmulhw %ymm0,%ymm3,%ymm3
 47f:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 483:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 487:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 48b:	c5 9d f9 db          	vpsubw %ymm3,%ymm12,%ymm3
 48f:	c5 95 f9 ed          	vpsubw %ymm5,%ymm13,%ymm5
 493:	c4 41 0d f9 c0       	vpsubw %ymm8,%ymm14,%ymm8
 498:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 49d:	c5 35 e5 e1          	vpmulhw %ymm1,%ymm9,%ymm12
 4a1:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 4a7:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 4ab:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
 4b0:	c4 c3 35 46 fa 20    	vperm2i128 $0x20,%ymm10,%ymm9,%ymm7
 4b6:	c4 43 35 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm9,%ymm10
 4bc:	c4 63 4d 46 cc 20    	vperm2i128 $0x20,%ymm4,%ymm6,%ymm9
 4c2:	c4 e3 4d 46 e4 31    	vperm2i128 $0x31,%ymm4,%ymm6,%ymm4
 4c8:	c4 e3 65 46 f5 20    	vperm2i128 $0x20,%ymm5,%ymm3,%ymm6
 4ce:	c4 e3 65 46 ed 31    	vperm2i128 $0x31,%ymm5,%ymm3,%ymm5
 4d4:	c4 c3 3d 46 db 20    	vperm2i128 $0x20,%ymm11,%ymm8,%ymm3
 4da:	c4 43 3d 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm8,%ymm11
 4e0:	c5 fd 6f 96 20 02 00 	vmovdqa 0x220(%rsi),%ymm2
 4e7:	00 
 4e8:	c5 7d 6f 86 40 02 00 	vmovdqa 0x240(%rsi),%ymm8
 4ef:	00 
 4f0:	c5 2d f9 e7          	vpsubw %ymm7,%ymm10,%ymm12
 4f4:	c4 c1 45 fd fa       	vpaddw %ymm10,%ymm7,%ymm7
 4f9:	c4 41 5d f9 e9       	vpsubw %ymm9,%ymm4,%ymm13
 4fe:	c5 1d d5 d2          	vpmullw %ymm2,%ymm12,%ymm10
 502:	c5 35 fd cc          	vpaddw %ymm4,%ymm9,%ymm9
 506:	c5 55 f9 f6          	vpsubw %ymm6,%ymm5,%ymm14
 50a:	c5 95 d5 e2          	vpmullw %ymm2,%ymm13,%ymm4
 50e:	c5 cd fd f5          	vpaddw %ymm5,%ymm6,%ymm6
 512:	c5 25 f9 fb          	vpsubw %ymm3,%ymm11,%ymm15
 516:	c5 8d d5 ea          	vpmullw %ymm2,%ymm14,%ymm5
 51a:	c4 c1 65 fd db       	vpaddw %ymm11,%ymm3,%ymm3
 51f:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 523:	c4 41 1d e5 e0       	vpmulhw %ymm8,%ymm12,%ymm12
 528:	c4 41 15 e5 e8       	vpmulhw %ymm8,%ymm13,%ymm13
 52d:	c4 41 0d e5 f0       	vpmulhw %ymm8,%ymm14,%ymm14
 532:	c4 41 05 e5 f8       	vpmulhw %ymm8,%ymm15,%ymm15
 537:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 53b:	c5 dd e5 e0          	vpmulhw %ymm0,%ymm4,%ymm4
 53f:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 543:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 547:	c4 41 1d f9 d2       	vpsubw %ymm10,%ymm12,%ymm10
 54c:	c5 95 f9 e4          	vpsubw %ymm4,%ymm13,%ymm4
 550:	c5 8d f9 ed          	vpsubw %ymm5,%ymm14,%ymm5
 554:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 559:	c5 45 e5 e1          	vpmulhw %ymm1,%ymm7,%ymm12
 55d:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 563:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 567:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
 56c:	c5 fd 7f 3f          	vmovdqa %ymm7,(%rdi)
 570:	c5 7d 7f 4f 20       	vmovdqa %ymm9,0x20(%rdi)
 575:	c5 fd 7f 77 40       	vmovdqa %ymm6,0x40(%rdi)
 57a:	c5 fd 7f 5f 60       	vmovdqa %ymm3,0x60(%rdi)
 57f:	c5 7d 7f 97 80 00 00 	vmovdqa %ymm10,0x80(%rdi)
 586:	00 
 587:	c5 fd 7f a7 a0 00 00 	vmovdqa %ymm4,0xa0(%rdi)
 58e:	00 
 58f:	c5 fd 7f af c0 00 00 	vmovdqa %ymm5,0xc0(%rdi)
 596:	00 
 597:	c5 7d 7f 9f e0 00 00 	vmovdqa %ymm11,0xe0(%rdi)
 59e:	00 
 59f:	b8 a1 d8 a1 d8       	mov    $0xd8a1d8a1,%eax
 5a4:	c5 f9 6e d0          	vmovd  %eax,%xmm2
 5a8:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
 5ad:	b8 a1 05 a1 05       	mov    $0x5a105a1,%eax
 5b2:	c5 f9 6e d8          	vmovd  %eax,%xmm3
 5b6:	c4 e2 7d 58 db       	vpbroadcastd %xmm3,%ymm3
 5bb:	c5 fd 6f a7 00 01 00 	vmovdqa 0x100(%rdi),%ymm4
 5c2:	00 
 5c3:	c5 fd 6f b7 40 01 00 	vmovdqa 0x140(%rdi),%ymm6
 5ca:	00 
 5cb:	c5 fd 6f af 20 01 00 	vmovdqa 0x120(%rdi),%ymm5
 5d2:	00 
 5d3:	c5 fd 6f bf 60 01 00 	vmovdqa 0x160(%rdi),%ymm7
 5da:	00 
 5db:	c5 5d d5 e2          	vpmullw %ymm2,%ymm4,%ymm12
 5df:	c5 dd e5 e3          	vpmulhw %ymm3,%ymm4,%ymm4
 5e3:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 5e7:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 5ec:	c5 4d d5 e2          	vpmullw %ymm2,%ymm6,%ymm12
 5f0:	c5 cd e5 f3          	vpmulhw %ymm3,%ymm6,%ymm6
 5f4:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 5f8:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
 5fd:	c5 55 d5 e2          	vpmullw %ymm2,%ymm5,%ymm12
 601:	c5 d5 e5 eb          	vpmulhw %ymm3,%ymm5,%ymm5
 605:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 609:	c4 c1 55 f9 ec       	vpsubw %ymm12,%ymm5,%ymm5
 60e:	c5 45 d5 e2          	vpmullw %ymm2,%ymm7,%ymm12
 612:	c5 c5 e5 fb          	vpmulhw %ymm3,%ymm7,%ymm7
 616:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 61a:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
 61f:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 626:	00 
 627:	c5 7d 6f 97 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm10
 62e:	00 
 62f:	c5 7d 6f 8f a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm9
 636:	00 
 637:	c5 7d 6f 9f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm11
 63e:	00 
 63f:	c5 3d d5 e2          	vpmullw %ymm2,%ymm8,%ymm12
 643:	c5 3d e5 c3          	vpmulhw %ymm3,%ymm8,%ymm8
 647:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 64b:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
 650:	c5 2d d5 e2          	vpmullw %ymm2,%ymm10,%ymm12
 654:	c5 2d e5 d3          	vpmulhw %ymm3,%ymm10,%ymm10
 658:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 65c:	c4 41 2d f9 d4       	vpsubw %ymm12,%ymm10,%ymm10
 661:	c5 35 d5 e2          	vpmullw %ymm2,%ymm9,%ymm12
 665:	c5 35 e5 cb          	vpmulhw %ymm3,%ymm9,%ymm9
 669:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 66d:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
 672:	c5 25 d5 e2          	vpmullw %ymm2,%ymm11,%ymm12
 676:	c5 25 e5 db          	vpmulhw %ymm3,%ymm11,%ymm11
 67a:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 67e:	c4 41 25 f9 dc       	vpsubw %ymm12,%ymm11,%ymm11
 683:	c4 63 fd 00 be e0 01 	vpermq $0x4e,0x1e0(%rsi),%ymm15
 68a:	00 00 4e 
 68d:	c4 e3 fd 00 8e a0 01 	vpermq $0x4e,0x1a0(%rsi),%ymm1
 694:	00 00 4e 
 697:	c4 e3 fd 00 96 00 02 	vpermq $0x4e,0x200(%rsi),%ymm2
 69e:	00 00 4e 
 6a1:	c4 e3 fd 00 9e c0 01 	vpermq $0x4e,0x1c0(%rsi),%ymm3
 6a8:	00 00 4e 
 6ab:	c5 7d 6f 26          	vmovdqa (%rsi),%ymm12
 6af:	c4 42 05 00 fc       	vpshufb %ymm12,%ymm15,%ymm15
 6b4:	c4 c2 75 00 cc       	vpshufb %ymm12,%ymm1,%ymm1
 6b9:	c4 c2 6d 00 d4       	vpshufb %ymm12,%ymm2,%ymm2
 6be:	c4 c2 65 00 dc       	vpshufb %ymm12,%ymm3,%ymm3
 6c3:	c5 4d f9 e4          	vpsubw %ymm4,%ymm6,%ymm12
 6c7:	c5 dd fd e6          	vpaddw %ymm6,%ymm4,%ymm4
 6cb:	c5 45 f9 ed          	vpsubw %ymm5,%ymm7,%ymm13
 6cf:	c4 c1 1d d5 f7       	vpmullw %ymm15,%ymm12,%ymm6
 6d4:	c5 d5 fd ef          	vpaddw %ymm7,%ymm5,%ymm5
 6d8:	c4 41 2d f9 f0       	vpsubw %ymm8,%ymm10,%ymm14
 6dd:	c4 c1 15 d5 ff       	vpmullw %ymm15,%ymm13,%ymm7
 6e2:	c4 41 3d fd c2       	vpaddw %ymm10,%ymm8,%ymm8
 6e7:	c4 41 25 f9 f9       	vpsubw %ymm9,%ymm11,%ymm15
 6ec:	c5 0d d5 d1          	vpmullw %ymm1,%ymm14,%ymm10
 6f0:	c4 41 35 fd cb       	vpaddw %ymm11,%ymm9,%ymm9
 6f5:	c5 05 d5 d9          	vpmullw %ymm1,%ymm15,%ymm11
 6f9:	c5 1d e5 e2          	vpmulhw %ymm2,%ymm12,%ymm12
 6fd:	c5 15 e5 ea          	vpmulhw %ymm2,%ymm13,%ymm13
 701:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 705:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 709:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
 70d:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 711:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 715:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 719:	c5 9d f9 f6          	vpsubw %ymm6,%ymm12,%ymm6
 71d:	c5 95 f9 ff          	vpsubw %ymm7,%ymm13,%ymm7
 721:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 726:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 72b:	c4 e3 fd 00 96 60 01 	vpermq $0x4e,0x160(%rsi),%ymm2
 732:	00 00 4e 
 735:	c4 e3 fd 00 9e 80 01 	vpermq $0x4e,0x180(%rsi),%ymm3
 73c:	00 00 4e 
 73f:	c5 fd 6f 0e          	vmovdqa (%rsi),%ymm1
 743:	c4 e2 6d 00 d1       	vpshufb %ymm1,%ymm2,%ymm2
 748:	c4 e2 65 00 d9       	vpshufb %ymm1,%ymm3,%ymm3
 74d:	c5 3d f9 e4          	vpsubw %ymm4,%ymm8,%ymm12
 751:	c4 c1 5d fd e0       	vpaddw %ymm8,%ymm4,%ymm4
 756:	c5 35 f9 ed          	vpsubw %ymm5,%ymm9,%ymm13
 75a:	c5 1d d5 c2          	vpmullw %ymm2,%ymm12,%ymm8
 75e:	c4 c1 55 fd e9       	vpaddw %ymm9,%ymm5,%ymm5
 763:	c5 2d f9 f6          	vpsubw %ymm6,%ymm10,%ymm14
 767:	c5 15 d5 ca          	vpmullw %ymm2,%ymm13,%ymm9
 76b:	c4 c1 4d fd f2       	vpaddw %ymm10,%ymm6,%ymm6
 770:	c5 25 f9 ff          	vpsubw %ymm7,%ymm11,%ymm15
 774:	c5 0d d5 d2          	vpmullw %ymm2,%ymm14,%ymm10
 778:	c4 c1 45 fd fb       	vpaddw %ymm11,%ymm7,%ymm7
 77d:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 781:	c5 1d e5 e3          	vpmulhw %ymm3,%ymm12,%ymm12
 785:	c5 15 e5 eb          	vpmulhw %ymm3,%ymm13,%ymm13
 789:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 78d:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 791:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 795:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 799:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 79d:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 7a1:	c4 41 1d f9 c0       	vpsubw %ymm8,%ymm12,%ymm8
 7a6:	c4 41 15 f9 c9       	vpsubw %ymm9,%ymm13,%ymm9
 7ab:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 7b0:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 7b5:	c5 e5 72 f5 10       	vpslld $0x10,%ymm5,%ymm3
 7ba:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
 7c0:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 7c5:	c4 e3 5d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm4,%ymm5
 7cb:	c5 dd 72 f7 10       	vpslld $0x10,%ymm7,%ymm4
 7d0:	c4 e3 4d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm6,%ymm4
 7d6:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 7db:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
 7e1:	c4 c1 4d 72 f1 10    	vpslld $0x10,%ymm9,%ymm6
 7e7:	c4 e3 3d 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm8,%ymm6
 7ed:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 7f3:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
 7f9:	c4 c1 3d 72 f3 10    	vpslld $0x10,%ymm11,%ymm8
 7ff:	c4 43 2d 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm10,%ymm8
 805:	c4 c1 2d 72 d2 10    	vpsrld $0x10,%ymm10,%ymm10
 80b:	c4 43 2d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm10,%ymm11
 811:	c5 7d 6f 66 20       	vmovdqa 0x20(%rsi),%ymm12
 816:	c4 e2 1d 36 96 20 01 	vpermd 0x120(%rsi),%ymm12,%ymm2
 81d:	00 00 
 81f:	c4 62 1d 36 96 40 01 	vpermd 0x140(%rsi),%ymm12,%ymm10
 826:	00 00 
 828:	c5 55 f9 e3          	vpsubw %ymm3,%ymm5,%ymm12
 82c:	c5 e5 fd dd          	vpaddw %ymm5,%ymm3,%ymm3
 830:	c5 45 f9 ec          	vpsubw %ymm4,%ymm7,%ymm13
 834:	c5 9d d5 ea          	vpmullw %ymm2,%ymm12,%ymm5
 838:	c5 dd fd e7          	vpaddw %ymm7,%ymm4,%ymm4
 83c:	c5 35 f9 f6          	vpsubw %ymm6,%ymm9,%ymm14
 840:	c5 95 d5 fa          	vpmullw %ymm2,%ymm13,%ymm7
 844:	c4 c1 4d fd f1       	vpaddw %ymm9,%ymm6,%ymm6
 849:	c4 41 25 f9 f8       	vpsubw %ymm8,%ymm11,%ymm15
 84e:	c5 0d d5 ca          	vpmullw %ymm2,%ymm14,%ymm9
 852:	c4 41 3d fd c3       	vpaddw %ymm11,%ymm8,%ymm8
 857:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 85b:	c4 41 1d e5 e2       	vpmulhw %ymm10,%ymm12,%ymm12
 860:	c4 41 15 e5 ea       	vpmulhw %ymm10,%ymm13,%ymm13
 865:	c4 41 0d e5 f2       	vpmulhw %ymm10,%ymm14,%ymm14
 86a:	c4 41 05 e5 fa       	vpmulhw %ymm10,%ymm15,%ymm15
 86f:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 873:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 877:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 87b:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 87f:	c5 9d f9 ed          	vpsubw %ymm5,%ymm12,%ymm5
 883:	c5 95 f9 ff          	vpsubw %ymm7,%ymm13,%ymm7
 887:	c4 41 0d f9 c9       	vpsubw %ymm9,%ymm14,%ymm9
 88c:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 891:	b8 bf 4e bf 4e       	mov    $0x4ebf4ebf,%eax
 896:	c5 f9 6e c8          	vmovd  %eax,%xmm1
 89a:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
 89f:	c5 65 e5 e1          	vpmulhw %ymm1,%ymm3,%ymm12
 8a3:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 8a9:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 8ad:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 8b2:	c5 7e 12 d4          	vmovsldup %ymm4,%ymm10
 8b6:	c4 43 65 02 d2 aa    	vpblendd $0xaa,%ymm10,%ymm3,%ymm10
 8bc:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 8c1:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
 8c7:	c4 c1 7e 12 d8       	vmovsldup %ymm8,%ymm3
 8cc:	c4 e3 4d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm6,%ymm3
 8d2:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 8d7:	c4 43 4d 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm6,%ymm8
 8dd:	c5 fe 12 f7          	vmovsldup %ymm7,%ymm6
 8e1:	c4 e3 55 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm5,%ymm6
 8e7:	c5 d5 73 d5 20       	vpsrlq $0x20,%ymm5,%ymm5
 8ec:	c4 e3 55 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm5,%ymm7
 8f2:	c4 c1 7e 12 eb       	vmovsldup %ymm11,%ymm5
 8f7:	c4 e3 35 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm9,%ymm5
 8fd:	c4 c1 35 73 d1 20    	vpsrlq $0x20,%ymm9,%ymm9
 903:	c4 43 35 02 db aa    	vpblendd $0xaa,%ymm11,%ymm9,%ymm11
 909:	c4 e3 fd 00 96 e0 00 	vpermq $0x1b,0xe0(%rsi),%ymm2
 910:	00 00 1b 
 913:	c4 63 fd 00 8e 00 01 	vpermq $0x1b,0x100(%rsi),%ymm9
 91a:	00 00 1b 
 91d:	c4 41 5d f9 e2       	vpsubw %ymm10,%ymm4,%ymm12
 922:	c5 2d fd d4          	vpaddw %ymm4,%ymm10,%ymm10
 926:	c5 3d f9 eb          	vpsubw %ymm3,%ymm8,%ymm13
 92a:	c5 9d d5 e2          	vpmullw %ymm2,%ymm12,%ymm4
 92e:	c4 c1 65 fd d8       	vpaddw %ymm8,%ymm3,%ymm3
 933:	c5 45 f9 f6          	vpsubw %ymm6,%ymm7,%ymm14
 937:	c5 15 d5 c2          	vpmullw %ymm2,%ymm13,%ymm8
 93b:	c5 cd fd f7          	vpaddw %ymm7,%ymm6,%ymm6
 93f:	c5 25 f9 fd          	vpsubw %ymm5,%ymm11,%ymm15
 943:	c5 8d d5 fa          	vpmullw %ymm2,%ymm14,%ymm7
 947:	c4 c1 55 fd eb       	vpaddw %ymm11,%ymm5,%ymm5
 94c:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 950:	c4 41 1d e5 e1       	vpmulhw %ymm9,%ymm12,%ymm12
 955:	c4 41 15 e5 e9       	vpmulhw %ymm9,%ymm13,%ymm13
 95a:	c4 41 0d e5 f1       	vpmulhw %ymm9,%ymm14,%ymm14
 95f:	c4 41 05 e5 f9       	vpmulhw %ymm9,%ymm15,%ymm15
 964:	c5 dd e5 e0          	vpmulhw %ymm0,%ymm4,%ymm4
 968:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 96c:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 970:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 974:	c5 9d f9 e4          	vpsubw %ymm4,%ymm12,%ymm4
 978:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 97d:	c5 8d f9 ff          	vpsubw %ymm7,%ymm14,%ymm7
 981:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 986:	c5 2d e5 e1          	vpmulhw %ymm1,%ymm10,%ymm12
 98a:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 990:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 994:	c4 41 2d f9 d4       	vpsubw %ymm12,%ymm10,%ymm10
 999:	c5 2d 6c cb          	vpunpcklqdq %ymm3,%ymm10,%ymm9
 99d:	c5 ad 6d db          	vpunpckhqdq %ymm3,%ymm10,%ymm3
 9a1:	c5 4d 6c d5          	vpunpcklqdq %ymm5,%ymm6,%ymm10
 9a5:	c5 cd 6d ed          	vpunpckhqdq %ymm5,%ymm6,%ymm5
 9a9:	c4 c1 5d 6c f0       	vpunpcklqdq %ymm8,%ymm4,%ymm6
 9ae:	c4 41 5d 6d c0       	vpunpckhqdq %ymm8,%ymm4,%ymm8
 9b3:	c4 c1 45 6c e3       	vpunpcklqdq %ymm11,%ymm7,%ymm4
 9b8:	c4 41 45 6d db       	vpunpckhqdq %ymm11,%ymm7,%ymm11
 9bd:	c4 e3 fd 00 96 a0 00 	vpermq $0x4e,0xa0(%rsi),%ymm2
 9c4:	00 00 4e 
 9c7:	c4 e3 fd 00 be c0 00 	vpermq $0x4e,0xc0(%rsi),%ymm7
 9ce:	00 00 4e 
 9d1:	c4 41 65 f9 e1       	vpsubw %ymm9,%ymm3,%ymm12
 9d6:	c5 35 fd cb          	vpaddw %ymm3,%ymm9,%ymm9
 9da:	c4 41 55 f9 ea       	vpsubw %ymm10,%ymm5,%ymm13
 9df:	c5 9d d5 da          	vpmullw %ymm2,%ymm12,%ymm3
 9e3:	c5 2d fd d5          	vpaddw %ymm5,%ymm10,%ymm10
 9e7:	c5 3d f9 f6          	vpsubw %ymm6,%ymm8,%ymm14
 9eb:	c5 95 d5 ea          	vpmullw %ymm2,%ymm13,%ymm5
 9ef:	c4 c1 4d fd f0       	vpaddw %ymm8,%ymm6,%ymm6
 9f4:	c5 25 f9 fc          	vpsubw %ymm4,%ymm11,%ymm15
 9f8:	c5 0d d5 c2          	vpmullw %ymm2,%ymm14,%ymm8
 9fc:	c4 c1 5d fd e3       	vpaddw %ymm11,%ymm4,%ymm4
 a01:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 a05:	c5 1d e5 e7          	vpmulhw %ymm7,%ymm12,%ymm12
 a09:	c5 15 e5 ef          	vpmulhw %ymm7,%ymm13,%ymm13
 a0d:	c5 0d e5 f7          	vpmulhw %ymm7,%ymm14,%ymm14
 a11:	c5 05 e5 ff          	vpmulhw %ymm7,%ymm15,%ymm15
 a15:	c5 e5 e5 d8          	vpmulhw %ymm0,%ymm3,%ymm3
 a19:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 a1d:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 a21:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 a25:	c5 9d f9 db          	vpsubw %ymm3,%ymm12,%ymm3
 a29:	c5 95 f9 ed          	vpsubw %ymm5,%ymm13,%ymm5
 a2d:	c4 41 0d f9 c0       	vpsubw %ymm8,%ymm14,%ymm8
 a32:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 a37:	c5 35 e5 e1          	vpmulhw %ymm1,%ymm9,%ymm12
 a3b:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 a41:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 a45:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
 a4a:	c4 c3 35 46 fa 20    	vperm2i128 $0x20,%ymm10,%ymm9,%ymm7
 a50:	c4 43 35 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm9,%ymm10
 a56:	c4 63 4d 46 cc 20    	vperm2i128 $0x20,%ymm4,%ymm6,%ymm9
 a5c:	c4 e3 4d 46 e4 31    	vperm2i128 $0x31,%ymm4,%ymm6,%ymm4
 a62:	c4 e3 65 46 f5 20    	vperm2i128 $0x20,%ymm5,%ymm3,%ymm6
 a68:	c4 e3 65 46 ed 31    	vperm2i128 $0x31,%ymm5,%ymm3,%ymm5
 a6e:	c4 c3 3d 46 db 20    	vperm2i128 $0x20,%ymm11,%ymm8,%ymm3
 a74:	c4 43 3d 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm8,%ymm11
 a7a:	c5 fd 6f 56 60       	vmovdqa 0x60(%rsi),%ymm2
 a7f:	c5 7d 6f 86 80 00 00 	vmovdqa 0x80(%rsi),%ymm8
 a86:	00 
 a87:	c5 2d f9 e7          	vpsubw %ymm7,%ymm10,%ymm12
 a8b:	c4 c1 45 fd fa       	vpaddw %ymm10,%ymm7,%ymm7
 a90:	c4 41 5d f9 e9       	vpsubw %ymm9,%ymm4,%ymm13
 a95:	c5 1d d5 d2          	vpmullw %ymm2,%ymm12,%ymm10
 a99:	c5 35 fd cc          	vpaddw %ymm4,%ymm9,%ymm9
 a9d:	c5 55 f9 f6          	vpsubw %ymm6,%ymm5,%ymm14
 aa1:	c5 95 d5 e2          	vpmullw %ymm2,%ymm13,%ymm4
 aa5:	c5 cd fd f5          	vpaddw %ymm5,%ymm6,%ymm6
 aa9:	c5 25 f9 fb          	vpsubw %ymm3,%ymm11,%ymm15
 aad:	c5 8d d5 ea          	vpmullw %ymm2,%ymm14,%ymm5
 ab1:	c4 c1 65 fd db       	vpaddw %ymm11,%ymm3,%ymm3
 ab6:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 aba:	c4 41 1d e5 e0       	vpmulhw %ymm8,%ymm12,%ymm12
 abf:	c4 41 15 e5 e8       	vpmulhw %ymm8,%ymm13,%ymm13
 ac4:	c4 41 0d e5 f0       	vpmulhw %ymm8,%ymm14,%ymm14
 ac9:	c4 41 05 e5 f8       	vpmulhw %ymm8,%ymm15,%ymm15
 ace:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 ad2:	c5 dd e5 e0          	vpmulhw %ymm0,%ymm4,%ymm4
 ad6:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 ada:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 ade:	c4 41 1d f9 d2       	vpsubw %ymm10,%ymm12,%ymm10
 ae3:	c5 95 f9 e4          	vpsubw %ymm4,%ymm13,%ymm4
 ae7:	c5 8d f9 ed          	vpsubw %ymm5,%ymm14,%ymm5
 aeb:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 af0:	c5 45 e5 e1          	vpmulhw %ymm1,%ymm7,%ymm12
 af4:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 afa:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 afe:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
 b03:	c5 fd 7f bf 00 01 00 	vmovdqa %ymm7,0x100(%rdi)
 b0a:	00 
 b0b:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
 b12:	00 
 b13:	c5 fd 7f b7 40 01 00 	vmovdqa %ymm6,0x140(%rdi)
 b1a:	00 
 b1b:	c5 fd 7f 9f 60 01 00 	vmovdqa %ymm3,0x160(%rdi)
 b22:	00 
 b23:	c5 7d 7f 97 80 01 00 	vmovdqa %ymm10,0x180(%rdi)
 b2a:	00 
 b2b:	c5 fd 7f a7 a0 01 00 	vmovdqa %ymm4,0x1a0(%rdi)
 b32:	00 
 b33:	c5 fd 7f af c0 01 00 	vmovdqa %ymm5,0x1c0(%rdi)
 b3a:	00 
 b3b:	c5 7d 7f 9f e0 01 00 	vmovdqa %ymm11,0x1e0(%rdi)
 b42:	00 
 b43:	c5 fd 6f 27          	vmovdqa (%rdi),%ymm4
 b47:	c5 7d 6f 87 00 01 00 	vmovdqa 0x100(%rdi),%ymm8
 b4e:	00 
 b4f:	c5 fd 6f 6f 20       	vmovdqa 0x20(%rdi),%ymm5
 b54:	c5 7d 6f 8f 20 01 00 	vmovdqa 0x120(%rdi),%ymm9
 b5b:	00 
 b5c:	c4 e2 7d 59 56 40    	vpbroadcastq 0x40(%rsi),%ymm2
 b62:	c5 fd 6f 77 40       	vmovdqa 0x40(%rdi),%ymm6
 b67:	c5 7d 6f 97 40 01 00 	vmovdqa 0x140(%rdi),%ymm10
 b6e:	00 
 b6f:	c5 fd 6f 7f 60       	vmovdqa 0x60(%rdi),%ymm7
 b74:	c5 7d 6f 9f 60 01 00 	vmovdqa 0x160(%rdi),%ymm11
 b7b:	00 
 b7c:	c4 e2 7d 59 5e 48    	vpbroadcastq 0x48(%rsi),%ymm3
 b82:	c5 3d f9 e4          	vpsubw %ymm4,%ymm8,%ymm12
 b86:	c4 c1 5d fd e0       	vpaddw %ymm8,%ymm4,%ymm4
 b8b:	c5 35 f9 ed          	vpsubw %ymm5,%ymm9,%ymm13
 b8f:	c5 1d d5 c2          	vpmullw %ymm2,%ymm12,%ymm8
 b93:	c4 c1 55 fd e9       	vpaddw %ymm9,%ymm5,%ymm5
 b98:	c5 2d f9 f6          	vpsubw %ymm6,%ymm10,%ymm14
 b9c:	c5 15 d5 ca          	vpmullw %ymm2,%ymm13,%ymm9
 ba0:	c4 c1 4d fd f2       	vpaddw %ymm10,%ymm6,%ymm6
 ba5:	c5 25 f9 ff          	vpsubw %ymm7,%ymm11,%ymm15
 ba9:	c5 0d d5 d2          	vpmullw %ymm2,%ymm14,%ymm10
 bad:	c4 c1 45 fd fb       	vpaddw %ymm11,%ymm7,%ymm7
 bb2:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 bb6:	c5 1d e5 e3          	vpmulhw %ymm3,%ymm12,%ymm12
 bba:	c5 15 e5 eb          	vpmulhw %ymm3,%ymm13,%ymm13
 bbe:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 bc2:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 bc6:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 bca:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 bce:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 bd2:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 bd6:	c4 41 1d f9 c0       	vpsubw %ymm8,%ymm12,%ymm8
 bdb:	c4 41 15 f9 c9       	vpsubw %ymm9,%ymm13,%ymm9
 be0:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 be5:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 bea:	c5 fd 7f 27          	vmovdqa %ymm4,(%rdi)
 bee:	c5 fd 7f 6f 20       	vmovdqa %ymm5,0x20(%rdi)
 bf3:	c5 fd 7f 77 40       	vmovdqa %ymm6,0x40(%rdi)
 bf8:	c5 fd 7f 7f 60       	vmovdqa %ymm7,0x60(%rdi)
 bfd:	c5 7d 7f 87 00 01 00 	vmovdqa %ymm8,0x100(%rdi)
 c04:	00 
 c05:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
 c0c:	00 
 c0d:	c5 7d 7f 97 40 01 00 	vmovdqa %ymm10,0x140(%rdi)
 c14:	00 
 c15:	c5 7d 7f 9f 60 01 00 	vmovdqa %ymm11,0x160(%rdi)
 c1c:	00 
 c1d:	c5 fd 6f a7 80 00 00 	vmovdqa 0x80(%rdi),%ymm4
 c24:	00 
 c25:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 c2c:	00 
 c2d:	c5 fd 6f af a0 00 00 	vmovdqa 0xa0(%rdi),%ymm5
 c34:	00 
 c35:	c5 7d 6f 8f a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm9
 c3c:	00 
 c3d:	c4 e2 7d 59 56 40    	vpbroadcastq 0x40(%rsi),%ymm2
 c43:	c5 fd 6f b7 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm6
 c4a:	00 
 c4b:	c5 7d 6f 97 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm10
 c52:	00 
 c53:	c5 fd 6f bf e0 00 00 	vmovdqa 0xe0(%rdi),%ymm7
 c5a:	00 
 c5b:	c5 7d 6f 9f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm11
 c62:	00 
 c63:	c4 e2 7d 59 5e 48    	vpbroadcastq 0x48(%rsi),%ymm3
 c69:	c5 3d f9 e4          	vpsubw %ymm4,%ymm8,%ymm12
 c6d:	c4 c1 5d fd e0       	vpaddw %ymm8,%ymm4,%ymm4
 c72:	c5 35 f9 ed          	vpsubw %ymm5,%ymm9,%ymm13
 c76:	c5 1d d5 c2          	vpmullw %ymm2,%ymm12,%ymm8
 c7a:	c4 c1 55 fd e9       	vpaddw %ymm9,%ymm5,%ymm5
 c7f:	c5 2d f9 f6          	vpsubw %ymm6,%ymm10,%ymm14
 c83:	c5 15 d5 ca          	vpmullw %ymm2,%ymm13,%ymm9
 c87:	c4 c1 4d fd f2       	vpaddw %ymm10,%ymm6,%ymm6
 c8c:	c5 25 f9 ff          	vpsubw %ymm7,%ymm11,%ymm15
 c90:	c5 0d d5 d2          	vpmullw %ymm2,%ymm14,%ymm10
 c94:	c4 c1 45 fd fb       	vpaddw %ymm11,%ymm7,%ymm7
 c99:	c5 05 d5 da          	vpmullw %ymm2,%ymm15,%ymm11
 c9d:	c5 1d e5 e3          	vpmulhw %ymm3,%ymm12,%ymm12
 ca1:	c5 15 e5 eb          	vpmulhw %ymm3,%ymm13,%ymm13
 ca5:	c5 0d e5 f3          	vpmulhw %ymm3,%ymm14,%ymm14
 ca9:	c5 05 e5 fb          	vpmulhw %ymm3,%ymm15,%ymm15
 cad:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 cb1:	c5 35 e5 c8          	vpmulhw %ymm0,%ymm9,%ymm9
 cb5:	c5 2d e5 d0          	vpmulhw %ymm0,%ymm10,%ymm10
 cb9:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 cbd:	c4 41 1d f9 c0       	vpsubw %ymm8,%ymm12,%ymm8
 cc2:	c4 41 15 f9 c9       	vpsubw %ymm9,%ymm13,%ymm9
 cc7:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 ccc:	c4 41 05 f9 db       	vpsubw %ymm11,%ymm15,%ymm11
 cd1:	c5 fd 7f a7 80 00 00 	vmovdqa %ymm4,0x80(%rdi)
 cd8:	00 
 cd9:	c5 fd 7f af a0 00 00 	vmovdqa %ymm5,0xa0(%rdi)
 ce0:	00 
 ce1:	c5 fd 7f b7 c0 00 00 	vmovdqa %ymm6,0xc0(%rdi)
 ce8:	00 
 ce9:	c5 fd 7f bf e0 00 00 	vmovdqa %ymm7,0xe0(%rdi)
 cf0:	00 
 cf1:	c5 7d 7f 87 80 01 00 	vmovdqa %ymm8,0x180(%rdi)
 cf8:	00 
 cf9:	c5 7d 7f 8f a0 01 00 	vmovdqa %ymm9,0x1a0(%rdi)
 d00:	00 
 d01:	c5 7d 7f 97 c0 01 00 	vmovdqa %ymm10,0x1c0(%rdi)
 d08:	00 
 d09:	c5 7d 7f 9f e0 01 00 	vmovdqa %ymm11,0x1e0(%rdi)
 d10:	00 
 d11:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/ntt_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_ntt_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	c4 62 7d 59 7e 40    	vpbroadcastq 0x40(%rsi),%ymm15
  18:	c5 7d 6f 87 00 01 00 	vmovdqa 0x100(%rdi),%ymm8
  1f:	00 
  20:	c5 7d 6f 8f 20 01 00 	vmovdqa 0x120(%rdi),%ymm9
  27:	00 
  28:	c5 7d 6f 97 40 01 00 	vmovdqa 0x140(%rdi),%ymm10
  2f:	00 
  30:	c5 7d 6f 9f 60 01 00 	vmovdqa 0x160(%rdi),%ymm11
  37:	00 
  38:	c4 e2 7d 59 56 48    	vpbroadcastq 0x48(%rsi),%ymm2
  3e:	c4 41 3d d5 e7       	vpmullw %ymm15,%ymm8,%ymm12
  43:	c4 41 35 d5 ef       	vpmullw %ymm15,%ymm9,%ymm13
  48:	c4 41 2d d5 f7       	vpmullw %ymm15,%ymm10,%ymm14
  4d:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
  52:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
  56:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
  5a:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
  5e:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
  62:	c5 fd 6f 27          	vmovdqa (%rdi),%ymm4
  66:	c5 fd 6f 6f 20       	vmovdqa 0x20(%rdi),%ymm5
  6b:	c5 fd 6f 77 40       	vmovdqa 0x40(%rdi),%ymm6
  70:	c5 fd 6f 7f 60       	vmovdqa 0x60(%rdi),%ymm7
  75:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  79:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
  7d:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
  81:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
  85:	c4 c1 5d fd d8       	vpaddw %ymm8,%ymm4,%ymm3
  8a:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
  8f:	c4 c1 55 fd e1       	vpaddw %ymm9,%ymm5,%ymm4
  94:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
  99:	c4 c1 4d fd ea       	vpaddw %ymm10,%ymm6,%ymm5
  9e:	c4 41 4d f9 d2       	vpsubw %ymm10,%ymm6,%ymm10
  a3:	c4 c1 45 fd f3       	vpaddw %ymm11,%ymm7,%ymm6
  a8:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
  ad:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
  b2:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
  b7:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
  bc:	c4 41 35 fd cd       	vpaddw %ymm13,%ymm9,%ymm9
  c1:	c4 c1 55 f9 ee       	vpsubw %ymm14,%ymm5,%ymm5
  c6:	c4 41 2d fd d6       	vpaddw %ymm14,%ymm10,%ymm10
  cb:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
  d0:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
  d5:	c5 fd 7f 1f          	vmovdqa %ymm3,(%rdi)
  d9:	c5 fd 7f 67 20       	vmovdqa %ymm4,0x20(%rdi)
  de:	c5 fd 7f 6f 40       	vmovdqa %ymm5,0x40(%rdi)
  e3:	c5 fd 7f 77 60       	vmovdqa %ymm6,0x60(%rdi)
  e8:	c5 7d 7f 87 00 01 00 	vmovdqa %ymm8,0x100(%rdi)
  ef:	00 
  f0:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
  f7:	00 
  f8:	c5 7d 7f 97 40 01 00 	vmovdqa %ymm10,0x140(%rdi)
  ff:	00 
 100:	c5 7d 7f 9f 60 01 00 	vmovdqa %ymm11,0x160(%rdi)
 107:	00 
 108:	c4 62 7d 59 7e 40    	vpbroadcastq 0x40(%rsi),%ymm15
 10e:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 115:	00 
 116:	c5 7d 6f 8f a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm9
 11d:	00 
 11e:	c5 7d 6f 97 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm10
 125:	00 
 126:	c5 7d 6f 9f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm11
 12d:	00 
 12e:	c4 e2 7d 59 56 48    	vpbroadcastq 0x48(%rsi),%ymm2
 134:	c4 41 3d d5 e7       	vpmullw %ymm15,%ymm8,%ymm12
 139:	c4 41 35 d5 ef       	vpmullw %ymm15,%ymm9,%ymm13
 13e:	c4 41 2d d5 f7       	vpmullw %ymm15,%ymm10,%ymm14
 143:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 148:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 14c:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 150:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 154:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 158:	c5 fd 6f a7 80 00 00 	vmovdqa 0x80(%rdi),%ymm4
 15f:	00 
 160:	c5 fd 6f af a0 00 00 	vmovdqa 0xa0(%rdi),%ymm5
 167:	00 
 168:	c5 fd 6f b7 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm6
 16f:	00 
 170:	c5 fd 6f bf e0 00 00 	vmovdqa 0xe0(%rdi),%ymm7
 177:	00 
 178:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 17c:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 180:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 184:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 188:	c4 c1 5d fd d8       	vpaddw %ymm8,%ymm4,%ymm3
 18d:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
 192:	c4 c1 55 fd e1       	vpaddw %ymm9,%ymm5,%ymm4
 197:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
 19c:	c4 c1 4d fd ea       	vpaddw %ymm10,%ymm6,%ymm5
 1a1:	c4 41 4d f9 d2       	vpsubw %ymm10,%ymm6,%ymm10
 1a6:	c4 c1 45 fd f3       	vpaddw %ymm11,%ymm7,%ymm6
 1ab:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
 1b0:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 1b5:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
 1ba:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 1bf:	c4 41 35 fd cd       	vpaddw %ymm13,%ymm9,%ymm9
 1c4:	c4 c1 55 f9 ee       	vpsubw %ymm14,%ymm5,%ymm5
 1c9:	c4 41 2d fd d6       	vpaddw %ymm14,%ymm10,%ymm10
 1ce:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
 1d3:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 1d8:	c5 fd 7f 9f 80 00 00 	vmovdqa %ymm3,0x80(%rdi)
 1df:	00 
 1e0:	c5 fd 7f a7 a0 00 00 	vmovdqa %ymm4,0xa0(%rdi)
 1e7:	00 
 1e8:	c5 fd 7f af c0 00 00 	vmovdqa %ymm5,0xc0(%rdi)
 1ef:	00 
 1f0:	c5 fd 7f b7 e0 00 00 	vmovdqa %ymm6,0xe0(%rdi)
 1f7:	00 
 1f8:	c5 7d 7f 87 80 01 00 	vmovdqa %ymm8,0x180(%rdi)
 1ff:	00 
 200:	c5 7d 7f 8f a0 01 00 	vmovdqa %ymm9,0x1a0(%rdi)
 207:	00 
 208:	c5 7d 7f 97 c0 01 00 	vmovdqa %ymm10,0x1c0(%rdi)
 20f:	00 
 210:	c5 7d 7f 9f e0 01 00 	vmovdqa %ymm11,0x1e0(%rdi)
 217:	00 
 218:	c5 7d 6f 7e 60       	vmovdqa 0x60(%rsi),%ymm15
 21d:	c5 7d 6f 87 80 00 00 	vmovdqa 0x80(%rdi),%ymm8
 224:	00 
 225:	c5 7d 6f 8f a0 00 00 	vmovdqa 0xa0(%rdi),%ymm9
 22c:	00 
 22d:	c5 7d 6f 97 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm10
 234:	00 
 235:	c5 7d 6f 9f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm11
 23c:	00 
 23d:	c5 fd 6f 96 80 00 00 	vmovdqa 0x80(%rsi),%ymm2
 244:	00 
 245:	c4 41 3d d5 e7       	vpmullw %ymm15,%ymm8,%ymm12
 24a:	c4 41 35 d5 ef       	vpmullw %ymm15,%ymm9,%ymm13
 24f:	c4 41 2d d5 f7       	vpmullw %ymm15,%ymm10,%ymm14
 254:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 259:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 25d:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 261:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 265:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 269:	c5 fd 6f 27          	vmovdqa (%rdi),%ymm4
 26d:	c5 fd 6f 6f 20       	vmovdqa 0x20(%rdi),%ymm5
 272:	c5 fd 6f 77 40       	vmovdqa 0x40(%rdi),%ymm6
 277:	c5 fd 6f 7f 60       	vmovdqa 0x60(%rdi),%ymm7
 27c:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 280:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 284:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 288:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 28c:	c4 c1 5d fd d8       	vpaddw %ymm8,%ymm4,%ymm3
 291:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
 296:	c4 c1 55 fd e1       	vpaddw %ymm9,%ymm5,%ymm4
 29b:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
 2a0:	c4 c1 4d fd ea       	vpaddw %ymm10,%ymm6,%ymm5
 2a5:	c4 41 4d f9 d2       	vpsubw %ymm10,%ymm6,%ymm10
 2aa:	c4 c1 45 fd f3       	vpaddw %ymm11,%ymm7,%ymm6
 2af:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
 2b4:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 2b9:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
 2be:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 2c3:	c4 41 35 fd cd       	vpaddw %ymm13,%ymm9,%ymm9
 2c8:	c4 c1 55 f9 ee       	vpsubw %ymm14,%ymm5,%ymm5
 2cd:	c4 41 2d fd d6       	vpaddw %ymm14,%ymm10,%ymm10
 2d2:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
 2d7:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 2dc:	c4 c3 55 46 fa 20    	vperm2i128 $0x20,%ymm10,%ymm5,%ymm7
 2e2:	c4 43 55 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm5,%ymm10
 2e8:	c4 c3 4d 46 eb 20    	vperm2i128 $0x20,%ymm11,%ymm6,%ymm5
 2ee:	c4 43 4d 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm6,%ymm11
 2f4:	c5 7d 6f be a0 00 00 	vmovdqa 0xa0(%rsi),%ymm15
 2fb:	00 
 2fc:	c5 fd 6f 96 c0 00 00 	vmovdqa 0xc0(%rsi),%ymm2
 303:	00 
 304:	c4 41 45 d5 e7       	vpmullw %ymm15,%ymm7,%ymm12
 309:	c4 41 2d d5 ef       	vpmullw %ymm15,%ymm10,%ymm13
 30e:	c4 41 55 d5 f7       	vpmullw %ymm15,%ymm5,%ymm14
 313:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 318:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 31c:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 320:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 324:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 328:	c4 c3 65 46 f0 20    	vperm2i128 $0x20,%ymm8,%ymm3,%ymm6
 32e:	c4 43 65 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm3,%ymm8
 334:	c4 c3 5d 46 d9 20    	vperm2i128 $0x20,%ymm9,%ymm4,%ymm3
 33a:	c4 43 5d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm4,%ymm9
 340:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 344:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 348:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 34c:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 350:	c5 cd fd e7          	vpaddw %ymm7,%ymm6,%ymm4
 354:	c5 cd f9 ff          	vpsubw %ymm7,%ymm6,%ymm7
 358:	c4 c1 3d fd f2       	vpaddw %ymm10,%ymm8,%ymm6
 35d:	c4 41 3d f9 d2       	vpsubw %ymm10,%ymm8,%ymm10
 362:	c5 65 fd c5          	vpaddw %ymm5,%ymm3,%ymm8
 366:	c5 e5 f9 ed          	vpsubw %ymm5,%ymm3,%ymm5
 36a:	c4 c1 35 fd db       	vpaddw %ymm11,%ymm9,%ymm3
 36f:	c4 41 35 f9 db       	vpsubw %ymm11,%ymm9,%ymm11
 374:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 379:	c4 c1 45 fd fc       	vpaddw %ymm12,%ymm7,%ymm7
 37e:	c4 c1 4d f9 f5       	vpsubw %ymm13,%ymm6,%ymm6
 383:	c4 41 2d fd d5       	vpaddw %ymm13,%ymm10,%ymm10
 388:	c4 41 3d f9 c6       	vpsubw %ymm14,%ymm8,%ymm8
 38d:	c4 c1 55 fd ee       	vpaddw %ymm14,%ymm5,%ymm5
 392:	c4 c1 65 f9 df       	vpsubw %ymm15,%ymm3,%ymm3
 397:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 39c:	c5 3d 6c cd          	vpunpcklqdq %ymm5,%ymm8,%ymm9
 3a0:	c5 bd 6d ed          	vpunpckhqdq %ymm5,%ymm8,%ymm5
 3a4:	c4 41 65 6c c3       	vpunpcklqdq %ymm11,%ymm3,%ymm8
 3a9:	c4 41 65 6d db       	vpunpckhqdq %ymm11,%ymm3,%ymm11
 3ae:	c5 7d 6f be e0 00 00 	vmovdqa 0xe0(%rsi),%ymm15
 3b5:	00 
 3b6:	c5 fd 6f 96 00 01 00 	vmovdqa 0x100(%rsi),%ymm2
 3bd:	00 
 3be:	c4 41 35 d5 e7       	vpmullw %ymm15,%ymm9,%ymm12
 3c3:	c4 41 55 d5 ef       	vpmullw %ymm15,%ymm5,%ymm13
 3c8:	c4 41 3d d5 f7       	vpmullw %ymm15,%ymm8,%ymm14
 3cd:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 3d2:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 3d6:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 3da:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 3de:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 3e2:	c5 dd 6c df          	vpunpcklqdq %ymm7,%ymm4,%ymm3
 3e6:	c5 dd 6d ff          	vpunpckhqdq %ymm7,%ymm4,%ymm7
 3ea:	c4 c1 4d 6c e2       	vpunpcklqdq %ymm10,%ymm6,%ymm4
 3ef:	c4 41 4d 6d d2       	vpunpckhqdq %ymm10,%ymm6,%ymm10
 3f4:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 3f8:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 3fc:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 400:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 404:	c4 c1 65 fd f1       	vpaddw %ymm9,%ymm3,%ymm6
 409:	c4 41 65 f9 c9       	vpsubw %ymm9,%ymm3,%ymm9
 40e:	c5 c5 fd dd          	vpaddw %ymm5,%ymm7,%ymm3
 412:	c5 c5 f9 ed          	vpsubw %ymm5,%ymm7,%ymm5
 416:	c4 c1 5d fd f8       	vpaddw %ymm8,%ymm4,%ymm7
 41b:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
 420:	c4 c1 2d fd e3       	vpaddw %ymm11,%ymm10,%ymm4
 425:	c4 41 2d f9 db       	vpsubw %ymm11,%ymm10,%ymm11
 42a:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
 42f:	c4 41 35 fd cc       	vpaddw %ymm12,%ymm9,%ymm9
 434:	c4 c1 65 f9 dd       	vpsubw %ymm13,%ymm3,%ymm3
 439:	c4 c1 55 fd ed       	vpaddw %ymm13,%ymm5,%ymm5
 43e:	c4 c1 45 f9 fe       	vpsubw %ymm14,%ymm7,%ymm7
 443:	c4 41 3d fd c6       	vpaddw %ymm14,%ymm8,%ymm8
 448:	c4 c1 5d f9 e7       	vpsubw %ymm15,%ymm4,%ymm4
 44d:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 452:	c4 41 7e 12 d0       	vmovsldup %ymm8,%ymm10
 457:	c4 43 45 02 d2 aa    	vpblendd $0xaa,%ymm10,%ymm7,%ymm10
 45d:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
 462:	c4 43 45 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm7,%ymm8
 468:	c4 c1 7e 12 fb       	vmovsldup %ymm11,%ymm7
 46d:	c4 e3 5d 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm4,%ymm7
 473:	c5 dd 73 d4 20       	vpsrlq $0x20,%ymm4,%ymm4
 478:	c4 43 5d 02 db aa    	vpblendd $0xaa,%ymm11,%ymm4,%ymm11
 47e:	c5 7d 6f be 20 01 00 	vmovdqa 0x120(%rsi),%ymm15
 485:	00 
 486:	c5 fd 6f 96 40 01 00 	vmovdqa 0x140(%rsi),%ymm2
 48d:	00 
 48e:	c4 41 2d d5 e7       	vpmullw %ymm15,%ymm10,%ymm12
 493:	c4 41 3d d5 ef       	vpmullw %ymm15,%ymm8,%ymm13
 498:	c4 41 45 d5 f7       	vpmullw %ymm15,%ymm7,%ymm14
 49d:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 4a2:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 4a6:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 4aa:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 4ae:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 4b2:	c4 c1 7e 12 e1       	vmovsldup %ymm9,%ymm4
 4b7:	c4 e3 4d 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm6,%ymm4
 4bd:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 4c2:	c4 43 4d 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm6,%ymm9
 4c8:	c5 fe 12 f5          	vmovsldup %ymm5,%ymm6
 4cc:	c4 e3 65 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm3,%ymm6
 4d2:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 4d7:	c4 e3 65 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm3,%ymm5
 4dd:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 4e1:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 4e5:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 4e9:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 4ed:	c4 c1 5d fd da       	vpaddw %ymm10,%ymm4,%ymm3
 4f2:	c4 41 5d f9 d2       	vpsubw %ymm10,%ymm4,%ymm10
 4f7:	c4 c1 35 fd e0       	vpaddw %ymm8,%ymm9,%ymm4
 4fc:	c4 41 35 f9 c0       	vpsubw %ymm8,%ymm9,%ymm8
 501:	c5 4d fd cf          	vpaddw %ymm7,%ymm6,%ymm9
 505:	c5 cd f9 ff          	vpsubw %ymm7,%ymm6,%ymm7
 509:	c4 c1 55 fd f3       	vpaddw %ymm11,%ymm5,%ymm6
 50e:	c4 41 55 f9 db       	vpsubw %ymm11,%ymm5,%ymm11
 513:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 518:	c4 41 2d fd d4       	vpaddw %ymm12,%ymm10,%ymm10
 51d:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 522:	c4 41 3d fd c5       	vpaddw %ymm13,%ymm8,%ymm8
 527:	c4 41 35 f9 ce       	vpsubw %ymm14,%ymm9,%ymm9
 52c:	c4 c1 45 fd fe       	vpaddw %ymm14,%ymm7,%ymm7
 531:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
 536:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 53b:	c5 d5 72 f7 10       	vpslld $0x10,%ymm7,%ymm5
 540:	c4 e3 35 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm9,%ymm5
 546:	c4 c1 35 72 d1 10    	vpsrld $0x10,%ymm9,%ymm9
 54c:	c4 e3 35 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm9,%ymm7
 552:	c4 c1 35 72 f3 10    	vpslld $0x10,%ymm11,%ymm9
 558:	c4 43 4d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm6,%ymm9
 55e:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 563:	c4 43 4d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm6,%ymm11
 569:	c5 7d 6f be 60 01 00 	vmovdqa 0x160(%rsi),%ymm15
 570:	00 
 571:	c5 fd 6f 96 80 01 00 	vmovdqa 0x180(%rsi),%ymm2
 578:	00 
 579:	c4 41 55 d5 e7       	vpmullw %ymm15,%ymm5,%ymm12
 57e:	c4 41 45 d5 ef       	vpmullw %ymm15,%ymm7,%ymm13
 583:	c4 41 35 d5 f7       	vpmullw %ymm15,%ymm9,%ymm14
 588:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 58d:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 591:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 595:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 599:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 59d:	c4 c1 4d 72 f2 10    	vpslld $0x10,%ymm10,%ymm6
 5a3:	c4 e3 65 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm3,%ymm6
 5a9:	c5 e5 72 d3 10       	vpsrld $0x10,%ymm3,%ymm3
 5ae:	c4 43 65 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm3,%ymm10
 5b4:	c4 c1 65 72 f0 10    	vpslld $0x10,%ymm8,%ymm3
 5ba:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
 5c0:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 5c5:	c4 43 5d 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm4,%ymm8
 5cb:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 5cf:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 5d3:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 5d7:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 5db:	c5 cd fd e5          	vpaddw %ymm5,%ymm6,%ymm4
 5df:	c5 cd f9 ed          	vpsubw %ymm5,%ymm6,%ymm5
 5e3:	c5 ad fd f7          	vpaddw %ymm7,%ymm10,%ymm6
 5e7:	c5 ad f9 ff          	vpsubw %ymm7,%ymm10,%ymm7
 5eb:	c4 41 65 fd d1       	vpaddw %ymm9,%ymm3,%ymm10
 5f0:	c4 41 65 f9 c9       	vpsubw %ymm9,%ymm3,%ymm9
 5f5:	c4 c1 3d fd db       	vpaddw %ymm11,%ymm8,%ymm3
 5fa:	c4 41 3d f9 db       	vpsubw %ymm11,%ymm8,%ymm11
 5ff:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 604:	c4 c1 55 fd ec       	vpaddw %ymm12,%ymm5,%ymm5
 609:	c4 c1 4d f9 f5       	vpsubw %ymm13,%ymm6,%ymm6
 60e:	c4 c1 45 fd fd       	vpaddw %ymm13,%ymm7,%ymm7
 613:	c4 41 2d f9 d6       	vpsubw %ymm14,%ymm10,%ymm10
 618:	c4 41 35 fd ce       	vpaddw %ymm14,%ymm9,%ymm9
 61d:	c4 c1 65 f9 df       	vpsubw %ymm15,%ymm3,%ymm3
 622:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 627:	c5 7d 6f b6 a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm14
 62e:	00 
 62f:	c5 7d 6f be e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm15
 636:	00 
 637:	c5 7d 6f 86 c0 01 00 	vmovdqa 0x1c0(%rsi),%ymm8
 63e:	00 
 63f:	c5 fd 6f 96 00 02 00 	vmovdqa 0x200(%rsi),%ymm2
 646:	00 
 647:	c4 41 2d d5 e6       	vpmullw %ymm14,%ymm10,%ymm12
 64c:	c4 41 65 d5 ee       	vpmullw %ymm14,%ymm3,%ymm13
 651:	c4 41 35 d5 f7       	vpmullw %ymm15,%ymm9,%ymm14
 656:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 65b:	c4 41 2d e5 d0       	vpmulhw %ymm8,%ymm10,%ymm10
 660:	c4 c1 65 e5 d8       	vpmulhw %ymm8,%ymm3,%ymm3
 665:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 669:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 66d:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 671:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 675:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 679:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 67d:	c4 41 5d fd c2       	vpaddw %ymm10,%ymm4,%ymm8
 682:	c4 41 5d f9 d2       	vpsubw %ymm10,%ymm4,%ymm10
 687:	c5 cd fd e3          	vpaddw %ymm3,%ymm6,%ymm4
 68b:	c5 cd f9 db          	vpsubw %ymm3,%ymm6,%ymm3
 68f:	c4 c1 55 fd f1       	vpaddw %ymm9,%ymm5,%ymm6
 694:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
 699:	c4 c1 45 fd eb       	vpaddw %ymm11,%ymm7,%ymm5
 69e:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
 6a3:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
 6a8:	c4 41 2d fd d4       	vpaddw %ymm12,%ymm10,%ymm10
 6ad:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 6b2:	c4 c1 65 fd dd       	vpaddw %ymm13,%ymm3,%ymm3
 6b7:	c4 c1 4d f9 f6       	vpsubw %ymm14,%ymm6,%ymm6
 6bc:	c4 41 35 fd ce       	vpaddw %ymm14,%ymm9,%ymm9
 6c1:	c4 c1 55 f9 ef       	vpsubw %ymm15,%ymm5,%ymm5
 6c6:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 6cb:	c5 7d 7f 07          	vmovdqa %ymm8,(%rdi)
 6cf:	c5 fd 7f 67 20       	vmovdqa %ymm4,0x20(%rdi)
 6d4:	c5 7d 7f 57 40       	vmovdqa %ymm10,0x40(%rdi)
 6d9:	c5 fd 7f 5f 60       	vmovdqa %ymm3,0x60(%rdi)
 6de:	c5 fd 7f b7 80 00 00 	vmovdqa %ymm6,0x80(%rdi)
 6e5:	00 
 6e6:	c5 fd 7f af a0 00 00 	vmovdqa %ymm5,0xa0(%rdi)
 6ed:	00 
 6ee:	c5 7d 7f 8f c0 00 00 	vmovdqa %ymm9,0xc0(%rdi)
 6f5:	00 
 6f6:	c5 7d 7f 9f e0 00 00 	vmovdqa %ymm11,0xe0(%rdi)
 6fd:	00 
 6fe:	c5 7d 6f be 20 02 00 	vmovdqa 0x220(%rsi),%ymm15
 705:	00 
 706:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 70d:	00 
 70e:	c5 7d 6f 8f a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm9
 715:	00 
 716:	c5 7d 6f 97 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm10
 71d:	00 
 71e:	c5 7d 6f 9f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm11
 725:	00 
 726:	c5 fd 6f 96 40 02 00 	vmovdqa 0x240(%rsi),%ymm2
 72d:	00 
 72e:	c4 41 3d d5 e7       	vpmullw %ymm15,%ymm8,%ymm12
 733:	c4 41 35 d5 ef       	vpmullw %ymm15,%ymm9,%ymm13
 738:	c4 41 2d d5 f7       	vpmullw %ymm15,%ymm10,%ymm14
 73d:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 742:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 746:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 74a:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 74e:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 752:	c5 fd 6f a7 00 01 00 	vmovdqa 0x100(%rdi),%ymm4
 759:	00 
 75a:	c5 fd 6f af 20 01 00 	vmovdqa 0x120(%rdi),%ymm5
 761:	00 
 762:	c5 fd 6f b7 40 01 00 	vmovdqa 0x140(%rdi),%ymm6
 769:	00 
 76a:	c5 fd 6f bf 60 01 00 	vmovdqa 0x160(%rdi),%ymm7
 771:	00 
 772:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 776:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 77a:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 77e:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 782:	c4 c1 5d fd d8       	vpaddw %ymm8,%ymm4,%ymm3
 787:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
 78c:	c4 c1 55 fd e1       	vpaddw %ymm9,%ymm5,%ymm4
 791:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
 796:	c4 c1 4d fd ea       	vpaddw %ymm10,%ymm6,%ymm5
 79b:	c4 41 4d f9 d2       	vpsubw %ymm10,%ymm6,%ymm10
 7a0:	c4 c1 45 fd f3       	vpaddw %ymm11,%ymm7,%ymm6
 7a5:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
 7aa:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 7af:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
 7b4:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 7b9:	c4 41 35 fd cd       	vpaddw %ymm13,%ymm9,%ymm9
 7be:	c4 c1 55 f9 ee       	vpsubw %ymm14,%ymm5,%ymm5
 7c3:	c4 41 2d fd d6       	vpaddw %ymm14,%ymm10,%ymm10
 7c8:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
 7cd:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 7d2:	c4 c3 55 46 fa 20    	vperm2i128 $0x20,%ymm10,%ymm5,%ymm7
 7d8:	c4 43 55 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm5,%ymm10
 7de:	c4 c3 4d 46 eb 20    	vperm2i128 $0x20,%ymm11,%ymm6,%ymm5
 7e4:	c4 43 4d 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm6,%ymm11
 7ea:	c5 7d 6f be 60 02 00 	vmovdqa 0x260(%rsi),%ymm15
 7f1:	00 
 7f2:	c5 fd 6f 96 80 02 00 	vmovdqa 0x280(%rsi),%ymm2
 7f9:	00 
 7fa:	c4 41 45 d5 e7       	vpmullw %ymm15,%ymm7,%ymm12
 7ff:	c4 41 2d d5 ef       	vpmullw %ymm15,%ymm10,%ymm13
 804:	c4 41 55 d5 f7       	vpmullw %ymm15,%ymm5,%ymm14
 809:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 80e:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 812:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 816:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 81a:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 81e:	c4 c3 65 46 f0 20    	vperm2i128 $0x20,%ymm8,%ymm3,%ymm6
 824:	c4 43 65 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm3,%ymm8
 82a:	c4 c3 5d 46 d9 20    	vperm2i128 $0x20,%ymm9,%ymm4,%ymm3
 830:	c4 43 5d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm4,%ymm9
 836:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 83a:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 83e:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 842:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 846:	c5 cd fd e7          	vpaddw %ymm7,%ymm6,%ymm4
 84a:	c5 cd f9 ff          	vpsubw %ymm7,%ymm6,%ymm7
 84e:	c4 c1 3d fd f2       	vpaddw %ymm10,%ymm8,%ymm6
 853:	c4 41 3d f9 d2       	vpsubw %ymm10,%ymm8,%ymm10
 858:	c5 65 fd c5          	vpaddw %ymm5,%ymm3,%ymm8
 85c:	c5 e5 f9 ed          	vpsubw %ymm5,%ymm3,%ymm5
 860:	c4 c1 35 fd db       	vpaddw %ymm11,%ymm9,%ymm3
 865:	c4 41 35 f9 db       	vpsubw %ymm11,%ymm9,%ymm11
 86a:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 86f:	c4 c1 45 fd fc       	vpaddw %ymm12,%ymm7,%ymm7
 874:	c4 c1 4d f9 f5       	vpsubw %ymm13,%ymm6,%ymm6
 879:	c4 41 2d fd d5       	vpaddw %ymm13,%ymm10,%ymm10
 87e:	c4 41 3d f9 c6       	vpsubw %ymm14,%ymm8,%ymm8
 883:	c4 c1 55 fd ee       	vpaddw %ymm14,%ymm5,%ymm5
 888:	c4 c1 65 f9 df       	vpsubw %ymm15,%ymm3,%ymm3
 88d:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 892:	c5 3d 6c cd          	vpunpcklqdq %ymm5,%ymm8,%ymm9
 896:	c5 bd 6d ed          	vpunpckhqdq %ymm5,%ymm8,%ymm5
 89a:	c4 41 65 6c c3       	vpunpcklqdq %ymm11,%ymm3,%ymm8
 89f:	c4 41 65 6d db       	vpunpckhqdq %ymm11,%ymm3,%ymm11
 8a4:	c5 7d 6f be a0 02 00 	vmovdqa 0x2a0(%rsi),%ymm15
 8ab:	00 
 8ac:	c5 fd 6f 96 c0 02 00 	vmovdqa 0x2c0(%rsi),%ymm2
 8b3:	00 
 8b4:	c4 41 35 d5 e7       	vpmullw %ymm15,%ymm9,%ymm12
 8b9:	c4 41 55 d5 ef       	vpmullw %ymm15,%ymm5,%ymm13
 8be:	c4 41 3d d5 f7       	vpmullw %ymm15,%ymm8,%ymm14
 8c3:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 8c8:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 8cc:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 8d0:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 8d4:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 8d8:	c5 dd 6c df          	vpunpcklqdq %ymm7,%ymm4,%ymm3
 8dc:	c5 dd 6d ff          	vpunpckhqdq %ymm7,%ymm4,%ymm7
 8e0:	c4 c1 4d 6c e2       	vpunpcklqdq %ymm10,%ymm6,%ymm4
 8e5:	c4 41 4d 6d d2       	vpunpckhqdq %ymm10,%ymm6,%ymm10
 8ea:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 8ee:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 8f2:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 8f6:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 8fa:	c4 c1 65 fd f1       	vpaddw %ymm9,%ymm3,%ymm6
 8ff:	c4 41 65 f9 c9       	vpsubw %ymm9,%ymm3,%ymm9
 904:	c5 c5 fd dd          	vpaddw %ymm5,%ymm7,%ymm3
 908:	c5 c5 f9 ed          	vpsubw %ymm5,%ymm7,%ymm5
 90c:	c4 c1 5d fd f8       	vpaddw %ymm8,%ymm4,%ymm7
 911:	c4 41 5d f9 c0       	vpsubw %ymm8,%ymm4,%ymm8
 916:	c4 c1 2d fd e3       	vpaddw %ymm11,%ymm10,%ymm4
 91b:	c4 41 2d f9 db       	vpsubw %ymm11,%ymm10,%ymm11
 920:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
 925:	c4 41 35 fd cc       	vpaddw %ymm12,%ymm9,%ymm9
 92a:	c4 c1 65 f9 dd       	vpsubw %ymm13,%ymm3,%ymm3
 92f:	c4 c1 55 fd ed       	vpaddw %ymm13,%ymm5,%ymm5
 934:	c4 c1 45 f9 fe       	vpsubw %ymm14,%ymm7,%ymm7
 939:	c4 41 3d fd c6       	vpaddw %ymm14,%ymm8,%ymm8
 93e:	c4 c1 5d f9 e7       	vpsubw %ymm15,%ymm4,%ymm4
 943:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 948:	c4 41 7e 12 d0       	vmovsldup %ymm8,%ymm10
 94d:	c4 43 45 02 d2 aa    	vpblendd $0xaa,%ymm10,%ymm7,%ymm10
 953:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
 958:	c4 43 45 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm7,%ymm8
 95e:	c4 c1 7e 12 fb       	vmovsldup %ymm11,%ymm7
 963:	c4 e3 5d 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm4,%ymm7
 969:	c5 dd 73 d4 20       	vpsrlq $0x20,%ymm4,%ymm4
 96e:	c4 43 5d 02 db aa    	vpblendd $0xaa,%ymm11,%ymm4,%ymm11
 974:	c5 7d 6f be e0 02 00 	vmovdqa 0x2e0(%rsi),%ymm15
 97b:	00 
 97c:	c5 fd 6f 96 00 03 00 	vmovdqa 0x300(%rsi),%ymm2
 983:	00 
 984:	c4 41 2d d5 e7       	vpmullw %ymm15,%ymm10,%ymm12
 989:	c4 41 3d d5 ef       	vpmullw %ymm15,%ymm8,%ymm13
 98e:	c4 41 45 d5 f7       	vpmullw %ymm15,%ymm7,%ymm14
 993:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 998:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 99c:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 9a0:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 9a4:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 9a8:	c4 c1 7e 12 e1       	vmovsldup %ymm9,%ymm4
 9ad:	c4 e3 4d 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm6,%ymm4
 9b3:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 9b8:	c4 43 4d 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm6,%ymm9
 9be:	c5 fe 12 f5          	vmovsldup %ymm5,%ymm6
 9c2:	c4 e3 65 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm3,%ymm6
 9c8:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 9cd:	c4 e3 65 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm3,%ymm5
 9d3:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 9d7:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 9db:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 9df:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 9e3:	c4 c1 5d fd da       	vpaddw %ymm10,%ymm4,%ymm3
 9e8:	c4 41 5d f9 d2       	vpsubw %ymm10,%ymm4,%ymm10
 9ed:	c4 c1 35 fd e0       	vpaddw %ymm8,%ymm9,%ymm4
 9f2:	c4 41 35 f9 c0       	vpsubw %ymm8,%ymm9,%ymm8
 9f7:	c5 4d fd cf          	vpaddw %ymm7,%ymm6,%ymm9
 9fb:	c5 cd f9 ff          	vpsubw %ymm7,%ymm6,%ymm7
 9ff:	c4 c1 55 fd f3       	vpaddw %ymm11,%ymm5,%ymm6
 a04:	c4 41 55 f9 db       	vpsubw %ymm11,%ymm5,%ymm11
 a09:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 a0e:	c4 41 2d fd d4       	vpaddw %ymm12,%ymm10,%ymm10
 a13:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 a18:	c4 41 3d fd c5       	vpaddw %ymm13,%ymm8,%ymm8
 a1d:	c4 41 35 f9 ce       	vpsubw %ymm14,%ymm9,%ymm9
 a22:	c4 c1 45 fd fe       	vpaddw %ymm14,%ymm7,%ymm7
 a27:	c4 c1 4d f9 f7       	vpsubw %ymm15,%ymm6,%ymm6
 a2c:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 a31:	c5 d5 72 f7 10       	vpslld $0x10,%ymm7,%ymm5
 a36:	c4 e3 35 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm9,%ymm5
 a3c:	c4 c1 35 72 d1 10    	vpsrld $0x10,%ymm9,%ymm9
 a42:	c4 e3 35 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm9,%ymm7
 a48:	c4 c1 35 72 f3 10    	vpslld $0x10,%ymm11,%ymm9
 a4e:	c4 43 4d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm6,%ymm9
 a54:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 a59:	c4 43 4d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm6,%ymm11
 a5f:	c5 7d 6f be 20 03 00 	vmovdqa 0x320(%rsi),%ymm15
 a66:	00 
 a67:	c5 fd 6f 96 40 03 00 	vmovdqa 0x340(%rsi),%ymm2
 a6e:	00 
 a6f:	c4 41 55 d5 e7       	vpmullw %ymm15,%ymm5,%ymm12
 a74:	c4 41 45 d5 ef       	vpmullw %ymm15,%ymm7,%ymm13
 a79:	c4 41 35 d5 f7       	vpmullw %ymm15,%ymm9,%ymm14
 a7e:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 a83:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 a87:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 a8b:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 a8f:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 a93:	c4 c1 4d 72 f2 10    	vpslld $0x10,%ymm10,%ymm6
 a99:	c4 e3 65 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm3,%ymm6
 a9f:	c5 e5 72 d3 10       	vpsrld $0x10,%ymm3,%ymm3
 aa4:	c4 43 65 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm3,%ymm10
 aaa:	c4 c1 65 72 f0 10    	vpslld $0x10,%ymm8,%ymm3
 ab0:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
 ab6:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 abb:	c4 43 5d 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm4,%ymm8
 ac1:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 ac5:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 ac9:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 acd:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 ad1:	c5 cd fd e5          	vpaddw %ymm5,%ymm6,%ymm4
 ad5:	c5 cd f9 ed          	vpsubw %ymm5,%ymm6,%ymm5
 ad9:	c5 ad fd f7          	vpaddw %ymm7,%ymm10,%ymm6
 add:	c5 ad f9 ff          	vpsubw %ymm7,%ymm10,%ymm7
 ae1:	c4 41 65 fd d1       	vpaddw %ymm9,%ymm3,%ymm10
 ae6:	c4 41 65 f9 c9       	vpsubw %ymm9,%ymm3,%ymm9
 aeb:	c4 c1 3d fd db       	vpaddw %ymm11,%ymm8,%ymm3
 af0:	c4 41 3d f9 db       	vpsubw %ymm11,%ymm8,%ymm11
 af5:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 afa:	c4 c1 55 fd ec       	vpaddw %ymm12,%ymm5,%ymm5
 aff:	c4 c1 4d f9 f5       	vpsubw %ymm13,%ymm6,%ymm6
 b04:	c4 c1 45 fd fd       	vpaddw %ymm13,%ymm7,%ymm7
 b09:	c4 41 2d f9 d6       	vpsubw %ymm14,%ymm10,%ymm10
 b0e:	c4 41 35 fd ce       	vpaddw %ymm14,%ymm9,%ymm9
 b13:	c4 c1 65 f9 df       	vpsubw %ymm15,%ymm3,%ymm3
 b18:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 b1d:	c5 7d 6f b6 60 03 00 	vmovdqa 0x360(%rsi),%ymm14
 b24:	00 
 b25:	c5 7d 6f be a0 03 00 	vmovdqa 0x3a0(%rsi),%ymm15
 b2c:	00 
 b2d:	c5 7d 6f 86 80 03 00 	vmovdqa 0x380(%rsi),%ymm8
 b34:	00 
 b35:	c5 fd 6f 96 c0 03 00 	vmovdqa 0x3c0(%rsi),%ymm2
 b3c:	00 
 b3d:	c4 41 2d d5 e6       	vpmullw %ymm14,%ymm10,%ymm12
 b42:	c4 41 65 d5 ee       	vpmullw %ymm14,%ymm3,%ymm13
 b47:	c4 41 35 d5 f7       	vpmullw %ymm15,%ymm9,%ymm14
 b4c:	c4 41 25 d5 ff       	vpmullw %ymm15,%ymm11,%ymm15
 b51:	c4 41 2d e5 d0       	vpmulhw %ymm8,%ymm10,%ymm10
 b56:	c4 c1 65 e5 d8       	vpmulhw %ymm8,%ymm3,%ymm3
 b5b:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 b5f:	c5 25 e5 da          	vpmulhw %ymm2,%ymm11,%ymm11
 b63:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 b67:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 b6b:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 b6f:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 b73:	c4 41 5d fd c2       	vpaddw %ymm10,%ymm4,%ymm8
 b78:	c4 41 5d f9 d2       	vpsubw %ymm10,%ymm4,%ymm10
 b7d:	c5 cd fd e3          	vpaddw %ymm3,%ymm6,%ymm4
 b81:	c5 cd f9 db          	vpsubw %ymm3,%ymm6,%ymm3
 b85:	c4 c1 55 fd f1       	vpaddw %ymm9,%ymm5,%ymm6
 b8a:	c4 41 55 f9 c9       	vpsubw %ymm9,%ymm5,%ymm9
 b8f:	c4 c1 45 fd eb       	vpaddw %ymm11,%ymm7,%ymm5
 b94:	c4 41 45 f9 db       	vpsubw %ymm11,%ymm7,%ymm11
 b99:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
 b9e:	c4 41 2d fd d4       	vpaddw %ymm12,%ymm10,%ymm10
 ba3:	c4 c1 5d f9 e5       	vpsubw %ymm13,%ymm4,%ymm4
 ba8:	c4 c1 65 fd dd       	vpaddw %ymm13,%ymm3,%ymm3
 bad:	c4 c1 4d f9 f6       	vpsubw %ymm14,%ymm6,%ymm6
 bb2:	c4 41 35 fd ce       	vpaddw %ymm14,%ymm9,%ymm9
 bb7:	c4 c1 55 f9 ef       	vpsubw %ymm15,%ymm5,%ymm5
 bbc:	c4 41 25 fd df       	vpaddw %ymm15,%ymm11,%ymm11
 bc1:	c5 7d 7f 87 00 01 00 	vmovdqa %ymm8,0x100(%rdi)
 bc8:	00 
 bc9:	c5 fd 7f a7 20 01 00 	vmovdqa %ymm4,0x120(%rdi)
 bd0:	00 
 bd1:	c5 7d 7f 97 40 01 00 	vmovdqa %ymm10,0x140(%rdi)
 bd8:	00 
 bd9:	c5 fd 7f 9f 60 01 00 	vmovdqa %ymm3,0x160(%rdi)
 be0:	00 
 be1:	c5 fd 7f b7 80 01 00 	vmovdqa %ymm6,0x180(%rdi)
 be8:	00 
 be9:	c5 fd 7f af a0 01 00 	vmovdqa %ymm5,0x1a0(%rdi)
 bf0:	00 
 bf1:	c5 7d 7f 8f c0 01 00 	vmovdqa %ymm9,0x1c0(%rdi)
 bf8:	00 
 bf9:	c5 7d 7f 9f e0 01 00 	vmovdqa %ymm11,0x1e0(%rdi)
 c00:	00 
 c01:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/nttfrombytes_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_nttfrombytes_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 ff 0f ff 0f       	mov    $0xfff0fff,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	c5 fe 6f 26          	vmovdqu (%rsi),%ymm4
  16:	c5 fe 6f 6e 20       	vmovdqu 0x20(%rsi),%ymm5
  1b:	c5 fe 6f 76 40       	vmovdqu 0x40(%rsi),%ymm6
  20:	c5 fe 6f 7e 60       	vmovdqu 0x60(%rsi),%ymm7
  25:	c5 7e 6f 86 80 00 00 	vmovdqu 0x80(%rsi),%ymm8
  2c:	00 
  2d:	c5 7e 6f 8e a0 00 00 	vmovdqu 0xa0(%rsi),%ymm9
  34:	00 
  35:	c4 e3 5d 46 df 20    	vperm2i128 $0x20,%ymm7,%ymm4,%ymm3
  3b:	c4 e3 5d 46 ff 31    	vperm2i128 $0x31,%ymm7,%ymm4,%ymm7
  41:	c4 c3 55 46 e0 20    	vperm2i128 $0x20,%ymm8,%ymm5,%ymm4
  47:	c4 43 55 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm5,%ymm8
  4d:	c4 c3 4d 46 e9 20    	vperm2i128 $0x20,%ymm9,%ymm6,%ymm5
  53:	c4 43 4d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm6,%ymm9
  59:	c4 c1 65 6c f0       	vpunpcklqdq %ymm8,%ymm3,%ymm6
  5e:	c4 41 65 6d c0       	vpunpckhqdq %ymm8,%ymm3,%ymm8
  63:	c5 c5 6c dd          	vpunpcklqdq %ymm5,%ymm7,%ymm3
  67:	c5 c5 6d ed          	vpunpckhqdq %ymm5,%ymm7,%ymm5
  6b:	c4 c1 5d 6c f9       	vpunpcklqdq %ymm9,%ymm4,%ymm7
  70:	c4 41 5d 6d c9       	vpunpckhqdq %ymm9,%ymm4,%ymm9
  75:	c5 fe 12 e5          	vmovsldup %ymm5,%ymm4
  79:	c4 e3 4d 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm6,%ymm4
  7f:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
  84:	c4 e3 4d 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm6,%ymm5
  8a:	c5 fe 12 f7          	vmovsldup %ymm7,%ymm6
  8e:	c4 e3 3d 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm8,%ymm6
  94:	c4 c1 3d 73 d0 20    	vpsrlq $0x20,%ymm8,%ymm8
  9a:	c4 e3 3d 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm8,%ymm7
  a0:	c4 41 7e 12 c1       	vmovsldup %ymm9,%ymm8
  a5:	c4 43 65 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm3,%ymm8
  ab:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
  b0:	c4 43 65 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm3,%ymm9
  b6:	c5 ad 72 f7 10       	vpslld $0x10,%ymm7,%ymm10
  bb:	c4 43 5d 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm4,%ymm10
  c1:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
  c6:	c4 e3 5d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm4,%ymm7
  cc:	c4 c1 5d 72 f0 10    	vpslld $0x10,%ymm8,%ymm4
  d2:	c4 e3 55 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm5,%ymm4
  d8:	c5 d5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm5
  dd:	c4 43 55 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm5,%ymm8
  e3:	c4 c1 55 72 f1 10    	vpslld $0x10,%ymm9,%ymm5
  e9:	c4 e3 4d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm6,%ymm5
  ef:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
  f4:	c4 43 4d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm6,%ymm9
  fa:	c4 c1 25 71 d2 0c    	vpsrlw $0xc,%ymm10,%ymm11
 100:	c5 9d 71 f7 04       	vpsllw $0x4,%ymm7,%ymm12
 105:	c4 41 1d eb db       	vpor   %ymm11,%ymm12,%ymm11
 10a:	c5 2d db d0          	vpand  %ymm0,%ymm10,%ymm10
 10e:	c5 25 db d8          	vpand  %ymm0,%ymm11,%ymm11
 112:	c5 9d 71 d7 08       	vpsrlw $0x8,%ymm7,%ymm12
 117:	c5 95 71 f4 08       	vpsllw $0x8,%ymm4,%ymm13
 11c:	c4 41 15 eb e4       	vpor   %ymm12,%ymm13,%ymm12
 121:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 125:	c5 95 71 d4 04       	vpsrlw $0x4,%ymm4,%ymm13
 12a:	c5 15 db e8          	vpand  %ymm0,%ymm13,%ymm13
 12e:	c4 c1 0d 71 d0 0c    	vpsrlw $0xc,%ymm8,%ymm14
 134:	c5 85 71 f5 04       	vpsllw $0x4,%ymm5,%ymm15
 139:	c4 41 05 eb f6       	vpor   %ymm14,%ymm15,%ymm14
 13e:	c5 3d db c0          	vpand  %ymm0,%ymm8,%ymm8
 142:	c5 0d db f0          	vpand  %ymm0,%ymm14,%ymm14
 146:	c5 85 71 d5 08       	vpsrlw $0x8,%ymm5,%ymm15
 14b:	c4 c1 75 71 f1 08    	vpsllw $0x8,%ymm9,%ymm1
 151:	c4 41 75 eb ff       	vpor   %ymm15,%ymm1,%ymm15
 156:	c5 05 db f8          	vpand  %ymm0,%ymm15,%ymm15
 15a:	c4 c1 75 71 d1 04    	vpsrlw $0x4,%ymm9,%ymm1
 160:	c5 f5 db c8          	vpand  %ymm0,%ymm1,%ymm1
 164:	c5 7d 7f 17          	vmovdqa %ymm10,(%rdi)
 168:	c5 7d 7f 5f 20       	vmovdqa %ymm11,0x20(%rdi)
 16d:	c5 7d 7f 67 40       	vmovdqa %ymm12,0x40(%rdi)
 172:	c5 7d 7f 6f 60       	vmovdqa %ymm13,0x60(%rdi)
 177:	c5 7d 7f 87 80 00 00 	vmovdqa %ymm8,0x80(%rdi)
 17e:	00 
 17f:	c5 7d 7f b7 a0 00 00 	vmovdqa %ymm14,0xa0(%rdi)
 186:	00 
 187:	c5 7d 7f bf c0 00 00 	vmovdqa %ymm15,0xc0(%rdi)
 18e:	00 
 18f:	c5 fd 7f 8f e0 00 00 	vmovdqa %ymm1,0xe0(%rdi)
 196:	00 
 197:	c5 fe 6f a6 c0 00 00 	vmovdqu 0xc0(%rsi),%ymm4
 19e:	00 
 19f:	c5 fe 6f ae e0 00 00 	vmovdqu 0xe0(%rsi),%ymm5
 1a6:	00 
 1a7:	c5 fe 6f b6 00 01 00 	vmovdqu 0x100(%rsi),%ymm6
 1ae:	00 
 1af:	c5 fe 6f be 20 01 00 	vmovdqu 0x120(%rsi),%ymm7
 1b6:	00 
 1b7:	c5 7e 6f 86 40 01 00 	vmovdqu 0x140(%rsi),%ymm8
 1be:	00 
 1bf:	c5 7e 6f 8e 60 01 00 	vmovdqu 0x160(%rsi),%ymm9
 1c6:	00 
 1c7:	c4 e3 5d 46 df 20    	vperm2i128 $0x20,%ymm7,%ymm4,%ymm3
 1cd:	c4 e3 5d 46 ff 31    	vperm2i128 $0x31,%ymm7,%ymm4,%ymm7
 1d3:	c4 c3 55 46 e0 20    	vperm2i128 $0x20,%ymm8,%ymm5,%ymm4
 1d9:	c4 43 55 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm5,%ymm8
 1df:	c4 c3 4d 46 e9 20    	vperm2i128 $0x20,%ymm9,%ymm6,%ymm5
 1e5:	c4 43 4d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm6,%ymm9
 1eb:	c4 c1 65 6c f0       	vpunpcklqdq %ymm8,%ymm3,%ymm6
 1f0:	c4 41 65 6d c0       	vpunpckhqdq %ymm8,%ymm3,%ymm8
 1f5:	c5 c5 6c dd          	vpunpcklqdq %ymm5,%ymm7,%ymm3
 1f9:	c5 c5 6d ed          	vpunpckhqdq %ymm5,%ymm7,%ymm5
 1fd:	c4 c1 5d 6c f9       	vpunpcklqdq %ymm9,%ymm4,%ymm7
 202:	c4 41 5d 6d c9       	vpunpckhqdq %ymm9,%ymm4,%ymm9
 207:	c5 fe 12 e5          	vmovsldup %ymm5,%ymm4
 20b:	c4 e3 4d 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm6,%ymm4
 211:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 216:	c4 e3 4d 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm6,%ymm5
 21c:	c5 fe 12 f7          	vmovsldup %ymm7,%ymm6
 220:	c4 e3 3d 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm8,%ymm6
 226:	c4 c1 3d 73 d0 20    	vpsrlq $0x20,%ymm8,%ymm8
 22c:	c4 e3 3d 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm8,%ymm7
 232:	c4 41 7e 12 c1       	vmovsldup %ymm9,%ymm8
 237:	c4 43 65 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm3,%ymm8
 23d:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 242:	c4 43 65 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm3,%ymm9
 248:	c5 ad 72 f7 10       	vpslld $0x10,%ymm7,%ymm10
 24d:	c4 43 5d 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm4,%ymm10
 253:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 258:	c4 e3 5d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm4,%ymm7
 25e:	c4 c1 5d 72 f0 10    	vpslld $0x10,%ymm8,%ymm4
 264:	c4 e3 55 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm5,%ymm4
 26a:	c5 d5 72 d5 10       	vpsrld $0x10,%ymm5,%ymm5
 26f:	c4 43 55 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm5,%ymm8
 275:	c4 c1 55 72 f1 10    	vpslld $0x10,%ymm9,%ymm5
 27b:	c4 e3 4d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm6,%ymm5
 281:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 286:	c4 43 4d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm6,%ymm9
 28c:	c4 c1 25 71 d2 0c    	vpsrlw $0xc,%ymm10,%ymm11
 292:	c5 9d 71 f7 04       	vpsllw $0x4,%ymm7,%ymm12
 297:	c4 41 1d eb db       	vpor   %ymm11,%ymm12,%ymm11
 29c:	c5 2d db d0          	vpand  %ymm0,%ymm10,%ymm10
 2a0:	c5 25 db d8          	vpand  %ymm0,%ymm11,%ymm11
 2a4:	c5 9d 71 d7 08       	vpsrlw $0x8,%ymm7,%ymm12
 2a9:	c5 95 71 f4 08       	vpsllw $0x8,%ymm4,%ymm13
 2ae:	c4 41 15 eb e4       	vpor   %ymm12,%ymm13,%ymm12
 2b3:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2b7:	c5 95 71 d4 04       	vpsrlw $0x4,%ymm4,%ymm13
 2bc:	c5 15 db e8          	vpand  %ymm0,%ymm13,%ymm13
 2c0:	c4 c1 0d 71 d0 0c    	vpsrlw $0xc,%ymm8,%ymm14
 2c6:	c5 85 71 f5 04       	vpsllw $0x4,%ymm5,%ymm15
 2cb:	c4 41 05 eb f6       	vpor   %ymm14,%ymm15,%ymm14
 2d0:	c5 3d db c0          	vpand  %ymm0,%ymm8,%ymm8
 2d4:	c5 0d db f0          	vpand  %ymm0,%ymm14,%ymm14
 2d8:	c5 85 71 d5 08       	vpsrlw $0x8,%ymm5,%ymm15
 2dd:	c4 c1 75 71 f1 08    	vpsllw $0x8,%ymm9,%ymm1
 2e3:	c4 41 75 eb ff       	vpor   %ymm15,%ymm1,%ymm15
 2e8:	c5 05 db f8          	vpand  %ymm0,%ymm15,%ymm15
 2ec:	c4 c1 75 71 d1 04    	vpsrlw $0x4,%ymm9,%ymm1
 2f2:	c5 f5 db c8          	vpand  %ymm0,%ymm1,%ymm1
 2f6:	c5 7d 7f 97 00 01 00 	vmovdqa %ymm10,0x100(%rdi)
 2fd:	00 
 2fe:	c5 7d 7f 9f 20 01 00 	vmovdqa %ymm11,0x120(%rdi)
 305:	00 
 306:	c5 7d 7f a7 40 01 00 	vmovdqa %ymm12,0x140(%rdi)
 30d:	00 
 30e:	c5 7d 7f af 60 01 00 	vmovdqa %ymm13,0x160(%rdi)
 315:	00 
 316:	c5 7d 7f 87 80 01 00 	vmovdqa %ymm8,0x180(%rdi)
 31d:	00 
 31e:	c5 7d 7f b7 a0 01 00 	vmovdqa %ymm14,0x1a0(%rdi)
 325:	00 
 326:	c5 7d 7f bf c0 01 00 	vmovdqa %ymm15,0x1c0(%rdi)
 32d:	00 
 32e:	c5 fd 7f 8f e0 01 00 	vmovdqa %ymm1,0x1e0(%rdi)
 335:	00 
 336:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/ntttobytes_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_ntttobytes_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	c5 fd 6f 2e          	vmovdqa (%rsi),%ymm5
  16:	c5 fd 6f 76 20       	vmovdqa 0x20(%rsi),%ymm6
  1b:	c5 fd 6f 7e 40       	vmovdqa 0x40(%rsi),%ymm7
  20:	c5 7d 6f 46 60       	vmovdqa 0x60(%rsi),%ymm8
  25:	c5 7d 6f 8e 80 00 00 	vmovdqa 0x80(%rsi),%ymm9
  2c:	00 
  2d:	c5 7d 6f 96 a0 00 00 	vmovdqa 0xa0(%rsi),%ymm10
  34:	00 
  35:	c5 7d 6f 9e c0 00 00 	vmovdqa 0xc0(%rsi),%ymm11
  3c:	00 
  3d:	c5 7d 6f a6 e0 00 00 	vmovdqa 0xe0(%rsi),%ymm12
  44:	00 
  45:	c5 dd 71 f6 0c       	vpsllw $0xc,%ymm6,%ymm4
  4a:	c5 d5 eb e4          	vpor   %ymm4,%ymm5,%ymm4
  4e:	c5 d5 71 d6 04       	vpsrlw $0x4,%ymm6,%ymm5
  53:	c5 cd 71 f7 08       	vpsllw $0x8,%ymm7,%ymm6
  58:	c5 cd eb ed          	vpor   %ymm5,%ymm6,%ymm5
  5c:	c5 cd 71 d7 08       	vpsrlw $0x8,%ymm7,%ymm6
  61:	c4 c1 45 71 f0 04    	vpsllw $0x4,%ymm8,%ymm7
  67:	c5 c5 eb f6          	vpor   %ymm6,%ymm7,%ymm6
  6b:	c4 c1 45 71 f2 0c    	vpsllw $0xc,%ymm10,%ymm7
  71:	c5 b5 eb ff          	vpor   %ymm7,%ymm9,%ymm7
  75:	c4 c1 3d 71 d2 04    	vpsrlw $0x4,%ymm10,%ymm8
  7b:	c4 c1 35 71 f3 08    	vpsllw $0x8,%ymm11,%ymm9
  81:	c4 41 35 eb c0       	vpor   %ymm8,%ymm9,%ymm8
  86:	c4 c1 35 71 d3 08    	vpsrlw $0x8,%ymm11,%ymm9
  8c:	c4 c1 2d 71 f4 04    	vpsllw $0x4,%ymm12,%ymm10
  92:	c4 41 2d eb c9       	vpor   %ymm9,%ymm10,%ymm9
  97:	c5 e5 72 f5 10       	vpslld $0x10,%ymm5,%ymm3
  9c:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
  a2:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
  a7:	c4 e3 5d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm4,%ymm5
  ad:	c5 dd 72 f7 10       	vpslld $0x10,%ymm7,%ymm4
  b2:	c4 e3 4d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm6,%ymm4
  b8:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
  bd:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
  c3:	c4 c1 4d 72 f1 10    	vpslld $0x10,%ymm9,%ymm6
  c9:	c4 e3 3d 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm8,%ymm6
  cf:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
  d5:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
  db:	c5 7e 12 c4          	vmovsldup %ymm4,%ymm8
  df:	c4 43 65 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm3,%ymm8
  e5:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
  ea:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
  f0:	c5 fe 12 dd          	vmovsldup %ymm5,%ymm3
  f4:	c4 e3 4d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm6,%ymm3
  fa:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
  ff:	c4 e3 4d 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm6,%ymm5
 105:	c4 c1 7e 12 f1       	vmovsldup %ymm9,%ymm6
 10a:	c4 e3 45 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
 110:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
 115:	c4 43 45 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm7,%ymm9
 11b:	c5 bd 6c fb          	vpunpcklqdq %ymm3,%ymm8,%ymm7
 11f:	c5 bd 6d db          	vpunpckhqdq %ymm3,%ymm8,%ymm3
 123:	c5 4d 6c c4          	vpunpcklqdq %ymm4,%ymm6,%ymm8
 127:	c5 cd 6d e4          	vpunpckhqdq %ymm4,%ymm6,%ymm4
 12b:	c4 c1 55 6c f1       	vpunpcklqdq %ymm9,%ymm5,%ymm6
 130:	c4 41 55 6d c9       	vpunpckhqdq %ymm9,%ymm5,%ymm9
 135:	c4 c3 45 46 e8 20    	vperm2i128 $0x20,%ymm8,%ymm7,%ymm5
 13b:	c4 43 45 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm7,%ymm8
 141:	c4 e3 4d 46 fb 20    	vperm2i128 $0x20,%ymm3,%ymm6,%ymm7
 147:	c4 e3 4d 46 db 31    	vperm2i128 $0x31,%ymm3,%ymm6,%ymm3
 14d:	c4 c3 5d 46 f1 20    	vperm2i128 $0x20,%ymm9,%ymm4,%ymm6
 153:	c4 43 5d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm4,%ymm9
 159:	c5 fe 7f 2f          	vmovdqu %ymm5,(%rdi)
 15d:	c5 fe 7f 7f 20       	vmovdqu %ymm7,0x20(%rdi)
 162:	c5 fe 7f 77 40       	vmovdqu %ymm6,0x40(%rdi)
 167:	c5 7e 7f 47 60       	vmovdqu %ymm8,0x60(%rdi)
 16c:	c5 fe 7f 9f 80 00 00 	vmovdqu %ymm3,0x80(%rdi)
 173:	00 
 174:	c5 7e 7f 8f a0 00 00 	vmovdqu %ymm9,0xa0(%rdi)
 17b:	00 
 17c:	c5 fd 6f ae 00 01 00 	vmovdqa 0x100(%rsi),%ymm5
 183:	00 
 184:	c5 fd 6f b6 20 01 00 	vmovdqa 0x120(%rsi),%ymm6
 18b:	00 
 18c:	c5 fd 6f be 40 01 00 	vmovdqa 0x140(%rsi),%ymm7
 193:	00 
 194:	c5 7d 6f 86 60 01 00 	vmovdqa 0x160(%rsi),%ymm8
 19b:	00 
 19c:	c5 7d 6f 8e 80 01 00 	vmovdqa 0x180(%rsi),%ymm9
 1a3:	00 
 1a4:	c5 7d 6f 96 a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm10
 1ab:	00 
 1ac:	c5 7d 6f 9e c0 01 00 	vmovdqa 0x1c0(%rsi),%ymm11
 1b3:	00 
 1b4:	c5 7d 6f a6 e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm12
 1bb:	00 
 1bc:	c5 dd 71 f6 0c       	vpsllw $0xc,%ymm6,%ymm4
 1c1:	c5 d5 eb e4          	vpor   %ymm4,%ymm5,%ymm4
 1c5:	c5 d5 71 d6 04       	vpsrlw $0x4,%ymm6,%ymm5
 1ca:	c5 cd 71 f7 08       	vpsllw $0x8,%ymm7,%ymm6
 1cf:	c5 cd eb ed          	vpor   %ymm5,%ymm6,%ymm5
 1d3:	c5 cd 71 d7 08       	vpsrlw $0x8,%ymm7,%ymm6
 1d8:	c4 c1 45 71 f0 04    	vpsllw $0x4,%ymm8,%ymm7
 1de:	c5 c5 eb f6          	vpor   %ymm6,%ymm7,%ymm6
 1e2:	c4 c1 45 71 f2 0c    	vpsllw $0xc,%ymm10,%ymm7
 1e8:	c5 b5 eb ff          	vpor   %ymm7,%ymm9,%ymm7
 1ec:	c4 c1 3d 71 d2 04    	vpsrlw $0x4,%ymm10,%ymm8
 1f2:	c4 c1 35 71 f3 08    	vpsllw $0x8,%ymm11,%ymm9
 1f8:	c4 41 35 eb c0       	vpor   %ymm8,%ymm9,%ymm8
 1fd:	c4 c1 35 71 d3 08    	vpsrlw $0x8,%ymm11,%ymm9
 203:	c4 c1 2d 71 f4 04    	vpsllw $0x4,%ymm12,%ymm10
 209:	c4 41 2d eb c9       	vpor   %ymm9,%ymm10,%ymm9
 20e:	c5 e5 72 f5 10       	vpslld $0x10,%ymm5,%ymm3
 213:	c4 e3 5d 0e db aa    	vpblendw $0xaa,%ymm3,%ymm4,%ymm3
 219:	c5 dd 72 d4 10       	vpsrld $0x10,%ymm4,%ymm4
 21e:	c4 e3 5d 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm4,%ymm5
 224:	c5 dd 72 f7 10       	vpslld $0x10,%ymm7,%ymm4
 229:	c4 e3 4d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm6,%ymm4
 22f:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 234:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
 23a:	c4 c1 4d 72 f1 10    	vpslld $0x10,%ymm9,%ymm6
 240:	c4 e3 3d 0e f6 aa    	vpblendw $0xaa,%ymm6,%ymm8,%ymm6
 246:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 24c:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
 252:	c5 7e 12 c4          	vmovsldup %ymm4,%ymm8
 256:	c4 43 65 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm3,%ymm8
 25c:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 261:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
 267:	c5 fe 12 dd          	vmovsldup %ymm5,%ymm3
 26b:	c4 e3 4d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm6,%ymm3
 271:	c5 cd 73 d6 20       	vpsrlq $0x20,%ymm6,%ymm6
 276:	c4 e3 4d 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm6,%ymm5
 27c:	c4 c1 7e 12 f1       	vmovsldup %ymm9,%ymm6
 281:	c4 e3 45 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm7,%ymm6
 287:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
 28c:	c4 43 45 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm7,%ymm9
 292:	c5 bd 6c fb          	vpunpcklqdq %ymm3,%ymm8,%ymm7
 296:	c5 bd 6d db          	vpunpckhqdq %ymm3,%ymm8,%ymm3
 29a:	c5 4d 6c c4          	vpunpcklqdq %ymm4,%ymm6,%ymm8
 29e:	c5 cd 6d e4          	vpunpckhqdq %ymm4,%ymm6,%ymm4
 2a2:	c4 c1 55 6c f1       	vpunpcklqdq %ymm9,%ymm5,%ymm6
 2a7:	c4 41 55 6d c9       	vpunpckhqdq %ymm9,%ymm5,%ymm9
 2ac:	c4 c3 45 46 e8 20    	vperm2i128 $0x20,%ymm8,%ymm7,%ymm5
 2b2:	c4 43 45 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm7,%ymm8
 2b8:	c4 e3 4d 46 fb 20    	vperm2i128 $0x20,%ymm3,%ymm6,%ymm7
 2be:	c4 e3 4d 46 db 31    	vperm2i128 $0x31,%ymm3,%ymm6,%ymm3
 2c4:	c4 c3 5d 46 f1 20    	vperm2i128 $0x20,%ymm9,%ymm4,%ymm6
 2ca:	c4 43 5d 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm4,%ymm9
 2d0:	c5 fe 7f af c0 00 00 	vmovdqu %ymm5,0xc0(%rdi)
 2d7:	00 
 2d8:	c5 fe 7f bf e0 00 00 	vmovdqu %ymm7,0xe0(%rdi)
 2df:	00 
 2e0:	c5 fe 7f b7 00 01 00 	vmovdqu %ymm6,0x100(%rdi)
 2e7:	00 
 2e8:	c5 7e 7f 87 20 01 00 	vmovdqu %ymm8,0x120(%rdi)
 2ef:	00 
 2f0:	c5 fe 7f 9f 40 01 00 	vmovdqu %ymm3,0x140(%rdi)
 2f7:	00 
 2f8:	c5 7e 7f 8f 60 01 00 	vmovdqu %ymm9,0x160(%rdi)
 2ff:	00 
 300:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/nttunpack_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_nttunpack_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	c5 fd 6f 27          	vmovdqa (%rdi),%ymm4
   8:	c5 fd 6f 6f 20       	vmovdqa 0x20(%rdi),%ymm5
   d:	c5 fd 6f 77 40       	vmovdqa 0x40(%rdi),%ymm6
  12:	c5 fd 6f 7f 60       	vmovdqa 0x60(%rdi),%ymm7
  17:	c5 7d 6f 87 80 00 00 	vmovdqa 0x80(%rdi),%ymm8
  1e:	00 
  1f:	c5 7d 6f 8f a0 00 00 	vmovdqa 0xa0(%rdi),%ymm9
  26:	00 
  27:	c5 7d 6f 97 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm10
  2e:	00 
  2f:	c5 7d 6f 9f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm11
  36:	00 
  37:	c4 c3 5d 46 d8 20    	vperm2i128 $0x20,%ymm8,%ymm4,%ymm3
  3d:	c4 43 5d 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm4,%ymm8
  43:	c4 c3 55 46 e1 20    	vperm2i128 $0x20,%ymm9,%ymm5,%ymm4
  49:	c4 43 55 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm5,%ymm9
  4f:	c4 c3 4d 46 ea 20    	vperm2i128 $0x20,%ymm10,%ymm6,%ymm5
  55:	c4 43 4d 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm6,%ymm10
  5b:	c4 c3 45 46 f3 20    	vperm2i128 $0x20,%ymm11,%ymm7,%ymm6
  61:	c4 43 45 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm7,%ymm11
  67:	c5 e5 6c fd          	vpunpcklqdq %ymm5,%ymm3,%ymm7
  6b:	c5 e5 6d ed          	vpunpckhqdq %ymm5,%ymm3,%ymm5
  6f:	c4 c1 3d 6c da       	vpunpcklqdq %ymm10,%ymm8,%ymm3
  74:	c4 41 3d 6d d2       	vpunpckhqdq %ymm10,%ymm8,%ymm10
  79:	c5 5d 6c c6          	vpunpcklqdq %ymm6,%ymm4,%ymm8
  7d:	c5 dd 6d f6          	vpunpckhqdq %ymm6,%ymm4,%ymm6
  81:	c4 c1 35 6c e3       	vpunpcklqdq %ymm11,%ymm9,%ymm4
  86:	c4 41 35 6d db       	vpunpckhqdq %ymm11,%ymm9,%ymm11
  8b:	c4 41 7e 12 c8       	vmovsldup %ymm8,%ymm9
  90:	c4 43 45 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm7,%ymm9
  96:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
  9b:	c4 43 45 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm7,%ymm8
  a1:	c5 fe 12 fe          	vmovsldup %ymm6,%ymm7
  a5:	c4 e3 55 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm5,%ymm7
  ab:	c5 d5 73 d5 20       	vpsrlq $0x20,%ymm5,%ymm5
  b0:	c4 e3 55 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm5,%ymm6
  b6:	c5 fe 12 ec          	vmovsldup %ymm4,%ymm5
  ba:	c4 e3 65 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm3,%ymm5
  c0:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
  c5:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
  cb:	c4 c1 7e 12 db       	vmovsldup %ymm11,%ymm3
  d0:	c4 e3 2d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm10,%ymm3
  d6:	c4 c1 2d 73 d2 20    	vpsrlq $0x20,%ymm10,%ymm10
  dc:	c4 43 2d 02 db aa    	vpblendd $0xaa,%ymm11,%ymm10,%ymm11
  e2:	c5 ad 72 f5 10       	vpslld $0x10,%ymm5,%ymm10
  e7:	c4 43 35 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm9,%ymm10
  ed:	c4 c1 35 72 d1 10    	vpsrld $0x10,%ymm9,%ymm9
  f3:	c4 e3 35 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm9,%ymm5
  f9:	c5 b5 72 f4 10       	vpslld $0x10,%ymm4,%ymm9
  fe:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
 104:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 10a:	c4 e3 3d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm8,%ymm4
 110:	c5 bd 72 f3 10       	vpslld $0x10,%ymm3,%ymm8
 115:	c4 43 45 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm7,%ymm8
 11b:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 120:	c4 e3 45 0e db aa    	vpblendw $0xaa,%ymm3,%ymm7,%ymm3
 126:	c4 c1 45 72 f3 10    	vpslld $0x10,%ymm11,%ymm7
 12c:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
 132:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 137:	c4 43 4d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm6,%ymm11
 13d:	c5 7d 7f 17          	vmovdqa %ymm10,(%rdi)
 141:	c5 fd 7f 6f 20       	vmovdqa %ymm5,0x20(%rdi)
 146:	c5 7d 7f 4f 40       	vmovdqa %ymm9,0x40(%rdi)
 14b:	c5 fd 7f 67 60       	vmovdqa %ymm4,0x60(%rdi)
 150:	c5 7d 7f 87 80 00 00 	vmovdqa %ymm8,0x80(%rdi)
 157:	00 
 158:	c5 fd 7f 9f a0 00 00 	vmovdqa %ymm3,0xa0(%rdi)
 15f:	00 
 160:	c5 fd 7f bf c0 00 00 	vmovdqa %ymm7,0xc0(%rdi)
 167:	00 
 168:	c5 7d 7f 9f e0 00 00 	vmovdqa %ymm11,0xe0(%rdi)
 16f:	00 
 170:	c5 fd 6f a7 00 01 00 	vmovdqa 0x100(%rdi),%ymm4
 177:	00 
 178:	c5 fd 6f af 20 01 00 	vmovdqa 0x120(%rdi),%ymm5
 17f:	00 
 180:	c5 fd 6f b7 40 01 00 	vmovdqa 0x140(%rdi),%ymm6
 187:	00 
 188:	c5 fd 6f bf 60 01 00 	vmovdqa 0x160(%rdi),%ymm7
 18f:	00 
 190:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 197:	00 
 198:	c5 7d 6f 8f a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm9
 19f:	00 
 1a0:	c5 7d 6f 97 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm10
 1a7:	00 
 1a8:	c5 7d 6f 9f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm11
 1af:	00 
 1b0:	c4 c3 5d 46 d8 20    	vperm2i128 $0x20,%ymm8,%ymm4,%ymm3
 1b6:	c4 43 5d 46 c0 31    	vperm2i128 $0x31,%ymm8,%ymm4,%ymm8
 1bc:	c4 c3 55 46 e1 20    	vperm2i128 $0x20,%ymm9,%ymm5,%ymm4
 1c2:	c4 43 55 46 c9 31    	vperm2i128 $0x31,%ymm9,%ymm5,%ymm9
 1c8:	c4 c3 4d 46 ea 20    	vperm2i128 $0x20,%ymm10,%ymm6,%ymm5
 1ce:	c4 43 4d 46 d2 31    	vperm2i128 $0x31,%ymm10,%ymm6,%ymm10
 1d4:	c4 c3 45 46 f3 20    	vperm2i128 $0x20,%ymm11,%ymm7,%ymm6
 1da:	c4 43 45 46 db 31    	vperm2i128 $0x31,%ymm11,%ymm7,%ymm11
 1e0:	c5 e5 6c fd          	vpunpcklqdq %ymm5,%ymm3,%ymm7
 1e4:	c5 e5 6d ed          	vpunpckhqdq %ymm5,%ymm3,%ymm5
 1e8:	c4 c1 3d 6c da       	vpunpcklqdq %ymm10,%ymm8,%ymm3
 1ed:	c4 41 3d 6d d2       	vpunpckhqdq %ymm10,%ymm8,%ymm10
 1f2:	c5 5d 6c c6          	vpunpcklqdq %ymm6,%ymm4,%ymm8
 1f6:	c5 dd 6d f6          	vpunpckhqdq %ymm6,%ymm4,%ymm6
 1fa:	c4 c1 35 6c e3       	vpunpcklqdq %ymm11,%ymm9,%ymm4
 1ff:	c4 41 35 6d db       	vpunpckhqdq %ymm11,%ymm9,%ymm11
 204:	c4 41 7e 12 c8       	vmovsldup %ymm8,%ymm9
 209:	c4 43 45 02 c9 aa    	vpblendd $0xaa,%ymm9,%ymm7,%ymm9
 20f:	c5 c5 73 d7 20       	vpsrlq $0x20,%ymm7,%ymm7
 214:	c4 43 45 02 c0 aa    	vpblendd $0xaa,%ymm8,%ymm7,%ymm8
 21a:	c5 fe 12 fe          	vmovsldup %ymm6,%ymm7
 21e:	c4 e3 55 02 ff aa    	vpblendd $0xaa,%ymm7,%ymm5,%ymm7
 224:	c5 d5 73 d5 20       	vpsrlq $0x20,%ymm5,%ymm5
 229:	c4 e3 55 02 f6 aa    	vpblendd $0xaa,%ymm6,%ymm5,%ymm6
 22f:	c5 fe 12 ec          	vmovsldup %ymm4,%ymm5
 233:	c4 e3 65 02 ed aa    	vpblendd $0xaa,%ymm5,%ymm3,%ymm5
 239:	c5 e5 73 d3 20       	vpsrlq $0x20,%ymm3,%ymm3
 23e:	c4 e3 65 02 e4 aa    	vpblendd $0xaa,%ymm4,%ymm3,%ymm4
 244:	c4 c1 7e 12 db       	vmovsldup %ymm11,%ymm3
 249:	c4 e3 2d 02 db aa    	vpblendd $0xaa,%ymm3,%ymm10,%ymm3
 24f:	c4 c1 2d 73 d2 20    	vpsrlq $0x20,%ymm10,%ymm10
 255:	c4 43 2d 02 db aa    	vpblendd $0xaa,%ymm11,%ymm10,%ymm11
 25b:	c5 ad 72 f5 10       	vpslld $0x10,%ymm5,%ymm10
 260:	c4 43 35 0e d2 aa    	vpblendw $0xaa,%ymm10,%ymm9,%ymm10
 266:	c4 c1 35 72 d1 10    	vpsrld $0x10,%ymm9,%ymm9
 26c:	c4 e3 35 0e ed aa    	vpblendw $0xaa,%ymm5,%ymm9,%ymm5
 272:	c5 b5 72 f4 10       	vpslld $0x10,%ymm4,%ymm9
 277:	c4 43 3d 0e c9 aa    	vpblendw $0xaa,%ymm9,%ymm8,%ymm9
 27d:	c4 c1 3d 72 d0 10    	vpsrld $0x10,%ymm8,%ymm8
 283:	c4 e3 3d 0e e4 aa    	vpblendw $0xaa,%ymm4,%ymm8,%ymm4
 289:	c5 bd 72 f3 10       	vpslld $0x10,%ymm3,%ymm8
 28e:	c4 43 45 0e c0 aa    	vpblendw $0xaa,%ymm8,%ymm7,%ymm8
 294:	c5 c5 72 d7 10       	vpsrld $0x10,%ymm7,%ymm7
 299:	c4 e3 45 0e db aa    	vpblendw $0xaa,%ymm3,%ymm7,%ymm3
 29f:	c4 c1 45 72 f3 10    	vpslld $0x10,%ymm11,%ymm7
 2a5:	c4 e3 4d 0e ff aa    	vpblendw $0xaa,%ymm7,%ymm6,%ymm7
 2ab:	c5 cd 72 d6 10       	vpsrld $0x10,%ymm6,%ymm6
 2b0:	c4 43 4d 0e db aa    	vpblendw $0xaa,%ymm11,%ymm6,%ymm11
 2b6:	c5 7d 7f 97 00 01 00 	vmovdqa %ymm10,0x100(%rdi)
 2bd:	00 
 2be:	c5 fd 7f af 20 01 00 	vmovdqa %ymm5,0x120(%rdi)
 2c5:	00 
 2c6:	c5 7d 7f 8f 40 01 00 	vmovdqa %ymm9,0x140(%rdi)
 2cd:	00 
 2ce:	c5 fd 7f a7 60 01 00 	vmovdqa %ymm4,0x160(%rdi)
 2d5:	00 
 2d6:	c5 7d 7f 87 80 01 00 	vmovdqa %ymm8,0x180(%rdi)
 2dd:	00 
 2de:	c5 fd 7f 9f a0 01 00 	vmovdqa %ymm3,0x1a0(%rdi)
 2e5:	00 
 2e6:	c5 fd 7f bf c0 01 00 	vmovdqa %ymm7,0x1c0(%rdi)
 2ed:	00 
 2ee:	c5 7d 7f 9f e0 01 00 	vmovdqa %ymm11,0x1e0(%rdi)
 2f5:	00 
 2f6:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_compress_d10_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d10_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 bf 4e bf 4e       	mov    $0x4ebf4ebf,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	c5 f5 71 f0 03       	vpsllw $0x3,%ymm0,%ymm1
  17:	b8 0f 00 0f 00       	mov    $0xf000f,%eax
  1c:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  20:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  25:	b8 00 10 00 10       	mov    $0x10001000,%eax
  2a:	c5 f9 6e d8          	vmovd  %eax,%xmm3
  2e:	c4 e2 7d 58 db       	vpbroadcastd %xmm3,%ymm3
  33:	b8 ff 03 ff 03       	mov    $0x3ff03ff,%eax
  38:	c5 f9 6e e0          	vmovd  %eax,%xmm4
  3c:	c4 e2 7d 58 e4       	vpbroadcastd %xmm4,%ymm4
  41:	48 b8 01 00 00 04 01 	movabs $0x400000104000001,%rax
  48:	00 00 04 
  4b:	c4 e1 f9 6e e8       	vmovq  %rax,%xmm5
  50:	c4 e2 7d 59 ed       	vpbroadcastq %xmm5,%ymm5
  55:	b8 0c 00 00 00       	mov    $0xc,%eax
  5a:	c4 e1 f9 6e f0       	vmovq  %rax,%xmm6
  5f:	c4 e2 7d 59 f6       	vpbroadcastq %xmm6,%ymm6
  64:	c5 fd 6f 3a          	vmovdqa (%rdx),%ymm7
  68:	c5 7d 6f 06          	vmovdqa (%rsi),%ymm8
  6c:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
  70:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
  74:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
  7a:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
  7e:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
  83:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
  88:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
  8e:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
  93:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
  98:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
  9c:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
  a0:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
  a5:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
  ab:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
  b0:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
  b6:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
  bc:	c5 7a 7f 07          	vmovdqu %xmm8,(%rdi)
  c0:	c5 79 7e 4f 10       	vmovd  %xmm9,0x10(%rdi)
  c5:	c5 7d 6f 46 20       	vmovdqa 0x20(%rsi),%ymm8
  ca:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
  ce:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
  d2:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
  d8:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
  dc:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
  e1:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
  e6:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
  ec:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
  f1:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
  f6:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
  fa:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
  fe:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 103:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 109:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 10e:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 114:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 11a:	c5 7a 7f 47 14       	vmovdqu %xmm8,0x14(%rdi)
 11f:	c5 79 7e 4f 24       	vmovd  %xmm9,0x24(%rdi)
 124:	c5 7d 6f 46 40       	vmovdqa 0x40(%rsi),%ymm8
 129:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 12d:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 131:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 137:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 13b:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 140:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 145:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 14b:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 150:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 155:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 159:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 15d:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 162:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 168:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 16d:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 173:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 179:	c5 7a 7f 47 28       	vmovdqu %xmm8,0x28(%rdi)
 17e:	c5 79 7e 4f 38       	vmovd  %xmm9,0x38(%rdi)
 183:	c5 7d 6f 46 60       	vmovdqa 0x60(%rsi),%ymm8
 188:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 18c:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 190:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 196:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 19a:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 19f:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 1a4:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 1aa:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 1af:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 1b4:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 1b8:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 1bc:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 1c1:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 1c7:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 1cc:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 1d2:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 1d8:	c5 7a 7f 47 3c       	vmovdqu %xmm8,0x3c(%rdi)
 1dd:	c5 79 7e 4f 4c       	vmovd  %xmm9,0x4c(%rdi)
 1e2:	c5 7d 6f 86 80 00 00 	vmovdqa 0x80(%rsi),%ymm8
 1e9:	00 
 1ea:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 1ee:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 1f2:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 1f8:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 1fc:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 201:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 206:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 20c:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 211:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 216:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 21a:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 21e:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 223:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 229:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 22e:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 234:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 23a:	c5 7a 7f 47 50       	vmovdqu %xmm8,0x50(%rdi)
 23f:	c5 79 7e 4f 60       	vmovd  %xmm9,0x60(%rdi)
 244:	c5 7d 6f 86 a0 00 00 	vmovdqa 0xa0(%rsi),%ymm8
 24b:	00 
 24c:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 250:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 254:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 25a:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 25e:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 263:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 268:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 26e:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 273:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 278:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 27c:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 280:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 285:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 28b:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 290:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 296:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 29c:	c5 7a 7f 47 64       	vmovdqu %xmm8,0x64(%rdi)
 2a1:	c5 79 7e 4f 74       	vmovd  %xmm9,0x74(%rdi)
 2a6:	c5 7d 6f 86 c0 00 00 	vmovdqa 0xc0(%rsi),%ymm8
 2ad:	00 
 2ae:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 2b2:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 2b6:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 2bc:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 2c0:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 2c5:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 2ca:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 2d0:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 2d5:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 2da:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 2de:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 2e2:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 2e7:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 2ed:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 2f2:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 2f8:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 2fe:	c5 7a 7f 47 78       	vmovdqu %xmm8,0x78(%rdi)
 303:	c5 79 7e 8f 88 00 00 	vmovd  %xmm9,0x88(%rdi)
 30a:	00 
 30b:	c5 7d 6f 86 e0 00 00 	vmovdqa 0xe0(%rsi),%ymm8
 312:	00 
 313:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 317:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 31b:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 321:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 325:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 32a:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 32f:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 335:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 33a:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 33f:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 343:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 347:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 34c:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 352:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 357:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 35d:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 363:	c5 7a 7f 87 8c 00 00 	vmovdqu %xmm8,0x8c(%rdi)
 36a:	00 
 36b:	c5 79 7e 8f 9c 00 00 	vmovd  %xmm9,0x9c(%rdi)
 372:	00 
 373:	c5 7d 6f 86 00 01 00 	vmovdqa 0x100(%rsi),%ymm8
 37a:	00 
 37b:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 37f:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 383:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 389:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 38d:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 392:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 397:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 39d:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 3a2:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 3a7:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 3ab:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 3af:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 3b4:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 3ba:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 3bf:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 3c5:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 3cb:	c5 7a 7f 87 a0 00 00 	vmovdqu %xmm8,0xa0(%rdi)
 3d2:	00 
 3d3:	c5 79 7e 8f b0 00 00 	vmovd  %xmm9,0xb0(%rdi)
 3da:	00 
 3db:	c5 7d 6f 86 20 01 00 	vmovdqa 0x120(%rsi),%ymm8
 3e2:	00 
 3e3:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 3e7:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 3eb:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 3f1:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 3f5:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 3fa:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 3ff:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 405:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 40a:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 40f:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 413:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 417:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 41c:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 422:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 427:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 42d:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 433:	c5 7a 7f 87 b4 00 00 	vmovdqu %xmm8,0xb4(%rdi)
 43a:	00 
 43b:	c5 79 7e 8f c4 00 00 	vmovd  %xmm9,0xc4(%rdi)
 442:	00 
 443:	c5 7d 6f 86 40 01 00 	vmovdqa 0x140(%rsi),%ymm8
 44a:	00 
 44b:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 44f:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 453:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 459:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 45d:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 462:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 467:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 46d:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 472:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 477:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 47b:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 47f:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 484:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 48a:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 48f:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 495:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 49b:	c5 7a 7f 87 c8 00 00 	vmovdqu %xmm8,0xc8(%rdi)
 4a2:	00 
 4a3:	c5 79 7e 8f d8 00 00 	vmovd  %xmm9,0xd8(%rdi)
 4aa:	00 
 4ab:	c5 7d 6f 86 60 01 00 	vmovdqa 0x160(%rsi),%ymm8
 4b2:	00 
 4b3:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 4b7:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 4bb:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 4c1:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 4c5:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 4ca:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 4cf:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 4d5:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 4da:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 4df:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 4e3:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 4e7:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 4ec:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 4f2:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 4f7:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 4fd:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 503:	c5 7a 7f 87 dc 00 00 	vmovdqu %xmm8,0xdc(%rdi)
 50a:	00 
 50b:	c5 79 7e 8f ec 00 00 	vmovd  %xmm9,0xec(%rdi)
 512:	00 
 513:	c5 7d 6f 86 80 01 00 	vmovdqa 0x180(%rsi),%ymm8
 51a:	00 
 51b:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 51f:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 523:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 529:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 52d:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 532:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 537:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 53d:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 542:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 547:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 54b:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 54f:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 554:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 55a:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 55f:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 565:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 56b:	c5 7a 7f 87 f0 00 00 	vmovdqu %xmm8,0xf0(%rdi)
 572:	00 
 573:	c5 79 7e 8f 00 01 00 	vmovd  %xmm9,0x100(%rdi)
 57a:	00 
 57b:	c5 7d 6f 86 a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm8
 582:	00 
 583:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 587:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 58b:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 591:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 595:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 59a:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 59f:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 5a5:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 5aa:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 5af:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 5b3:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 5b7:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 5bc:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 5c2:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 5c7:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 5cd:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 5d3:	c5 7a 7f 87 04 01 00 	vmovdqu %xmm8,0x104(%rdi)
 5da:	00 
 5db:	c5 79 7e 8f 14 01 00 	vmovd  %xmm9,0x114(%rdi)
 5e2:	00 
 5e3:	c5 7d 6f 86 c0 01 00 	vmovdqa 0x1c0(%rsi),%ymm8
 5ea:	00 
 5eb:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 5ef:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 5f3:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 5f9:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 5fd:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 602:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 607:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 60d:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 612:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 617:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 61b:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 61f:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 624:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 62a:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 62f:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 635:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 63b:	c5 7a 7f 87 18 01 00 	vmovdqu %xmm8,0x118(%rdi)
 642:	00 
 643:	c5 79 7e 8f 28 01 00 	vmovd  %xmm9,0x128(%rdi)
 64a:	00 
 64b:	c5 7d 6f 86 e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm8
 652:	00 
 653:	c5 3d d5 c9          	vpmullw %ymm1,%ymm8,%ymm9
 657:	c5 3d fd d2          	vpaddw %ymm2,%ymm8,%ymm10
 65b:	c4 c1 3d 71 f0 03    	vpsllw $0x3,%ymm8,%ymm8
 661:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 665:	c4 41 35 f9 d2       	vpsubw %ymm10,%ymm9,%ymm10
 66a:	c4 41 35 df ca       	vpandn %ymm10,%ymm9,%ymm9
 66f:	c4 c1 35 71 d1 0f    	vpsrlw $0xf,%ymm9,%ymm9
 675:	c4 41 3d f9 c1       	vpsubw %ymm9,%ymm8,%ymm8
 67a:	c4 62 3d 0b c3       	vpmulhrsw %ymm3,%ymm8,%ymm8
 67f:	c5 3d db c4          	vpand  %ymm4,%ymm8,%ymm8
 683:	c5 3d f5 c5          	vpmaddwd %ymm5,%ymm8,%ymm8
 687:	c4 62 3d 47 c6       	vpsllvd %ymm6,%ymm8,%ymm8
 68c:	c4 c1 3d 73 d0 0c    	vpsrlq $0xc,%ymm8,%ymm8
 692:	c4 62 3d 00 c7       	vpshufb %ymm7,%ymm8,%ymm8
 697:	c4 43 7d 39 c1 01    	vextracti128 $0x1,%ymm8,%xmm9
 69d:	c4 43 39 0e c1 e0    	vpblendw $0xe0,%xmm9,%xmm8,%xmm8
 6a3:	c5 7a 7f 87 2c 01 00 	vmovdqu %xmm8,0x12c(%rdi)
 6aa:	00 
 6ab:	c5 79 7e 8f 3c 01 00 	vmovd  %xmm9,0x13c(%rdi)
 6b2:	00 
 6b3:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_compress_d11_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_compress_d4_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_compress_d4_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 bf 4e bf 4e       	mov    $0x4ebf4ebf,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 00 02 00 02       	mov    $0x2000200,%eax
  17:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  1b:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
  20:	b8 0f 00 0f 00       	mov    $0xf000f,%eax
  25:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  29:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  2e:	b8 01 10 01 10       	mov    $0x10011001,%eax
  33:	c5 f9 6e d8          	vmovd  %eax,%xmm3
  37:	c4 e2 7d 58 db       	vpbroadcastd %xmm3,%ymm3
  3c:	c5 fd 6f 22          	vmovdqa (%rdx),%ymm4
  40:	c5 fd 6f 2e          	vmovdqa (%rsi),%ymm5
  44:	c5 fd 6f 76 20       	vmovdqa 0x20(%rsi),%ymm6
  49:	c5 fd 6f 7e 40       	vmovdqa 0x40(%rsi),%ymm7
  4e:	c5 7d 6f 46 60       	vmovdqa 0x60(%rsi),%ymm8
  53:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
  57:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
  5b:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
  5f:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
  63:	c4 e2 55 0b e9       	vpmulhrsw %ymm1,%ymm5,%ymm5
  68:	c4 e2 4d 0b f1       	vpmulhrsw %ymm1,%ymm6,%ymm6
  6d:	c4 e2 45 0b f9       	vpmulhrsw %ymm1,%ymm7,%ymm7
  72:	c4 62 3d 0b c1       	vpmulhrsw %ymm1,%ymm8,%ymm8
  77:	c5 d5 db ea          	vpand  %ymm2,%ymm5,%ymm5
  7b:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  7f:	c5 c5 db fa          	vpand  %ymm2,%ymm7,%ymm7
  83:	c5 3d db c2          	vpand  %ymm2,%ymm8,%ymm8
  87:	c5 d5 67 ee          	vpackuswb %ymm6,%ymm5,%ymm5
  8b:	c4 c1 45 67 f8       	vpackuswb %ymm8,%ymm7,%ymm7
  90:	c4 e2 55 04 eb       	vpmaddubsw %ymm3,%ymm5,%ymm5
  95:	c4 e2 45 04 fb       	vpmaddubsw %ymm3,%ymm7,%ymm7
  9a:	c5 d5 67 ef          	vpackuswb %ymm7,%ymm5,%ymm5
  9e:	c4 e2 5d 36 ed       	vpermd %ymm5,%ymm4,%ymm5
  a3:	c5 fe 7f 2f          	vmovdqu %ymm5,(%rdi)
  a7:	c5 fd 6f ae 80 00 00 	vmovdqa 0x80(%rsi),%ymm5
  ae:	00 
  af:	c5 fd 6f b6 a0 00 00 	vmovdqa 0xa0(%rsi),%ymm6
  b6:	00 
  b7:	c5 fd 6f be c0 00 00 	vmovdqa 0xc0(%rsi),%ymm7
  be:	00 
  bf:	c5 7d 6f 86 e0 00 00 	vmovdqa 0xe0(%rsi),%ymm8
  c6:	00 
  c7:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
  cb:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
  cf:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
  d3:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
  d7:	c4 e2 55 0b e9       	vpmulhrsw %ymm1,%ymm5,%ymm5
  dc:	c4 e2 4d 0b f1       	vpmulhrsw %ymm1,%ymm6,%ymm6
  e1:	c4 e2 45 0b f9       	vpmulhrsw %ymm1,%ymm7,%ymm7
  e6:	c4 62 3d 0b c1       	vpmulhrsw %ymm1,%ymm8,%ymm8
  eb:	c5 d5 db ea          	vpand  %ymm2,%ymm5,%ymm5
  ef:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
  f3:	c5 c5 db fa          	vpand  %ymm2,%ymm7,%ymm7
  f7:	c5 3d db c2          	vpand  %ymm2,%ymm8,%ymm8
  fb:	c5 d5 67 ee          	vpackuswb %ymm6,%ymm5,%ymm5
  ff:	c4 c1 45 67 f8       	vpackuswb %ymm8,%ymm7,%ymm7
 104:	c4 e2 55 04 eb       	vpmaddubsw %ymm3,%ymm5,%ymm5
 109:	c4 e2 45 04 fb       	vpmaddubsw %ymm3,%ymm7,%ymm7
 10e:	c5 d5 67 ef          	vpackuswb %ymm7,%ymm5,%ymm5
 112:	c4 e2 5d 36 ed       	vpermd %ymm5,%ymm4,%ymm5
 117:	c5 fe 7f 6f 20       	vmovdqu %ymm5,0x20(%rdi)
 11c:	c5 fd 6f ae 00 01 00 	vmovdqa 0x100(%rsi),%ymm5
 123:	00 
 124:	c5 fd 6f b6 20 01 00 	vmovdqa 0x120(%rsi),%ymm6
 12b:	00 
 12c:	c5 fd 6f be 40 01 00 	vmovdqa 0x140(%rsi),%ymm7
 133:	00 
 134:	c5 7d 6f 86 60 01 00 	vmovdqa 0x160(%rsi),%ymm8
 13b:	00 
 13c:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 140:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
 144:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 148:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 14c:	c4 e2 55 0b e9       	vpmulhrsw %ymm1,%ymm5,%ymm5
 151:	c4 e2 4d 0b f1       	vpmulhrsw %ymm1,%ymm6,%ymm6
 156:	c4 e2 45 0b f9       	vpmulhrsw %ymm1,%ymm7,%ymm7
 15b:	c4 62 3d 0b c1       	vpmulhrsw %ymm1,%ymm8,%ymm8
 160:	c5 d5 db ea          	vpand  %ymm2,%ymm5,%ymm5
 164:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
 168:	c5 c5 db fa          	vpand  %ymm2,%ymm7,%ymm7
 16c:	c5 3d db c2          	vpand  %ymm2,%ymm8,%ymm8
 170:	c5 d5 67 ee          	vpackuswb %ymm6,%ymm5,%ymm5
 174:	c4 c1 45 67 f8       	vpackuswb %ymm8,%ymm7,%ymm7
 179:	c4 e2 55 04 eb       	vpmaddubsw %ymm3,%ymm5,%ymm5
 17e:	c4 e2 45 04 fb       	vpmaddubsw %ymm3,%ymm7,%ymm7
 183:	c5 d5 67 ef          	vpackuswb %ymm7,%ymm5,%ymm5
 187:	c4 e2 5d 36 ed       	vpermd %ymm5,%ymm4,%ymm5
 18c:	c5 fe 7f 6f 40       	vmovdqu %ymm5,0x40(%rdi)
 191:	c5 fd 6f ae 80 01 00 	vmovdqa 0x180(%rsi),%ymm5
 198:	00 
 199:	c5 fd 6f b6 a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm6
 1a0:	00 
 1a1:	c5 fd 6f be c0 01 00 	vmovdqa 0x1c0(%rsi),%ymm7
 1a8:	00 
 1a9:	c5 7d 6f 86 e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm8
 1b0:	00 
 1b1:	c5 d5 e5 e8          	vpmulhw %ymm0,%ymm5,%ymm5
 1b5:	c5 cd e5 f0          	vpmulhw %ymm0,%ymm6,%ymm6
 1b9:	c5 c5 e5 f8          	vpmulhw %ymm0,%ymm7,%ymm7
 1bd:	c5 3d e5 c0          	vpmulhw %ymm0,%ymm8,%ymm8
 1c1:	c4 e2 55 0b e9       	vpmulhrsw %ymm1,%ymm5,%ymm5
 1c6:	c4 e2 4d 0b f1       	vpmulhrsw %ymm1,%ymm6,%ymm6
 1cb:	c4 e2 45 0b f9       	vpmulhrsw %ymm1,%ymm7,%ymm7
 1d0:	c4 62 3d 0b c1       	vpmulhrsw %ymm1,%ymm8,%ymm8
 1d5:	c5 d5 db ea          	vpand  %ymm2,%ymm5,%ymm5
 1d9:	c5 cd db f2          	vpand  %ymm2,%ymm6,%ymm6
 1dd:	c5 c5 db fa          	vpand  %ymm2,%ymm7,%ymm7
 1e1:	c5 3d db c2          	vpand  %ymm2,%ymm8,%ymm8
 1e5:	c5 d5 67 ee          	vpackuswb %ymm6,%ymm5,%ymm5
 1e9:	c4 c1 45 67 f8       	vpackuswb %ymm8,%ymm7,%ymm7
 1ee:	c4 e2 55 04 eb       	vpmaddubsw %ymm3,%ymm5,%ymm5
 1f3:	c4 e2 45 04 fb       	vpmaddubsw %ymm3,%ymm7,%ymm7
 1f8:	c5 d5 67 ef          	vpackuswb %ymm7,%ymm5,%ymm5
 1fc:	c4 e2 5d 36 ed       	vpermd %ymm5,%ymm4,%ymm5
 201:	c5 fe 7f 6f 60       	vmovdqu %ymm5,0x60(%rdi)
 206:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_compress_d5_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_decompress_d10_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d10_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 04 34 01 0d       	mov    $0xd013404,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 04 00 00 00       	mov    $0x4,%eax
  17:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
  1c:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
  21:	b8 f8 1f e0 7f       	mov    $0x7fe01ff8,%eax
  26:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  2a:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  2f:	c5 fd 6f 1a          	vmovdqa (%rdx),%ymm3
  33:	c5 fa 6f 26          	vmovdqu (%rsi),%xmm4
  37:	c5 f9 6e 6e 10       	vmovd  0x10(%rsi),%xmm5
  3c:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
  42:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
  48:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  4d:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
  52:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
  57:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
  5b:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  60:	c5 fe 7f 27          	vmovdqu %ymm4,(%rdi)
  64:	c5 fa 6f 66 14       	vmovdqu 0x14(%rsi),%xmm4
  69:	c5 f9 6e 6e 24       	vmovd  0x24(%rsi),%xmm5
  6e:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
  74:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
  7a:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  7f:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
  84:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
  89:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
  8d:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  92:	c5 fe 7f 67 20       	vmovdqu %ymm4,0x20(%rdi)
  97:	c5 fa 6f 66 28       	vmovdqu 0x28(%rsi),%xmm4
  9c:	c5 f9 6e 6e 38       	vmovd  0x38(%rsi),%xmm5
  a1:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
  a7:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
  ad:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  b2:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
  b7:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
  bc:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
  c0:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  c5:	c5 fe 7f 67 40       	vmovdqu %ymm4,0x40(%rdi)
  ca:	c5 fa 6f 66 3c       	vmovdqu 0x3c(%rsi),%xmm4
  cf:	c5 f9 6e 6e 4c       	vmovd  0x4c(%rsi),%xmm5
  d4:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
  da:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
  e0:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  e5:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
  ea:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
  ef:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
  f3:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  f8:	c5 fe 7f 67 60       	vmovdqu %ymm4,0x60(%rdi)
  fd:	c5 fa 6f 66 50       	vmovdqu 0x50(%rsi),%xmm4
 102:	c5 f9 6e 6e 60       	vmovd  0x60(%rsi),%xmm5
 107:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 10d:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 113:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 118:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 11d:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 122:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 126:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 12b:	c5 fe 7f a7 80 00 00 	vmovdqu %ymm4,0x80(%rdi)
 132:	00 
 133:	c5 fa 6f 66 64       	vmovdqu 0x64(%rsi),%xmm4
 138:	c5 f9 6e 6e 74       	vmovd  0x74(%rsi),%xmm5
 13d:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 143:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 149:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 14e:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 153:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 158:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 15c:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 161:	c5 fe 7f a7 a0 00 00 	vmovdqu %ymm4,0xa0(%rdi)
 168:	00 
 169:	c5 fa 6f 66 78       	vmovdqu 0x78(%rsi),%xmm4
 16e:	c5 f9 6e ae 88 00 00 	vmovd  0x88(%rsi),%xmm5
 175:	00 
 176:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 17c:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 182:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 187:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 18c:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 191:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 195:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 19a:	c5 fe 7f a7 c0 00 00 	vmovdqu %ymm4,0xc0(%rdi)
 1a1:	00 
 1a2:	c5 fa 6f a6 8c 00 00 	vmovdqu 0x8c(%rsi),%xmm4
 1a9:	00 
 1aa:	c5 f9 6e ae 9c 00 00 	vmovd  0x9c(%rsi),%xmm5
 1b1:	00 
 1b2:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 1b8:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 1be:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 1c3:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 1c8:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 1cd:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 1d1:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 1d6:	c5 fe 7f a7 e0 00 00 	vmovdqu %ymm4,0xe0(%rdi)
 1dd:	00 
 1de:	c5 fa 6f a6 a0 00 00 	vmovdqu 0xa0(%rsi),%xmm4
 1e5:	00 
 1e6:	c5 f9 6e ae b0 00 00 	vmovd  0xb0(%rsi),%xmm5
 1ed:	00 
 1ee:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 1f4:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 1fa:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 1ff:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 204:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 209:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 20d:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 212:	c5 fe 7f a7 00 01 00 	vmovdqu %ymm4,0x100(%rdi)
 219:	00 
 21a:	c5 fa 6f a6 b4 00 00 	vmovdqu 0xb4(%rsi),%xmm4
 221:	00 
 222:	c5 f9 6e ae c4 00 00 	vmovd  0xc4(%rsi),%xmm5
 229:	00 
 22a:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 230:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 236:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 23b:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 240:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 245:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 249:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 24e:	c5 fe 7f a7 20 01 00 	vmovdqu %ymm4,0x120(%rdi)
 255:	00 
 256:	c5 fa 6f a6 c8 00 00 	vmovdqu 0xc8(%rsi),%xmm4
 25d:	00 
 25e:	c5 f9 6e ae d8 00 00 	vmovd  0xd8(%rsi),%xmm5
 265:	00 
 266:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 26c:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 272:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 277:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 27c:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 281:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 285:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 28a:	c5 fe 7f a7 40 01 00 	vmovdqu %ymm4,0x140(%rdi)
 291:	00 
 292:	c5 fa 6f a6 dc 00 00 	vmovdqu 0xdc(%rsi),%xmm4
 299:	00 
 29a:	c5 f9 6e ae ec 00 00 	vmovd  0xec(%rsi),%xmm5
 2a1:	00 
 2a2:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 2a8:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 2ae:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 2b3:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 2b8:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 2bd:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 2c1:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 2c6:	c5 fe 7f a7 60 01 00 	vmovdqu %ymm4,0x160(%rdi)
 2cd:	00 
 2ce:	c5 fa 6f a6 f0 00 00 	vmovdqu 0xf0(%rsi),%xmm4
 2d5:	00 
 2d6:	c5 f9 6e ae 00 01 00 	vmovd  0x100(%rsi),%xmm5
 2dd:	00 
 2de:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 2e4:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 2ea:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 2ef:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 2f4:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 2f9:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 2fd:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 302:	c5 fe 7f a7 80 01 00 	vmovdqu %ymm4,0x180(%rdi)
 309:	00 
 30a:	c5 fa 6f a6 04 01 00 	vmovdqu 0x104(%rsi),%xmm4
 311:	00 
 312:	c5 f9 6e ae 14 01 00 	vmovd  0x114(%rsi),%xmm5
 319:	00 
 31a:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 320:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 326:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 32b:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 330:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 335:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 339:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 33e:	c5 fe 7f a7 a0 01 00 	vmovdqu %ymm4,0x1a0(%rdi)
 345:	00 
 346:	c5 fa 6f a6 18 01 00 	vmovdqu 0x118(%rsi),%xmm4
 34d:	00 
 34e:	c5 f9 6e ae 28 01 00 	vmovd  0x128(%rsi),%xmm5
 355:	00 
 356:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 35c:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 362:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 367:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 36c:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 371:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 375:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 37a:	c5 fe 7f a7 c0 01 00 	vmovdqu %ymm4,0x1c0(%rdi)
 381:	00 
 382:	c5 fa 6f a6 2c 01 00 	vmovdqu 0x12c(%rsi),%xmm4
 389:	00 
 38a:	c5 f9 6e ae 3c 01 00 	vmovd  0x13c(%rsi),%xmm5
 391:	00 
 392:	c4 e3 5d 38 e5 01    	vinserti128 $0x1,%xmm5,%ymm4,%ymm4
 398:	c4 e3 fd 00 e4 94    	vpermq $0x94,%ymm4,%ymm4
 39e:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 3a3:	c4 e2 5d 47 e1       	vpsllvd %ymm1,%ymm4,%ymm4
 3a8:	c5 dd 71 d4 01       	vpsrlw $0x1,%ymm4,%ymm4
 3ad:	c5 dd db e2          	vpand  %ymm2,%ymm4,%ymm4
 3b1:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 3b6:	c5 fe 7f a7 e0 01 00 	vmovdqu %ymm4,0x1e0(%rdi)
 3bd:	00 
 3be:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_decompress_d11_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_decompress_d4_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_decompress_d4_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 0f 00 f0 00       	mov    $0xf0000f,%eax
  17:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  1b:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
  20:	b8 00 08 80 00       	mov    $0x800800,%eax
  25:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  29:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  2e:	c5 fd 6f 1a          	vmovdqa (%rdx),%ymm3
  32:	c5 fa 7e 26          	vmovq  (%rsi),%xmm4
  36:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  3c:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  41:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  45:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  49:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  4e:	c5 fe 7f 27          	vmovdqu %ymm4,(%rdi)
  52:	c5 fa 7e 66 08       	vmovq  0x8(%rsi),%xmm4
  57:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  5d:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  62:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  66:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  6a:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  6f:	c5 fe 7f 67 20       	vmovdqu %ymm4,0x20(%rdi)
  74:	c5 fa 7e 66 10       	vmovq  0x10(%rsi),%xmm4
  79:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  7f:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  84:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  88:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  8c:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  91:	c5 fe 7f 67 40       	vmovdqu %ymm4,0x40(%rdi)
  96:	c5 fa 7e 66 18       	vmovq  0x18(%rsi),%xmm4
  9b:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  a1:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  a6:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  aa:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  ae:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  b3:	c5 fe 7f 67 60       	vmovdqu %ymm4,0x60(%rdi)
  b8:	c5 fa 7e 66 20       	vmovq  0x20(%rsi),%xmm4
  bd:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  c3:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  c8:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  cc:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  d0:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  d5:	c5 fe 7f a7 80 00 00 	vmovdqu %ymm4,0x80(%rdi)
  dc:	00 
  dd:	c5 fa 7e 66 28       	vmovq  0x28(%rsi),%xmm4
  e2:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
  e8:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
  ed:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
  f1:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
  f5:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
  fa:	c5 fe 7f a7 a0 00 00 	vmovdqu %ymm4,0xa0(%rdi)
 101:	00 
 102:	c5 fa 7e 66 30       	vmovq  0x30(%rsi),%xmm4
 107:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 10d:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 112:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 116:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 11a:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 11f:	c5 fe 7f a7 c0 00 00 	vmovdqu %ymm4,0xc0(%rdi)
 126:	00 
 127:	c5 fa 7e 66 38       	vmovq  0x38(%rsi),%xmm4
 12c:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 132:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 137:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 13b:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 13f:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 144:	c5 fe 7f a7 e0 00 00 	vmovdqu %ymm4,0xe0(%rdi)
 14b:	00 
 14c:	c5 fa 7e 66 40       	vmovq  0x40(%rsi),%xmm4
 151:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 157:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 15c:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 160:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 164:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 169:	c5 fe 7f a7 00 01 00 	vmovdqu %ymm4,0x100(%rdi)
 170:	00 
 171:	c5 fa 7e 66 48       	vmovq  0x48(%rsi),%xmm4
 176:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 17c:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 181:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 185:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 189:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 18e:	c5 fe 7f a7 20 01 00 	vmovdqu %ymm4,0x120(%rdi)
 195:	00 
 196:	c5 fa 7e 66 50       	vmovq  0x50(%rsi),%xmm4
 19b:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 1a1:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 1a6:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 1aa:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 1ae:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 1b3:	c5 fe 7f a7 40 01 00 	vmovdqu %ymm4,0x140(%rdi)
 1ba:	00 
 1bb:	c5 fa 7e 66 58       	vmovq  0x58(%rsi),%xmm4
 1c0:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 1c6:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 1cb:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 1cf:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 1d3:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 1d8:	c5 fe 7f a7 60 01 00 	vmovdqu %ymm4,0x160(%rdi)
 1df:	00 
 1e0:	c5 fa 7e 66 60       	vmovq  0x60(%rsi),%xmm4
 1e5:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 1eb:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 1f0:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 1f4:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 1f8:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 1fd:	c5 fe 7f a7 80 01 00 	vmovdqu %ymm4,0x180(%rdi)
 204:	00 
 205:	c5 fa 7e 66 68       	vmovq  0x68(%rsi),%xmm4
 20a:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 210:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 215:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 219:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 21d:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 222:	c5 fe 7f a7 a0 01 00 	vmovdqu %ymm4,0x1a0(%rdi)
 229:	00 
 22a:	c5 fa 7e 66 70       	vmovq  0x70(%rsi),%xmm4
 22f:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 235:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 23a:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 23e:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 242:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 247:	c5 fe 7f a7 c0 01 00 	vmovdqu %ymm4,0x1c0(%rdi)
 24e:	00 
 24f:	c5 fa 7e 66 78       	vmovq  0x78(%rsi),%xmm4
 254:	c4 e3 5d 38 e4 01    	vinserti128 $0x1,%xmm4,%ymm4,%ymm4
 25a:	c4 e2 5d 00 e3       	vpshufb %ymm3,%ymm4,%ymm4
 25f:	c5 dd db e1          	vpand  %ymm1,%ymm4,%ymm4
 263:	c5 dd d5 e2          	vpmullw %ymm2,%ymm4,%ymm4
 267:	c4 e2 5d 0b e0       	vpmulhrsw %ymm0,%ymm4,%ymm4
 26c:	c5 fe 7f a7 e0 01 00 	vmovdqu %ymm4,0x1e0(%rdi)
 273:	00 
 274:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_decompress_d5_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/poly_mulcache_compute_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_poly_mulcache_compute_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	c5 fd 6f 56 20       	vmovdqa 0x20(%rsi),%ymm2
  17:	c5 fd 6f 5e 60       	vmovdqa 0x60(%rsi),%ymm3
  1c:	c5 fd 6f a2 e0 03 00 	vmovdqa 0x3e0(%rdx),%ymm4
  23:	00 
  24:	c5 fd 6f 8a 60 04 00 	vmovdqa 0x460(%rdx),%ymm1
  2b:	00 
  2c:	c5 f5 d5 ea          	vpmullw %ymm2,%ymm1,%ymm5
  30:	c5 f5 d5 f3          	vpmullw %ymm3,%ymm1,%ymm6
  34:	c5 dd e5 fa          	vpmulhw %ymm2,%ymm4,%ymm7
  38:	c5 5d e5 c3          	vpmulhw %ymm3,%ymm4,%ymm8
  3c:	c5 7d e5 cd          	vpmulhw %ymm5,%ymm0,%ymm9
  40:	c5 7d e5 d6          	vpmulhw %ymm6,%ymm0,%ymm10
  44:	c4 c1 45 f9 f9       	vpsubw %ymm9,%ymm7,%ymm7
  49:	c4 41 3d f9 c2       	vpsubw %ymm10,%ymm8,%ymm8
  4e:	c5 fd 7f 3f          	vmovdqa %ymm7,(%rdi)
  52:	c5 7d 7f 47 20       	vmovdqa %ymm8,0x20(%rdi)
  57:	c5 fd 6f 96 a0 00 00 	vmovdqa 0xa0(%rsi),%ymm2
  5e:	00 
  5f:	c5 fd 6f 9e e0 00 00 	vmovdqa 0xe0(%rsi),%ymm3
  66:	00 
  67:	c5 fd 6f a2 00 04 00 	vmovdqa 0x400(%rdx),%ymm4
  6e:	00 
  6f:	c5 fd 6f 8a 80 04 00 	vmovdqa 0x480(%rdx),%ymm1
  76:	00 
  77:	c5 f5 d5 ea          	vpmullw %ymm2,%ymm1,%ymm5
  7b:	c5 f5 d5 f3          	vpmullw %ymm3,%ymm1,%ymm6
  7f:	c5 dd e5 fa          	vpmulhw %ymm2,%ymm4,%ymm7
  83:	c5 5d e5 c3          	vpmulhw %ymm3,%ymm4,%ymm8
  87:	c5 7d e5 cd          	vpmulhw %ymm5,%ymm0,%ymm9
  8b:	c5 7d e5 d6          	vpmulhw %ymm6,%ymm0,%ymm10
  8f:	c4 c1 45 f9 f9       	vpsubw %ymm9,%ymm7,%ymm7
  94:	c4 41 3d f9 c2       	vpsubw %ymm10,%ymm8,%ymm8
  99:	c5 fd 7f 7f 40       	vmovdqa %ymm7,0x40(%rdi)
  9e:	c5 7d 7f 47 60       	vmovdqa %ymm8,0x60(%rdi)
  a3:	c5 fd 6f 96 20 01 00 	vmovdqa 0x120(%rsi),%ymm2
  aa:	00 
  ab:	c5 fd 6f 9e 60 01 00 	vmovdqa 0x160(%rsi),%ymm3
  b2:	00 
  b3:	c5 fd 6f a2 20 04 00 	vmovdqa 0x420(%rdx),%ymm4
  ba:	00 
  bb:	c5 fd 6f 8a a0 04 00 	vmovdqa 0x4a0(%rdx),%ymm1
  c2:	00 
  c3:	c5 f5 d5 ea          	vpmullw %ymm2,%ymm1,%ymm5
  c7:	c5 f5 d5 f3          	vpmullw %ymm3,%ymm1,%ymm6
  cb:	c5 dd e5 fa          	vpmulhw %ymm2,%ymm4,%ymm7
  cf:	c5 5d e5 c3          	vpmulhw %ymm3,%ymm4,%ymm8
  d3:	c5 7d e5 cd          	vpmulhw %ymm5,%ymm0,%ymm9
  d7:	c5 7d e5 d6          	vpmulhw %ymm6,%ymm0,%ymm10
  db:	c4 c1 45 f9 f9       	vpsubw %ymm9,%ymm7,%ymm7
  e0:	c4 41 3d f9 c2       	vpsubw %ymm10,%ymm8,%ymm8
  e5:	c5 fd 7f bf 80 00 00 	vmovdqa %ymm7,0x80(%rdi)
  ec:	00 
  ed:	c5 7d 7f 87 a0 00 00 	vmovdqa %ymm8,0xa0(%rdi)
  f4:	00 
  f5:	c5 fd 6f 96 a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm2
  fc:	00 
  fd:	c5 fd 6f 9e e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm3
 104:	00 
 105:	c5 fd 6f a2 40 04 00 	vmovdqa 0x440(%rdx),%ymm4
 10c:	00 
 10d:	c5 fd 6f 8a c0 04 00 	vmovdqa 0x4c0(%rdx),%ymm1
 114:	00 
 115:	c5 f5 d5 ea          	vpmullw %ymm2,%ymm1,%ymm5
 119:	c5 f5 d5 f3          	vpmullw %ymm3,%ymm1,%ymm6
 11d:	c5 dd e5 fa          	vpmulhw %ymm2,%ymm4,%ymm7
 121:	c5 5d e5 c3          	vpmulhw %ymm3,%ymm4,%ymm8
 125:	c5 7d e5 cd          	vpmulhw %ymm5,%ymm0,%ymm9
 129:	c5 7d e5 d6          	vpmulhw %ymm6,%ymm0,%ymm10
 12d:	c4 c1 45 f9 f9       	vpsubw %ymm9,%ymm7,%ymm7
 132:	c4 41 3d f9 c2       	vpsubw %ymm10,%ymm8,%ymm8
 137:	c5 fd 7f bf c0 00 00 	vmovdqa %ymm7,0xc0(%rdi)
 13e:	00 
 13f:	c5 7d 7f 87 e0 00 00 	vmovdqa %ymm8,0xe0(%rdi)
 146:	00 
 147:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/polyvec_basemul_acc_montgomery_cached_k2_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/polyvec_basemul_acc_montgomery_cached_k3_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_polyvec_basemul_acc_montgomery_cached_k3_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 01 f3 01 f3       	mov    $0xf301f301,%eax
  17:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  1b:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
  20:	c5 fd 6f 16          	vmovdqa (%rsi),%ymm2
  24:	c5 fd 6f 5e 20       	vmovdqa 0x20(%rsi),%ymm3
  29:	c5 fd 6f 22          	vmovdqa (%rdx),%ymm4
  2d:	c5 fd 6f 6a 20       	vmovdqa 0x20(%rdx),%ymm5
  32:	c5 fd 6f 31          	vmovdqa (%rcx),%ymm6
  36:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
  3a:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
  3e:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
  43:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
  48:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
  4d:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
  52:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
  56:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
  5b:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
  60:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
  65:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
  69:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
  6d:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
  71:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
  75:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
  79:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
  7e:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
  83:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
  88:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
  8c:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
  91:	c5 fd 7f 3f          	vmovdqa %ymm7,(%rdi)
  95:	c5 7d 7f 4f 20       	vmovdqa %ymm9,0x20(%rdi)
  9a:	c5 fd 6f 56 40       	vmovdqa 0x40(%rsi),%ymm2
  9f:	c5 fd 6f 5e 60       	vmovdqa 0x60(%rsi),%ymm3
  a4:	c5 fd 6f 62 40       	vmovdqa 0x40(%rdx),%ymm4
  a9:	c5 fd 6f 6a 60       	vmovdqa 0x60(%rdx),%ymm5
  ae:	c5 fd 6f 71 20       	vmovdqa 0x20(%rcx),%ymm6
  b3:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
  b7:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
  bb:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
  c0:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
  c5:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
  ca:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
  cf:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
  d3:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
  d8:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
  dd:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
  e2:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
  e6:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
  ea:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
  ee:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
  f2:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
  f6:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
  fb:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 100:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 105:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 109:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 10e:	c5 fd 7f 7f 40       	vmovdqa %ymm7,0x40(%rdi)
 113:	c5 7d 7f 4f 60       	vmovdqa %ymm9,0x60(%rdi)
 118:	c5 fd 6f 96 80 00 00 	vmovdqa 0x80(%rsi),%ymm2
 11f:	00 
 120:	c5 fd 6f 9e a0 00 00 	vmovdqa 0xa0(%rsi),%ymm3
 127:	00 
 128:	c5 fd 6f a2 80 00 00 	vmovdqa 0x80(%rdx),%ymm4
 12f:	00 
 130:	c5 fd 6f aa a0 00 00 	vmovdqa 0xa0(%rdx),%ymm5
 137:	00 
 138:	c5 fd 6f 71 40       	vmovdqa 0x40(%rcx),%ymm6
 13d:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 141:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 145:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 14a:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 14f:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 154:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 159:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 15d:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 162:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 167:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 16c:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 170:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 174:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 178:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 17c:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 180:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 185:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 18a:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 18f:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 193:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 198:	c5 fd 7f bf 80 00 00 	vmovdqa %ymm7,0x80(%rdi)
 19f:	00 
 1a0:	c5 7d 7f 8f a0 00 00 	vmovdqa %ymm9,0xa0(%rdi)
 1a7:	00 
 1a8:	c5 fd 6f 96 c0 00 00 	vmovdqa 0xc0(%rsi),%ymm2
 1af:	00 
 1b0:	c5 fd 6f 9e e0 00 00 	vmovdqa 0xe0(%rsi),%ymm3
 1b7:	00 
 1b8:	c5 fd 6f a2 c0 00 00 	vmovdqa 0xc0(%rdx),%ymm4
 1bf:	00 
 1c0:	c5 fd 6f aa e0 00 00 	vmovdqa 0xe0(%rdx),%ymm5
 1c7:	00 
 1c8:	c5 fd 6f 71 60       	vmovdqa 0x60(%rcx),%ymm6
 1cd:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 1d1:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 1d5:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 1da:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 1df:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 1e4:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 1e9:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 1ed:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 1f2:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 1f7:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 1fc:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 200:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 204:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 208:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 20c:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 210:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 215:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 21a:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 21f:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 223:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 228:	c5 fd 7f bf c0 00 00 	vmovdqa %ymm7,0xc0(%rdi)
 22f:	00 
 230:	c5 7d 7f 8f e0 00 00 	vmovdqa %ymm9,0xe0(%rdi)
 237:	00 
 238:	c5 fd 6f 96 00 01 00 	vmovdqa 0x100(%rsi),%ymm2
 23f:	00 
 240:	c5 fd 6f 9e 20 01 00 	vmovdqa 0x120(%rsi),%ymm3
 247:	00 
 248:	c5 fd 6f a2 00 01 00 	vmovdqa 0x100(%rdx),%ymm4
 24f:	00 
 250:	c5 fd 6f aa 20 01 00 	vmovdqa 0x120(%rdx),%ymm5
 257:	00 
 258:	c5 fd 6f b1 80 00 00 	vmovdqa 0x80(%rcx),%ymm6
 25f:	00 
 260:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 264:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 268:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 26d:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 272:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 277:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 27c:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 280:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 285:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 28a:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 28f:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 293:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 297:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 29b:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 29f:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 2a3:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 2a8:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 2ad:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 2b2:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 2b6:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 2bb:	c5 fd 7f bf 00 01 00 	vmovdqa %ymm7,0x100(%rdi)
 2c2:	00 
 2c3:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
 2ca:	00 
 2cb:	c5 fd 6f 96 40 01 00 	vmovdqa 0x140(%rsi),%ymm2
 2d2:	00 
 2d3:	c5 fd 6f 9e 60 01 00 	vmovdqa 0x160(%rsi),%ymm3
 2da:	00 
 2db:	c5 fd 6f a2 40 01 00 	vmovdqa 0x140(%rdx),%ymm4
 2e2:	00 
 2e3:	c5 fd 6f aa 60 01 00 	vmovdqa 0x160(%rdx),%ymm5
 2ea:	00 
 2eb:	c5 fd 6f b1 a0 00 00 	vmovdqa 0xa0(%rcx),%ymm6
 2f2:	00 
 2f3:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 2f7:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 2fb:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 300:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 305:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 30a:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 30f:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 313:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 318:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 31d:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 322:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 326:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 32a:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 32e:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 332:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 336:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 33b:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 340:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 345:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 349:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 34e:	c5 fd 7f bf 40 01 00 	vmovdqa %ymm7,0x140(%rdi)
 355:	00 
 356:	c5 7d 7f 8f 60 01 00 	vmovdqa %ymm9,0x160(%rdi)
 35d:	00 
 35e:	c5 fd 6f 96 80 01 00 	vmovdqa 0x180(%rsi),%ymm2
 365:	00 
 366:	c5 fd 6f 9e a0 01 00 	vmovdqa 0x1a0(%rsi),%ymm3
 36d:	00 
 36e:	c5 fd 6f a2 80 01 00 	vmovdqa 0x180(%rdx),%ymm4
 375:	00 
 376:	c5 fd 6f aa a0 01 00 	vmovdqa 0x1a0(%rdx),%ymm5
 37d:	00 
 37e:	c5 fd 6f b1 c0 00 00 	vmovdqa 0xc0(%rcx),%ymm6
 385:	00 
 386:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 38a:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 38e:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 393:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 398:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 39d:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 3a2:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 3a6:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 3ab:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 3b0:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 3b5:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 3b9:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 3bd:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 3c1:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 3c5:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 3c9:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 3ce:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 3d3:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 3d8:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 3dc:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 3e1:	c5 fd 7f bf 80 01 00 	vmovdqa %ymm7,0x180(%rdi)
 3e8:	00 
 3e9:	c5 7d 7f 8f a0 01 00 	vmovdqa %ymm9,0x1a0(%rdi)
 3f0:	00 
 3f1:	c5 fd 6f 96 c0 01 00 	vmovdqa 0x1c0(%rsi),%ymm2
 3f8:	00 
 3f9:	c5 fd 6f 9e e0 01 00 	vmovdqa 0x1e0(%rsi),%ymm3
 400:	00 
 401:	c5 fd 6f a2 c0 01 00 	vmovdqa 0x1c0(%rdx),%ymm4
 408:	00 
 409:	c5 fd 6f aa e0 01 00 	vmovdqa 0x1e0(%rdx),%ymm5
 410:	00 
 411:	c5 fd 6f b1 e0 00 00 	vmovdqa 0xe0(%rcx),%ymm6
 418:	00 
 419:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 41d:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 421:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 426:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 42b:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 430:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 435:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 439:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 43e:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 443:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 448:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 44c:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 450:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 454:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 458:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 45c:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 461:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 466:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 46b:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 46f:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 474:	c5 fd 7f bf c0 01 00 	vmovdqa %ymm7,0x1c0(%rdi)
 47b:	00 
 47c:	c5 7d 7f 8f e0 01 00 	vmovdqa %ymm9,0x1e0(%rdi)
 483:	00 
 484:	c5 fd 6f 96 00 02 00 	vmovdqa 0x200(%rsi),%ymm2
 48b:	00 
 48c:	c5 fd 6f 9e 20 02 00 	vmovdqa 0x220(%rsi),%ymm3
 493:	00 
 494:	c5 fd 6f a2 00 02 00 	vmovdqa 0x200(%rdx),%ymm4
 49b:	00 
 49c:	c5 fd 6f aa 20 02 00 	vmovdqa 0x220(%rdx),%ymm5
 4a3:	00 
 4a4:	c5 fd 6f b1 00 01 00 	vmovdqa 0x100(%rcx),%ymm6
 4ab:	00 
 4ac:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 4b0:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 4b4:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 4b9:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 4be:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 4c3:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 4c8:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 4cc:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 4d1:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 4d6:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 4db:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 4df:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 4e3:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 4e7:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 4eb:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 4ef:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 4f4:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 4f9:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 4fe:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 502:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 507:	c5 7d 6f 07          	vmovdqa (%rdi),%ymm8
 50b:	c5 7d 6f 57 20       	vmovdqa 0x20(%rdi),%ymm10
 510:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 514:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 519:	c5 fd 7f 3f          	vmovdqa %ymm7,(%rdi)
 51d:	c5 7d 7f 4f 20       	vmovdqa %ymm9,0x20(%rdi)
 522:	c5 fd 6f 96 40 02 00 	vmovdqa 0x240(%rsi),%ymm2
 529:	00 
 52a:	c5 fd 6f 9e 60 02 00 	vmovdqa 0x260(%rsi),%ymm3
 531:	00 
 532:	c5 fd 6f a2 40 02 00 	vmovdqa 0x240(%rdx),%ymm4
 539:	00 
 53a:	c5 fd 6f aa 60 02 00 	vmovdqa 0x260(%rdx),%ymm5
 541:	00 
 542:	c5 fd 6f b1 20 01 00 	vmovdqa 0x120(%rcx),%ymm6
 549:	00 
 54a:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 54e:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 552:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 557:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 55c:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 561:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 566:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 56a:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 56f:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 574:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 579:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 57d:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 581:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 585:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 589:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 58d:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 592:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 597:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 59c:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 5a0:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 5a5:	c5 7d 6f 47 40       	vmovdqa 0x40(%rdi),%ymm8
 5aa:	c5 7d 6f 57 60       	vmovdqa 0x60(%rdi),%ymm10
 5af:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 5b3:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 5b8:	c5 fd 7f 7f 40       	vmovdqa %ymm7,0x40(%rdi)
 5bd:	c5 7d 7f 4f 60       	vmovdqa %ymm9,0x60(%rdi)
 5c2:	c5 fd 6f 96 80 02 00 	vmovdqa 0x280(%rsi),%ymm2
 5c9:	00 
 5ca:	c5 fd 6f 9e a0 02 00 	vmovdqa 0x2a0(%rsi),%ymm3
 5d1:	00 
 5d2:	c5 fd 6f a2 80 02 00 	vmovdqa 0x280(%rdx),%ymm4
 5d9:	00 
 5da:	c5 fd 6f aa a0 02 00 	vmovdqa 0x2a0(%rdx),%ymm5
 5e1:	00 
 5e2:	c5 fd 6f b1 40 01 00 	vmovdqa 0x140(%rcx),%ymm6
 5e9:	00 
 5ea:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 5ee:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 5f2:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 5f7:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 5fc:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 601:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 606:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 60a:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 60f:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 614:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 619:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 61d:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 621:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 625:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 629:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 62d:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 632:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 637:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 63c:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 640:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 645:	c5 7d 6f 87 80 00 00 	vmovdqa 0x80(%rdi),%ymm8
 64c:	00 
 64d:	c5 7d 6f 97 a0 00 00 	vmovdqa 0xa0(%rdi),%ymm10
 654:	00 
 655:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 659:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 65e:	c5 fd 7f bf 80 00 00 	vmovdqa %ymm7,0x80(%rdi)
 665:	00 
 666:	c5 7d 7f 8f a0 00 00 	vmovdqa %ymm9,0xa0(%rdi)
 66d:	00 
 66e:	c5 fd 6f 96 c0 02 00 	vmovdqa 0x2c0(%rsi),%ymm2
 675:	00 
 676:	c5 fd 6f 9e e0 02 00 	vmovdqa 0x2e0(%rsi),%ymm3
 67d:	00 
 67e:	c5 fd 6f a2 c0 02 00 	vmovdqa 0x2c0(%rdx),%ymm4
 685:	00 
 686:	c5 fd 6f aa e0 02 00 	vmovdqa 0x2e0(%rdx),%ymm5
 68d:	00 
 68e:	c5 fd 6f b1 60 01 00 	vmovdqa 0x160(%rcx),%ymm6
 695:	00 
 696:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 69a:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 69e:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 6a3:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 6a8:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 6ad:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 6b2:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 6b6:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 6bb:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 6c0:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 6c5:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 6c9:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 6cd:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 6d1:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 6d5:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 6d9:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 6de:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 6e3:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 6e8:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 6ec:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 6f1:	c5 7d 6f 87 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm8
 6f8:	00 
 6f9:	c5 7d 6f 97 e0 00 00 	vmovdqa 0xe0(%rdi),%ymm10
 700:	00 
 701:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 705:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 70a:	c5 fd 7f bf c0 00 00 	vmovdqa %ymm7,0xc0(%rdi)
 711:	00 
 712:	c5 7d 7f 8f e0 00 00 	vmovdqa %ymm9,0xe0(%rdi)
 719:	00 
 71a:	c5 fd 6f 96 00 03 00 	vmovdqa 0x300(%rsi),%ymm2
 721:	00 
 722:	c5 fd 6f 9e 20 03 00 	vmovdqa 0x320(%rsi),%ymm3
 729:	00 
 72a:	c5 fd 6f a2 00 03 00 	vmovdqa 0x300(%rdx),%ymm4
 731:	00 
 732:	c5 fd 6f aa 20 03 00 	vmovdqa 0x320(%rdx),%ymm5
 739:	00 
 73a:	c5 fd 6f b1 80 01 00 	vmovdqa 0x180(%rcx),%ymm6
 741:	00 
 742:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 746:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 74a:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 74f:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 754:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 759:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 75e:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 762:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 767:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 76c:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 771:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 775:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 779:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 77d:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 781:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 785:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 78a:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 78f:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 794:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 798:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 79d:	c5 7d 6f 87 00 01 00 	vmovdqa 0x100(%rdi),%ymm8
 7a4:	00 
 7a5:	c5 7d 6f 97 20 01 00 	vmovdqa 0x120(%rdi),%ymm10
 7ac:	00 
 7ad:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 7b1:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 7b6:	c5 fd 7f bf 00 01 00 	vmovdqa %ymm7,0x100(%rdi)
 7bd:	00 
 7be:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
 7c5:	00 
 7c6:	c5 fd 6f 96 40 03 00 	vmovdqa 0x340(%rsi),%ymm2
 7cd:	00 
 7ce:	c5 fd 6f 9e 60 03 00 	vmovdqa 0x360(%rsi),%ymm3
 7d5:	00 
 7d6:	c5 fd 6f a2 40 03 00 	vmovdqa 0x340(%rdx),%ymm4
 7dd:	00 
 7de:	c5 fd 6f aa 60 03 00 	vmovdqa 0x360(%rdx),%ymm5
 7e5:	00 
 7e6:	c5 fd 6f b1 a0 01 00 	vmovdqa 0x1a0(%rcx),%ymm6
 7ed:	00 
 7ee:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 7f2:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 7f6:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 7fb:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 800:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 805:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 80a:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 80e:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 813:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 818:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 81d:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 821:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 825:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 829:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 82d:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 831:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 836:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 83b:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 840:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 844:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 849:	c5 7d 6f 87 40 01 00 	vmovdqa 0x140(%rdi),%ymm8
 850:	00 
 851:	c5 7d 6f 97 60 01 00 	vmovdqa 0x160(%rdi),%ymm10
 858:	00 
 859:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 85d:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 862:	c5 fd 7f bf 40 01 00 	vmovdqa %ymm7,0x140(%rdi)
 869:	00 
 86a:	c5 7d 7f 8f 60 01 00 	vmovdqa %ymm9,0x160(%rdi)
 871:	00 
 872:	c5 fd 6f 96 80 03 00 	vmovdqa 0x380(%rsi),%ymm2
 879:	00 
 87a:	c5 fd 6f 9e a0 03 00 	vmovdqa 0x3a0(%rsi),%ymm3
 881:	00 
 882:	c5 fd 6f a2 80 03 00 	vmovdqa 0x380(%rdx),%ymm4
 889:	00 
 88a:	c5 fd 6f aa a0 03 00 	vmovdqa 0x3a0(%rdx),%ymm5
 891:	00 
 892:	c5 fd 6f b1 c0 01 00 	vmovdqa 0x1c0(%rcx),%ymm6
 899:	00 
 89a:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 89e:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 8a2:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 8a7:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 8ac:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 8b1:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 8b6:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 8ba:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 8bf:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 8c4:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 8c9:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 8cd:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 8d1:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 8d5:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 8d9:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 8dd:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 8e2:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 8e7:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 8ec:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 8f0:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 8f5:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 8fc:	00 
 8fd:	c5 7d 6f 97 a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm10
 904:	00 
 905:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 909:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 90e:	c5 fd 7f bf 80 01 00 	vmovdqa %ymm7,0x180(%rdi)
 915:	00 
 916:	c5 7d 7f 8f a0 01 00 	vmovdqa %ymm9,0x1a0(%rdi)
 91d:	00 
 91e:	c5 fd 6f 96 c0 03 00 	vmovdqa 0x3c0(%rsi),%ymm2
 925:	00 
 926:	c5 fd 6f 9e e0 03 00 	vmovdqa 0x3e0(%rsi),%ymm3
 92d:	00 
 92e:	c5 fd 6f a2 c0 03 00 	vmovdqa 0x3c0(%rdx),%ymm4
 935:	00 
 936:	c5 fd 6f aa e0 03 00 	vmovdqa 0x3e0(%rdx),%ymm5
 93d:	00 
 93e:	c5 fd 6f b1 e0 01 00 	vmovdqa 0x1e0(%rcx),%ymm6
 945:	00 
 946:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 94a:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 94e:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 953:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 958:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 95d:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 962:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 966:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 96b:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 970:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 975:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 979:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 97d:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 981:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 985:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 989:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 98e:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 993:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 998:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 99c:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 9a1:	c5 7d 6f 87 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm8
 9a8:	00 
 9a9:	c5 7d 6f 97 e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm10
 9b0:	00 
 9b1:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 9b5:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 9ba:	c5 fd 7f bf c0 01 00 	vmovdqa %ymm7,0x1c0(%rdi)
 9c1:	00 
 9c2:	c5 7d 7f 8f e0 01 00 	vmovdqa %ymm9,0x1e0(%rdi)
 9c9:	00 
 9ca:	c5 fd 6f 96 00 04 00 	vmovdqa 0x400(%rsi),%ymm2
 9d1:	00 
 9d2:	c5 fd 6f 9e 20 04 00 	vmovdqa 0x420(%rsi),%ymm3
 9d9:	00 
 9da:	c5 fd 6f a2 00 04 00 	vmovdqa 0x400(%rdx),%ymm4
 9e1:	00 
 9e2:	c5 fd 6f aa 20 04 00 	vmovdqa 0x420(%rdx),%ymm5
 9e9:	00 
 9ea:	c5 fd 6f b1 00 02 00 	vmovdqa 0x200(%rcx),%ymm6
 9f1:	00 
 9f2:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 9f6:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 9fa:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 9ff:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 a04:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 a09:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 a0e:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 a12:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 a17:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 a1c:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 a21:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 a25:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 a29:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 a2d:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 a31:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 a35:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 a3a:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 a3f:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 a44:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 a48:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 a4d:	c5 7d 6f 07          	vmovdqa (%rdi),%ymm8
 a51:	c5 7d 6f 57 20       	vmovdqa 0x20(%rdi),%ymm10
 a56:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 a5a:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 a5f:	c5 fd 7f 3f          	vmovdqa %ymm7,(%rdi)
 a63:	c5 7d 7f 4f 20       	vmovdqa %ymm9,0x20(%rdi)
 a68:	c5 fd 6f 96 40 04 00 	vmovdqa 0x440(%rsi),%ymm2
 a6f:	00 
 a70:	c5 fd 6f 9e 60 04 00 	vmovdqa 0x460(%rsi),%ymm3
 a77:	00 
 a78:	c5 fd 6f a2 40 04 00 	vmovdqa 0x440(%rdx),%ymm4
 a7f:	00 
 a80:	c5 fd 6f aa 60 04 00 	vmovdqa 0x460(%rdx),%ymm5
 a87:	00 
 a88:	c5 fd 6f b1 20 02 00 	vmovdqa 0x220(%rcx),%ymm6
 a8f:	00 
 a90:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 a94:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 a98:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 a9d:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 aa2:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 aa7:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 aac:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 ab0:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 ab5:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 aba:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 abf:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 ac3:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 ac7:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 acb:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 acf:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 ad3:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 ad8:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 add:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 ae2:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 ae6:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 aeb:	c5 7d 6f 47 40       	vmovdqa 0x40(%rdi),%ymm8
 af0:	c5 7d 6f 57 60       	vmovdqa 0x60(%rdi),%ymm10
 af5:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 af9:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 afe:	c5 fd 7f 7f 40       	vmovdqa %ymm7,0x40(%rdi)
 b03:	c5 7d 7f 4f 60       	vmovdqa %ymm9,0x60(%rdi)
 b08:	c5 fd 6f 96 80 04 00 	vmovdqa 0x480(%rsi),%ymm2
 b0f:	00 
 b10:	c5 fd 6f 9e a0 04 00 	vmovdqa 0x4a0(%rsi),%ymm3
 b17:	00 
 b18:	c5 fd 6f a2 80 04 00 	vmovdqa 0x480(%rdx),%ymm4
 b1f:	00 
 b20:	c5 fd 6f aa a0 04 00 	vmovdqa 0x4a0(%rdx),%ymm5
 b27:	00 
 b28:	c5 fd 6f b1 40 02 00 	vmovdqa 0x240(%rcx),%ymm6
 b2f:	00 
 b30:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 b34:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 b38:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 b3d:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 b42:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 b47:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 b4c:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 b50:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 b55:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 b5a:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 b5f:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 b63:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 b67:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 b6b:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 b6f:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 b73:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 b78:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 b7d:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 b82:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 b86:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 b8b:	c5 7d 6f 87 80 00 00 	vmovdqa 0x80(%rdi),%ymm8
 b92:	00 
 b93:	c5 7d 6f 97 a0 00 00 	vmovdqa 0xa0(%rdi),%ymm10
 b9a:	00 
 b9b:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 b9f:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 ba4:	c5 fd 7f bf 80 00 00 	vmovdqa %ymm7,0x80(%rdi)
 bab:	00 
 bac:	c5 7d 7f 8f a0 00 00 	vmovdqa %ymm9,0xa0(%rdi)
 bb3:	00 
 bb4:	c5 fd 6f 96 c0 04 00 	vmovdqa 0x4c0(%rsi),%ymm2
 bbb:	00 
 bbc:	c5 fd 6f 9e e0 04 00 	vmovdqa 0x4e0(%rsi),%ymm3
 bc3:	00 
 bc4:	c5 fd 6f a2 c0 04 00 	vmovdqa 0x4c0(%rdx),%ymm4
 bcb:	00 
 bcc:	c5 fd 6f aa e0 04 00 	vmovdqa 0x4e0(%rdx),%ymm5
 bd3:	00 
 bd4:	c5 fd 6f b1 60 02 00 	vmovdqa 0x260(%rcx),%ymm6
 bdb:	00 
 bdc:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 be0:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 be4:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 be9:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 bee:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 bf3:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 bf8:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 bfc:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 c01:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 c06:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 c0b:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 c0f:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 c13:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 c17:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 c1b:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 c1f:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 c24:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 c29:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 c2e:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 c32:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 c37:	c5 7d 6f 87 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm8
 c3e:	00 
 c3f:	c5 7d 6f 97 e0 00 00 	vmovdqa 0xe0(%rdi),%ymm10
 c46:	00 
 c47:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 c4b:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 c50:	c5 fd 7f bf c0 00 00 	vmovdqa %ymm7,0xc0(%rdi)
 c57:	00 
 c58:	c5 7d 7f 8f e0 00 00 	vmovdqa %ymm9,0xe0(%rdi)
 c5f:	00 
 c60:	c5 fd 6f 96 00 05 00 	vmovdqa 0x500(%rsi),%ymm2
 c67:	00 
 c68:	c5 fd 6f 9e 20 05 00 	vmovdqa 0x520(%rsi),%ymm3
 c6f:	00 
 c70:	c5 fd 6f a2 00 05 00 	vmovdqa 0x500(%rdx),%ymm4
 c77:	00 
 c78:	c5 fd 6f aa 20 05 00 	vmovdqa 0x520(%rdx),%ymm5
 c7f:	00 
 c80:	c5 fd 6f b1 80 02 00 	vmovdqa 0x280(%rcx),%ymm6
 c87:	00 
 c88:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 c8c:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 c90:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 c95:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 c9a:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 c9f:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 ca4:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 ca8:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 cad:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 cb2:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 cb7:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 cbb:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 cbf:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 cc3:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 cc7:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 ccb:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 cd0:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 cd5:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 cda:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 cde:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 ce3:	c5 7d 6f 87 00 01 00 	vmovdqa 0x100(%rdi),%ymm8
 cea:	00 
 ceb:	c5 7d 6f 97 20 01 00 	vmovdqa 0x120(%rdi),%ymm10
 cf2:	00 
 cf3:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 cf7:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 cfc:	c5 fd 7f bf 00 01 00 	vmovdqa %ymm7,0x100(%rdi)
 d03:	00 
 d04:	c5 7d 7f 8f 20 01 00 	vmovdqa %ymm9,0x120(%rdi)
 d0b:	00 
 d0c:	c5 fd 6f 96 40 05 00 	vmovdqa 0x540(%rsi),%ymm2
 d13:	00 
 d14:	c5 fd 6f 9e 60 05 00 	vmovdqa 0x560(%rsi),%ymm3
 d1b:	00 
 d1c:	c5 fd 6f a2 40 05 00 	vmovdqa 0x540(%rdx),%ymm4
 d23:	00 
 d24:	c5 fd 6f aa 60 05 00 	vmovdqa 0x560(%rdx),%ymm5
 d2b:	00 
 d2c:	c5 fd 6f b1 a0 02 00 	vmovdqa 0x2a0(%rcx),%ymm6
 d33:	00 
 d34:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 d38:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 d3c:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 d41:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 d46:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 d4b:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 d50:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 d54:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 d59:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 d5e:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 d63:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 d67:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 d6b:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 d6f:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 d73:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 d77:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 d7c:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 d81:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 d86:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 d8a:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 d8f:	c5 7d 6f 87 40 01 00 	vmovdqa 0x140(%rdi),%ymm8
 d96:	00 
 d97:	c5 7d 6f 97 60 01 00 	vmovdqa 0x160(%rdi),%ymm10
 d9e:	00 
 d9f:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 da3:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 da8:	c5 fd 7f bf 40 01 00 	vmovdqa %ymm7,0x140(%rdi)
 daf:	00 
 db0:	c5 7d 7f 8f 60 01 00 	vmovdqa %ymm9,0x160(%rdi)
 db7:	00 
 db8:	c5 fd 6f 96 80 05 00 	vmovdqa 0x580(%rsi),%ymm2
 dbf:	00 
 dc0:	c5 fd 6f 9e a0 05 00 	vmovdqa 0x5a0(%rsi),%ymm3
 dc7:	00 
 dc8:	c5 fd 6f a2 80 05 00 	vmovdqa 0x580(%rdx),%ymm4
 dcf:	00 
 dd0:	c5 fd 6f aa a0 05 00 	vmovdqa 0x5a0(%rdx),%ymm5
 dd7:	00 
 dd8:	c5 fd 6f b1 c0 02 00 	vmovdqa 0x2c0(%rcx),%ymm6
 ddf:	00 
 de0:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 de4:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 de8:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 ded:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 df2:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 df7:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 dfc:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 e00:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 e05:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 e0a:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 e0f:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 e13:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 e17:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 e1b:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 e1f:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 e23:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 e28:	c4 41 15 f9 c0       	vpsubw %ymm8,%ymm13,%ymm8
 e2d:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 e32:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 e36:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 e3b:	c5 7d 6f 87 80 01 00 	vmovdqa 0x180(%rdi),%ymm8
 e42:	00 
 e43:	c5 7d 6f 97 a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm10
 e4a:	00 
 e4b:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 e4f:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 e54:	c5 fd 7f bf 80 01 00 	vmovdqa %ymm7,0x180(%rdi)
 e5b:	00 
 e5c:	c5 7d 7f 8f a0 01 00 	vmovdqa %ymm9,0x1a0(%rdi)
 e63:	00 
 e64:	c5 fd 6f 96 c0 05 00 	vmovdqa 0x5c0(%rsi),%ymm2
 e6b:	00 
 e6c:	c5 fd 6f 9e e0 05 00 	vmovdqa 0x5e0(%rsi),%ymm3
 e73:	00 
 e74:	c5 fd 6f a2 c0 05 00 	vmovdqa 0x5c0(%rdx),%ymm4
 e7b:	00 
 e7c:	c5 fd 6f aa e0 05 00 	vmovdqa 0x5e0(%rdx),%ymm5
 e83:	00 
 e84:	c5 fd 6f b1 e0 02 00 	vmovdqa 0x2e0(%rcx),%ymm6
 e8b:	00 
 e8c:	c5 75 d5 ea          	vpmullw %ymm2,%ymm1,%ymm13
 e90:	c5 75 d5 f3          	vpmullw %ymm3,%ymm1,%ymm14
 e94:	c4 c1 5d d5 fd       	vpmullw %ymm13,%ymm4,%ymm7
 e99:	c4 41 55 d5 cd       	vpmullw %ymm13,%ymm5,%ymm9
 e9e:	c4 41 4d d5 c6       	vpmullw %ymm14,%ymm6,%ymm8
 ea3:	c4 41 5d d5 d6       	vpmullw %ymm14,%ymm4,%ymm10
 ea8:	c5 fd e5 ff          	vpmulhw %ymm7,%ymm0,%ymm7
 eac:	c4 41 7d e5 c9       	vpmulhw %ymm9,%ymm0,%ymm9
 eb1:	c4 41 7d e5 c0       	vpmulhw %ymm8,%ymm0,%ymm8
 eb6:	c4 41 7d e5 d2       	vpmulhw %ymm10,%ymm0,%ymm10
 ebb:	c5 5d e5 da          	vpmulhw %ymm2,%ymm4,%ymm11
 ebf:	c5 55 e5 e2          	vpmulhw %ymm2,%ymm5,%ymm12
 ec3:	c5 4d e5 eb          	vpmulhw %ymm3,%ymm6,%ymm13
 ec7:	c5 5d e5 f3          	vpmulhw %ymm3,%ymm4,%ymm14
 ecb:	c5 a5 f9 ff          	vpsubw %ymm7,%ymm11,%ymm7
 ecf:	c4 41 1d f9 c9       	vpsubw %ymm9,%ymm12,%ymm9
 ed4:	c4 41 3d f9 c5       	vpsubw %ymm13,%ymm8,%ymm8
 ed9:	c4 41 0d f9 d2       	vpsubw %ymm10,%ymm14,%ymm10
 ede:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 ee2:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 ee7:	c5 7d 6f 87 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm8
 eee:	00 
 eef:	c5 7d 6f 97 e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm10
 ef6:	00 
 ef7:	c5 bd fd ff          	vpaddw %ymm7,%ymm8,%ymm7
 efb:	c4 41 2d fd c9       	vpaddw %ymm9,%ymm10,%ymm9
 f00:	c5 fd 7f bf c0 01 00 	vmovdqa %ymm7,0x1c0(%rdi)
 f07:	00 
 f08:	c5 7d 7f 8f e0 01 00 	vmovdqa %ymm9,0x1e0(%rdi)
 f0f:	00 
 f10:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/polyvec_basemul_acc_montgomery_cached_k4_avx2_asm.S.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/reduce_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_reduce_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 bf 4e bf 4e       	mov    $0x4ebf4ebf,%eax
  17:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  1b:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
  20:	c5 fd 6f 17          	vmovdqa (%rdi),%ymm2
  24:	c5 fd 6f 5f 20       	vmovdqa 0x20(%rdi),%ymm3
  29:	c5 fd 6f 67 40       	vmovdqa 0x40(%rdi),%ymm4
  2e:	c5 fd 6f 6f 60       	vmovdqa 0x60(%rdi),%ymm5
  33:	c5 fd 6f b7 80 00 00 	vmovdqa 0x80(%rdi),%ymm6
  3a:	00 
  3b:	c5 fd 6f bf a0 00 00 	vmovdqa 0xa0(%rdi),%ymm7
  42:	00 
  43:	c5 7d 6f 87 c0 00 00 	vmovdqa 0xc0(%rdi),%ymm8
  4a:	00 
  4b:	c5 7d 6f 8f e0 00 00 	vmovdqa 0xe0(%rdi),%ymm9
  52:	00 
  53:	c5 6d e5 e1          	vpmulhw %ymm1,%ymm2,%ymm12
  57:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  5d:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  61:	c4 c1 6d f9 d4       	vpsubw %ymm12,%ymm2,%ymm2
  66:	c5 65 e5 e1          	vpmulhw %ymm1,%ymm3,%ymm12
  6a:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  70:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  74:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
  79:	c5 5d e5 e1          	vpmulhw %ymm1,%ymm4,%ymm12
  7d:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  83:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  87:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
  8c:	c5 55 e5 e1          	vpmulhw %ymm1,%ymm5,%ymm12
  90:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  96:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  9a:	c4 c1 55 f9 ec       	vpsubw %ymm12,%ymm5,%ymm5
  9f:	c5 4d e5 e1          	vpmulhw %ymm1,%ymm6,%ymm12
  a3:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  a9:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  ad:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
  b2:	c5 45 e5 e1          	vpmulhw %ymm1,%ymm7,%ymm12
  b6:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  bc:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  c0:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
  c5:	c5 3d e5 e1          	vpmulhw %ymm1,%ymm8,%ymm12
  c9:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  cf:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  d3:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
  d8:	c5 35 e5 e1          	vpmulhw %ymm1,%ymm9,%ymm12
  dc:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
  e2:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
  e6:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
  eb:	c5 ed f9 d0          	vpsubw %ymm0,%ymm2,%ymm2
  ef:	c5 9d 71 e2 0f       	vpsraw $0xf,%ymm2,%ymm12
  f4:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
  f8:	c4 c1 6d fd d4       	vpaddw %ymm12,%ymm2,%ymm2
  fd:	c5 e5 f9 d8          	vpsubw %ymm0,%ymm3,%ymm3
 101:	c5 9d 71 e3 0f       	vpsraw $0xf,%ymm3,%ymm12
 106:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 10a:	c4 c1 65 fd dc       	vpaddw %ymm12,%ymm3,%ymm3
 10f:	c5 dd f9 e0          	vpsubw %ymm0,%ymm4,%ymm4
 113:	c5 9d 71 e4 0f       	vpsraw $0xf,%ymm4,%ymm12
 118:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 11c:	c4 c1 5d fd e4       	vpaddw %ymm12,%ymm4,%ymm4
 121:	c5 d5 f9 e8          	vpsubw %ymm0,%ymm5,%ymm5
 125:	c5 9d 71 e5 0f       	vpsraw $0xf,%ymm5,%ymm12
 12a:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 12e:	c4 c1 55 fd ec       	vpaddw %ymm12,%ymm5,%ymm5
 133:	c5 cd f9 f0          	vpsubw %ymm0,%ymm6,%ymm6
 137:	c5 9d 71 e6 0f       	vpsraw $0xf,%ymm6,%ymm12
 13c:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 140:	c4 c1 4d fd f4       	vpaddw %ymm12,%ymm6,%ymm6
 145:	c5 c5 f9 f8          	vpsubw %ymm0,%ymm7,%ymm7
 149:	c5 9d 71 e7 0f       	vpsraw $0xf,%ymm7,%ymm12
 14e:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 152:	c4 c1 45 fd fc       	vpaddw %ymm12,%ymm7,%ymm7
 157:	c5 3d f9 c0          	vpsubw %ymm0,%ymm8,%ymm8
 15b:	c4 c1 1d 71 e0 0f    	vpsraw $0xf,%ymm8,%ymm12
 161:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 165:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
 16a:	c5 35 f9 c8          	vpsubw %ymm0,%ymm9,%ymm9
 16e:	c4 c1 1d 71 e1 0f    	vpsraw $0xf,%ymm9,%ymm12
 174:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 178:	c4 41 35 fd cc       	vpaddw %ymm12,%ymm9,%ymm9
 17d:	c5 fd 7f 17          	vmovdqa %ymm2,(%rdi)
 181:	c5 fd 7f 5f 20       	vmovdqa %ymm3,0x20(%rdi)
 186:	c5 fd 7f 67 40       	vmovdqa %ymm4,0x40(%rdi)
 18b:	c5 fd 7f 6f 60       	vmovdqa %ymm5,0x60(%rdi)
 190:	c5 fd 7f b7 80 00 00 	vmovdqa %ymm6,0x80(%rdi)
 197:	00 
 198:	c5 fd 7f bf a0 00 00 	vmovdqa %ymm7,0xa0(%rdi)
 19f:	00 
 1a0:	c5 7d 7f 87 c0 00 00 	vmovdqa %ymm8,0xc0(%rdi)
 1a7:	00 
 1a8:	c5 7d 7f 8f e0 00 00 	vmovdqa %ymm9,0xe0(%rdi)
 1af:	00 
 1b0:	c5 fd 6f 97 00 01 00 	vmovdqa 0x100(%rdi),%ymm2
 1b7:	00 
 1b8:	c5 fd 6f 9f 20 01 00 	vmovdqa 0x120(%rdi),%ymm3
 1bf:	00 
 1c0:	c5 fd 6f a7 40 01 00 	vmovdqa 0x140(%rdi),%ymm4
 1c7:	00 
 1c8:	c5 fd 6f af 60 01 00 	vmovdqa 0x160(%rdi),%ymm5
 1cf:	00 
 1d0:	c5 fd 6f b7 80 01 00 	vmovdqa 0x180(%rdi),%ymm6
 1d7:	00 
 1d8:	c5 fd 6f bf a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm7
 1df:	00 
 1e0:	c5 7d 6f 87 c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm8
 1e7:	00 
 1e8:	c5 7d 6f 8f e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm9
 1ef:	00 
 1f0:	c5 6d e5 e1          	vpmulhw %ymm1,%ymm2,%ymm12
 1f4:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 1fa:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 1fe:	c4 c1 6d f9 d4       	vpsubw %ymm12,%ymm2,%ymm2
 203:	c5 65 e5 e1          	vpmulhw %ymm1,%ymm3,%ymm12
 207:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 20d:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 211:	c4 c1 65 f9 dc       	vpsubw %ymm12,%ymm3,%ymm3
 216:	c5 5d e5 e1          	vpmulhw %ymm1,%ymm4,%ymm12
 21a:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 220:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 224:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 229:	c5 55 e5 e1          	vpmulhw %ymm1,%ymm5,%ymm12
 22d:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 233:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 237:	c4 c1 55 f9 ec       	vpsubw %ymm12,%ymm5,%ymm5
 23c:	c5 4d e5 e1          	vpmulhw %ymm1,%ymm6,%ymm12
 240:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 246:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 24a:	c4 c1 4d f9 f4       	vpsubw %ymm12,%ymm6,%ymm6
 24f:	c5 45 e5 e1          	vpmulhw %ymm1,%ymm7,%ymm12
 253:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 259:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 25d:	c4 c1 45 f9 fc       	vpsubw %ymm12,%ymm7,%ymm7
 262:	c5 3d e5 e1          	vpmulhw %ymm1,%ymm8,%ymm12
 266:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 26c:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 270:	c4 41 3d f9 c4       	vpsubw %ymm12,%ymm8,%ymm8
 275:	c5 35 e5 e1          	vpmulhw %ymm1,%ymm9,%ymm12
 279:	c4 c1 1d 71 e4 0a    	vpsraw $0xa,%ymm12,%ymm12
 27f:	c5 1d d5 e0          	vpmullw %ymm0,%ymm12,%ymm12
 283:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
 288:	c5 ed f9 d0          	vpsubw %ymm0,%ymm2,%ymm2
 28c:	c5 9d 71 e2 0f       	vpsraw $0xf,%ymm2,%ymm12
 291:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 295:	c4 c1 6d fd d4       	vpaddw %ymm12,%ymm2,%ymm2
 29a:	c5 e5 f9 d8          	vpsubw %ymm0,%ymm3,%ymm3
 29e:	c5 9d 71 e3 0f       	vpsraw $0xf,%ymm3,%ymm12
 2a3:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2a7:	c4 c1 65 fd dc       	vpaddw %ymm12,%ymm3,%ymm3
 2ac:	c5 dd f9 e0          	vpsubw %ymm0,%ymm4,%ymm4
 2b0:	c5 9d 71 e4 0f       	vpsraw $0xf,%ymm4,%ymm12
 2b5:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2b9:	c4 c1 5d fd e4       	vpaddw %ymm12,%ymm4,%ymm4
 2be:	c5 d5 f9 e8          	vpsubw %ymm0,%ymm5,%ymm5
 2c2:	c5 9d 71 e5 0f       	vpsraw $0xf,%ymm5,%ymm12
 2c7:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2cb:	c4 c1 55 fd ec       	vpaddw %ymm12,%ymm5,%ymm5
 2d0:	c5 cd f9 f0          	vpsubw %ymm0,%ymm6,%ymm6
 2d4:	c5 9d 71 e6 0f       	vpsraw $0xf,%ymm6,%ymm12
 2d9:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2dd:	c4 c1 4d fd f4       	vpaddw %ymm12,%ymm6,%ymm6
 2e2:	c5 c5 f9 f8          	vpsubw %ymm0,%ymm7,%ymm7
 2e6:	c5 9d 71 e7 0f       	vpsraw $0xf,%ymm7,%ymm12
 2eb:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 2ef:	c4 c1 45 fd fc       	vpaddw %ymm12,%ymm7,%ymm7
 2f4:	c5 3d f9 c0          	vpsubw %ymm0,%ymm8,%ymm8
 2f8:	c4 c1 1d 71 e0 0f    	vpsraw $0xf,%ymm8,%ymm12
 2fe:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 302:	c4 41 3d fd c4       	vpaddw %ymm12,%ymm8,%ymm8
 307:	c5 35 f9 c8          	vpsubw %ymm0,%ymm9,%ymm9
 30b:	c4 c1 1d 71 e1 0f    	vpsraw $0xf,%ymm9,%ymm12
 311:	c5 1d db e0          	vpand  %ymm0,%ymm12,%ymm12
 315:	c4 41 35 fd cc       	vpaddw %ymm12,%ymm9,%ymm9
 31a:	c5 fd 7f 97 00 01 00 	vmovdqa %ymm2,0x100(%rdi)
 321:	00 
 322:	c5 fd 7f 9f 20 01 00 	vmovdqa %ymm3,0x120(%rdi)
 329:	00 
 32a:	c5 fd 7f a7 40 01 00 	vmovdqa %ymm4,0x140(%rdi)
 331:	00 
 332:	c5 fd 7f af 60 01 00 	vmovdqa %ymm5,0x160(%rdi)
 339:	00 
 33a:	c5 fd 7f b7 80 01 00 	vmovdqa %ymm6,0x180(%rdi)
 341:	00 
 342:	c5 fd 7f bf a0 01 00 	vmovdqa %ymm7,0x1a0(%rdi)
 349:	00 
 34a:	c5 7d 7f 87 c0 01 00 	vmovdqa %ymm8,0x1c0(%rdi)
 351:	00 
 352:	c5 7d 7f 8f e0 01 00 	vmovdqa %ymm9,0x1e0(%rdi)
 359:	00 
 35a:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/rej_uniform_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_rej_uniform_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
   b:	31 c0                	xor    %eax,%eax
   d:	48 85 d2             	test   %rdx,%rdx
  10:	0f 84 e6 00 00 00    	je     fc <Lrej_uniform_asm_end>
  16:	48 b8 01 0d 01 0d 01 	movabs $0xd010d010d010d01,%rax
  1d:	0d 01 0d 
  20:	66 48 0f 6e c0       	movq   %rax,%xmm0
  25:	66 48 0f 3a 22 c0 01 	pinsrq $0x1,%rax,%xmm0
  2c:	48 b8 ff 0f ff 0f ff 	movabs $0xfff0fff0fff0fff,%rax
  33:	0f ff 0f 
  36:	66 48 0f 6e e8       	movq   %rax,%xmm5
  3b:	66 48 0f 3a 22 e8 01 	pinsrq $0x1,%rax,%xmm5
  42:	48 b8 00 01 01 02 03 	movabs $0x504040302010100,%rax
  49:	04 04 05 
  4c:	66 48 0f 6e e0       	movq   %rax,%xmm4
  51:	48 b8 06 07 07 08 09 	movabs $0xb0a0a0908070706,%rax
  58:	0a 0a 0b 
  5b:	66 48 0f 3a 22 e0 01 	pinsrq $0x1,%rax,%xmm4
  62:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
  69:	49 c7 c0 00 00 00 00 	mov    $0x0,%r8
  70:	49 c7 c1 55 55 00 00 	mov    $0x5555,%r9

0000000000000077 <Lrej_uniform_asm_loop_start>:
  77:	f3 42 0f 7e 14 06    	movq   (%rsi,%r8,1),%xmm2
  7d:	66 42 0f 3a 22 54 06 	pinsrd $0x2,0x8(%rsi,%r8,1),%xmm2
  84:	08 02 
  86:	66 0f 38 00 d4       	pshufb %xmm4,%xmm2
  8b:	66 0f 6f da          	movdqa %xmm2,%xmm3
  8f:	66 0f 71 d3 04       	psrlw  $0x4,%xmm3
  94:	66 0f 3a 0e d3 aa    	pblendw $0xaa,%xmm3,%xmm2
  9a:	66 0f db d5          	pand   %xmm5,%xmm2
  9e:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  a2:	66 0f 65 ca          	pcmpgtw %xmm2,%xmm1
  a6:	66 44 0f d7 d9       	pmovmskb %xmm1,%r11d
  ab:	c4 42 a2 f5 d9       	pext   %r9,%r11,%r11
  b0:	4d 89 da             	mov    %r11,%r10
  b3:	49 c1 e2 04          	shl    $0x4,%r10
  b7:	f3 42 0f 6f 1c 11    	movdqu (%rcx,%r10,1),%xmm3
  bd:	66 0f 38 00 d3       	pshufb %xmm3,%xmm2
  c2:	f3 0f 7f 14 44       	movdqu %xmm2,(%rsp,%rax,2)
  c7:	f3 4d 0f b8 db       	popcnt %r11,%r11
  cc:	4c 01 d8             	add    %r11,%rax
  cf:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  d5:	73 09                	jae    e0 <Lrej_uniform_asm_final_copy>
  d7:	49 83 c0 0c          	add    $0xc,%r8
  db:	4c 39 c2             	cmp    %r8,%rdx
  de:	77 97                	ja     77 <Lrej_uniform_asm_loop_start>

00000000000000e0 <Lrej_uniform_asm_final_copy>:
  e0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx
  e7:	48 3d 00 01 00 00    	cmp    $0x100,%rax
  ed:	48 0f 47 c1          	cmova  %rcx,%rax
  f1:	48 89 e6             	mov    %rsp,%rsi
  f4:	48 89 c1             	mov    %rax,%rcx
  f7:	48 d1 e1             	shl    $1,%rcx
  fa:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)

00000000000000fc <Lrej_uniform_asm_end>:
  fc:	48 81 c4 10 02 00 00 	add    $0x210,%rsp
 103:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/rej_uniform_table.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_x86_64.dir/mlkem-native_ml-kem-768_x86_64/mlkem/src/native/x86_64/src/tomont_avx2_asm.S.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_X86_64_tomont_avx2_asm>:
   0:	f3 0f 1e fa          	endbr64
   4:	b8 01 0d 01 0d       	mov    $0xd010d01,%eax
   9:	c5 f9 6e c0          	vmovd  %eax,%xmm0
   d:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
  12:	b8 49 50 49 50       	mov    $0x50495049,%eax
  17:	c5 f9 6e c8          	vmovd  %eax,%xmm1
  1b:	c4 e2 7d 58 c9       	vpbroadcastd %xmm1,%ymm1
  20:	b8 49 05 49 05       	mov    $0x5490549,%eax
  25:	c5 f9 6e d0          	vmovd  %eax,%xmm2
  29:	c4 e2 7d 58 d2       	vpbroadcastd %xmm2,%ymm2
  2e:	c5 fd 6f 1f          	vmovdqa (%rdi),%ymm3
  32:	c5 fd 6f 67 20       	vmovdqa 0x20(%rdi),%ymm4
  37:	c5 fd 6f 6f 40       	vmovdqa 0x40(%rdi),%ymm5
  3c:	c5 fd 6f 77 60       	vmovdqa 0x60(%rdi),%ymm6
  41:	c5 fd 6f bf 80 00 00 	vmovdqa 0x80(%rdi),%ymm7
  48:	00 
  49:	c5 7d 6f 87 a0 00 00 	vmovdqa 0xa0(%rdi),%ymm8
  50:	00 
  51:	c5 7d 6f 8f c0 00 00 	vmovdqa 0xc0(%rdi),%ymm9
  58:	00 
  59:	c5 7d 6f 97 e0 00 00 	vmovdqa 0xe0(%rdi),%ymm10
  60:	00 
  61:	c5 65 d5 d9          	vpmullw %ymm1,%ymm3,%ymm11
  65:	c5 e5 e5 da          	vpmulhw %ymm2,%ymm3,%ymm3
  69:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
  6d:	c4 c1 65 f9 db       	vpsubw %ymm11,%ymm3,%ymm3
  72:	c5 5d d5 e1          	vpmullw %ymm1,%ymm4,%ymm12
  76:	c5 dd e5 e2          	vpmulhw %ymm2,%ymm4,%ymm4
  7a:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  7e:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
  83:	c5 55 d5 e9          	vpmullw %ymm1,%ymm5,%ymm13
  87:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
  8b:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
  8f:	c4 c1 55 f9 ed       	vpsubw %ymm13,%ymm5,%ymm5
  94:	c5 4d d5 f1          	vpmullw %ymm1,%ymm6,%ymm14
  98:	c5 cd e5 f2          	vpmulhw %ymm2,%ymm6,%ymm6
  9c:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
  a0:	c4 c1 4d f9 f6       	vpsubw %ymm14,%ymm6,%ymm6
  a5:	c5 45 d5 f9          	vpmullw %ymm1,%ymm7,%ymm15
  a9:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
  ad:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
  b1:	c4 c1 45 f9 ff       	vpsubw %ymm15,%ymm7,%ymm7
  b6:	c5 3d d5 d9          	vpmullw %ymm1,%ymm8,%ymm11
  ba:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
  be:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
  c2:	c4 41 3d f9 c3       	vpsubw %ymm11,%ymm8,%ymm8
  c7:	c5 35 d5 e1          	vpmullw %ymm1,%ymm9,%ymm12
  cb:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
  cf:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
  d3:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
  d8:	c5 2d d5 e9          	vpmullw %ymm1,%ymm10,%ymm13
  dc:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
  e0:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
  e4:	c4 41 2d f9 d5       	vpsubw %ymm13,%ymm10,%ymm10
  e9:	c5 fd 7f 1f          	vmovdqa %ymm3,(%rdi)
  ed:	c5 fd 7f 67 20       	vmovdqa %ymm4,0x20(%rdi)
  f2:	c5 fd 7f 6f 40       	vmovdqa %ymm5,0x40(%rdi)
  f7:	c5 fd 7f 77 60       	vmovdqa %ymm6,0x60(%rdi)
  fc:	c5 fd 7f bf 80 00 00 	vmovdqa %ymm7,0x80(%rdi)
 103:	00 
 104:	c5 7d 7f 87 a0 00 00 	vmovdqa %ymm8,0xa0(%rdi)
 10b:	00 
 10c:	c5 7d 7f 8f c0 00 00 	vmovdqa %ymm9,0xc0(%rdi)
 113:	00 
 114:	c5 7d 7f 97 e0 00 00 	vmovdqa %ymm10,0xe0(%rdi)
 11b:	00 
 11c:	c5 fd 6f 9f 00 01 00 	vmovdqa 0x100(%rdi),%ymm3
 123:	00 
 124:	c5 fd 6f a7 20 01 00 	vmovdqa 0x120(%rdi),%ymm4
 12b:	00 
 12c:	c5 fd 6f af 40 01 00 	vmovdqa 0x140(%rdi),%ymm5
 133:	00 
 134:	c5 fd 6f b7 60 01 00 	vmovdqa 0x160(%rdi),%ymm6
 13b:	00 
 13c:	c5 fd 6f bf 80 01 00 	vmovdqa 0x180(%rdi),%ymm7
 143:	00 
 144:	c5 7d 6f 87 a0 01 00 	vmovdqa 0x1a0(%rdi),%ymm8
 14b:	00 
 14c:	c5 7d 6f 8f c0 01 00 	vmovdqa 0x1c0(%rdi),%ymm9
 153:	00 
 154:	c5 7d 6f 97 e0 01 00 	vmovdqa 0x1e0(%rdi),%ymm10
 15b:	00 
 15c:	c5 65 d5 d9          	vpmullw %ymm1,%ymm3,%ymm11
 160:	c5 e5 e5 da          	vpmulhw %ymm2,%ymm3,%ymm3
 164:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 168:	c4 c1 65 f9 db       	vpsubw %ymm11,%ymm3,%ymm3
 16d:	c5 5d d5 e1          	vpmullw %ymm1,%ymm4,%ymm12
 171:	c5 dd e5 e2          	vpmulhw %ymm2,%ymm4,%ymm4
 175:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 179:	c4 c1 5d f9 e4       	vpsubw %ymm12,%ymm4,%ymm4
 17e:	c5 55 d5 e9          	vpmullw %ymm1,%ymm5,%ymm13
 182:	c5 d5 e5 ea          	vpmulhw %ymm2,%ymm5,%ymm5
 186:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 18a:	c4 c1 55 f9 ed       	vpsubw %ymm13,%ymm5,%ymm5
 18f:	c5 4d d5 f1          	vpmullw %ymm1,%ymm6,%ymm14
 193:	c5 cd e5 f2          	vpmulhw %ymm2,%ymm6,%ymm6
 197:	c5 0d e5 f0          	vpmulhw %ymm0,%ymm14,%ymm14
 19b:	c4 c1 4d f9 f6       	vpsubw %ymm14,%ymm6,%ymm6
 1a0:	c5 45 d5 f9          	vpmullw %ymm1,%ymm7,%ymm15
 1a4:	c5 c5 e5 fa          	vpmulhw %ymm2,%ymm7,%ymm7
 1a8:	c5 05 e5 f8          	vpmulhw %ymm0,%ymm15,%ymm15
 1ac:	c4 c1 45 f9 ff       	vpsubw %ymm15,%ymm7,%ymm7
 1b1:	c5 3d d5 d9          	vpmullw %ymm1,%ymm8,%ymm11
 1b5:	c5 3d e5 c2          	vpmulhw %ymm2,%ymm8,%ymm8
 1b9:	c5 25 e5 d8          	vpmulhw %ymm0,%ymm11,%ymm11
 1bd:	c4 41 3d f9 c3       	vpsubw %ymm11,%ymm8,%ymm8
 1c2:	c5 35 d5 e1          	vpmullw %ymm1,%ymm9,%ymm12
 1c6:	c5 35 e5 ca          	vpmulhw %ymm2,%ymm9,%ymm9
 1ca:	c5 1d e5 e0          	vpmulhw %ymm0,%ymm12,%ymm12
 1ce:	c4 41 35 f9 cc       	vpsubw %ymm12,%ymm9,%ymm9
 1d3:	c5 2d d5 e9          	vpmullw %ymm1,%ymm10,%ymm13
 1d7:	c5 2d e5 d2          	vpmulhw %ymm2,%ymm10,%ymm10
 1db:	c5 15 e5 e8          	vpmulhw %ymm0,%ymm13,%ymm13
 1df:	c4 41 2d f9 d5       	vpsubw %ymm13,%ymm10,%ymm10
 1e4:	c5 fd 7f 9f 00 01 00 	vmovdqa %ymm3,0x100(%rdi)
 1eb:	00 
 1ec:	c5 fd 7f a7 20 01 00 	vmovdqa %ymm4,0x120(%rdi)
 1f3:	00 
 1f4:	c5 fd 7f af 40 01 00 	vmovdqa %ymm5,0x140(%rdi)
 1fb:	00 
 1fc:	c5 fd 7f b7 60 01 00 	vmovdqa %ymm6,0x160(%rdi)
 203:	00 
 204:	c5 fd 7f bf 80 01 00 	vmovdqa %ymm7,0x180(%rdi)
 20b:	00 
 20c:	c5 7d 7f 87 a0 01 00 	vmovdqa %ymm8,0x1a0(%rdi)
 213:	00 
 214:	c5 7d 7f 8f c0 01 00 	vmovdqa %ymm9,0x1c0(%rdi)
 21b:	00 
 21c:	c5 7d 7f 97 e0 01 00 	vmovdqa %ymm10,0x1e0(%rdi)
 223:	00 
 224:	c3                   	ret
