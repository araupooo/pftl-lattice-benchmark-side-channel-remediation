
<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/compress.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8d 87 80 00 00 00 	lea    0x80(%rdi),%rax
   b:	55                   	push   %rbp
   c:	49 89 f8             	mov    %rdi,%r8
   f:	48 89 f2             	mov    %rsi,%rdx
  12:	53                   	push   %rbx
  13:	48 8d 9e 00 02 00 00 	lea    0x200(%rsi),%rbx
  1a:	48 39 c6             	cmp    %rax,%rsi
  1d:	73 09                	jae    28 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x28>
  1f:	48 39 df             	cmp    %rbx,%rdi
  22:	0f 82 70 03 00 00    	jb     398 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x398>
  28:	66 0f 6f 1d 00 00 00 	movdqa 0x0(%rip),%xmm3        # 30 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x30>
  2f:	00 
  30:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 38 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x38>
  37:	00 
  38:	66 0f ef e4          	pxor   %xmm4,%xmm4
  3c:	0f 1f 40 00          	nopl   0x0(%rax)
  40:	66 0f 6f 0a          	movdqa (%rdx),%xmm1
  44:	66 44 0f 6f 52 10    	movdqa 0x10(%rdx),%xmm10
  4a:	48 83 c2 40          	add    $0x40,%rdx
  4e:	49 83 c0 10          	add    $0x10,%r8
  52:	66 0f 6f 7a e0       	movdqa -0x20(%rdx),%xmm7
  57:	66 44 0f 6f 42 f0    	movdqa -0x10(%rdx),%xmm8
  5d:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  61:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
  66:	66 41 0f 61 ca       	punpcklwd %xmm10,%xmm1
  6b:	66 41 0f 61 d2       	punpcklwd %xmm10,%xmm2
  70:	66 45 0f 69 ca       	punpckhwd %xmm10,%xmm9
  75:	66 0f 6f c7          	movdqa %xmm7,%xmm0
  79:	66 44 0f 6f e2       	movdqa %xmm2,%xmm12
  7e:	66 0f 6f f7          	movdqa %xmm7,%xmm6
  82:	66 41 0f 61 c9       	punpcklwd %xmm9,%xmm1
  87:	66 45 0f 69 e1       	punpckhwd %xmm9,%xmm12
  8c:	66 41 0f 69 c0       	punpckhwd %xmm8,%xmm0
  91:	66 41 0f 61 f0       	punpcklwd %xmm8,%xmm6
  96:	66 41 0f 69 cc       	punpckhwd %xmm12,%xmm1
  9b:	66 41 0f 61 f8       	punpcklwd %xmm8,%xmm7
  a0:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
  a5:	66 44 0f 65 c1       	pcmpgtw %xmm1,%xmm8
  aa:	66 41 0f 61 d1       	punpcklwd %xmm9,%xmm2
  af:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
  b4:	66 44 0f 6f de       	movdqa %xmm6,%xmm11
  b9:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
  bd:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
  c1:	66 44 0f 69 d8       	punpckhwd %xmm0,%xmm11
  c6:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
  cb:	66 45 0f 61 c8       	punpcklwd %xmm8,%xmm9
  d0:	66 41 0f 69 c8       	punpckhwd %xmm8,%xmm1
  d5:	66 41 0f 69 fb       	punpckhwd %xmm11,%xmm7
  da:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
  df:	66 41 0f 61 f3       	punpcklwd %xmm11,%xmm6
  e4:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
  e9:	66 41 0f fa c1       	psubd  %xmm9,%xmm0
  ee:	66 0f 72 f0 08       	pslld  $0x8,%xmm0
  f3:	66 41 0f fa c1       	psubd  %xmm9,%xmm0
  f8:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
  fd:	66 41 0f 72 f1 02    	pslld  $0x2,%xmm9
 103:	66 41 0f fe c1       	paddd  %xmm9,%xmm0
 108:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
 10d:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
 112:	66 0f 72 f0 04       	pslld  $0x4,%xmm0
 117:	66 41 0f fa c9       	psubd  %xmm9,%xmm1
 11c:	66 0f fe c3          	paddd  %xmm3,%xmm0
 120:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
 125:	66 0f 72 d0 1c       	psrld  $0x1c,%xmm0
 12a:	66 41 0f fa c9       	psubd  %xmm9,%xmm1
 12f:	66 44 0f 6f cc       	movdqa %xmm4,%xmm9
 134:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
 139:	66 44 0f 65 cf       	pcmpgtw %xmm7,%xmm9
 13e:	66 41 0f 72 f0 02    	pslld  $0x2,%xmm8
 144:	66 41 0f fe c8       	paddd  %xmm8,%xmm1
 149:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
 14e:	66 0f 72 f1 04       	pslld  $0x4,%xmm1
 153:	66 0f fe cb          	paddd  %xmm3,%xmm1
 157:	66 0f 72 d1 1c       	psrld  $0x1c,%xmm1
 15c:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 160:	66 44 0f 69 c1       	punpckhwd %xmm1,%xmm8
 165:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 169:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
 16e:	66 41 0f 69 c8       	punpckhwd %xmm8,%xmm1
 173:	66 44 0f 6f c7       	movdqa %xmm7,%xmm8
 178:	66 41 0f 69 f9       	punpckhwd %xmm9,%xmm7
 17d:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
 182:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 186:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
 18b:	66 0f db c5          	pand   %xmm5,%xmm0
 18f:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
 194:	66 41 0f fa c8       	psubd  %xmm8,%xmm1
 199:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
 19e:	66 41 0f fa c8       	psubd  %xmm8,%xmm1
 1a3:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
 1a8:	66 41 0f 72 f0 02    	pslld  $0x2,%xmm8
 1ae:	66 41 0f fe c8       	paddd  %xmm8,%xmm1
 1b3:	66 0f 72 f1 04       	pslld  $0x4,%xmm1
 1b8:	66 0f fe cb          	paddd  %xmm3,%xmm1
 1bc:	66 0f 72 d1 1c       	psrld  $0x1c,%xmm1
 1c1:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
 1c6:	66 0f 6f cf          	movdqa %xmm7,%xmm1
 1ca:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
 1cf:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
 1d4:	66 0f fa cf          	psubd  %xmm7,%xmm1
 1d8:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
 1dd:	66 0f fa cf          	psubd  %xmm7,%xmm1
 1e1:	66 0f 6f f9          	movdqa %xmm1,%xmm7
 1e5:	66 0f 72 f7 02       	pslld  $0x2,%xmm7
 1ea:	66 0f fe cf          	paddd  %xmm7,%xmm1
 1ee:	66 41 0f 6f f8       	movdqa %xmm8,%xmm7
 1f3:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
 1f8:	66 0f 72 f1 04       	pslld  $0x4,%xmm1
 1fd:	66 44 0f 65 c2       	pcmpgtw %xmm2,%xmm8
 202:	66 0f fe cb          	paddd  %xmm3,%xmm1
 206:	66 0f 72 d1 1c       	psrld  $0x1c,%xmm1
 20b:	66 0f 61 f9          	punpcklwd %xmm1,%xmm7
 20f:	66 44 0f 69 c9       	punpckhwd %xmm1,%xmm9
 214:	66 0f 6f cf          	movdqa %xmm7,%xmm1
 218:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
 21d:	66 41 0f 69 c9       	punpckhwd %xmm9,%xmm1
 222:	66 0f 61 f9          	punpcklwd %xmm1,%xmm7
 226:	66 0f db fd          	pand   %xmm5,%xmm7
 22a:	66 0f 67 c7          	packuswb %xmm7,%xmm0
 22e:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 232:	66 41 0f 61 f8       	punpcklwd %xmm8,%xmm7
 237:	66 0f fc c0          	paddb  %xmm0,%xmm0
 23b:	66 0f 6f cf          	movdqa %xmm7,%xmm1
 23f:	66 0f fc c0          	paddb  %xmm0,%xmm0
 243:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
 248:	66 0f fc c0          	paddb  %xmm0,%xmm0
 24c:	66 0f fa cf          	psubd  %xmm7,%xmm1
 250:	66 0f fc c0          	paddb  %xmm0,%xmm0
 254:	66 0f 72 f1 08       	pslld  $0x8,%xmm1
 259:	66 0f fa cf          	psubd  %xmm7,%xmm1
 25d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
 261:	66 0f 72 f7 02       	pslld  $0x2,%xmm7
 266:	66 0f fe cf          	paddd  %xmm7,%xmm1
 26a:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 26e:	66 41 0f 69 f8       	punpckhwd %xmm8,%xmm7
 273:	66 0f 72 f1 04       	pslld  $0x4,%xmm1
 278:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
 27d:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 281:	66 44 0f 65 c6       	pcmpgtw %xmm6,%xmm8
 286:	66 0f fe cb          	paddd  %xmm3,%xmm1
 28a:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
 28f:	66 0f 72 d1 1c       	psrld  $0x1c,%xmm1
 294:	66 0f fa d7          	psubd  %xmm7,%xmm2
 298:	66 0f 72 f2 08       	pslld  $0x8,%xmm2
 29d:	66 0f fa d7          	psubd  %xmm7,%xmm2
 2a1:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 2a5:	66 0f 72 f7 02       	pslld  $0x2,%xmm7
 2aa:	66 0f fe d7          	paddd  %xmm7,%xmm2
 2ae:	66 0f 6f f9          	movdqa %xmm1,%xmm7
 2b2:	66 0f 72 f2 04       	pslld  $0x4,%xmm2
 2b7:	66 0f fe d3          	paddd  %xmm3,%xmm2
 2bb:	66 0f 72 d2 1c       	psrld  $0x1c,%xmm2
 2c0:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 2c4:	66 0f 69 fa          	punpckhwd %xmm2,%xmm7
 2c8:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 2cc:	66 0f 61 cf          	punpcklwd %xmm7,%xmm1
 2d0:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 2d4:	66 0f 6f fe          	movdqa %xmm6,%xmm7
 2d8:	66 41 0f 69 f0       	punpckhwd %xmm8,%xmm6
 2dd:	66 41 0f 61 f8       	punpcklwd %xmm8,%xmm7
 2e2:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 2e6:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 2ea:	66 0f db cd          	pand   %xmm5,%xmm1
 2ee:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
 2f3:	66 0f fa d7          	psubd  %xmm7,%xmm2
 2f7:	66 0f 72 f2 08       	pslld  $0x8,%xmm2
 2fc:	66 0f fa d7          	psubd  %xmm7,%xmm2
 300:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 304:	66 0f 72 f7 02       	pslld  $0x2,%xmm7
 309:	66 0f fe d7          	paddd  %xmm7,%xmm2
 30d:	66 0f 72 f2 04       	pslld  $0x4,%xmm2
 312:	66 0f fe d3          	paddd  %xmm3,%xmm2
 316:	66 0f 72 d2 1c       	psrld  $0x1c,%xmm2
 31b:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 31f:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 323:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
 328:	66 44 0f 6f c7       	movdqa %xmm7,%xmm8
 32d:	66 0f fa d6          	psubd  %xmm6,%xmm2
 331:	66 0f 72 f2 08       	pslld  $0x8,%xmm2
 336:	66 0f fa d6          	psubd  %xmm6,%xmm2
 33a:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 33e:	66 0f 72 f6 02       	pslld  $0x2,%xmm6
 343:	66 0f fe d6          	paddd  %xmm6,%xmm2
 347:	66 0f 6f f7          	movdqa %xmm7,%xmm6
 34b:	66 0f 72 f2 04       	pslld  $0x4,%xmm2
 350:	66 0f fe d3          	paddd  %xmm3,%xmm2
 354:	66 0f 72 d2 1c       	psrld  $0x1c,%xmm2
 359:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 35d:	66 44 0f 69 c2       	punpckhwd %xmm2,%xmm8
 362:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 366:	66 41 0f 61 f0       	punpcklwd %xmm8,%xmm6
 36b:	66 41 0f 69 d0       	punpckhwd %xmm8,%xmm2
 370:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 374:	66 0f db f5          	pand   %xmm5,%xmm6
 378:	66 0f 67 ce          	packuswb %xmm6,%xmm1
 37c:	66 0f eb c1          	por    %xmm1,%xmm0
 380:	41 0f 11 40 f0       	movups %xmm0,-0x10(%r8)
 385:	48 39 d3             	cmp    %rdx,%rbx
 388:	0f 85 b2 fc ff ff    	jne    40 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x40>
 38e:	5b                   	pop    %rbx
 38f:	5d                   	pop    %rbp
 390:	c3                   	ret
 391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 398:	0f bf 7a 06          	movswl 0x6(%rdx),%edi
 39c:	0f bf 72 0a          	movswl 0xa(%rdx),%esi
 3a0:	0f bf 4a 0e          	movswl 0xe(%rdx),%ecx
 3a4:	0f bf 42 02          	movswl 0x2(%rdx),%eax
 3a8:	44 0f bf 5a 04       	movswl 0x4(%rdx),%r11d
 3ad:	44 0f bf 52 08       	movswl 0x8(%rdx),%r10d
 3b2:	69 ff b0 af 13 00    	imul   $0x13afb0,%edi,%edi
 3b8:	44 0f bf 4a 0c       	movswl 0xc(%rdx),%r9d
 3bd:	0f bf 2a             	movswl (%rdx),%ebp
 3c0:	69 f6 b0 af 13 00    	imul   $0x13afb0,%esi,%esi
 3c6:	69 c9 b0 af 13 00    	imul   $0x13afb0,%ecx,%ecx
 3cc:	69 c0 b0 af 13 00    	imul   $0x13afb0,%eax,%eax
 3d2:	81 c7 00 00 00 08    	add    $0x8000000,%edi
 3d8:	45 69 db b0 af 13 00 	imul   $0x13afb0,%r11d,%r11d
 3df:	81 c6 00 00 00 08    	add    $0x8000000,%esi
 3e5:	c1 ef 1c             	shr    $0x1c,%edi
 3e8:	45 69 d2 b0 af 13 00 	imul   $0x13afb0,%r10d,%r10d
 3ef:	81 c1 00 00 00 08    	add    $0x8000000,%ecx
 3f5:	c1 ee 1c             	shr    $0x1c,%esi
 3f8:	45 69 c9 b0 af 13 00 	imul   $0x13afb0,%r9d,%r9d
 3ff:	c1 e9 1c             	shr    $0x1c,%ecx
 402:	05 00 00 00 08       	add    $0x8000000,%eax
 407:	c1 e7 04             	shl    $0x4,%edi
 40a:	69 ed b0 af 13 00    	imul   $0x13afb0,%ebp,%ebp
 410:	c1 e8 1c             	shr    $0x1c,%eax
 413:	41 81 c3 00 00 00 08 	add    $0x8000000,%r11d
 41a:	c1 e6 04             	shl    $0x4,%esi
 41d:	41 c1 eb 1c          	shr    $0x1c,%r11d
 421:	41 81 c2 00 00 00 08 	add    $0x8000000,%r10d
 428:	c1 e0 04             	shl    $0x4,%eax
 42b:	41 81 c1 00 00 00 08 	add    $0x8000000,%r9d
 432:	41 c1 ea 1c          	shr    $0x1c,%r10d
 436:	44 09 df             	or     %r11d,%edi
 439:	81 c5 00 00 00 08    	add    $0x8000000,%ebp
 43f:	c1 e1 04             	shl    $0x4,%ecx
 442:	44 09 d6             	or     %r10d,%esi
 445:	41 88 78 01          	mov    %dil,0x1(%r8)
 449:	41 c1 e9 1c          	shr    $0x1c,%r9d
 44d:	c1 ed 1c             	shr    $0x1c,%ebp
 450:	41 88 70 02          	mov    %sil,0x2(%r8)
 454:	09 e8                	or     %ebp,%eax
 456:	44 09 c9             	or     %r9d,%ecx
 459:	48 83 c2 10          	add    $0x10,%rdx
 45d:	49 83 c0 04          	add    $0x4,%r8
 461:	41 88 40 fc          	mov    %al,-0x4(%r8)
 465:	41 88 48 ff          	mov    %cl,-0x1(%r8)
 469:	48 39 d3             	cmp    %rdx,%rbx
 46c:	0f 85 26 ff ff ff    	jne    398 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x398>
 472:	e9 17 ff ff ff       	jmp    38e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d4+0x38e>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d10:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d10>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 56                	push   %r14
   6:	48 89 f2             	mov    %rsi,%rdx
   9:	48 89 f9             	mov    %rdi,%rcx
   c:	4c 8d 8f 40 01 00 00 	lea    0x140(%rdi),%r9
  13:	41 54                	push   %r12
  15:	bf 00 bc 7d 9d       	mov    $0x9d7dbc00,%edi
  1a:	48 be 00 00 00 00 01 	movabs $0x100000000,%rsi
  21:	00 00 00 
  24:	55                   	push   %rbp
  25:	53                   	push   %rbx
  26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  2d:	00 00 00 
  30:	4c 0f bf 52 02       	movswq 0x2(%rdx),%r10
  35:	48 0f bf 1a          	movswq (%rdx),%rbx
  39:	48 83 c2 08          	add    $0x8,%rdx
  3d:	48 0f bf 42 fe       	movswq -0x2(%rdx),%rax
  42:	4c 0f bf 5a fc       	movswq -0x4(%rdx),%r11
  47:	4c 0f af d7          	imul   %rdi,%r10
  4b:	48 0f af df          	imul   %rdi,%rbx
  4f:	48 0f af c7          	imul   %rdi,%rax
  53:	4c 0f af df          	imul   %rdi,%r11
  57:	49 01 f2             	add    %rsi,%r10
  5a:	49 c1 ea 21          	shr    $0x21,%r10
  5e:	48 01 f3             	add    %rsi,%rbx
  61:	48 01 f0             	add    %rsi,%rax
  64:	48 c1 eb 21          	shr    $0x21,%rbx
  68:	45 89 d4             	mov    %r10d,%r12d
  6b:	48 c1 e8 21          	shr    $0x21,%rax
  6f:	41 c1 e2 02          	shl    $0x2,%r10d
  73:	49 01 f3             	add    %rsi,%r11
  76:	66 81 e3 ff 03       	and    $0x3ff,%bx
  7b:	49 c1 eb 21          	shr    $0x21,%r11
  7f:	49 89 c6             	mov    %rax,%r14
  82:	41 89 c0             	mov    %eax,%r8d
  85:	44 89 d0             	mov    %r10d,%eax
  88:	08 f8                	or     %bh,%al
  8a:	44 89 dd             	mov    %r11d,%ebp
  8d:	41 c1 e3 04          	shl    $0x4,%r11d
  91:	0f b6 db             	movzbl %bl,%ebx
  94:	66 81 e5 ff 03       	and    $0x3ff,%bp
  99:	44 0f b6 d0          	movzbl %al,%r10d
  9d:	44 89 f0             	mov    %r14d,%eax
  a0:	66 41 81 e4 ff 03    	and    $0x3ff,%r12w
  a6:	66 c1 ed 04          	shr    $0x4,%bp
  aa:	c1 e0 06             	shl    $0x6,%eax
  ad:	66 41 81 e0 ff 03    	and    $0x3ff,%r8w
  b3:	66 41 c1 ec 06       	shr    $0x6,%r12w
  b8:	09 e8                	or     %ebp,%eax
  ba:	66 41 c1 e8 02       	shr    $0x2,%r8w
  bf:	45 09 e3             	or     %r12d,%r11d
  c2:	0f b6 c0             	movzbl %al,%eax
  c5:	44 88 41 04          	mov    %r8b,0x4(%rcx)
  c9:	c1 e0 08             	shl    $0x8,%eax
  cc:	45 0f b6 db          	movzbl %r11b,%r11d
  d0:	44 09 d8             	or     %r11d,%eax
  d3:	c1 e0 08             	shl    $0x8,%eax
  d6:	44 09 d0             	or     %r10d,%eax
  d9:	c1 e0 08             	shl    $0x8,%eax
  dc:	09 d8                	or     %ebx,%eax
  de:	48 83 c1 05          	add    $0x5,%rcx
  e2:	89 41 fb             	mov    %eax,-0x5(%rcx)
  e5:	49 39 c9             	cmp    %rcx,%r9
  e8:	0f 85 42 ff ff ff    	jne    30 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_compress_d10+0x30>
  ee:	5b                   	pop    %rbx
  ef:	5d                   	pop    %rbp
  f0:	41 5c                	pop    %r12
  f2:	41 5e                	pop    %r14
  f4:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8d 87 00 02 00 00 	lea    0x200(%rdi),%rax
   b:	48 89 f9             	mov    %rdi,%rcx
   e:	48 39 c6             	cmp    %rax,%rsi
  11:	73 10                	jae    23 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x23>
  13:	48 8d 86 80 00 00 00 	lea    0x80(%rsi),%rax
  1a:	48 39 c7             	cmp    %rax,%rdi
  1d:	0f 82 ea 04 00 00    	jb     50d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x50d>
  23:	f3 0f 6f 26          	movdqu (%rsi),%xmm4
  27:	66 0f 6f 1d 00 00 00 	movdqa 0x0(%rip),%xmm3        # 2f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x2f>
  2e:	00 
  2f:	66 0f ef d2          	pxor   %xmm2,%xmm2
  33:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 3b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x3b>
  3a:	00 
  3b:	66 0f 6f 0d 00 00 00 	movdqa 0x0(%rip),%xmm1        # 43 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x43>
  42:	00 
  43:	66 0f db e3          	pand   %xmm3,%xmm4
  47:	66 0f 6f f4          	movdqa %xmm4,%xmm6
  4b:	66 0f 6f ec          	movdqa %xmm4,%xmm5
  4f:	f3 0f 6f 26          	movdqu (%rsi),%xmm4
  53:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
  57:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
  5b:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
  60:	66 0f d5 f0          	pmullw %xmm0,%xmm6
  64:	66 0f db e3          	pand   %xmm3,%xmm4
  68:	66 0f d5 e8          	pmullw %xmm0,%xmm5
  6c:	66 0f 6f fc          	movdqa %xmm4,%xmm7
  70:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
  74:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
  78:	66 0f d5 e0          	pmullw %xmm0,%xmm4
  7c:	66 0f d5 f8          	pmullw %xmm0,%xmm7
  80:	66 0f fd f1          	paddw  %xmm1,%xmm6
  84:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
  89:	66 0f fd e9          	paddw  %xmm1,%xmm5
  8d:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
  92:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
  97:	66 0f fd e1          	paddw  %xmm1,%xmm4
  9b:	66 0f fd f9          	paddw  %xmm1,%xmm7
  9f:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
  a4:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
  a9:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
  ad:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
  b2:	0f 29 71 10          	movaps %xmm6,0x10(%rcx)
  b6:	66 0f 6f f5          	movdqa %xmm5,%xmm6
  ba:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
  be:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
  c2:	44 0f 29 01          	movaps %xmm8,(%rcx)
  c6:	0f 29 71 20          	movaps %xmm6,0x20(%rcx)
  ca:	0f 29 69 30          	movaps %xmm5,0x30(%rcx)
  ce:	f3 0f 6f 66 10       	movdqu 0x10(%rsi),%xmm4
  d3:	66 0f db e3          	pand   %xmm3,%xmm4
  d7:	66 0f 6f f4          	movdqa %xmm4,%xmm6
  db:	66 0f 6f ec          	movdqa %xmm4,%xmm5
  df:	f3 0f 6f 66 10       	movdqu 0x10(%rsi),%xmm4
  e4:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
  e8:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
  ec:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
  f1:	66 0f d5 f0          	pmullw %xmm0,%xmm6
  f5:	66 0f db e3          	pand   %xmm3,%xmm4
  f9:	66 0f d5 e8          	pmullw %xmm0,%xmm5
  fd:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 101:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 105:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 109:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 10d:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 111:	66 0f fd f1          	paddw  %xmm1,%xmm6
 115:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 11a:	66 0f fd e9          	paddw  %xmm1,%xmm5
 11e:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 123:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 128:	66 0f fd e1          	paddw  %xmm1,%xmm4
 12c:	66 0f fd f9          	paddw  %xmm1,%xmm7
 130:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 135:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 13a:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 13e:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 143:	0f 29 71 50          	movaps %xmm6,0x50(%rcx)
 147:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 14b:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 14f:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 153:	44 0f 29 41 40       	movaps %xmm8,0x40(%rcx)
 158:	0f 29 71 60          	movaps %xmm6,0x60(%rcx)
 15c:	0f 29 69 70          	movaps %xmm5,0x70(%rcx)
 160:	f3 0f 6f 66 20       	movdqu 0x20(%rsi),%xmm4
 165:	66 0f db e3          	pand   %xmm3,%xmm4
 169:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 16d:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 171:	f3 0f 6f 66 20       	movdqu 0x20(%rsi),%xmm4
 176:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 17a:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
 17e:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 183:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 187:	66 0f db e3          	pand   %xmm3,%xmm4
 18b:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 18f:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 193:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 197:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 19b:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 19f:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 1a3:	66 0f fd f1          	paddw  %xmm1,%xmm6
 1a7:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 1ac:	66 0f fd e9          	paddw  %xmm1,%xmm5
 1b0:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 1b5:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 1ba:	66 0f fd e1          	paddw  %xmm1,%xmm4
 1be:	66 0f fd f9          	paddw  %xmm1,%xmm7
 1c2:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 1c7:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 1cc:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 1d0:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 1d5:	0f 29 b1 90 00 00 00 	movaps %xmm6,0x90(%rcx)
 1dc:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 1e0:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 1e4:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 1e8:	44 0f 29 81 80 00 00 	movaps %xmm8,0x80(%rcx)
 1ef:	00 
 1f0:	0f 29 b1 a0 00 00 00 	movaps %xmm6,0xa0(%rcx)
 1f7:	0f 29 a9 b0 00 00 00 	movaps %xmm5,0xb0(%rcx)
 1fe:	f3 0f 6f 66 30       	movdqu 0x30(%rsi),%xmm4
 203:	66 0f db e3          	pand   %xmm3,%xmm4
 207:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 20b:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 20f:	f3 0f 6f 66 30       	movdqu 0x30(%rsi),%xmm4
 214:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 218:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
 21c:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 221:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 225:	66 0f db e3          	pand   %xmm3,%xmm4
 229:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 22d:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 231:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 235:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 239:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 23d:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 241:	66 0f fd f1          	paddw  %xmm1,%xmm6
 245:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 24a:	66 0f fd e9          	paddw  %xmm1,%xmm5
 24e:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 253:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 258:	66 0f fd e1          	paddw  %xmm1,%xmm4
 25c:	66 0f fd f9          	paddw  %xmm1,%xmm7
 260:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 265:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 26a:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 26e:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 273:	0f 29 b1 d0 00 00 00 	movaps %xmm6,0xd0(%rcx)
 27a:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 27e:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 282:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 286:	44 0f 29 81 c0 00 00 	movaps %xmm8,0xc0(%rcx)
 28d:	00 
 28e:	0f 29 b1 e0 00 00 00 	movaps %xmm6,0xe0(%rcx)
 295:	0f 29 a9 f0 00 00 00 	movaps %xmm5,0xf0(%rcx)
 29c:	f3 0f 6f 66 40       	movdqu 0x40(%rsi),%xmm4
 2a1:	66 0f db e3          	pand   %xmm3,%xmm4
 2a5:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 2a9:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 2ad:	f3 0f 6f 66 40       	movdqu 0x40(%rsi),%xmm4
 2b2:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 2b6:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
 2ba:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 2bf:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 2c3:	66 0f db e3          	pand   %xmm3,%xmm4
 2c7:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 2cb:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 2cf:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 2d3:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 2d7:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 2db:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 2df:	66 0f fd f1          	paddw  %xmm1,%xmm6
 2e3:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 2e8:	66 0f fd e9          	paddw  %xmm1,%xmm5
 2ec:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 2f1:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 2f6:	66 0f fd e1          	paddw  %xmm1,%xmm4
 2fa:	66 0f fd f9          	paddw  %xmm1,%xmm7
 2fe:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 303:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 308:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 30c:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 311:	0f 29 b1 10 01 00 00 	movaps %xmm6,0x110(%rcx)
 318:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 31c:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 320:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 324:	44 0f 29 81 00 01 00 	movaps %xmm8,0x100(%rcx)
 32b:	00 
 32c:	0f 29 b1 20 01 00 00 	movaps %xmm6,0x120(%rcx)
 333:	0f 29 a9 30 01 00 00 	movaps %xmm5,0x130(%rcx)
 33a:	f3 0f 6f 66 50       	movdqu 0x50(%rsi),%xmm4
 33f:	66 0f db e3          	pand   %xmm3,%xmm4
 343:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 347:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 34b:	f3 0f 6f 66 50       	movdqu 0x50(%rsi),%xmm4
 350:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 354:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
 358:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 35d:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 361:	66 0f db e3          	pand   %xmm3,%xmm4
 365:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 369:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 36d:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 371:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 375:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 379:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 37d:	66 0f fd f1          	paddw  %xmm1,%xmm6
 381:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 386:	66 0f fd e9          	paddw  %xmm1,%xmm5
 38a:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 38f:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 394:	66 0f fd e1          	paddw  %xmm1,%xmm4
 398:	66 0f fd f9          	paddw  %xmm1,%xmm7
 39c:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 3a1:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 3a6:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 3aa:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 3af:	0f 29 b1 50 01 00 00 	movaps %xmm6,0x150(%rcx)
 3b6:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 3ba:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 3be:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 3c2:	44 0f 29 81 40 01 00 	movaps %xmm8,0x140(%rcx)
 3c9:	00 
 3ca:	0f 29 b1 60 01 00 00 	movaps %xmm6,0x160(%rcx)
 3d1:	0f 29 a9 70 01 00 00 	movaps %xmm5,0x170(%rcx)
 3d8:	f3 0f 6f 66 60       	movdqu 0x60(%rsi),%xmm4
 3dd:	66 0f db e3          	pand   %xmm3,%xmm4
 3e1:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 3e5:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 3e9:	f3 0f 6f 66 60       	movdqu 0x60(%rsi),%xmm4
 3ee:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 3f2:	66 0f 68 ea          	punpckhbw %xmm2,%xmm5
 3f6:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 3fb:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 3ff:	66 0f db e3          	pand   %xmm3,%xmm4
 403:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 407:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 40b:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 40f:	66 0f 60 fa          	punpcklbw %xmm2,%xmm7
 413:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 417:	66 0f d5 f8          	pmullw %xmm0,%xmm7
 41b:	66 0f fd f1          	paddw  %xmm1,%xmm6
 41f:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 424:	66 0f fd e9          	paddw  %xmm1,%xmm5
 428:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 42d:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 432:	66 0f fd e1          	paddw  %xmm1,%xmm4
 436:	66 0f fd f9          	paddw  %xmm1,%xmm7
 43a:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 43f:	66 0f 71 d7 04       	psrlw  $0x4,%xmm7
 444:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
 448:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 44d:	0f 29 b1 90 01 00 00 	movaps %xmm6,0x190(%rcx)
 454:	66 0f 6f f5          	movdqa %xmm5,%xmm6
 458:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 45c:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 460:	44 0f 29 81 80 01 00 	movaps %xmm8,0x180(%rcx)
 467:	00 
 468:	0f 29 b1 a0 01 00 00 	movaps %xmm6,0x1a0(%rcx)
 46f:	0f 29 a9 b0 01 00 00 	movaps %xmm5,0x1b0(%rcx)
 476:	f3 0f 6f 6e 70       	movdqu 0x70(%rsi),%xmm5
 47b:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 47f:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 484:	66 0f db e3          	pand   %xmm3,%xmm4
 488:	66 0f db dd          	pand   %xmm5,%xmm3
 48c:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 490:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 494:	66 0f 68 e2          	punpckhbw %xmm2,%xmm4
 498:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
 49c:	66 0f 60 ea          	punpcklbw %xmm2,%xmm5
 4a0:	66 0f 68 da          	punpckhbw %xmm2,%xmm3
 4a4:	66 0f d5 f0          	pmullw %xmm0,%xmm6
 4a8:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 4ac:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 4b0:	66 0f d5 c3          	pmullw %xmm3,%xmm0
 4b4:	66 0f fd f1          	paddw  %xmm1,%xmm6
 4b8:	66 0f fd e9          	paddw  %xmm1,%xmm5
 4bc:	66 0f 71 d6 04       	psrlw  $0x4,%xmm6
 4c1:	66 0f fd e1          	paddw  %xmm1,%xmm4
 4c5:	66 0f fd c1          	paddw  %xmm1,%xmm0
 4c9:	66 0f 71 d5 04       	psrlw  $0x4,%xmm5
 4ce:	66 0f 71 d4 04       	psrlw  $0x4,%xmm4
 4d3:	66 0f 6f ce          	movdqa %xmm6,%xmm1
 4d7:	66 0f 61 cd          	punpcklwd %xmm5,%xmm1
 4db:	66 0f 71 d0 04       	psrlw  $0x4,%xmm0
 4e0:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 4e4:	0f 29 89 c0 01 00 00 	movaps %xmm1,0x1c0(%rcx)
 4eb:	66 0f 6f cc          	movdqa %xmm4,%xmm1
 4ef:	66 0f 69 e0          	punpckhwd %xmm0,%xmm4
 4f3:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
 4f7:	0f 29 b1 d0 01 00 00 	movaps %xmm6,0x1d0(%rcx)
 4fe:	0f 29 89 e0 01 00 00 	movaps %xmm1,0x1e0(%rcx)
 505:	0f 29 a1 f0 01 00 00 	movaps %xmm4,0x1f0(%rcx)
 50c:	c3                   	ret
 50d:	31 d2                	xor    %edx,%edx
 50f:	90                   	nop
 510:	0f b6 04 16          	movzbl (%rsi,%rdx,1),%eax
 514:	83 e0 0f             	and    $0xf,%eax
 517:	69 c0 01 0d 00 00    	imul   $0xd01,%eax,%eax
 51d:	83 c0 08             	add    $0x8,%eax
 520:	c1 e8 04             	shr    $0x4,%eax
 523:	66 89 04 91          	mov    %ax,(%rcx,%rdx,4)
 527:	0f b6 04 16          	movzbl (%rsi,%rdx,1),%eax
 52b:	c0 e8 04             	shr    $0x4,%al
 52e:	0f b6 c0             	movzbl %al,%eax
 531:	69 c0 01 0d 00 00    	imul   $0xd01,%eax,%eax
 537:	83 c0 08             	add    $0x8,%eax
 53a:	c1 e8 04             	shr    $0x4,%eax
 53d:	66 89 44 91 02       	mov    %ax,0x2(%rcx,%rdx,4)
 542:	48 83 c2 01          	add    $0x1,%rdx
 546:	48 81 fa 80 00 00 00 	cmp    $0x80,%rdx
 54d:	75 c1                	jne    510 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d4+0x510>
 54f:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d10:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d10>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 89 f2             	mov    %rsi,%rdx
   7:	48 89 f9             	mov    %rdi,%rcx
   a:	48 8d b6 40 01 00 00 	lea    0x140(%rsi),%rsi
  11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  18:	44 0f b6 4a 02       	movzbl 0x2(%rdx),%r9d
  1d:	0f b7 3a             	movzwl (%rdx),%edi
  20:	48 83 c2 05          	add    $0x5,%rdx
  24:	48 83 c1 08          	add    $0x8,%rcx
  28:	44 0f b6 42 fc       	movzbl -0x4(%rdx),%r8d
  2d:	44 0f b6 52 fe       	movzbl -0x2(%rdx),%r10d
  32:	44 89 c8             	mov    %r9d,%eax
  35:	41 c1 e1 06          	shl    $0x6,%r9d
  39:	81 e7 ff 03 00 00    	and    $0x3ff,%edi
  3f:	41 c0 e8 02          	shr    $0x2,%r8b
  43:	c0 e8 04             	shr    $0x4,%al
  46:	69 ff 01 0d 00 00    	imul   $0xd01,%edi,%edi
  4c:	45 0f b6 c0          	movzbl %r8b,%r8d
  50:	45 09 c8             	or     %r9d,%r8d
  53:	44 0f b6 c8          	movzbl %al,%r9d
  57:	41 0f b6 c2          	movzbl %r10b,%eax
  5b:	41 c0 ea 06          	shr    $0x6,%r10b
  5f:	c1 e0 04             	shl    $0x4,%eax
  62:	45 0f b6 d2          	movzbl %r10b,%r10d
  66:	41 81 e0 ff 03 00 00 	and    $0x3ff,%r8d
  6d:	81 c7 00 02 00 00    	add    $0x200,%edi
  73:	41 09 c1             	or     %eax,%r9d
  76:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
  7a:	45 69 c0 01 0d 00 00 	imul   $0xd01,%r8d,%r8d
  81:	c1 ef 0a             	shr    $0xa,%edi
  84:	41 81 e1 ff 03 00 00 	and    $0x3ff,%r9d
  8b:	0f b7 ff             	movzwl %di,%edi
  8e:	c1 e0 02             	shl    $0x2,%eax
  91:	45 69 c9 01 0d 00 00 	imul   $0xd01,%r9d,%r9d
  98:	44 09 d0             	or     %r10d,%eax
  9b:	41 81 c0 00 02 00 00 	add    $0x200,%r8d
  a2:	98                   	cwtl
  a3:	41 c1 e8 0a          	shr    $0xa,%r8d
  a7:	69 c0 01 0d 00 00    	imul   $0xd01,%eax,%eax
  ad:	41 81 c1 00 02 00 00 	add    $0x200,%r9d
  b4:	45 0f b7 c0          	movzwl %r8w,%r8d
  b8:	41 c1 e9 0a          	shr    $0xa,%r9d
  bc:	45 0f b7 c9          	movzwl %r9w,%r9d
  c0:	05 00 02 00 00       	add    $0x200,%eax
  c5:	c1 e8 0a             	shr    $0xa,%eax
  c8:	0f b7 c0             	movzwl %ax,%eax
  cb:	48 c1 e0 10          	shl    $0x10,%rax
  cf:	4c 09 c8             	or     %r9,%rax
  d2:	48 c1 e0 10          	shl    $0x10,%rax
  d6:	4c 09 c0             	or     %r8,%rax
  d9:	48 c1 e0 10          	shl    $0x10,%rax
  dd:	48 09 f8             	or     %rdi,%rax
  e0:	48 89 41 f8          	mov    %rax,-0x8(%rcx)
  e4:	48 39 d6             	cmp    %rdx,%rsi
  e7:	0f 85 2b ff ff ff    	jne    18 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_decompress_d10+0x18>
  ed:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tobytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tobytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 87 80 01 00 00 	lea    0x180(%rdi),%r8
   b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  10:	0f b7 46 02          	movzwl 0x2(%rsi),%eax
  14:	0f b7 0e             	movzwl (%rsi),%ecx
  17:	48 83 c7 03          	add    $0x3,%rdi
  1b:	48 83 c6 04          	add    $0x4,%rsi
  1f:	89 c2                	mov    %eax,%edx
  21:	66 c1 e8 04          	shr    $0x4,%ax
  25:	88 4f fd             	mov    %cl,-0x3(%rdi)
  28:	c1 e2 04             	shl    $0x4,%edx
  2b:	88 47 ff             	mov    %al,-0x1(%rdi)
  2e:	08 ea                	or     %ch,%dl
  30:	88 57 fe             	mov    %dl,-0x2(%rdi)
  33:	49 39 f8             	cmp    %rdi,%r8
  36:	75 d8                	jne    10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tobytes+0x10>
  38:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frombytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frombytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 8e 80 01 00 00 	lea    0x180(%rsi),%r9
   b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  10:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
  14:	0f b6 56 02          	movzbl 0x2(%rsi),%edx
  18:	48 83 c6 03          	add    $0x3,%rsi
  1c:	48 83 c7 04          	add    $0x4,%rdi
  20:	44 0f b6 46 fd       	movzbl -0x3(%rsi),%r8d
  25:	89 c1                	mov    %eax,%ecx
  27:	c0 e8 04             	shr    $0x4,%al
  2a:	c1 e1 08             	shl    $0x8,%ecx
  2d:	0f b6 c0             	movzbl %al,%eax
  30:	c1 e2 04             	shl    $0x4,%edx
  33:	66 81 e1 ff 0f       	and    $0xfff,%cx
  38:	09 d0                	or     %edx,%eax
  3a:	44 09 c1             	or     %r8d,%ecx
  3d:	66 89 47 fe          	mov    %ax,-0x2(%rdi)
  41:	66 89 4f fc          	mov    %cx,-0x4(%rdi)
  45:	49 39 f1             	cmp    %rsi,%r9
  48:	75 c6                	jne    10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frombytes+0x10>
  4a:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frommsg:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frommsg>:
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
  f6:	0f 85 4c ff ff ff    	jne    48 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_frommsg+0x48>
  fc:	5b                   	pop    %rbx
  fd:	5d                   	pop    %rbp
  fe:	41 5c                	pop    %r12
 100:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg>:
       0:	f3 0f 1e fa          	endbr64
       4:	4c 8d 86 00 02 00 00 	lea    0x200(%rsi),%r8
       b:	48 89 fa             	mov    %rdi,%rdx
       e:	48 8d 4f 20          	lea    0x20(%rdi),%rcx
      12:	48 89 f0             	mov    %rsi,%rax
      15:	4c 39 c7             	cmp    %r8,%rdi
      18:	73 09                	jae    23 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x23>
      1a:	48 39 ce             	cmp    %rcx,%rsi
      1d:	0f 82 9d 13 00 00    	jb     13c0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x13c0>
      23:	66 0f ef c9          	pxor   %xmm1,%xmm1
      27:	48 83 c2 10          	add    $0x10,%rdx
      2b:	48 05 00 01 00 00    	add    $0x100,%rax
      31:	0f 11 4a f0          	movups %xmm1,-0x10(%rdx)
      35:	66 0f 6f a8 00 ff ff 	movdqa -0x100(%rax),%xmm5
      3c:	ff 
      3d:	66 44 0f 6f 80 10 ff 	movdqa -0xf0(%rax),%xmm8
      44:	ff ff 
      46:	66 0f 6f b0 20 ff ff 	movdqa -0xe0(%rax),%xmm6
      4d:	ff 
      4e:	66 0f 6f b8 30 ff ff 	movdqa -0xd0(%rax),%xmm7
      55:	ff 
      56:	66 0f 6f c5          	movdqa %xmm5,%xmm0
      5a:	66 0f 6f d5          	movdqa %xmm5,%xmm2
      5e:	66 0f 6f 88 40 ff ff 	movdqa -0xc0(%rax),%xmm1
      65:	ff 
      66:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
      6b:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
      70:	66 41 0f 69 d0       	punpckhwd %xmm8,%xmm2
      75:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
      7a:	66 0f 6f a0 50 ff ff 	movdqa -0xb0(%rax),%xmm4
      81:	ff 
      82:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
      87:	66 0f 61 ea          	punpcklwd %xmm2,%xmm5
      8b:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
      90:	66 0f 6f 98 60 ff ff 	movdqa -0xa0(%rax),%xmm3
      97:	ff 
      98:	66 44 0f 69 d2       	punpckhwd %xmm2,%xmm10
      9d:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
      a1:	66 0f 6f d6          	movdqa %xmm6,%xmm2
      a5:	66 44 0f 6f 88 70 ff 	movdqa -0x90(%rax),%xmm9
      ac:	ff ff 
      ae:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
      b2:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
      b7:	66 41 0f 69 ea       	punpckhwd %xmm10,%xmm5
      bc:	66 44 0f 6f 58 b0    	movdqa -0x50(%rax),%xmm11
      c2:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
      c7:	66 0f 61 f7          	punpcklwd %xmm7,%xmm6
      cb:	66 0f 6f f9          	movdqa %xmm1,%xmm7
      cf:	66 44 0f 69 d2       	punpckhwd %xmm2,%xmm10
      d4:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
      d8:	66 44 0f 61 c2       	punpcklwd %xmm2,%xmm8
      dd:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
      e1:	66 0f 6f d1          	movdqa %xmm1,%xmm2
      e5:	66 45 0f 61 c2       	punpcklwd %xmm10,%xmm8
      ea:	66 41 0f 69 f2       	punpckhwd %xmm10,%xmm6
      ef:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
      f3:	66 44 0f 6f d7       	movdqa %xmm7,%xmm10
      f8:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
      fc:	66 44 0f 69 d2       	punpckhwd %xmm2,%xmm10
     101:	66 0f 61 fa          	punpcklwd %xmm2,%xmm7
     105:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
     109:	66 0f 6f d3          	movdqa %xmm3,%xmm2
     10d:	66 0f 6f e3          	movdqa %xmm3,%xmm4
     111:	66 41 0f 61 d1       	punpcklwd %xmm9,%xmm2
     116:	66 41 0f 69 e1       	punpckhwd %xmm9,%xmm4
     11b:	66 41 0f 61 fa       	punpcklwd %xmm10,%xmm7
     120:	66 41 0f 69 ca       	punpckhwd %xmm10,%xmm1
     125:	66 41 0f 61 d9       	punpcklwd %xmm9,%xmm3
     12a:	66 44 0f 6f d2       	movdqa %xmm2,%xmm10
     12f:	66 44 0f 69 d4       	punpckhwd %xmm4,%xmm10
     134:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     138:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
     13c:	66 0f 6f e0          	movdqa %xmm0,%xmm4
     140:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
     145:	66 41 0f 61 d2       	punpcklwd %xmm10,%xmm2
     14a:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
     14f:	66 41 0f 69 da       	punpckhwd %xmm10,%xmm3
     154:	66 45 0f 69 c8       	punpckhwd %xmm8,%xmm9
     159:	66 44 0f 6f d4       	movdqa %xmm4,%xmm10
     15e:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
     163:	66 44 0f 6f c7       	movdqa %xmm7,%xmm8
     168:	66 45 0f 69 d1       	punpckhwd %xmm9,%xmm10
     16d:	66 44 0f 61 c2       	punpcklwd %xmm2,%xmm8
     172:	66 41 0f 61 e1       	punpcklwd %xmm9,%xmm4
     177:	66 41 0f 61 c1       	punpcklwd %xmm9,%xmm0
     17c:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
     181:	66 41 0f 61 e2       	punpcklwd %xmm10,%xmm4
     186:	66 44 0f 69 ca       	punpckhwd %xmm2,%xmm9
     18b:	66 41 0f 69 c2       	punpckhwd %xmm10,%xmm0
     190:	66 0f 61 fa          	punpcklwd %xmm2,%xmm7
     194:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
     199:	66 0f 6f d5          	movdqa %xmm5,%xmm2
     19d:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
     1a2:	66 45 0f 69 d1       	punpckhwd %xmm9,%xmm10
     1a7:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
     1ab:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
     1b0:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
     1b5:	66 45 0f 61 c2       	punpcklwd %xmm10,%xmm8
     1ba:	66 41 0f 69 fa       	punpckhwd %xmm10,%xmm7
     1bf:	66 44 0f 69 ce       	punpckhwd %xmm6,%xmm9
     1c4:	66 44 0f 6f d2       	movdqa %xmm2,%xmm10
     1c9:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     1cd:	66 0f 6f f1          	movdqa %xmm1,%xmm6
     1d1:	66 45 0f 69 d1       	punpckhwd %xmm9,%xmm10
     1d6:	66 41 0f 61 d1       	punpcklwd %xmm9,%xmm2
     1db:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
     1df:	66 41 0f 61 e9       	punpcklwd %xmm9,%xmm5
     1e4:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
     1e9:	66 44 0f 69 cb       	punpckhwd %xmm3,%xmm9
     1ee:	66 41 0f 61 d2       	punpcklwd %xmm10,%xmm2
     1f3:	66 41 0f 69 ea       	punpckhwd %xmm10,%xmm5
     1f8:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
     1fd:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
     202:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     206:	66 45 0f 69 d1       	punpckhwd %xmm9,%xmm10
     20b:	66 45 0f 61 e0       	punpcklwd %xmm8,%xmm12
     210:	66 41 0f 61 f1       	punpcklwd %xmm9,%xmm6
     215:	66 0f 6f dc          	movdqa %xmm4,%xmm3
     219:	66 41 0f 61 f2       	punpcklwd %xmm10,%xmm6
     21e:	66 41 0f 61 c9       	punpcklwd %xmm9,%xmm1
     223:	66 41 0f 69 d8       	punpckhwd %xmm8,%xmm3
     228:	66 45 0f 6f cc       	movdqa %xmm12,%xmm9
     22d:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
     232:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
     237:	66 44 0f 69 cb       	punpckhwd %xmm3,%xmm9
     23c:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
     241:	66 44 0f 61 f6       	punpcklwd %xmm6,%xmm14
     246:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
     24a:	66 0f 6f da          	movdqa %xmm2,%xmm3
     24e:	66 41 0f 69 ca       	punpckhwd %xmm10,%xmm1
     253:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
     257:	66 45 0f 6f c6       	movdqa %xmm14,%xmm8
     25c:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
     260:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
     265:	66 44 0f 69 c3       	punpckhwd %xmm3,%xmm8
     26a:	66 44 0f 61 d7       	punpcklwd %xmm7,%xmm10
     26f:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
     274:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
     278:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     27c:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
     280:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
     285:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
     289:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     28d:	66 45 0f 61 f0       	punpcklwd %xmm8,%xmm14
     292:	66 41 0f 69 d0       	punpckhwd %xmm8,%xmm2
     297:	66 0f 69 f3          	punpckhwd %xmm3,%xmm6
     29b:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
     29f:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
     2a4:	66 0f 69 fe          	punpckhwd %xmm6,%xmm7
     2a8:	66 44 0f 61 d3       	punpcklwd %xmm3,%xmm10
     2ad:	66 44 0f 61 c1       	punpcklwd %xmm1,%xmm8
     2b2:	66 0f 6f dd          	movdqa %xmm5,%xmm3
     2b6:	66 0f 61 e9          	punpcklwd %xmm1,%xmm5
     2ba:	0f 29 7c 24 b8       	movaps %xmm7,-0x48(%rsp)
     2bf:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
     2c3:	66 44 0f 61 d6       	punpcklwd %xmm6,%xmm10
     2c8:	66 0f 6f fd          	movdqa %xmm5,%xmm7
     2cc:	66 0f 6f 68 80       	movdqa -0x80(%rax),%xmm5
     2d1:	66 41 0f 6f f0       	movdqa %xmm8,%xmm6
     2d6:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
     2da:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
     2df:	66 0f 69 f3          	punpckhwd %xmm3,%xmm6
     2e3:	66 0f 6f 58 90       	movdqa -0x70(%rax),%xmm3
     2e8:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
     2ed:	66 0f 6f cd          	movdqa %xmm5,%xmm1
     2f1:	66 44 0f 61 c6       	punpcklwd %xmm6,%xmm8
     2f6:	66 0f 69 fe          	punpckhwd %xmm6,%xmm7
     2fa:	66 0f 6f 70 a0       	movdqa -0x60(%rax),%xmm6
     2ff:	66 45 0f 61 e1       	punpcklwd %xmm9,%xmm12
     304:	66 44 0f 61 fb       	punpcklwd %xmm3,%xmm15
     309:	66 0f 69 cb          	punpckhwd %xmm3,%xmm1
     30d:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
     311:	0f 29 7c 24 c8       	movaps %xmm7,-0x38(%rsp)
     316:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
     31b:	66 0f 61 e9          	punpcklwd %xmm1,%xmm5
     31f:	66 44 0f 61 f9       	punpcklwd %xmm1,%xmm15
     324:	66 0f 69 c1          	punpckhwd %xmm1,%xmm0
     328:	66 41 0f 69 e1       	punpckhwd %xmm9,%xmm4
     32d:	66 44 0f 6f 48 c0    	movdqa -0x40(%rax),%xmm9
     333:	66 0f 6f ce          	movdqa %xmm6,%xmm1
     337:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
     33c:	66 0f 69 e8          	punpckhwd %xmm0,%xmm5
     340:	66 0f 6f c6          	movdqa %xmm6,%xmm0
     344:	66 41 0f 61 c3       	punpcklwd %xmm11,%xmm0
     349:	66 41 0f 69 cb       	punpckhwd %xmm11,%xmm1
     34e:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
     353:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     357:	66 0f 61 70 d0       	punpcklwd -0x30(%rax),%xmm6
     35c:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     360:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
     365:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
     369:	66 0f 61 f9          	punpcklwd %xmm1,%xmm7
     36d:	66 0f 6f 40 e0       	movdqa -0x20(%rax),%xmm0
     372:	66 44 0f 61 e9       	punpcklwd %xmm1,%xmm13
     377:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
     37c:	66 44 0f 61 48 d0    	punpcklwd -0x30(%rax),%xmm9
     382:	66 0f 69 48 d0       	punpckhwd -0x30(%rax),%xmm1
     387:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
     38b:	66 44 0f 69 eb       	punpckhwd %xmm3,%xmm13
     390:	66 0f 6f de          	movdqa %xmm6,%xmm3
     394:	66 0f 61 40 f0       	punpcklwd -0x10(%rax),%xmm0
     399:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
     39d:	66 0f 61 f1          	punpcklwd %xmm1,%xmm6
     3a1:	66 44 0f 61 c9       	punpcklwd %xmm1,%xmm9
     3a6:	66 0f 6f 48 e0       	movdqa -0x20(%rax),%xmm1
     3ab:	66 0f 61 48 f0       	punpcklwd -0x10(%rax),%xmm1
     3b0:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
     3b4:	66 44 0f 69 cb       	punpckhwd %xmm3,%xmm9
     3b9:	66 0f 6f 58 e0       	movdqa -0x20(%rax),%xmm3
     3be:	66 0f 69 58 f0       	punpckhwd -0x10(%rax),%xmm3
     3c3:	66 44 0f 6f d9       	movdqa %xmm1,%xmm11
     3c8:	66 44 0f 69 db       	punpckhwd %xmm3,%xmm11
     3cd:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     3d1:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
     3d5:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
     3da:	66 41 0f 61 cb       	punpcklwd %xmm11,%xmm1
     3df:	66 41 0f 69 c3       	punpckhwd %xmm11,%xmm0
     3e4:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
     3e8:	66 45 0f 6f df       	movdqa %xmm15,%xmm11
     3ed:	0f 29 44 24 d8       	movaps %xmm0,-0x28(%rsp)
     3f2:	66 44 0f 61 ff       	punpcklwd %xmm7,%xmm15
     3f7:	66 44 0f 69 df       	punpckhwd %xmm7,%xmm11
     3fc:	66 0f 6f c3          	movdqa %xmm3,%xmm0
     400:	66 41 0f 69 c3       	punpckhwd %xmm11,%xmm0
     405:	66 41 0f 61 db       	punpcklwd %xmm11,%xmm3
     40a:	66 45 0f 61 fb       	punpcklwd %xmm11,%xmm15
     40f:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
     413:	66 44 0f 69 f8       	punpckhwd %xmm0,%xmm15
     418:	66 44 0f 6f de       	movdqa %xmm6,%xmm11
     41d:	66 0f 6f c6          	movdqa %xmm6,%xmm0
     421:	66 0f 61 f1          	punpcklwd %xmm1,%xmm6
     425:	66 44 0f 69 d9       	punpckhwd %xmm1,%xmm11
     42a:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
     42e:	66 0f 6f ce          	movdqa %xmm6,%xmm1
     432:	66 0f 6f f5          	movdqa %xmm5,%xmm6
     436:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     43a:	66 41 0f 61 cb       	punpcklwd %xmm11,%xmm1
     43f:	66 41 0f 69 c3       	punpckhwd %xmm11,%xmm0
     444:	66 0f 69 c8          	punpckhwd %xmm0,%xmm1
     448:	66 41 0f 61 fb       	punpcklwd %xmm11,%xmm7
     44d:	66 41 0f 69 f5       	punpckhwd %xmm13,%xmm6
     452:	0f 29 4c 24 e8       	movaps %xmm1,-0x18(%rsp)
     457:	66 0f 6f cd          	movdqa %xmm5,%xmm1
     45b:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
     45f:	66 41 0f 61 ed       	punpcklwd %xmm13,%xmm5
     464:	66 41 0f 61 cd       	punpcklwd %xmm13,%xmm1
     469:	66 0f 6f 44 24 d8    	movdqa -0x28(%rsp),%xmm0
     46f:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     473:	66 44 0f 6f d9       	movdqa %xmm1,%xmm11
     478:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
     47c:	66 44 0f 69 de       	punpckhwd %xmm6,%xmm11
     481:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
     486:	66 41 0f 61 cb       	punpcklwd %xmm11,%xmm1
     48b:	66 41 0f 69 eb       	punpckhwd %xmm11,%xmm5
     490:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
     494:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
     499:	66 44 0f 6f ee       	movdqa %xmm6,%xmm13
     49e:	66 44 0f 61 c8       	punpcklwd %xmm0,%xmm9
     4a3:	66 44 0f 69 d8       	punpckhwd %xmm0,%xmm11
     4a8:	66 0f 6f 44 24 e8    	movdqa -0x18(%rsp),%xmm0
     4ae:	66 45 0f 69 eb       	punpckhwd %xmm11,%xmm13
     4b3:	66 41 0f 61 f3       	punpcklwd %xmm11,%xmm6
     4b8:	66 45 0f 61 cb       	punpcklwd %xmm11,%xmm9
     4bd:	66 41 0f 61 f5       	punpcklwd %xmm13,%xmm6
     4c2:	66 45 0f 69 cd       	punpckhwd %xmm13,%xmm9
     4c7:	66 44 0f 6f db       	movdqa %xmm3,%xmm11
     4cc:	66 44 0f 6f eb       	movdqa %xmm3,%xmm13
     4d1:	66 44 0f 61 df       	punpcklwd %xmm7,%xmm11
     4d6:	44 0f 29 4c 24 d8    	movaps %xmm9,-0x28(%rsp)
     4dc:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
     4e0:	66 44 0f 69 ef       	punpckhwd %xmm7,%xmm13
     4e5:	66 45 0f 6f cd       	movdqa %xmm13,%xmm9
     4ea:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
     4ef:	66 45 0f 69 e9       	punpckhwd %xmm9,%xmm13
     4f4:	66 45 0f 61 d9       	punpcklwd %xmm9,%xmm11
     4f9:	66 41 0f 61 d9       	punpcklwd %xmm9,%xmm3
     4fe:	66 45 0f 61 dd       	punpcklwd %xmm13,%xmm11
     503:	66 41 0f 69 dd       	punpckhwd %xmm13,%xmm3
     508:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
     50d:	66 44 0f 69 ee       	punpckhwd %xmm6,%xmm13
     512:	66 41 0f 6f fd       	movdqa %xmm13,%xmm7
     517:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
     51c:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
     520:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
     525:	66 0f 61 cf          	punpcklwd %xmm7,%xmm1
     529:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
     52e:	66 45 0f 6f cd       	movdqa %xmm13,%xmm9
     533:	66 44 0f 61 ef       	punpcklwd %xmm7,%xmm13
     538:	66 0f 69 f0          	punpckhwd %xmm0,%xmm6
     53c:	66 44 0f 69 cf       	punpckhwd %xmm7,%xmm9
     541:	66 45 0f 61 e9       	punpcklwd %xmm9,%xmm13
     546:	66 41 0f 69 c9       	punpckhwd %xmm9,%xmm1
     54b:	66 45 0f 6f cf       	movdqa %xmm15,%xmm9
     550:	66 44 0f 61 c8       	punpcklwd %xmm0,%xmm9
     555:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
     55a:	66 0f 6f 44 24 d8    	movdqa -0x28(%rsp),%xmm0
     560:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
     565:	66 44 0f 61 fe       	punpcklwd %xmm6,%xmm15
     56a:	66 44 0f 61 ce       	punpcklwd %xmm6,%xmm9
     56f:	66 0f 69 fe          	punpckhwd %xmm6,%xmm7
     573:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
     578:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
     57d:	66 0f 69 f7          	punpckhwd %xmm7,%xmm6
     581:	66 44 0f 69 f8       	punpckhwd %xmm0,%xmm15
     586:	66 44 0f 61 cf       	punpcklwd %xmm7,%xmm9
     58b:	0f 29 74 24 e8       	movaps %xmm6,-0x18(%rsp)
     590:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
     595:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
     59a:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
     59e:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
     5a3:	66 0f ef c0          	pxor   %xmm0,%xmm0
     5a7:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     5ab:	66 41 0f 65 c6       	pcmpgtw %xmm14,%xmm0
     5b0:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
     5b5:	66 44 0f 69 fe       	punpckhwd %xmm6,%xmm15
     5ba:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
     5be:	66 41 0f 69 ef       	punpckhwd %xmm15,%xmm5
     5c3:	66 41 0f 61 ff       	punpcklwd %xmm15,%xmm7
     5c8:	66 45 0f 6f fe       	movdqa %xmm14,%xmm15
     5cd:	0f 29 6c 24 d8       	movaps %xmm5,-0x28(%rsp)
     5d2:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
     5d7:	66 44 0f 69 f0       	punpckhwd %xmm0,%xmm14
     5dc:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
     5e1:	66 41 0f 72 f7 02    	pslld  $0x2,%xmm15
     5e7:	66 44 0f fe fe       	paddd  %xmm6,%xmm15
     5ec:	66 41 0f 6f ef       	movdqa %xmm15,%xmm5
     5f1:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     5f6:	66 41 0f fa ef       	psubd  %xmm15,%xmm5
     5fb:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     600:	66 0f fa ee          	psubd  %xmm6,%xmm5
     604:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     609:	66 0f fa ee          	psubd  %xmm6,%xmm5
     60d:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 615 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x615>
     614:	00 
     615:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
     61a:	66 41 0f 72 f7 03    	pslld  $0x3,%xmm15
     620:	66 41 0f fe f7       	paddd  %xmm15,%xmm6
     625:	66 45 0f 6f fe       	movdqa %xmm14,%xmm15
     62a:	66 41 0f 72 f7 02    	pslld  $0x2,%xmm15
     630:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     635:	66 45 0f fe fe       	paddd  %xmm14,%xmm15
     63a:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
     63f:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     644:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     648:	66 41 0f fa ef       	psubd  %xmm15,%xmm5
     64d:	66 44 0f 6f fe       	movdqa %xmm6,%xmm15
     652:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     657:	66 41 0f fa ee       	psubd  %xmm14,%xmm5
     65c:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     661:	66 41 0f fa ee       	psubd  %xmm14,%xmm5
     666:	66 44 0f 6f f6       	movdqa %xmm6,%xmm14
     66b:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     670:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # 678 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x678>
     677:	00 
     678:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     67d:	66 44 0f 61 fd       	punpcklwd %xmm5,%xmm15
     682:	66 44 0f 69 f5       	punpckhwd %xmm5,%xmm14
     687:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
     68c:	66 45 0f 61 fe       	punpcklwd %xmm14,%xmm15
     691:	66 41 0f 69 c6       	punpckhwd %xmm14,%xmm0
     696:	66 45 0f 6f f5       	movdqa %xmm13,%xmm14
     69b:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
     6a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
     6a4:	66 44 0f db 3d 00 00 	pand   0x0(%rip),%xmm15        # 6ad <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x6ad>
     6ab:	00 00 
     6ad:	66 41 0f 65 c5       	pcmpgtw %xmm13,%xmm0
     6b2:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
     6b7:	66 44 0f 69 e8       	punpckhwd %xmm0,%xmm13
     6bc:	66 41 0f 6f f6       	movdqa %xmm14,%xmm6
     6c1:	66 41 0f 72 f6 02    	pslld  $0x2,%xmm14
     6c7:	66 44 0f fe f6       	paddd  %xmm6,%xmm14
     6cc:	66 41 0f 6f ee       	movdqa %xmm14,%xmm5
     6d1:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     6d6:	66 41 0f fa ee       	psubd  %xmm14,%xmm5
     6db:	66 45 0f 6f f5       	movdqa %xmm13,%xmm14
     6e0:	66 41 0f 72 f6 02    	pslld  $0x2,%xmm14
     6e6:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     6eb:	66 45 0f fe f5       	paddd  %xmm13,%xmm14
     6f0:	66 0f fa ee          	psubd  %xmm6,%xmm5
     6f4:	66 41 0f 6f c6       	movdqa %xmm14,%xmm0
     6f9:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     6fe:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     703:	66 0f fa ee          	psubd  %xmm6,%xmm5
     707:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     70b:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     710:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # 718 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x718>
     717:	00 
     718:	66 41 0f fa f6       	psubd  %xmm14,%xmm6
     71d:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
     722:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     727:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     72c:	66 41 0f fa f5       	psubd  %xmm13,%xmm6
     731:	66 45 0f 65 f4       	pcmpgtw %xmm12,%xmm14
     736:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     73b:	66 41 0f fa f5       	psubd  %xmm13,%xmm6
     740:	66 44 0f 6f ed       	movdqa %xmm5,%xmm13
     745:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     74a:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # 752 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x752>
     751:	00 
     752:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     757:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     75b:	66 44 0f 69 ee       	punpckhwd %xmm6,%xmm13
     760:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
     765:	66 0f 6f c5          	movdqa %xmm5,%xmm0
     769:	66 41 0f 61 ed       	punpcklwd %xmm13,%xmm5
     76e:	66 41 0f 69 c5       	punpckhwd %xmm13,%xmm0
     773:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
     777:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
     77c:	66 0f db 2d 00 00 00 	pand   0x0(%rip),%xmm5        # 784 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x784>
     783:	00 
     784:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
     789:	66 45 0f 69 e6       	punpckhwd %xmm14,%xmm12
     78e:	66 45 0f ef f6       	pxor   %xmm14,%xmm14
     793:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
     798:	66 45 0f 65 f3       	pcmpgtw %xmm11,%xmm14
     79d:	66 0f 67 f5          	packuswb %xmm5,%xmm6
     7a1:	66 41 0f 72 f5 02    	pslld  $0x2,%xmm13
     7a7:	66 44 0f 6f fe       	movdqa %xmm6,%xmm15
     7ac:	66 44 0f fe e8       	paddd  %xmm0,%xmm13
     7b1:	66 44 0f fc fe       	paddb  %xmm6,%xmm15
     7b6:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     7ba:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
     7bf:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     7c4:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     7c8:	66 41 0f fa ed       	psubd  %xmm13,%xmm5
     7cd:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     7d2:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     7d7:	66 41 0f 72 f5 02    	pslld  $0x2,%xmm13
     7dd:	66 0f fa ee          	psubd  %xmm6,%xmm5
     7e1:	66 45 0f fe ec       	paddd  %xmm12,%xmm13
     7e6:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     7eb:	66 0f fa ee          	psubd  %xmm6,%xmm5
     7ef:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 7f7 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x7f7>
     7f6:	00 
     7f7:	66 0f 6f c5          	movdqa %xmm5,%xmm0
     7fb:	66 0f 72 f0 03       	pslld  $0x3,%xmm0
     800:	66 0f fe f0          	paddd  %xmm0,%xmm6
     804:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
     809:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     80e:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     813:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     817:	66 41 0f fa ed       	psubd  %xmm13,%xmm5
     81c:	66 44 0f 6f ee       	movdqa %xmm6,%xmm13
     821:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     826:	66 41 0f fa ec       	psubd  %xmm12,%xmm5
     82b:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     830:	66 41 0f fa ec       	psubd  %xmm12,%xmm5
     835:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
     83a:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     83f:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # 847 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x847>
     846:	00 
     847:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     84c:	66 44 0f 61 ed       	punpcklwd %xmm5,%xmm13
     851:	66 44 0f 69 e5       	punpckhwd %xmm5,%xmm12
     856:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
     85b:	66 45 0f 61 ec       	punpcklwd %xmm12,%xmm13
     860:	66 41 0f 69 c4       	punpckhwd %xmm12,%xmm0
     865:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
     86a:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
     86f:	66 45 0f 69 de       	punpckhwd %xmm14,%xmm11
     874:	66 44 0f db 2d 00 00 	pand   0x0(%rip),%xmm13        # 87d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x87d>
     87b:	00 00 
     87d:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
     882:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
     887:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     88b:	66 41 0f 72 f4 02    	pslld  $0x2,%xmm12
     891:	66 44 0f fe e0       	paddd  %xmm0,%xmm12
     896:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
     89b:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     8a0:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     8a4:	66 41 0f fa ec       	psubd  %xmm12,%xmm5
     8a9:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
     8ae:	66 41 0f 72 f4 02    	pslld  $0x2,%xmm12
     8b4:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     8b9:	66 45 0f fe e3       	paddd  %xmm11,%xmm12
     8be:	66 0f fa ee          	psubd  %xmm6,%xmm5
     8c2:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
     8c7:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     8cc:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     8d1:	66 0f fa ee          	psubd  %xmm6,%xmm5
     8d5:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     8d9:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     8de:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # 8e6 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x8e6>
     8e5:	00 
     8e6:	66 41 0f fa f4       	psubd  %xmm12,%xmm6
     8eb:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
     8f0:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     8f5:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     8fa:	66 41 0f fa f3       	psubd  %xmm11,%xmm6
     8ff:	66 45 0f 65 e2       	pcmpgtw %xmm10,%xmm12
     904:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     909:	66 41 0f fa f3       	psubd  %xmm11,%xmm6
     90e:	66 44 0f 6f dd       	movdqa %xmm5,%xmm11
     913:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     918:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # 920 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x920>
     91f:	00 
     920:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     925:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     929:	66 44 0f 69 de       	punpckhwd %xmm6,%xmm11
     92e:	66 0f 6f c5          	movdqa %xmm5,%xmm0
     932:	66 41 0f 61 eb       	punpcklwd %xmm11,%xmm5
     937:	66 41 0f 69 c3       	punpckhwd %xmm11,%xmm0
     93c:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
     940:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
     945:	66 0f db 2d 00 00 00 	pand   0x0(%rip),%xmm5        # 94d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x94d>
     94c:	00 
     94d:	66 41 0f 61 c4       	punpcklwd %xmm12,%xmm0
     952:	66 45 0f 69 d4       	punpckhwd %xmm12,%xmm10
     957:	66 45 0f ef e4       	pxor   %xmm12,%xmm12
     95c:	66 44 0f 6f d8       	movdqa %xmm0,%xmm11
     961:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     965:	66 44 0f 67 ed       	packuswb %xmm5,%xmm13
     96a:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     970:	66 45 0f 65 e1       	pcmpgtw %xmm9,%xmm12
     975:	66 45 0f eb ef       	por    %xmm15,%xmm13
     97a:	66 44 0f fe d8       	paddd  %xmm0,%xmm11
     97f:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
     984:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     989:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     98d:	66 41 0f fa eb       	psubd  %xmm11,%xmm5
     992:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
     997:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     99d:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     9a2:	66 45 0f fe da       	paddd  %xmm10,%xmm11
     9a7:	66 0f fa ee          	psubd  %xmm6,%xmm5
     9ab:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
     9b0:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     9b5:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     9ba:	66 0f fa ee          	psubd  %xmm6,%xmm5
     9be:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     9c2:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     9c7:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # 9cf <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x9cf>
     9ce:	00 
     9cf:	66 41 0f fa f3       	psubd  %xmm11,%xmm6
     9d4:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     9d9:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     9de:	66 41 0f fa f2       	psubd  %xmm10,%xmm6
     9e3:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     9e8:	66 41 0f fa f2       	psubd  %xmm10,%xmm6
     9ed:	66 44 0f 6f d5       	movdqa %xmm5,%xmm10
     9f2:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     9f7:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # 9ff <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x9ff>
     9fe:	00 
     9ff:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     a04:	66 0f 61 ee          	punpcklwd %xmm6,%xmm5
     a08:	66 44 0f 69 d6       	punpckhwd %xmm6,%xmm10
     a0d:	66 0f 6f c5          	movdqa %xmm5,%xmm0
     a11:	66 41 0f 61 ea       	punpcklwd %xmm10,%xmm5
     a16:	66 41 0f 69 c2       	punpckhwd %xmm10,%xmm0
     a1b:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
     a20:	66 45 0f 61 d4       	punpcklwd %xmm12,%xmm10
     a25:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
     a29:	66 0f db 2d 00 00 00 	pand   0x0(%rip),%xmm5        # a31 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xa31>
     a30:	00 
     a31:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
     a36:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     a3c:	66 45 0f fe da       	paddd  %xmm10,%xmm11
     a41:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
     a46:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     a4b:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     a4f:	66 0f 6f c5          	movdqa %xmm5,%xmm0
     a53:	66 41 0f fa f3       	psubd  %xmm11,%xmm6
     a58:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     a5d:	66 41 0f fa f2       	psubd  %xmm10,%xmm6
     a62:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     a67:	66 41 0f fa f2       	psubd  %xmm10,%xmm6
     a6c:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
     a71:	66 45 0f 69 d4       	punpckhwd %xmm12,%xmm10
     a76:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     a7b:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # a83 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xa83>
     a82:	00 
     a83:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
     a88:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     a8e:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     a93:	66 45 0f fe da       	paddd  %xmm10,%xmm11
     a98:	66 45 0f 6f cb       	movdqa %xmm11,%xmm9
     a9d:	66 41 0f 72 f1 06    	pslld  $0x6,%xmm9
     aa3:	66 45 0f fa cb       	psubd  %xmm11,%xmm9
     aa8:	66 41 0f 72 f1 06    	pslld  $0x6,%xmm9
     aae:	66 45 0f fa ca       	psubd  %xmm10,%xmm9
     ab3:	66 41 0f 72 f1 03    	pslld  $0x3,%xmm9
     ab9:	66 45 0f fa ca       	psubd  %xmm10,%xmm9
     abe:	66 44 0f 6f d6       	movdqa %xmm6,%xmm10
     ac3:	66 41 0f 72 f1 03    	pslld  $0x3,%xmm9
     ac9:	66 44 0f fe 0d 00 00 	paddd  0x0(%rip),%xmm9        # ad2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xad2>
     ad0:	00 00 
     ad2:	66 41 0f 72 d1 1f    	psrld  $0x1f,%xmm9
     ad8:	66 41 0f 61 f1       	punpcklwd %xmm9,%xmm6
     add:	66 45 0f 69 d1       	punpckhwd %xmm9,%xmm10
     ae2:	66 44 0f 6f ce       	movdqa %xmm6,%xmm9
     ae7:	66 41 0f 61 f2       	punpcklwd %xmm10,%xmm6
     aec:	66 45 0f 69 ca       	punpckhwd %xmm10,%xmm9
     af1:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
     af6:	66 41 0f 61 f1       	punpcklwd %xmm9,%xmm6
     afb:	66 45 0f 65 d0       	pcmpgtw %xmm8,%xmm10
     b00:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # b09 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xb09>
     b07:	00 00 
     b09:	66 44 0f db ce       	pand   %xmm6,%xmm9
     b0e:	66 41 0f 67 c1       	packuswb %xmm9,%xmm0
     b13:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
     b18:	66 45 0f 69 c2       	punpckhwd %xmm10,%xmm8
     b1d:	66 45 0f 61 ca       	punpcklwd %xmm10,%xmm9
     b22:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     b26:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
     b2b:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
     b30:	66 41 0f 72 f2 02    	pslld  $0x2,%xmm10
     b36:	66 0f fc f0          	paddb  %xmm0,%xmm6
     b3a:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     b40:	66 45 0f fe d0       	paddd  %xmm8,%xmm10
     b45:	66 0f fc f6          	paddb  %xmm6,%xmm6
     b49:	66 45 0f fe d9       	paddd  %xmm9,%xmm11
     b4e:	66 41 0f eb f5       	por    %xmm13,%xmm6
     b53:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
     b58:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     b5d:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     b61:	66 41 0f fa eb       	psubd  %xmm11,%xmm5
     b66:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     b6b:	66 41 0f fa e9       	psubd  %xmm9,%xmm5
     b70:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     b75:	66 41 0f fa e9       	psubd  %xmm9,%xmm5
     b7a:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
     b7f:	66 45 0f 6f c2       	movdqa %xmm10,%xmm8
     b84:	66 41 0f 72 f0 06    	pslld  $0x6,%xmm8
     b8a:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     b8f:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # b97 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xb97>
     b96:	00 
     b97:	66 45 0f fa c2       	psubd  %xmm10,%xmm8
     b9c:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
     ba1:	66 41 0f 72 f0 06    	pslld  $0x6,%xmm8
     ba7:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     bac:	66 45 0f fa c1       	psubd  %xmm9,%xmm8
     bb1:	66 44 0f 65 d7       	pcmpgtw %xmm7,%xmm10
     bb6:	66 41 0f 72 f0 03    	pslld  $0x3,%xmm8
     bbc:	66 45 0f fa c1       	psubd  %xmm9,%xmm8
     bc1:	66 44 0f 6f cd       	movdqa %xmm5,%xmm9
     bc6:	66 41 0f 72 f0 03    	pslld  $0x3,%xmm8
     bcc:	66 44 0f fe 05 00 00 	paddd  0x0(%rip),%xmm8        # bd5 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xbd5>
     bd3:	00 00 
     bd5:	66 41 0f 72 d0 1f    	psrld  $0x1f,%xmm8
     bdb:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
     be0:	66 45 0f 69 c8       	punpckhwd %xmm8,%xmm9
     be5:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
     bea:	66 41 0f 61 e9       	punpcklwd %xmm9,%xmm5
     bef:	66 45 0f 69 c1       	punpckhwd %xmm9,%xmm8
     bf4:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
     bf9:	66 45 0f 61 ca       	punpcklwd %xmm10,%xmm9
     bfe:	66 41 0f 61 e8       	punpcklwd %xmm8,%xmm5
     c03:	66 0f db 2d 00 00 00 	pand   0x0(%rip),%xmm5        # c0b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xc0b>
     c0a:	00 
     c0b:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
     c10:	66 41 0f 72 f3 02    	pslld  $0x2,%xmm11
     c16:	66 45 0f fe d9       	paddd  %xmm9,%xmm11
     c1b:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
     c20:	66 41 0f 72 f0 06    	pslld  $0x6,%xmm8
     c26:	66 45 0f fa c3       	psubd  %xmm11,%xmm8
     c2b:	66 41 0f 72 f0 06    	pslld  $0x6,%xmm8
     c31:	66 45 0f fa c1       	psubd  %xmm9,%xmm8
     c36:	66 41 0f 72 f0 03    	pslld  $0x3,%xmm8
     c3c:	66 45 0f fa c1       	psubd  %xmm9,%xmm8
     c41:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
     c46:	66 45 0f 69 ca       	punpckhwd %xmm10,%xmm9
     c4b:	66 41 0f 72 f0 03    	pslld  $0x3,%xmm8
     c51:	66 44 0f fe 05 00 00 	paddd  0x0(%rip),%xmm8        # c5a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xc5a>
     c58:	00 00 
     c5a:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
     c5f:	66 41 0f 72 f2 02    	pslld  $0x2,%xmm10
     c65:	66 41 0f 72 d0 1f    	psrld  $0x1f,%xmm8
     c6b:	66 45 0f fe d1       	paddd  %xmm9,%xmm10
     c70:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
     c75:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     c7a:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     c7e:	66 41 0f fa fa       	psubd  %xmm10,%xmm7
     c83:	66 0f 72 f7 06       	pslld  $0x6,%xmm7
     c88:	66 41 0f fa f9       	psubd  %xmm9,%xmm7
     c8d:	66 0f 72 f7 03       	pslld  $0x3,%xmm7
     c92:	66 41 0f fa f9       	psubd  %xmm9,%xmm7
     c97:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
     c9c:	66 0f 72 f7 03       	pslld  $0x3,%xmm7
     ca1:	66 0f fe 3d 00 00 00 	paddd  0x0(%rip),%xmm7        # ca9 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xca9>
     ca8:	00 
     ca9:	66 0f 72 d7 1f       	psrld  $0x1f,%xmm7
     cae:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
     cb3:	66 44 0f 69 cf       	punpckhwd %xmm7,%xmm9
     cb8:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
     cbd:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
     cc2:	66 41 0f 69 c1       	punpckhwd %xmm9,%xmm0
     cc7:	66 44 0f 61 c0       	punpcklwd %xmm0,%xmm8
     ccc:	66 0f ef c0          	pxor   %xmm0,%xmm0
     cd0:	66 44 0f db 05 00 00 	pand   0x0(%rip),%xmm8        # cd9 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xcd9>
     cd7:	00 00 
     cd9:	66 0f 65 c4          	pcmpgtw %xmm4,%xmm0
     cdd:	66 41 0f 67 e8       	packuswb %xmm8,%xmm5
     ce2:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
     ce7:	66 0f fc ed          	paddb  %xmm5,%xmm5
     ceb:	66 44 0f 61 c0       	punpcklwd %xmm0,%xmm8
     cf0:	66 0f fc ed          	paddb  %xmm5,%xmm5
     cf4:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
     cf9:	66 0f fc ed          	paddb  %xmm5,%xmm5
     cfd:	66 41 0f 72 f1 02    	pslld  $0x2,%xmm9
     d03:	66 0f eb ee          	por    %xmm6,%xmm5
     d07:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     d0b:	66 45 0f fe c8       	paddd  %xmm8,%xmm9
     d10:	66 0f 69 e6          	punpckhwd %xmm6,%xmm4
     d14:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
     d19:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     d1e:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     d22:	66 41 0f fa f9       	psubd  %xmm9,%xmm7
     d27:	66 0f 72 f7 06       	pslld  $0x6,%xmm7
     d2c:	66 41 0f fa f8       	psubd  %xmm8,%xmm7
     d31:	66 0f 72 f7 03       	pslld  $0x3,%xmm7
     d36:	66 41 0f fa f8       	psubd  %xmm8,%xmm7
     d3b:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
     d40:	66 41 0f 72 f0 02    	pslld  $0x2,%xmm8
     d46:	66 0f 72 f7 03       	pslld  $0x3,%xmm7
     d4b:	66 0f fe 3d 00 00 00 	paddd  0x0(%rip),%xmm7        # d53 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xd53>
     d52:	00 
     d53:	66 44 0f fe c4       	paddd  %xmm4,%xmm8
     d58:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
     d5d:	66 0f 72 d7 1f       	psrld  $0x1f,%xmm7
     d62:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     d67:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     d6b:	66 41 0f fa f0       	psubd  %xmm8,%xmm6
     d70:	66 44 0f 6f c7       	movdqa %xmm7,%xmm8
     d75:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     d7a:	66 0f fa f4          	psubd  %xmm4,%xmm6
     d7e:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     d83:	66 0f fa f4          	psubd  %xmm4,%xmm6
     d87:	66 0f 6f e7          	movdqa %xmm7,%xmm4
     d8b:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     d90:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # d98 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xd98>
     d97:	00 
     d98:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     d9d:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
     da1:	66 44 0f 69 c6       	punpckhwd %xmm6,%xmm8
     da6:	66 0f 6f c4          	movdqa %xmm4,%xmm0
     daa:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
     daf:	66 41 0f 69 c0       	punpckhwd %xmm8,%xmm0
     db4:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
     db9:	66 44 0f 65 c3       	pcmpgtw %xmm3,%xmm8
     dbe:	66 0f 61 e0          	punpcklwd %xmm0,%xmm4
     dc2:	66 0f 6f c3          	movdqa %xmm3,%xmm0
     dc6:	66 0f db 25 00 00 00 	pand   0x0(%rip),%xmm4        # dce <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xdce>
     dcd:	00 
     dce:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
     dd3:	66 41 0f 69 d8       	punpckhwd %xmm8,%xmm3
     dd8:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
     ddd:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     de1:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
     de6:	66 41 0f 72 f1 02    	pslld  $0x2,%xmm9
     dec:	66 41 0f 72 f0 02    	pslld  $0x2,%xmm8
     df2:	66 44 0f fe c8       	paddd  %xmm0,%xmm9
     df7:	66 44 0f fe c3       	paddd  %xmm3,%xmm8
     dfc:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
     e01:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     e06:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     e0a:	66 41 0f fa f1       	psubd  %xmm9,%xmm6
     e0f:	66 0f 72 f6 06       	pslld  $0x6,%xmm6
     e14:	66 0f fa f7          	psubd  %xmm7,%xmm6
     e18:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     e1d:	66 0f fa f7          	psubd  %xmm7,%xmm6
     e21:	66 0f 6f fb          	movdqa %xmm3,%xmm7
     e25:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
     e2a:	66 0f 72 f3 06       	pslld  $0x6,%xmm3
     e2f:	66 0f 72 f6 03       	pslld  $0x3,%xmm6
     e34:	66 0f fe 35 00 00 00 	paddd  0x0(%rip),%xmm6        # e3c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xe3c>
     e3b:	00 
     e3c:	66 41 0f fa d8       	psubd  %xmm8,%xmm3
     e41:	66 0f 72 f3 06       	pslld  $0x6,%xmm3
     e46:	66 0f 72 d6 1f       	psrld  $0x1f,%xmm6
     e4b:	66 0f fa df          	psubd  %xmm7,%xmm3
     e4f:	66 0f 6f c6          	movdqa %xmm6,%xmm0
     e53:	66 0f 72 f3 03       	pslld  $0x3,%xmm3
     e58:	66 0f fa df          	psubd  %xmm7,%xmm3
     e5c:	66 0f 72 f3 03       	pslld  $0x3,%xmm3
     e61:	66 0f fe 1d 00 00 00 	paddd  0x0(%rip),%xmm3        # e69 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xe69>
     e68:	00 
     e69:	66 0f 72 d3 1f       	psrld  $0x1f,%xmm3
     e6e:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
     e72:	66 0f 69 c3          	punpckhwd %xmm3,%xmm0
     e76:	66 0f 6f de          	movdqa %xmm6,%xmm3
     e7a:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
     e7e:	66 0f 69 d8          	punpckhwd %xmm0,%xmm3
     e82:	66 0f 6f c2          	movdqa %xmm2,%xmm0
     e86:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
     e8a:	66 0f 6f dc          	movdqa %xmm4,%xmm3
     e8e:	66 0f ef e4          	pxor   %xmm4,%xmm4
     e92:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
     e96:	66 0f db 35 00 00 00 	pand   0x0(%rip),%xmm6        # e9e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xe9e>
     e9d:	00 
     e9e:	66 0f 67 de          	packuswb %xmm6,%xmm3
     ea2:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
     ea6:	66 0f fc db          	paddb  %xmm3,%xmm3
     eaa:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
     eae:	66 0f 6f f0          	movdqa %xmm0,%xmm6
     eb2:	66 0f 72 f0 02       	pslld  $0x2,%xmm0
     eb7:	66 0f fc db          	paddb  %xmm3,%xmm3
     ebb:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     ebf:	66 0f fc db          	paddb  %xmm3,%xmm3
     ec3:	66 0f 6f e2          	movdqa %xmm2,%xmm4
     ec7:	66 0f fe fe          	paddd  %xmm6,%xmm7
     ecb:	66 0f fc db          	paddb  %xmm3,%xmm3
     ecf:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
     ed4:	66 0f 6f c7          	movdqa %xmm7,%xmm0
     ed8:	66 0f eb dd          	por    %xmm5,%xmm3
     edc:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
     ee1:	66 0f 6f e8          	movdqa %xmm0,%xmm5
     ee5:	66 0f fa ef          	psubd  %xmm7,%xmm5
     ee9:	66 0f 72 f5 06       	pslld  $0x6,%xmm5
     eee:	66 0f fa ee          	psubd  %xmm6,%xmm5
     ef2:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     ef7:	66 0f fa ee          	psubd  %xmm6,%xmm5
     efb:	66 0f 6f f4          	movdqa %xmm4,%xmm6
     eff:	66 0f fe f2          	paddd  %xmm2,%xmm6
     f03:	66 0f 72 f5 03       	pslld  $0x3,%xmm5
     f08:	66 0f fe 2d 00 00 00 	paddd  0x0(%rip),%xmm5        # f10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xf10>
     f0f:	00 
     f10:	66 0f 6f e6          	movdqa %xmm6,%xmm4
     f14:	66 0f 72 f4 06       	pslld  $0x6,%xmm4
     f19:	66 0f 72 d5 1f       	psrld  $0x1f,%xmm5
     f1e:	66 0f fa e6          	psubd  %xmm6,%xmm4
     f22:	66 0f 72 f4 06       	pslld  $0x6,%xmm4
     f27:	66 0f fa e2          	psubd  %xmm2,%xmm4
     f2b:	66 0f 72 f4 03       	pslld  $0x3,%xmm4
     f30:	66 0f fa e2          	psubd  %xmm2,%xmm4
     f34:	66 0f 6f d5          	movdqa %xmm5,%xmm2
     f38:	66 0f 72 f4 03       	pslld  $0x3,%xmm4
     f3d:	66 0f fe 25 00 00 00 	paddd  0x0(%rip),%xmm4        # f45 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xf45>
     f44:	00 
     f45:	66 0f 72 d4 1f       	psrld  $0x1f,%xmm4
     f4a:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
     f4e:	66 0f 6f f2          	movdqa %xmm2,%xmm6
     f52:	66 0f 6f d5          	movdqa %xmm5,%xmm2
     f56:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     f5a:	66 0f 6f e2          	movdqa %xmm2,%xmm4
     f5e:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
     f62:	66 0f 69 e6          	punpckhwd %xmm6,%xmm4
     f66:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     f6a:	66 0f ef e4          	pxor   %xmm4,%xmm4
     f6e:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
     f72:	66 0f 6f ec          	movdqa %xmm4,%xmm5
     f76:	66 0f 6f e1          	movdqa %xmm1,%xmm4
     f7a:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
     f7e:	66 0f 69 cd          	punpckhwd %xmm5,%xmm1
     f82:	66 0f 6f f4          	movdqa %xmm4,%xmm6
     f86:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
     f8b:	66 0f 6f fc          	movdqa %xmm4,%xmm7
     f8f:	66 0f fe fe          	paddd  %xmm6,%xmm7
     f93:	66 0f 6f e7          	movdqa %xmm7,%xmm4
     f97:	66 0f 72 f4 06       	pslld  $0x6,%xmm4
     f9c:	66 0f fa e7          	psubd  %xmm7,%xmm4
     fa0:	66 0f 72 f4 06       	pslld  $0x6,%xmm4
     fa5:	66 0f fa e6          	psubd  %xmm6,%xmm4
     fa9:	66 0f 72 f4 03       	pslld  $0x3,%xmm4
     fae:	66 0f fa e6          	psubd  %xmm6,%xmm4
     fb2:	66 0f 6f f1          	movdqa %xmm1,%xmm6
     fb6:	66 0f 72 f1 02       	pslld  $0x2,%xmm1
     fbb:	66 0f 72 f4 03       	pslld  $0x3,%xmm4
     fc0:	66 0f fe 25 00 00 00 	paddd  0x0(%rip),%xmm4        # fc8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0xfc8>
     fc7:	00 
     fc8:	66 0f 6f 7c 24 b8    	movdqa -0x48(%rsp),%xmm7
     fce:	66 0f 6f e9          	movdqa %xmm1,%xmm5
     fd2:	66 0f fe ee          	paddd  %xmm6,%xmm5
     fd6:	66 0f 72 d4 1f       	psrld  $0x1f,%xmm4
     fdb:	66 0f 6f cd          	movdqa %xmm5,%xmm1
     fdf:	66 0f 6f c4          	movdqa %xmm4,%xmm0
     fe3:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
     fe8:	66 0f fa cd          	psubd  %xmm5,%xmm1
     fec:	66 0f 72 f1 06       	pslld  $0x6,%xmm1
     ff1:	66 0f fa ce          	psubd  %xmm6,%xmm1
     ff5:	66 0f 72 f1 03       	pslld  $0x3,%xmm1
     ffa:	66 0f fa ce          	psubd  %xmm6,%xmm1
     ffe:	66 0f 6f 74 24 e8    	movdqa -0x18(%rsp),%xmm6
    1004:	66 0f 72 f1 03       	pslld  $0x3,%xmm1
    1009:	66 0f fe 0d 00 00 00 	paddd  0x0(%rip),%xmm1        # 1011 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1011>
    1010:	00 
    1011:	66 0f 72 d1 1f       	psrld  $0x1f,%xmm1
    1016:	66 0f 61 e1          	punpcklwd %xmm1,%xmm4
    101a:	66 0f 69 c1          	punpckhwd %xmm1,%xmm0
    101e:	66 0f 6f cc          	movdqa %xmm4,%xmm1
    1022:	66 0f 61 e0          	punpcklwd %xmm0,%xmm4
    1026:	66 0f 69 c8          	punpckhwd %xmm0,%xmm1
    102a:	66 0f 61 e1          	punpcklwd %xmm1,%xmm4
    102e:	66 0f 6f 0d 00 00 00 	movdqa 0x0(%rip),%xmm1        # 1036 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1036>
    1035:	00 
    1036:	66 0f db 25 00 00 00 	pand   0x0(%rip),%xmm4        # 103e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x103e>
    103d:	00 
    103e:	66 0f db ca          	pand   %xmm2,%xmm1
    1042:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1046:	66 0f 67 cc          	packuswb %xmm4,%xmm1
    104a:	66 0f 65 d7          	pcmpgtw %xmm7,%xmm2
    104e:	66 0f 6f e7          	movdqa %xmm7,%xmm4
    1052:	66 0f fc c9          	paddb  %xmm1,%xmm1
    1056:	66 0f fc c9          	paddb  %xmm1,%xmm1
    105a:	66 0f fc c9          	paddb  %xmm1,%xmm1
    105e:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
    1062:	66 0f 69 fa          	punpckhwd %xmm2,%xmm7
    1066:	66 0f fc c9          	paddb  %xmm1,%xmm1
    106a:	66 0f fc c9          	paddb  %xmm1,%xmm1
    106e:	66 0f eb cb          	por    %xmm3,%xmm1
    1072:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    1076:	66 0f 72 f3 02       	pslld  $0x2,%xmm3
    107b:	66 0f 6f eb          	movdqa %xmm3,%xmm5
    107f:	66 0f fe ec          	paddd  %xmm4,%xmm5
    1083:	66 0f 6f dd          	movdqa %xmm5,%xmm3
    1087:	66 0f 72 f3 06       	pslld  $0x6,%xmm3
    108c:	66 0f fa dd          	psubd  %xmm5,%xmm3
    1090:	66 0f 72 f3 06       	pslld  $0x6,%xmm3
    1095:	66 0f fa dc          	psubd  %xmm4,%xmm3
    1099:	66 0f 72 f3 03       	pslld  $0x3,%xmm3
    109e:	66 0f fa dc          	psubd  %xmm4,%xmm3
    10a2:	66 0f 6f e7          	movdqa %xmm7,%xmm4
    10a6:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
    10ab:	66 0f 72 f3 03       	pslld  $0x3,%xmm3
    10b0:	66 0f fe 1d 00 00 00 	paddd  0x0(%rip),%xmm3        # 10b8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x10b8>
    10b7:	00 
    10b8:	66 0f fe e7          	paddd  %xmm7,%xmm4
    10bc:	66 0f 6f d4          	movdqa %xmm4,%xmm2
    10c0:	66 0f 72 d3 1f       	psrld  $0x1f,%xmm3
    10c5:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    10ca:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    10ce:	66 0f fa d4          	psubd  %xmm4,%xmm2
    10d2:	66 0f 6f e3          	movdqa %xmm3,%xmm4
    10d6:	66 0f 6f de          	movdqa %xmm6,%xmm3
    10da:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    10df:	66 0f fa d7          	psubd  %xmm7,%xmm2
    10e3:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    10e8:	66 0f fa d7          	psubd  %xmm7,%xmm2
    10ec:	66 0f 6f 7c 24 c8    	movdqa -0x38(%rsp),%xmm7
    10f2:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    10f7:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 10ff <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x10ff>
    10fe:	00 
    10ff:	66 0f 72 d2 1f       	psrld  $0x1f,%xmm2
    1104:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
    1108:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
    110c:	66 0f 6f d0          	movdqa %xmm0,%xmm2
    1110:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    1114:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
    1118:	66 0f ef e4          	pxor   %xmm4,%xmm4
    111c:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
    1120:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
    1124:	66 0f db 05 00 00 00 	pand   0x0(%rip),%xmm0        # 112c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x112c>
    112b:	00 
    112c:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    1130:	66 0f 6f ec          	movdqa %xmm4,%xmm5
    1134:	66 0f 6f e3          	movdqa %xmm3,%xmm4
    1138:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
    113d:	66 0f fe e3          	paddd  %xmm3,%xmm4
    1141:	66 0f 6f d4          	movdqa %xmm4,%xmm2
    1145:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    114a:	66 0f fa d4          	psubd  %xmm4,%xmm2
    114e:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1153:	66 0f fa d3          	psubd  %xmm3,%xmm2
    1157:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    115c:	66 0f fa d3          	psubd  %xmm3,%xmm2
    1160:	66 0f 6f de          	movdqa %xmm6,%xmm3
    1164:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    1169:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 1171 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1171>
    1170:	00 
    1171:	66 0f 69 dd          	punpckhwd %xmm5,%xmm3
    1175:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    1179:	66 0f 6f d3          	movdqa %xmm3,%xmm2
    117d:	66 0f 72 f2 02       	pslld  $0x2,%xmm2
    1182:	66 0f 72 d4 1f       	psrld  $0x1f,%xmm4
    1187:	66 0f 6f ea          	movdqa %xmm2,%xmm5
    118b:	66 0f fe eb          	paddd  %xmm3,%xmm5
    118f:	66 0f 6f d5          	movdqa %xmm5,%xmm2
    1193:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1198:	66 0f fa d5          	psubd  %xmm5,%xmm2
    119c:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    11a1:	66 0f fa d3          	psubd  %xmm3,%xmm2
    11a5:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    11aa:	66 0f fa d3          	psubd  %xmm3,%xmm2
    11ae:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    11b2:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    11b7:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 11bf <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x11bf>
    11be:	00 
    11bf:	66 0f 72 d2 1f       	psrld  $0x1f,%xmm2
    11c4:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
    11c8:	66 0f 6f eb          	movdqa %xmm3,%xmm5
    11cc:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    11d0:	66 0f ef e4          	pxor   %xmm4,%xmm4
    11d4:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    11d8:	66 0f 65 e7          	pcmpgtw %xmm7,%xmm4
    11dc:	66 0f 6f d3          	movdqa %xmm3,%xmm2
    11e0:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
    11e4:	66 0f 69 d5          	punpckhwd %xmm5,%xmm2
    11e8:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    11ec:	66 0f db 1d 00 00 00 	pand   0x0(%rip),%xmm3        # 11f4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x11f4>
    11f3:	00 
    11f4:	66 0f 6f d7          	movdqa %xmm7,%xmm2
    11f8:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
    11fc:	66 0f 69 fc          	punpckhwd %xmm4,%xmm7
    1200:	66 0f 67 c3          	packuswb %xmm3,%xmm0
    1204:	66 0f 6f da          	movdqa %xmm2,%xmm3
    1208:	66 0f 6f e7          	movdqa %xmm7,%xmm4
    120c:	66 0f 72 f3 02       	pslld  $0x2,%xmm3
    1211:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
    1216:	66 0f fc c0          	paddb  %xmm0,%xmm0
    121a:	66 0f fc c0          	paddb  %xmm0,%xmm0
    121e:	66 0f fe da          	paddd  %xmm2,%xmm3
    1222:	66 0f fc c0          	paddb  %xmm0,%xmm0
    1226:	66 0f fe e7          	paddd  %xmm7,%xmm4
    122a:	66 0f fc c0          	paddb  %xmm0,%xmm0
    122e:	66 0f fc c0          	paddb  %xmm0,%xmm0
    1232:	66 0f fc c0          	paddb  %xmm0,%xmm0
    1236:	66 0f eb c8          	por    %xmm0,%xmm1
    123a:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    123e:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
    1243:	66 0f fa c3          	psubd  %xmm3,%xmm0
    1247:	66 0f 72 f0 06       	pslld  $0x6,%xmm0
    124c:	66 0f fa c2          	psubd  %xmm2,%xmm0
    1250:	66 0f 72 f0 03       	pslld  $0x3,%xmm0
    1255:	66 0f fa c2          	psubd  %xmm2,%xmm0
    1259:	66 0f 6f d4          	movdqa %xmm4,%xmm2
    125d:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1262:	66 0f 72 f0 03       	pslld  $0x3,%xmm0
    1267:	66 0f fe 05 00 00 00 	paddd  0x0(%rip),%xmm0        # 126f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x126f>
    126e:	00 
    126f:	66 0f fa d4          	psubd  %xmm4,%xmm2
    1273:	66 0f ef e4          	pxor   %xmm4,%xmm4
    1277:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    127c:	66 0f 72 d0 1f       	psrld  $0x1f,%xmm0
    1281:	66 0f fa d7          	psubd  %xmm7,%xmm2
    1285:	66 0f 6f d8          	movdqa %xmm0,%xmm3
    1289:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    128e:	66 0f fa d7          	psubd  %xmm7,%xmm2
    1292:	66 0f 6f 7c 24 d8    	movdqa -0x28(%rsp),%xmm7
    1298:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    129d:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 12a5 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x12a5>
    12a4:	00 
    12a5:	66 0f 65 e7          	pcmpgtw %xmm7,%xmm4
    12a9:	66 0f 72 d2 1f       	psrld  $0x1f,%xmm2
    12ae:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
    12b2:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
    12b6:	66 0f 6f d0          	movdqa %xmm0,%xmm2
    12ba:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    12be:	66 0f 6f ec          	movdqa %xmm4,%xmm5
    12c2:	66 0f 69 d3          	punpckhwd %xmm3,%xmm2
    12c6:	66 0f 6f df          	movdqa %xmm7,%xmm3
    12ca:	66 0f 69 fd          	punpckhwd %xmm5,%xmm7
    12ce:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    12d2:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
    12d6:	66 0f 6f ef          	movdqa %xmm7,%xmm5
    12da:	66 0f 6f e3          	movdqa %xmm3,%xmm4
    12de:	66 0f 72 f5 02       	pslld  $0x2,%xmm5
    12e3:	66 0f db 05 00 00 00 	pand   0x0(%rip),%xmm0        # 12eb <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x12eb>
    12ea:	00 
    12eb:	66 0f 72 f4 02       	pslld  $0x2,%xmm4
    12f0:	66 0f fe ef          	paddd  %xmm7,%xmm5
    12f4:	66 0f fe e3          	paddd  %xmm3,%xmm4
    12f8:	66 0f 6f d4          	movdqa %xmm4,%xmm2
    12fc:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1301:	66 0f fa d4          	psubd  %xmm4,%xmm2
    1305:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    130a:	66 0f fa d3          	psubd  %xmm3,%xmm2
    130e:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    1313:	66 0f fa d3          	psubd  %xmm3,%xmm2
    1317:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    131c:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 1324 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1324>
    1323:	00 
    1324:	66 0f 6f e2          	movdqa %xmm2,%xmm4
    1328:	66 0f 6f d5          	movdqa %xmm5,%xmm2
    132c:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1331:	66 0f 72 d4 1f       	psrld  $0x1f,%xmm4
    1336:	66 0f fa d5          	psubd  %xmm5,%xmm2
    133a:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    133e:	66 0f 6f ec          	movdqa %xmm4,%xmm5
    1342:	66 0f 72 f2 06       	pslld  $0x6,%xmm2
    1347:	66 0f fa d7          	psubd  %xmm7,%xmm2
    134b:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    1350:	66 0f fa d7          	psubd  %xmm7,%xmm2
    1354:	66 0f 72 f2 03       	pslld  $0x3,%xmm2
    1359:	66 0f fe 15 00 00 00 	paddd  0x0(%rip),%xmm2        # 1361 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1361>
    1360:	00 
    1361:	66 0f 72 d2 1f       	psrld  $0x1f,%xmm2
    1366:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    136a:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
    136e:	66 0f 6f d3          	movdqa %xmm3,%xmm2
    1372:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
    1376:	66 0f 69 d5          	punpckhwd %xmm5,%xmm2
    137a:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    137e:	66 0f db 1d 00 00 00 	pand   0x0(%rip),%xmm3        # 1386 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x1386>
    1385:	00 
    1386:	66 0f 67 c3          	packuswb %xmm3,%xmm0
    138a:	66 0f fc c0          	paddb  %xmm0,%xmm0
    138e:	66 0f fc c0          	paddb  %xmm0,%xmm0
    1392:	66 0f fc c0          	paddb  %xmm0,%xmm0
    1396:	66 0f fc c0          	paddb  %xmm0,%xmm0
    139a:	66 0f fc c0          	paddb  %xmm0,%xmm0
    139e:	66 0f fc c0          	paddb  %xmm0,%xmm0
    13a2:	66 0f fc c0          	paddb  %xmm0,%xmm0
    13a6:	66 0f eb c8          	por    %xmm0,%xmm1
    13aa:	0f 11 4a f0          	movups %xmm1,-0x10(%rdx)
    13ae:	48 39 d1             	cmp    %rdx,%rcx
    13b1:	0f 85 6c ec ff ff    	jne    23 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x23>
    13b7:	c3                   	ret
    13b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13bf:	00 
    13c0:	c6 02 00             	movb   $0x0,(%rdx)
    13c3:	0f bf 08             	movswl (%rax),%ecx
    13c6:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
    13cc:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
    13d2:	c1 e9 1f             	shr    $0x1f,%ecx
    13d5:	88 0a                	mov    %cl,(%rdx)
    13d7:	0f bf 70 02          	movswl 0x2(%rax),%esi
    13db:	69 f6 b8 af 13 00    	imul   $0x13afb8,%esi,%esi
    13e1:	81 c6 00 00 00 40    	add    $0x40000000,%esi
    13e7:	c1 ee 1f             	shr    $0x1f,%esi
    13ea:	01 f6                	add    %esi,%esi
    13ec:	09 ce                	or     %ecx,%esi
    13ee:	40 88 32             	mov    %sil,(%rdx)
    13f1:	0f bf 48 04          	movswl 0x4(%rax),%ecx
    13f5:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
    13fb:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
    1401:	c1 e9 1f             	shr    $0x1f,%ecx
    1404:	c1 e1 02             	shl    $0x2,%ecx
    1407:	09 f1                	or     %esi,%ecx
    1409:	88 0a                	mov    %cl,(%rdx)
    140b:	0f bf 70 06          	movswl 0x6(%rax),%esi
    140f:	69 f6 b8 af 13 00    	imul   $0x13afb8,%esi,%esi
    1415:	81 c6 00 00 00 40    	add    $0x40000000,%esi
    141b:	c1 ee 1f             	shr    $0x1f,%esi
    141e:	c1 e6 03             	shl    $0x3,%esi
    1421:	09 ce                	or     %ecx,%esi
    1423:	40 88 32             	mov    %sil,(%rdx)
    1426:	0f bf 48 08          	movswl 0x8(%rax),%ecx
    142a:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
    1430:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
    1436:	c1 e9 1f             	shr    $0x1f,%ecx
    1439:	c1 e1 04             	shl    $0x4,%ecx
    143c:	09 f1                	or     %esi,%ecx
    143e:	88 0a                	mov    %cl,(%rdx)
    1440:	0f bf 70 0a          	movswl 0xa(%rax),%esi
    1444:	69 f6 b8 af 13 00    	imul   $0x13afb8,%esi,%esi
    144a:	81 c6 00 00 00 40    	add    $0x40000000,%esi
    1450:	c1 ee 1f             	shr    $0x1f,%esi
    1453:	c1 e6 05             	shl    $0x5,%esi
    1456:	09 ce                	or     %ecx,%esi
    1458:	40 88 32             	mov    %sil,(%rdx)
    145b:	0f bf 48 0c          	movswl 0xc(%rax),%ecx
    145f:	69 c9 b8 af 13 00    	imul   $0x13afb8,%ecx,%ecx
    1465:	81 c1 00 00 00 40    	add    $0x40000000,%ecx
    146b:	c1 e9 1f             	shr    $0x1f,%ecx
    146e:	c1 e1 06             	shl    $0x6,%ecx
    1471:	09 f1                	or     %esi,%ecx
    1473:	48 83 c0 10          	add    $0x10,%rax
    1477:	48 83 c2 01          	add    $0x1,%rdx
    147b:	88 4a ff             	mov    %cl,-0x1(%rdx)
    147e:	0f bf 70 fe          	movswl -0x2(%rax),%esi
    1482:	69 f6 b8 af 13 00    	imul   $0x13afb8,%esi,%esi
    1488:	81 c6 00 00 00 40    	add    $0x40000000,%esi
    148e:	c1 ee 1f             	shr    $0x1f,%esi
    1491:	c1 e6 07             	shl    $0x7,%esi
    1494:	09 f1                	or     %esi,%ecx
    1496:	88 4a ff             	mov    %cl,-0x1(%rdx)
    1499:	49 39 c0             	cmp    %rax,%r8
    149c:	0f 85 1e ff ff ff    	jne    13c0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomsg+0x13c0>
    14a2:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/debug.c.o:     file format elf64-x86-64


<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/indcpa.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 54                	push   %r12
   a:	53                   	push   %rbx
   b:	48 89 fb             	mov    %rdi,%rbx
   e:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  12:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  19:	f3 0f 6f 0e          	movdqu (%rsi),%xmm1
  1d:	f3 0f 6f 46 10       	movdqu 0x10(%rsi),%xmm0
  22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  29:	00 00 
  2b:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
  32:	00 
  33:	31 c0                	xor    %eax,%eax
  35:	49 89 e4             	mov    %rsp,%r12
  38:	48 8d 8c 24 00 01 00 	lea    0x100(%rsp),%rcx
  3f:	00 
  40:	4c 89 e0             	mov    %r12,%rax
  43:	0f 29 08             	movaps %xmm1,(%rax)
  46:	48 83 c0 40          	add    $0x40,%rax
  4a:	0f 29 40 d0          	movaps %xmm0,-0x30(%rax)
  4e:	48 39 c8             	cmp    %rcx,%rax
  51:	75 f0                	jne    43 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x43>
  53:	31 c0                	xor    %eax,%eax
  55:	66 89 44 24 20       	mov    %ax,0x20(%rsp)
  5a:	85 d2                	test   %edx,%edx
  5c:	0f 85 ee 00 00 00    	jne    150 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x150>
  62:	b8 01 00 00 00       	mov    $0x1,%eax
  67:	4d 89 e0             	mov    %r12,%r8
  6a:	48 89 df             	mov    %rbx,%rdi
  6d:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
  72:	b8 02 00 00 00       	mov    $0x2,%eax
  77:	48 8d 8b 00 06 00 00 	lea    0x600(%rbx),%rcx
  7e:	48 8d 93 00 04 00 00 	lea    0x400(%rbx),%rdx
  85:	66 89 84 24 a0 00 00 	mov    %ax,0xa0(%rsp)
  8c:	00 
  8d:	48 8d b3 00 02 00 00 	lea    0x200(%rbx),%rsi
  94:	b8 00 01 00 00       	mov    $0x100,%eax
  99:	66 89 84 24 e0 00 00 	mov    %ax,0xe0(%rsp)
  a0:	00 
  a1:	e8 00 00 00 00       	call   a6 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0xa6>
  a6:	31 f6                	xor    %esi,%esi
  a8:	b9 02 00 00 00       	mov    $0x2,%ecx
  ad:	ba 01 00 00 00       	mov    $0x1,%edx
  b2:	b8 02 00 00 00       	mov    $0x2,%eax
  b7:	bf 01 01 00 00       	mov    $0x101,%edi
  bc:	88 54 24 61          	mov    %dl,0x61(%rsp)
  c0:	4d 89 e0             	mov    %r12,%r8
  c3:	66 89 7c 24 20       	mov    %di,0x20(%rsp)
  c8:	48 8d bb 00 08 00 00 	lea    0x800(%rbx),%rdi
  cf:	40 88 b4 24 a0 00 00 	mov    %sil,0xa0(%rsp)
  d6:	00 
  d7:	48 8d b3 00 0a 00 00 	lea    0xa00(%rbx),%rsi
  de:	88 8c 24 a1 00 00 00 	mov    %cl,0xa1(%rsp)
  e5:	48 8d 8b 00 0e 00 00 	lea    0xe00(%rbx),%rcx
  ec:	88 94 24 e0 00 00 00 	mov    %dl,0xe0(%rsp)
  f3:	48 8d 93 00 0c 00 00 	lea    0xc00(%rbx),%rdx
  fa:	88 44 24 60          	mov    %al,0x60(%rsp)
  fe:	88 84 24 e1 00 00 00 	mov    %al,0xe1(%rsp)
 105:	e8 00 00 00 00       	call   10a <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x10a>
 10a:	41 b8 02 02 00 00    	mov    $0x202,%r8d
 110:	48 8d bb 00 10 00 00 	lea    0x1000(%rbx),%rdi
 117:	4c 89 e6             	mov    %r12,%rsi
 11a:	66 44 89 44 24 20    	mov    %r8w,0x20(%rsp)
 120:	e8 00 00 00 00       	call   125 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x125>
 125:	31 c0                	xor    %eax,%eax
 127:	4c 89 e7             	mov    %r12,%rdi
 12a:	b9 20 00 00 00       	mov    $0x20,%ecx
 12f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 132:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
 139:	00 
 13a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 141:	00 00 
 143:	75 6b                	jne    1b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x1b0>
 145:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
 149:	5b                   	pop    %rbx
 14a:	41 5c                	pop    %r12
 14c:	5d                   	pop    %rbp
 14d:	c3                   	ret
 14e:	66 90                	xchg   %ax,%ax
 150:	41 b9 00 01 00 00    	mov    $0x100,%r9d
 156:	41 ba 00 02 00 00    	mov    $0x200,%r10d
 15c:	41 bb 01 00 00 00    	mov    $0x1,%r11d
 162:	4d 89 e0             	mov    %r12,%r8
 165:	48 8d 8b 00 06 00 00 	lea    0x600(%rbx),%rcx
 16c:	48 8d 93 00 04 00 00 	lea    0x400(%rbx),%rdx
 173:	48 89 df             	mov    %rbx,%rdi
 176:	66 44 89 4c 24 60    	mov    %r9w,0x60(%rsp)
 17c:	66 44 89 94 24 a0 00 	mov    %r10w,0xa0(%rsp)
 183:	00 00 
 185:	48 8d b3 00 02 00 00 	lea    0x200(%rbx),%rsi
 18c:	66 44 89 9c 24 e0 00 	mov    %r11w,0xe0(%rsp)
 193:	00 00 
 195:	e8 00 00 00 00       	call   19a <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x19a>
 19a:	be 02 00 00 00       	mov    $0x2,%esi
 19f:	31 c9                	xor    %ecx,%ecx
 1a1:	ba 02 00 00 00       	mov    $0x2,%edx
 1a6:	b8 01 00 00 00       	mov    $0x1,%eax
 1ab:	e9 07 ff ff ff       	jmp    b7 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0xb7>
 1b0:	e8 00 00 00 00       	call   1b5 <PQCP_MLKEM_NATIVE_MLKEM768_C_gen_matrix+0x1b5>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand>:
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
  3f:	f3 0f 6f 0a          	movdqu (%rdx),%xmm1
  43:	f3 0f 6f 52 10       	movdqu 0x10(%rdx),%xmm2
  48:	ba 21 00 00 00       	mov    $0x21,%edx
  4d:	48 89 bd 10 d8 ff ff 	mov    %rdi,-0x27f0(%rbp)
  54:	48 8d 9d 70 ff ff ff 	lea    -0x90(%rbp),%rbx
  5b:	4c 8d b5 30 ed ff ff 	lea    -0x12d0(%rbp),%r14
  62:	48 89 b5 08 d8 ff ff 	mov    %rsi,-0x27f8(%rbp)
  69:	48 89 df             	mov    %rbx,%rdi
  6c:	48 8d b5 30 ff ff ff 	lea    -0xd0(%rbp),%rsi
  73:	4c 8d 65 90          	lea    -0x70(%rbp),%r12
  77:	4c 8d ad 30 d8 ff ff 	lea    -0x27d0(%rbp),%r13
  7e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  85:	00 00 
  87:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  8b:	31 c0                	xor    %eax,%eax
  8d:	0f 29 8d 30 ff ff ff 	movaps %xmm1,-0xd0(%rbp)
  94:	0f 29 95 40 ff ff ff 	movaps %xmm2,-0xc0(%rbp)
  9b:	48 89 b5 28 d8 ff ff 	mov    %rsi,-0x27d8(%rbp)
  a2:	48 89 9d 00 d8 ff ff 	mov    %rbx,-0x2800(%rbp)
  a9:	c6 85 50 ff ff ff 03 	movb   $0x3,-0xb0(%rbp)
  b0:	e8 00 00 00 00       	call   b5 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0xb5>
  b5:	48 89 de             	mov    %rbx,%rsi
  b8:	31 d2                	xor    %edx,%edx
  ba:	4c 89 f7             	mov    %r14,%rdi
  bd:	4c 89 b5 18 d8 ff ff 	mov    %r14,-0x27e8(%rbp)
  c4:	48 8d 9d 30 e7 ff ff 	lea    -0x18d0(%rbp),%rbx
  cb:	e8 00 00 00 00       	call   d0 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0xd0>
  d0:	48 83 ec 08          	sub    $0x8,%rsp
  d4:	4d 89 e0             	mov    %r12,%r8
  d7:	45 31 c9             	xor    %r9d,%r9d
  da:	68 ff 00 00 00       	push   $0xff
  df:	48 8d 95 30 eb ff ff 	lea    -0x14d0(%rbp),%rdx
  e6:	31 c9                	xor    %ecx,%ecx
  e8:	48 89 df             	mov    %rbx,%rdi
  eb:	6a 02                	push   $0x2
  ed:	48 8d b5 30 e9 ff ff 	lea    -0x16d0(%rbp),%rsi
  f4:	6a 01                	push   $0x1
  f6:	e8 00 00 00 00       	call   fb <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0xfb>
  fb:	48 83 c4 18          	add    $0x18,%rsp
  ff:	4d 89 e0             	mov    %r12,%r8
 102:	31 c9                	xor    %ecx,%ecx
 104:	48 8d 85 30 db ff ff 	lea    -0x24d0(%rbp),%rax
 10b:	48 8d 95 30 df ff ff 	lea    -0x20d0(%rbp),%rdx
 112:	41 b9 03 00 00 00    	mov    $0x3,%r9d
 118:	48 89 85 20 d8 ff ff 	mov    %rax,-0x27e0(%rbp)
 11f:	48 89 c7             	mov    %rax,%rdi
 122:	48 8d b5 30 dd ff ff 	lea    -0x22d0(%rbp),%rsi
 129:	49 89 c7             	mov    %rax,%r15
 12c:	68 ff 00 00 00       	push   $0xff
 131:	4c 8d a5 30 e1 ff ff 	lea    -0x1ed0(%rbp),%r12
 138:	6a 05                	push   $0x5
 13a:	6a 04                	push   $0x4
 13c:	e8 00 00 00 00       	call   141 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x141>
 141:	48 83 c4 20          	add    $0x20,%rsp
 145:	48 89 df             	mov    %rbx,%rdi
 148:	e8 00 00 00 00       	call   14d <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x14d>
 14d:	4c 89 ff             	mov    %r15,%rdi
 150:	4d 89 e7             	mov    %r12,%r15
 153:	e8 00 00 00 00       	call   158 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x158>
 158:	48 89 de             	mov    %rbx,%rsi
 15b:	4c 89 ef             	mov    %r13,%rdi
 15e:	e8 00 00 00 00       	call   163 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x163>
 163:	4c 89 f6             	mov    %r14,%rsi
 166:	4c 89 ff             	mov    %r15,%rdi
 169:	4c 89 e9             	mov    %r13,%rcx
 16c:	48 89 da             	mov    %rbx,%rdx
 16f:	e8 00 00 00 00       	call   174 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x174>
 174:	48 8b 85 28 d8 ff ff 	mov    -0x27d8(%rbp),%rax
 17b:	49 81 c6 00 06 00 00 	add    $0x600,%r14
 182:	49 81 c7 00 02 00 00 	add    $0x200,%r15
 189:	49 39 c6             	cmp    %rax,%r14
 18c:	75 d5                	jne    163 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x163>
 18e:	4c 89 e7             	mov    %r12,%rdi
 191:	e8 00 00 00 00       	call   196 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x196>
 196:	48 8b b5 20 d8 ff ff 	mov    -0x27e0(%rbp),%rsi
 19d:	4c 89 e7             	mov    %r12,%rdi
 1a0:	e8 00 00 00 00       	call   1a5 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x1a5>
 1a5:	4c 89 e7             	mov    %r12,%rdi
 1a8:	e8 00 00 00 00       	call   1ad <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x1ad>
 1ad:	48 89 df             	mov    %rbx,%rdi
 1b0:	e8 00 00 00 00       	call   1b5 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x1b5>
 1b5:	48 8b bd 08 d8 ff ff 	mov    -0x27f8(%rbp),%rdi
 1bc:	48 89 de             	mov    %rbx,%rsi
 1bf:	e8 00 00 00 00       	call   1c4 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x1c4>
 1c4:	4c 8b bd 10 d8 ff ff 	mov    -0x27f0(%rbp),%r15
 1cb:	4c 89 e6             	mov    %r12,%rsi
 1ce:	4c 89 ff             	mov    %r15,%rdi
 1d1:	e8 00 00 00 00       	call   1d6 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x1d6>
 1d6:	66 0f 6f 65 80       	movdqa -0x80(%rbp),%xmm4
 1db:	31 c0                	xor    %eax,%eax
 1dd:	4c 89 ef             	mov    %r13,%rdi
 1e0:	66 0f 6f 9d 70 ff ff 	movdqa -0x90(%rbp),%xmm3
 1e7:	ff 
 1e8:	b9 60 00 00 00       	mov    $0x60,%ecx
 1ed:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 1f0:	41 0f 11 a7 90 04 00 	movups %xmm4,0x490(%r15)
 1f7:	00 
 1f8:	41 0f 11 9f 80 04 00 	movups %xmm3,0x480(%r15)
 1ff:	00 
 200:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 205:	48 89 df             	mov    %rbx,%rdi
 208:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 20b:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 210:	4c 89 e7             	mov    %r12,%rdi
 213:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 216:	48 8b bd 20 d8 ff ff 	mov    -0x27e0(%rbp),%rdi
 21d:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 222:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 225:	48 8b bd 20 d8 ff ff 	mov    -0x27e0(%rbp),%rdi
 22c:	48 8b bd 18 d8 ff ff 	mov    -0x27e8(%rbp),%rdi
 233:	b9 40 02 00 00       	mov    $0x240,%ecx
 238:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 23b:	48 8b bd 18 d8 ff ff 	mov    -0x27e8(%rbp),%rdi
 242:	66 0f ef c0          	pxor   %xmm0,%xmm0
 246:	c6 85 50 ff ff ff 00 	movb   $0x0,-0xb0(%rbp)
 24d:	0f 29 85 30 ff ff ff 	movaps %xmm0,-0xd0(%rbp)
 254:	0f 29 85 40 ff ff ff 	movaps %xmm0,-0xc0(%rbp)
 25b:	48 8b 85 00 d8 ff ff 	mov    -0x2800(%rbp),%rax
 262:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
 269:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
 26d:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
 271:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
 275:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 279:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 280:	00 00 
 282:	75 17                	jne    29b <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x29b>
 284:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 288:	31 c0                	xor    %eax,%eax
 28a:	5b                   	pop    %rbx
 28b:	41 5a                	pop    %r10
 28d:	41 5c                	pop    %r12
 28f:	41 5d                	pop    %r13
 291:	41 5e                	pop    %r14
 293:	41 5f                	pop    %r15
 295:	5d                   	pop    %rbp
 296:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 29a:	c3                   	ret
 29b:	e8 00 00 00 00       	call   2a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_keypair_derand+0x2a0>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc>:
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
  52:	49 89 d4             	mov    %rdx,%r12
  55:	48 89 f3             	mov    %rsi,%rbx
  58:	48 89 d6             	mov    %rdx,%rsi
  5b:	49 89 cd             	mov    %rcx,%r13
  5e:	4c 8d bd 90 ed ff ff 	lea    -0x1270(%rbp),%r15
  65:	4c 8d b5 90 d2 ff ff 	lea    -0x2d70(%rbp),%r14
  6c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  73:	00 00 
  75:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  79:	31 c0                	xor    %eax,%eax
  7b:	48 8d 85 90 db ff ff 	lea    -0x2470(%rbp),%rax
  82:	48 89 c7             	mov    %rax,%rdi
  85:	48 89 85 78 cc ff ff 	mov    %rax,-0x3388(%rbp)
  8c:	e8 00 00 00 00       	call   91 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x91>
  91:	48 8d 85 90 ce ff ff 	lea    -0x3170(%rbp),%rax
  98:	48 89 de             	mov    %rbx,%rsi
  9b:	f3 41 0f 6f 8c 24 80 	movdqu 0x480(%r12),%xmm1
  a2:	04 00 00 
  a5:	f3 41 0f 6f 94 24 90 	movdqu 0x490(%r12),%xmm2
  ac:	04 00 00 
  af:	48 89 c7             	mov    %rax,%rdi
  b2:	48 89 85 80 cc ff ff 	mov    %rax,-0x3380(%rbp)
  b9:	48 8d 9d 90 d5 ff ff 	lea    -0x2a70(%rbp),%rbx
  c0:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
  c4:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
  c8:	e8 00 00 00 00       	call   cd <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0xcd>
  cd:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  d1:	4c 89 ff             	mov    %r15,%rdi
  d4:	ba 01 00 00 00       	mov    $0x1,%edx
  d9:	48 89 c6             	mov    %rax,%rsi
  dc:	48 89 85 58 cc ff ff 	mov    %rax,-0x33a8(%rbp)
  e3:	4c 89 bd 60 cc ff ff 	mov    %r15,-0x33a0(%rbp)
  ea:	e8 00 00 00 00       	call   ef <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0xef>
  ef:	48 83 ec 08          	sub    $0x8,%rsp
  f3:	4d 89 e8             	mov    %r13,%r8
  f6:	45 31 c9             	xor    %r9d,%r9d
  f9:	68 ff 00 00 00       	push   $0xff
  fe:	48 8d 95 90 d9 ff ff 	lea    -0x2670(%rbp),%rdx
 105:	31 c9                	xor    %ecx,%ecx
 107:	48 89 df             	mov    %rbx,%rdi
 10a:	6a 02                	push   $0x2
 10c:	48 8d b5 90 d7 ff ff 	lea    -0x2870(%rbp),%rsi
 113:	6a 01                	push   $0x1
 115:	e8 00 00 00 00       	call   11a <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x11a>
 11a:	48 83 c4 18          	add    $0x18,%rsp
 11e:	48 8d 85 90 e1 ff ff 	lea    -0x1e70(%rbp),%rax
 125:	48 8d 8d 90 d0 ff ff 	lea    -0x2f70(%rbp),%rcx
 12c:	48 89 8d 70 cc ff ff 	mov    %rcx,-0x3390(%rbp)
 133:	4d 89 e8             	mov    %r13,%r8
 136:	48 89 c7             	mov    %rax,%rdi
 139:	48 8d 95 90 e5 ff ff 	lea    -0x1a70(%rbp),%rdx
 140:	48 89 85 88 cc ff ff 	mov    %rax,-0x3378(%rbp)
 147:	48 8d b5 90 e3 ff ff 	lea    -0x1c70(%rbp),%rsi
 14e:	41 b9 03 00 00 00    	mov    $0x3,%r9d
 154:	4c 8d ad 90 e7 ff ff 	lea    -0x1870(%rbp),%r13
 15b:	6a 06                	push   $0x6
 15d:	6a 05                	push   $0x5
 15f:	6a 04                	push   $0x4
 161:	e8 00 00 00 00       	call   166 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x166>
 166:	48 83 c4 20          	add    $0x20,%rsp
 16a:	48 89 df             	mov    %rbx,%rdi
 16d:	e8 00 00 00 00       	call   172 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x172>
 172:	48 89 de             	mov    %rbx,%rsi
 175:	4c 89 f7             	mov    %r14,%rdi
 178:	e8 00 00 00 00       	call   17d <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x17d>
 17d:	4c 89 ad 50 cc ff ff 	mov    %r13,-0x33b0(%rbp)
 184:	4c 8b a5 58 cc ff ff 	mov    -0x33a8(%rbp),%r12
 18b:	4c 89 fe             	mov    %r15,%rsi
 18e:	4c 89 ef             	mov    %r13,%rdi
 191:	4c 89 f1             	mov    %r14,%rcx
 194:	48 89 da             	mov    %rbx,%rdx
 197:	49 81 c7 00 06 00 00 	add    $0x600,%r15
 19e:	49 81 c5 00 02 00 00 	add    $0x200,%r13
 1a5:	e8 00 00 00 00       	call   1aa <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x1aa>
 1aa:	4d 39 e7             	cmp    %r12,%r15
 1ad:	75 dc                	jne    18b <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x18b>
 1af:	4c 8d a5 90 cc ff ff 	lea    -0x3370(%rbp),%r12
 1b6:	4c 8b ad 50 cc ff ff 	mov    -0x33b0(%rbp),%r13
 1bd:	4c 89 f1             	mov    %r14,%rcx
 1c0:	48 89 da             	mov    %rbx,%rdx
 1c3:	48 8b b5 78 cc ff ff 	mov    -0x3388(%rbp),%rsi
 1ca:	4c 89 e7             	mov    %r12,%rdi
 1cd:	e8 00 00 00 00       	call   1d2 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x1d2>
 1d2:	4c 89 ef             	mov    %r13,%rdi
 1d5:	e8 00 00 00 00       	call   1da <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x1da>
 1da:	4c 89 e7             	mov    %r12,%rdi
 1dd:	e8 00 00 00 00       	call   1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x1e2>
 1e2:	48 8b b5 88 cc ff ff 	mov    -0x3378(%rbp),%rsi
 1e9:	4c 89 ef             	mov    %r13,%rdi
 1ec:	e8 00 00 00 00       	call   1f1 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x1f1>
 1f1:	48 8b b5 70 cc ff ff 	mov    -0x3390(%rbp),%rsi
 1f8:	4c 89 e7             	mov    %r12,%rdi
 1fb:	e8 00 00 00 00       	call   200 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x200>
 200:	48 8b b5 80 cc ff ff 	mov    -0x3380(%rbp),%rsi
 207:	4c 89 e7             	mov    %r12,%rdi
 20a:	e8 00 00 00 00       	call   20f <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x20f>
 20f:	4c 89 ef             	mov    %r13,%rdi
 212:	e8 00 00 00 00       	call   217 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x217>
 217:	4c 89 e7             	mov    %r12,%rdi
 21a:	e8 00 00 00 00       	call   21f <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x21f>
 21f:	48 8b bd 68 cc ff ff 	mov    -0x3398(%rbp),%rdi
 226:	4c 89 ee             	mov    %r13,%rsi
 229:	e8 00 00 00 00       	call   22e <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x22e>
 22e:	48 8b 85 68 cc ff ff 	mov    -0x3398(%rbp),%rax
 235:	4c 89 e6             	mov    %r12,%rsi
 238:	48 05 c0 03 00 00    	add    $0x3c0,%rax
 23e:	48 89 c7             	mov    %rax,%rdi
 241:	e8 00 00 00 00       	call   246 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x246>
 246:	31 c0                	xor    %eax,%eax
 248:	4c 89 f7             	mov    %r14,%rdi
 24b:	b9 60 00 00 00       	mov    $0x60,%ecx
 250:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 253:	48 8b bd 70 cc ff ff 	mov    -0x3390(%rbp),%rdi
 25a:	b9 40 00 00 00       	mov    $0x40,%ecx
 25f:	48 8b 95 70 cc ff ff 	mov    -0x3390(%rbp),%rdx
 266:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 269:	48 8b bd 80 cc ff ff 	mov    -0x3380(%rbp),%rdi
 270:	b9 40 00 00 00       	mov    $0x40,%ecx
 275:	48 8b 95 80 cc ff ff 	mov    -0x3380(%rbp),%rdx
 27c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 27f:	b9 40 00 00 00       	mov    $0x40,%ecx
 284:	4c 89 e7             	mov    %r12,%rdi
 287:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 28a:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 28f:	4c 89 ef             	mov    %r13,%rdi
 292:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 295:	48 8b bd 88 cc ff ff 	mov    -0x3378(%rbp),%rdi
 29c:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 2a1:	48 8b 95 88 cc ff ff 	mov    -0x3378(%rbp),%rdx
 2a8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2ab:	48 8b bd 78 cc ff ff 	mov    -0x3388(%rbp),%rdi
 2b2:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 2b7:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2ba:	48 8b bd 78 cc ff ff 	mov    -0x3388(%rbp),%rdi
 2c1:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 2c6:	48 89 df             	mov    %rbx,%rdi
 2c9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2cc:	48 8b bd 60 cc ff ff 	mov    -0x33a0(%rbp),%rdi
 2d3:	b9 40 02 00 00       	mov    $0x240,%ecx
 2d8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2db:	48 8b bd 60 cc ff ff 	mov    -0x33a0(%rbp),%rdi
 2e2:	66 0f ef c0          	pxor   %xmm0,%xmm0
 2e6:	0f 29 45 90          	movaps %xmm0,-0x70(%rbp)
 2ea:	0f 29 45 a0          	movaps %xmm0,-0x60(%rbp)
 2ee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 2f2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 2f9:	00 00 
 2fb:	75 17                	jne    314 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x314>
 2fd:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 301:	31 c0                	xor    %eax,%eax
 303:	5b                   	pop    %rbx
 304:	41 5a                	pop    %r10
 306:	41 5c                	pop    %r12
 308:	41 5d                	pop    %r13
 30a:	41 5e                	pop    %r14
 30c:	41 5f                	pop    %r15
 30e:	5d                   	pop    %rbp
 30f:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 313:	c3                   	ret
 314:	e8 00 00 00 00       	call   319 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_enc+0x319>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec>:
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
  61:	e8 00 00 00 00       	call   66 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x66>
  66:	49 8d b4 24 c0 03 00 	lea    0x3c0(%r12),%rsi
  6d:	00 
  6e:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  73:	4c 89 e7             	mov    %r12,%rdi
  76:	e8 00 00 00 00       	call   7b <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x7b>
  7b:	4c 89 ee             	mov    %r13,%rsi
  7e:	4c 89 ff             	mov    %r15,%rdi
  81:	4c 8d ac 24 20 02 00 	lea    0x220(%rsp),%r13
  88:	00 
  89:	e8 00 00 00 00       	call   8e <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x8e>
  8e:	48 89 df             	mov    %rbx,%rdi
  91:	e8 00 00 00 00       	call   96 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x96>
  96:	48 89 de             	mov    %rbx,%rsi
  99:	4c 89 f7             	mov    %r14,%rdi
  9c:	e8 00 00 00 00       	call   a1 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xa1>
  a1:	4c 89 f1             	mov    %r14,%rcx
  a4:	48 89 da             	mov    %rbx,%rdx
  a7:	4c 89 fe             	mov    %r15,%rsi
  aa:	4c 89 ef             	mov    %r13,%rdi
  ad:	e8 00 00 00 00       	call   b2 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xb2>
  b2:	4c 89 ef             	mov    %r13,%rdi
  b5:	e8 00 00 00 00       	call   ba <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xba>
  ba:	4c 89 ee             	mov    %r13,%rsi
  bd:	4c 89 e7             	mov    %r12,%rdi
  c0:	e8 00 00 00 00       	call   c5 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xc5>
  c5:	4c 89 e7             	mov    %r12,%rdi
  c8:	e8 00 00 00 00       	call   cd <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xcd>
  cd:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  d2:	4c 89 e6             	mov    %r12,%rsi
  d5:	e8 00 00 00 00       	call   da <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0xda>
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
 124:	75 11                	jne    137 <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x137>
 126:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 12a:	31 c0                	xor    %eax,%eax
 12c:	5b                   	pop    %rbx
 12d:	41 5c                	pop    %r12
 12f:	41 5d                	pop    %r13
 131:	41 5e                	pop    %r14
 133:	41 5f                	pop    %r15
 135:	5d                   	pop    %rbp
 136:	c3                   	ret
 137:	e8 00 00 00 00       	call   13c <PQCP_MLKEM_NATIVE_MLKEM768_C_indcpa_dec+0x13c>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/kem.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk>:
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
  3f:	e8 00 00 00 00       	call   44 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x44>
  44:	48 89 df             	mov    %rbx,%rdi
  47:	e8 00 00 00 00       	call   4c <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x4c>
  4c:	48 89 de             	mov    %rbx,%rsi
  4f:	4c 89 e7             	mov    %r12,%rdi
  52:	e8 00 00 00 00       	call   57 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x57>
  57:	66 0f ef d2          	pxor   %xmm2,%xmm2
  5b:	31 c0                	xor    %eax,%eax
  5d:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  68:	f3 41 0f 6f 4c 05 00 	movdqu 0x0(%r13,%rax,1),%xmm1
  6f:	66 41 0f ef 0c 04    	pxor   (%r12,%rax,1),%xmm1
  75:	48 83 c0 10          	add    $0x10,%rax
  79:	66 0f eb c1          	por    %xmm1,%xmm0
  7d:	66 0f ef d1          	pxor   %xmm1,%xmm2
  81:	48 3d 80 04 00 00    	cmp    $0x480,%rax
  87:	75 df                	jne    68 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x68>
  89:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  8d:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
  92:	66 0f ef d1          	pxor   %xmm1,%xmm2
  96:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  9a:	66 0f 73 d9 04       	psrldq $0x4,%xmm1
  9f:	66 0f ef d1          	pxor   %xmm1,%xmm2
  a3:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  a7:	66 0f 73 d9 02       	psrldq $0x2,%xmm1
  ac:	66 0f ef d1          	pxor   %xmm1,%xmm2
  b0:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  b4:	66 0f 73 d9 01       	psrldq $0x1,%xmm1
  b9:	66 0f ef d1          	pxor   %xmm1,%xmm2
  bd:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  c1:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
  c6:	66 0f 7e d6          	movd   %xmm2,%esi
  ca:	66 0f eb c1          	por    %xmm1,%xmm0
  ce:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  d2:	66 0f 73 d9 04       	psrldq $0x4,%xmm1
  d7:	66 0f eb c1          	por    %xmm1,%xmm0
  db:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  df:	66 0f 73 d9 02       	psrldq $0x2,%xmm1
  e4:	66 0f eb c1          	por    %xmm1,%xmm0
  e8:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  ec:	66 0f 73 d9 01       	psrldq $0x1,%xmm1
  f1:	66 0f eb c1          	por    %xmm1,%xmm0
  f5:	66 0f 7e c2          	movd   %xmm0,%edx
  f9:	0f b6 d2             	movzbl %dl,%edx
  fc:	f7 da                	neg    %edx
  fe:	c1 fa 10             	sar    $0x10,%edx
 101:	31 f2                	xor    %esi,%edx
 103:	31 c0                	xor    %eax,%eax
 105:	4c 89 e7             	mov    %r12,%rdi
 108:	b9 90 00 00 00       	mov    $0x90,%ecx
 10d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 110:	b9 c0 00 00 00       	mov    $0xc0,%ecx
 115:	48 89 df             	mov    %rbx,%rdi
 118:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 11b:	31 c0                	xor    %eax,%eax
 11d:	40 38 f2             	cmp    %sil,%dl
 120:	0f 95 c0             	setne  %al
 123:	f7 d8                	neg    %eax
 125:	48 8b 94 24 98 0a 00 	mov    0xa98(%rsp),%rdx
 12c:	00 
 12d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 134:	00 00 
 136:	75 0b                	jne    143 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x143>
 138:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
 13c:	5b                   	pop    %rbx
 13d:	41 5c                	pop    %r12
 13f:	41 5d                	pop    %r13
 141:	5d                   	pop    %rbp
 142:	c3                   	ret
 143:	e8 00 00 00 00       	call   148 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_pk+0x148>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_check_sk:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_sk>:
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
  38:	e8 00 00 00 00       	call   3d <PQCP_MLKEM_NATIVE_MLKEM768_C_check_sk+0x3d>
  3d:	f3 0f 6f 8b 20 09 00 	movdqu 0x920(%rbx),%xmm1
  44:	00 
  45:	f3 0f 6f 93 30 09 00 	movdqu 0x930(%rbx),%xmm2
  4c:	00 
  4d:	66 0f ef 0c 24       	pxor   (%rsp),%xmm1
  52:	66 0f ef 54 24 10    	pxor   0x10(%rsp),%xmm2
  58:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  5c:	66 0f ef ca          	pxor   %xmm2,%xmm1
  60:	66 0f eb c2          	por    %xmm2,%xmm0
  64:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  68:	66 0f 73 da 08       	psrldq $0x8,%xmm2
  6d:	66 0f ef ca          	pxor   %xmm2,%xmm1
  71:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  75:	66 0f 73 da 04       	psrldq $0x4,%xmm2
  7a:	66 0f ef ca          	pxor   %xmm2,%xmm1
  7e:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  82:	66 0f 73 da 02       	psrldq $0x2,%xmm2
  87:	66 0f ef ca          	pxor   %xmm2,%xmm1
  8b:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  8f:	66 0f 73 da 01       	psrldq $0x1,%xmm2
  94:	66 0f ef ca          	pxor   %xmm2,%xmm1
  98:	66 0f 7e ca          	movd   %xmm1,%edx
  9c:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  a0:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
  a5:	66 0f eb c1          	por    %xmm1,%xmm0
  a9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  ad:	66 0f 73 d9 04       	psrldq $0x4,%xmm1
  b2:	66 0f eb c1          	por    %xmm1,%xmm0
  b6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  ba:	66 0f 73 d9 02       	psrldq $0x2,%xmm1
  bf:	66 0f eb c1          	por    %xmm1,%xmm0
  c3:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  c7:	66 0f 73 d9 01       	psrldq $0x1,%xmm1
  cc:	66 0f eb c1          	por    %xmm1,%xmm0
  d0:	66 0f 7e c0          	movd   %xmm0,%eax
  d4:	0f b6 c0             	movzbl %al,%eax
  d7:	f7 d8                	neg    %eax
  d9:	c1 f8 10             	sar    $0x10,%eax
  dc:	31 d0                	xor    %edx,%eax
  de:	66 0f ef c0          	pxor   %xmm0,%xmm0
  e2:	0f 29 04 24          	movaps %xmm0,(%rsp)
  e6:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  eb:	38 d0                	cmp    %dl,%al
  ed:	0f 95 c0             	setne  %al
  f0:	0f b6 c0             	movzbl %al,%eax
  f3:	f7 d8                	neg    %eax
  f5:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  fa:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 101:	00 00 
 103:	75 09                	jne    10e <PQCP_MLKEM_NATIVE_MLKEM768_C_check_sk+0x10e>
 105:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
 109:	5b                   	pop    %rbx
 10a:	41 5c                	pop    %r12
 10c:	5d                   	pop    %rbp
 10d:	c3                   	ret
 10e:	e8 00 00 00 00       	call   113 <PQCP_MLKEM_NATIVE_MLKEM768_C_check_sk+0x113>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_keypair_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair_derand>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	49 89 d4             	mov    %rdx,%r12
   b:	55                   	push   %rbp
   c:	48 89 fd             	mov    %rdi,%rbp
   f:	53                   	push   %rbx
  10:	48 89 f3             	mov    %rsi,%rbx
  13:	48 83 ec 08          	sub    $0x8,%rsp
  17:	e8 00 00 00 00       	call   1c <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair_derand+0x1c>
  1c:	41 89 c5             	mov    %eax,%r13d
  1f:	85 c0                	test   %eax,%eax
  21:	0f 85 89 00 00 00    	jne    b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair_derand+0xb0>
  27:	48 8b 45 00          	mov    0x0(%rbp),%rax
  2b:	48 8d bb 88 04 00 00 	lea    0x488(%rbx),%rdi
  32:	48 8d 8b 80 04 00 00 	lea    0x480(%rbx),%rcx
  39:	48 89 ee             	mov    %rbp,%rsi
  3c:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  40:	48 89 83 80 04 00 00 	mov    %rax,0x480(%rbx)
  47:	48 29 f9             	sub    %rdi,%rcx
  4a:	48 8b 95 98 04 00 00 	mov    0x498(%rbp),%rdx
  51:	48 8d 83 20 09 00 00 	lea    0x920(%rbx),%rax
  58:	48 29 ce             	sub    %rcx,%rsi
  5b:	81 c1 a0 04 00 00    	add    $0x4a0,%ecx
  61:	48 89 93 18 09 00 00 	mov    %rdx,0x918(%rbx)
  68:	c1 e9 03             	shr    $0x3,%ecx
  6b:	ba a0 04 00 00       	mov    $0x4a0,%edx
  70:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
  73:	48 89 ee             	mov    %rbp,%rsi
  76:	48 89 c7             	mov    %rax,%rdi
  79:	e8 00 00 00 00       	call   7e <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair_derand+0x7e>
  7e:	f3 41 0f 6f 44 24 20 	movdqu 0x20(%r12),%xmm0
  85:	44 89 e8             	mov    %r13d,%eax
  88:	0f 11 83 40 09 00 00 	movups %xmm0,0x940(%rbx)
  8f:	f3 41 0f 6f 4c 24 30 	movdqu 0x30(%r12),%xmm1
  96:	0f 11 8b 50 09 00 00 	movups %xmm1,0x950(%rbx)
  9d:	48 83 c4 08          	add    $0x8,%rsp
  a1:	5b                   	pop    %rbx
  a2:	5d                   	pop    %rbp
  a3:	41 5c                	pop    %r12
  a5:	41 5d                	pop    %r13
  a7:	c3                   	ret
  a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  af:	00 
  b0:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  b4:	48 89 e9             	mov    %rbp,%rcx
  b7:	31 c0                	xor    %eax,%eax
  b9:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
  c0:	00 
  c1:	48 c7 85 98 04 00 00 	movq   $0x0,0x498(%rbp)
  c8:	00 00 00 00 
  cc:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  d0:	48 29 f9             	sub    %rdi,%rcx
  d3:	81 c1 a0 04 00 00    	add    $0x4a0,%ecx
  d9:	c1 e9 03             	shr    $0x3,%ecx
  dc:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  df:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  e3:	48 89 d9             	mov    %rbx,%rcx
  e6:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
  ed:	48 c7 83 58 09 00 00 	movq   $0x0,0x958(%rbx)
  f4:	00 00 00 00 
  f8:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  fc:	48 29 f9             	sub    %rdi,%rcx
  ff:	81 c1 60 09 00 00    	add    $0x960,%ecx
 105:	c1 e9 03             	shr    $0x3,%ecx
 108:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 10b:	48 83 c4 08          	add    $0x8,%rsp
 10f:	44 89 e8             	mov    %r13d,%eax
 112:	5b                   	pop    %rbx
 113:	5d                   	pop    %rbp
 114:	41 5c                	pop    %r12
 116:	41 5d                	pop    %r13
 118:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_keypair:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair>:
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
  36:	e8 00 00 00 00       	call   3b <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair+0x3b>
  3b:	48 89 da             	mov    %rbx,%rdx
  3e:	4c 89 ee             	mov    %r13,%rsi
  41:	4c 89 e7             	mov    %r12,%rdi
  44:	e8 00 00 00 00       	call   49 <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair+0x49>
  49:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4d:	0f 29 04 24          	movaps %xmm0,(%rsp)
  51:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  56:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  5b:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  60:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
  65:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  6c:	00 00 
  6e:	75 0b                	jne    7b <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair+0x7b>
  70:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
  74:	5b                   	pop    %rbx
  75:	41 5c                	pop    %r12
  77:	41 5d                	pop    %r13
  79:	5d                   	pop    %rbp
  7a:	c3                   	ret
  7b:	e8 00 00 00 00       	call   80 <PQCP_MLKEM_NATIVE_MLKEM768_C_keypair+0x80>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	49 89 cf             	mov    %rcx,%r15
   d:	41 56                	push   %r14
   f:	41 55                	push   %r13
  11:	49 89 f5             	mov    %rsi,%r13
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
  3e:	49 89 e6             	mov    %rsp,%r14
  41:	e8 00 00 00 00       	call   46 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0x46>
  46:	85 c0                	test   %eax,%eax
  48:	74 56                	je     a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0xa0>
  4a:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
  4f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  53:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
  58:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  5d:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
  62:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
  67:	0f 29 04 24          	movaps %xmm0,(%rsp)
  6b:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  70:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  75:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  7a:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
  81:	00 
  82:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  89:	00 00 
  8b:	0f 85 80 00 00 00    	jne    111 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0x111>
  91:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  95:	5b                   	pop    %rbx
  96:	41 5c                	pop    %r12
  98:	41 5d                	pop    %r13
  9a:	41 5e                	pop    %r14
  9c:	41 5f                	pop    %r15
  9e:	5d                   	pop    %rbp
  9f:	c3                   	ret
  a0:	f3 41 0f 6f 0f       	movdqu (%r15),%xmm1
  a5:	f3 41 0f 6f 57 10    	movdqu 0x10(%r15),%xmm2
  ab:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  b0:	48 89 de             	mov    %rbx,%rsi
  b3:	ba a0 04 00 00       	mov    $0x4a0,%edx
  b8:	4c 8d 7c 24 40       	lea    0x40(%rsp),%r15
  bd:	0f 29 0c 24          	movaps %xmm1,(%rsp)
  c1:	0f 29 54 24 10       	movaps %xmm2,0x10(%rsp)
  c6:	e8 00 00 00 00       	call   cb <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0xcb>
  cb:	ba 40 00 00 00       	mov    $0x40,%edx
  d0:	4c 89 f6             	mov    %r14,%rsi
  d3:	4c 89 ff             	mov    %r15,%rdi
  d6:	e8 00 00 00 00       	call   db <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0xdb>
  db:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
  e0:	48 89 da             	mov    %rbx,%rdx
  e3:	4c 89 f6             	mov    %r14,%rsi
  e6:	4c 89 e7             	mov    %r12,%rdi
  e9:	e8 00 00 00 00       	call   ee <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0xee>
  ee:	85 c0                	test   %eax,%eax
  f0:	0f 85 59 ff ff ff    	jne    4f <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0x4f>
  f6:	66 0f 6f 5c 24 40    	movdqa 0x40(%rsp),%xmm3
  fc:	66 0f 6f 64 24 50    	movdqa 0x50(%rsp),%xmm4
 102:	41 0f 11 5d 00       	movups %xmm3,0x0(%r13)
 107:	41 0f 11 65 10       	movups %xmm4,0x10(%r13)
 10c:	e9 3e ff ff ff       	jmp    4f <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0x4f>
 111:	e8 00 00 00 00       	call   116 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc_derand+0x116>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_enc:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc>:
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
  3b:	e8 00 00 00 00       	call   40 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc+0x40>
  40:	48 89 d9             	mov    %rbx,%rcx
  43:	4c 89 f2             	mov    %r14,%rdx
  46:	4c 89 ee             	mov    %r13,%rsi
  49:	4c 89 e7             	mov    %r12,%rdi
  4c:	e8 00 00 00 00       	call   51 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc+0x51>
  51:	66 0f ef c0          	pxor   %xmm0,%xmm0
  55:	0f 29 04 24          	movaps %xmm0,(%rsp)
  59:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  5e:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  63:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  6a:	00 00 
  6c:	75 0d                	jne    7b <PQCP_MLKEM_NATIVE_MLKEM768_C_enc+0x7b>
  6e:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  72:	5b                   	pop    %rbx
  73:	41 5c                	pop    %r12
  75:	41 5d                	pop    %r13
  77:	41 5e                	pop    %r14
  79:	5d                   	pop    %rbp
  7a:	c3                   	ret
  7b:	e8 00 00 00 00       	call   80 <PQCP_MLKEM_NATIVE_MLKEM768_C_enc+0x80>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_dec:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	49 89 f7             	mov    %rsi,%r15
   d:	41 56                	push   %r14
   f:	49 89 d6             	mov    %rdx,%r14
  12:	41 55                	push   %r13
  14:	49 89 fd             	mov    %rdi,%r13
  17:	48 89 d7             	mov    %rdx,%rdi
  1a:	41 54                	push   %r12
  1c:	53                   	push   %rbx
  1d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  21:	48 81 ec 20 05 00 00 	sub    $0x520,%rsp
  28:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2f:	00 00 
  31:	48 89 84 24 18 05 00 	mov    %rax,0x518(%rsp)
  38:	00 
  39:	31 c0                	xor    %eax,%eax
  3b:	e8 00 00 00 00       	call   40 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x40>
  40:	85 c0                	test   %eax,%eax
  42:	0f 84 80 00 00 00    	je     c8 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0xc8>
  48:	41 89 c4             	mov    %eax,%r12d
  4b:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
  50:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
  55:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
  5c:	00 
  5d:	31 c0                	xor    %eax,%eax
  5f:	4c 89 c7             	mov    %r8,%rdi
  62:	b9 8c 00 00 00       	mov    $0x8c,%ecx
  67:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  6a:	66 0f ef c0          	pxor   %xmm0,%xmm0
  6e:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
  73:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
  78:	0f 29 84 24 80 00 00 	movaps %xmm0,0x80(%rsp)
  7f:	00 
  80:	0f 29 84 24 90 00 00 	movaps %xmm0,0x90(%rsp)
  87:	00 
  88:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
  8d:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
  92:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
  97:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  9c:	48 8b 84 24 18 05 00 	mov    0x518(%rsp),%rax
  a3:	00 
  a4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  ab:	00 00 
  ad:	0f 85 17 02 00 00    	jne    2ca <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x2ca>
  b3:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  b7:	44 89 e0             	mov    %r12d,%eax
  ba:	5b                   	pop    %rbx
  bb:	41 5c                	pop    %r12
  bd:	41 5d                	pop    %r13
  bf:	41 5e                	pop    %r14
  c1:	41 5f                	pop    %r15
  c3:	5d                   	pop    %rbp
  c4:	c3                   	ret
  c5:	0f 1f 00             	nopl   (%rax)
  c8:	4c 8d 54 24 20       	lea    0x20(%rsp),%r10
  cd:	4c 89 f2             	mov    %r14,%rdx
  d0:	4c 89 fe             	mov    %r15,%rsi
  d3:	4c 89 d7             	mov    %r10,%rdi
  d6:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
  db:	e8 00 00 00 00       	call   e0 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0xe0>
  e0:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
  e5:	85 c0                	test   %eax,%eax
  e7:	41 89 c4             	mov    %eax,%r12d
  ea:	74 14                	je     100 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x100>
  ec:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
  f1:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
  f8:	00 
  f9:	e9 5f ff ff ff       	jmp    5d <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x5d>
  fe:	66 90                	xchg   %ax,%ax
 100:	4c 8d 4c 24 60       	lea    0x60(%rsp),%r9
 105:	4c 89 d6             	mov    %r10,%rsi
 108:	ba 40 00 00 00       	mov    $0x40,%edx
 10d:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
 112:	f3 41 0f 6f 9e 20 09 	movdqu 0x920(%r14),%xmm3
 119:	00 00 
 11b:	4c 89 cf             	mov    %r9,%rdi
 11e:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 123:	f3 41 0f 6f a6 30 09 	movdqu 0x930(%r14),%xmm4
 12a:	00 00 
 12c:	0f 29 5c 24 40       	movaps %xmm3,0x40(%rsp)
 131:	0f 29 64 24 50       	movaps %xmm4,0x50(%rsp)
 136:	e8 00 00 00 00       	call   13b <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x13b>
 13b:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
 140:	4c 8d 84 24 a0 00 00 	lea    0xa0(%rsp),%r8
 147:	00 
 148:	48 8d 8c 24 80 00 00 	lea    0x80(%rsp),%rcx
 14f:	00 
 150:	4c 89 c7             	mov    %r8,%rdi
 153:	49 8d 96 80 04 00 00 	lea    0x480(%r14),%rdx
 15a:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 15f:	4c 89 d6             	mov    %r10,%rsi
 162:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
 167:	e8 00 00 00 00       	call   16c <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x16c>
 16c:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 171:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
 176:	85 c0                	test   %eax,%eax
 178:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 17d:	41 89 c4             	mov    %eax,%r12d
 180:	0f 85 d7 fe ff ff    	jne    5d <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x5d>
 186:	66 0f ef d2          	pxor   %xmm2,%xmm2
 18a:	31 c0                	xor    %eax,%eax
 18c:	66 0f 6f c2          	movdqa %xmm2,%xmm0
 190:	f3 41 0f 6f 0c 07    	movdqu (%r15,%rax,1),%xmm1
 196:	66 41 0f ef 0c 00    	pxor   (%r8,%rax,1),%xmm1
 19c:	48 83 c0 10          	add    $0x10,%rax
 1a0:	66 0f eb c1          	por    %xmm1,%xmm0
 1a4:	66 0f ef d1          	pxor   %xmm1,%xmm2
 1a8:	48 3d 40 04 00 00    	cmp    $0x440,%rax
 1ae:	75 e0                	jne    190 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x190>
 1b0:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 1b4:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
 1b9:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
 1be:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
 1c3:	66 0f ef d1          	pxor   %xmm1,%xmm2
 1c7:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 1cb:	66 0f 73 d9 04       	psrldq $0x4,%xmm1
 1d0:	66 0f ef d1          	pxor   %xmm1,%xmm2
 1d4:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 1d8:	66 0f 73 d9 02       	psrldq $0x2,%xmm1
 1dd:	66 0f ef d1          	pxor   %xmm1,%xmm2
 1e1:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 1e5:	66 0f 73 d9 01       	psrldq $0x1,%xmm1
 1ea:	66 0f ef d1          	pxor   %xmm1,%xmm2
 1ee:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 1f2:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
 1f7:	66 0f 7e d0          	movd   %xmm2,%eax
 1fb:	66 0f eb c1          	por    %xmm1,%xmm0
 1ff:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 203:	66 0f 73 d9 04       	psrldq $0x4,%xmm1
 208:	66 0f eb c1          	por    %xmm1,%xmm0
 20c:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 210:	66 0f 73 d9 02       	psrldq $0x2,%xmm1
 215:	66 0f eb c1          	por    %xmm1,%xmm0
 219:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 21d:	66 0f 73 d9 01       	psrldq $0x1,%xmm1
 222:	66 0f eb c1          	por    %xmm1,%xmm0
 226:	66 0f 7e c3          	movd   %xmm0,%ebx
 22a:	0f b6 db             	movzbl %bl,%ebx
 22d:	f7 db                	neg    %ebx
 22f:	c1 fb 10             	sar    $0x10,%ebx
 232:	31 c3                	xor    %eax,%ebx
 234:	31 c3                	xor    %eax,%ebx
 236:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
 23d:	00 
 23e:	4c 89 c2             	mov    %r8,%rdx
 241:	4c 89 fe             	mov    %r15,%rsi
 244:	48 89 c7             	mov    %rax,%rdi
 247:	b9 88 00 00 00       	mov    $0x88,%ecx
 24c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 251:	0f b6 db             	movzbl %bl,%ebx
 254:	f3 41 0f 6f b6 50 09 	movdqu 0x950(%r14),%xmm6
 25b:	00 00 
 25d:	f7 db                	neg    %ebx
 25f:	f3 41 0f 6f ae 40 09 	movdqu 0x940(%r14),%xmm5
 266:	00 00 
 268:	0f 29 b4 24 b0 00 00 	movaps %xmm6,0xb0(%rsp)
 26f:	00 
 270:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
 273:	b9 60 04 00 00       	mov    $0x460,%ecx
 278:	be 20 00 00 00       	mov    $0x20,%esi
 27d:	4c 89 ef             	mov    %r13,%rdi
 280:	0f 29 ac 24 a0 00 00 	movaps %xmm5,0xa0(%rsp)
 287:	00 
 288:	e8 00 00 00 00       	call   28d <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x28d>
 28d:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
 292:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
 297:	31 c0                	xor    %eax,%eax
 299:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 29e:	66 90                	xchg   %ax,%ax
 2a0:	41 0f b6 34 01       	movzbl (%r9,%rax,1),%esi
 2a5:	89 d9                	mov    %ebx,%ecx
 2a7:	41 0f b6 54 05 00    	movzbl 0x0(%r13,%rax,1),%edx
 2ad:	c1 f9 10             	sar    $0x10,%ecx
 2b0:	31 f2                	xor    %esi,%edx
 2b2:	21 ca                	and    %ecx,%edx
 2b4:	31 f2                	xor    %esi,%edx
 2b6:	41 88 54 05 00       	mov    %dl,0x0(%r13,%rax,1)
 2bb:	48 83 c0 01          	add    $0x1,%rax
 2bf:	48 83 f8 20          	cmp    $0x20,%rax
 2c3:	75 db                	jne    2a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x2a0>
 2c5:	e9 93 fd ff ff       	jmp    5d <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x5d>
 2ca:	e8 00 00 00 00       	call   2cf <PQCP_MLKEM_NATIVE_MLKEM768_C_dec+0x2cf>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/poly.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont+0xc>
   b:	00 
   c:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 14 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont+0x14>
  13:	00 
  14:	48 8d 87 00 02 00 00 	lea    0x200(%rdi),%rax
  1b:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 23 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont+0x23>
  22:	00 
  23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  28:	66 0f 6f 1f          	movdqa (%rdi),%xmm3
  2c:	66 0f 6f c5          	movdqa %xmm5,%xmm0
  30:	66 0f e5 07          	pmulhw (%rdi),%xmm0
  34:	48 83 c7 10          	add    $0x10,%rdi
  38:	66 0f d5 dd          	pmullw %xmm5,%xmm3
  3c:	66 0f 6f fb          	movdqa %xmm3,%xmm7
  40:	66 0f 69 d8          	punpckhwd %xmm0,%xmm3
  44:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
  48:	66 0f 6f c7          	movdqa %xmm7,%xmm0
  4c:	66 0f 6f cf          	movdqa %xmm7,%xmm1
  50:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
  54:	66 0f 69 cb          	punpckhwd %xmm3,%xmm1
  58:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  5c:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  60:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
  64:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
  68:	66 0f d5 c6          	pmullw %xmm6,%xmm0
  6c:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  70:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  74:	66 0f e5 cc          	pmulhw %xmm4,%xmm1
  78:	66 0f d5 d4          	pmullw %xmm4,%xmm2
  7c:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  80:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
  84:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  88:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  8c:	66 0f fe c7          	paddd  %xmm7,%xmm0
  90:	66 0f fe cb          	paddd  %xmm3,%xmm1
  94:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
  99:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
  9e:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  a2:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  a6:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
  aa:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  ae:	66 0f 69 ca          	punpckhwd %xmm2,%xmm1
  b2:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
  b6:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  ba:	0f 29 47 f0          	movaps %xmm0,-0x10(%rdi)
  be:	48 39 f8             	cmp    %rdi,%rax
  c1:	0f 85 61 ff ff ff    	jne    28 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_tomont+0x28>
  c7:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_reduce:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_reduce>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 89 fa             	mov    %rdi,%rdx
   7:	48 8d 8f 00 02 00 00 	lea    0x200(%rdi),%rcx
   e:	66 90                	xchg   %ax,%ax
  10:	0f bf 02             	movswl (%rdx),%eax
  13:	89 c7                	mov    %eax,%edi
  15:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
  1b:	05 00 00 00 02       	add    $0x2000000,%eax
  20:	c1 f8 1a             	sar    $0x1a,%eax
  23:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
  28:	29 c7                	sub    %eax,%edi
  2a:	0f bf c7             	movswl %di,%eax
  2d:	c1 e8 10             	shr    $0x10,%eax
  30:	f7 d8                	neg    %eax
  32:	8d b7 01 0d 00 00    	lea    0xd01(%rdi),%esi
  38:	c1 f8 10             	sar    $0x10,%eax
  3b:	48 83 c2 02          	add    $0x2,%rdx
  3f:	31 fe                	xor    %edi,%esi
  41:	21 f0                	and    %esi,%eax
  43:	31 f8                	xor    %edi,%eax
  45:	66 89 42 fe          	mov    %ax,-0x2(%rdx)
  49:	48 39 ca             	cmp    %rcx,%rdx
  4c:	75 c2                	jne    10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_reduce+0x10>
  4e:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_add:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_add>:
   0:	f3 0f 1e fa          	endbr64
   4:	31 c0                	xor    %eax,%eax
   6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   d:	00 00 00 
  10:	66 0f 6f 04 06       	movdqa (%rsi,%rax,1),%xmm0
  15:	66 0f fd 04 07       	paddw  (%rdi,%rax,1),%xmm0
  1a:	0f 29 04 07          	movaps %xmm0,(%rdi,%rax,1)
  1e:	48 83 c0 10          	add    $0x10,%rax
  22:	48 3d 00 02 00 00    	cmp    $0x200,%rax
  28:	75 e6                	jne    10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_add+0x10>
  2a:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_sub:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_sub>:
   0:	f3 0f 1e fa          	endbr64
   4:	31 c0                	xor    %eax,%eax
   6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   d:	00 00 00 
  10:	66 0f 6f 04 07       	movdqa (%rdi,%rax,1),%xmm0
  15:	66 0f f9 04 06       	psubw  (%rsi,%rax,1),%xmm0
  1a:	0f 29 04 07          	movaps %xmm0,(%rdi,%rax,1)
  1e:	48 83 c0 10          	add    $0x10,%rax
  22:	48 3d 00 02 00 00    	cmp    $0x200,%rax
  28:	75 e6                	jne    10 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_sub+0x10>
  2a:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8d 56 02          	lea    0x2(%rsi),%rdx
   8:	48 8d 87 00 01 00 00 	lea    0x100(%rdi),%rax
   f:	48 39 c2             	cmp    %rax,%rdx
  12:	73 10                	jae    24 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x24>
  14:	48 8d 86 00 02 00 00 	lea    0x200(%rsi),%rax
  1b:	48 39 c7             	cmp    %rax,%rdi
  1e:	0f 82 0c 0e 00 00    	jb     e30 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xe30>
  24:	f3 0f 6f 7e 12       	movdqu 0x12(%rsi),%xmm7
  29:	f3 0f 6f 4e 02       	movdqu 0x2(%rsi),%xmm1
  2e:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  32:	66 0f 61 cf          	punpcklwd %xmm7,%xmm1
  36:	66 0f 69 c7          	punpckhwd %xmm7,%xmm0
  3a:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  3e:	f3 0f 6f 7e 32       	movdqu 0x32(%rsi),%xmm7
  43:	66 0f 69 d0          	punpckhwd %xmm0,%xmm2
  47:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
  4b:	f3 0f 6f 46 22       	movdqu 0x22(%rsi),%xmm0
  50:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
  54:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  58:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
  5c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
  60:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
  64:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  68:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
  6c:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
  70:	66 0f 6f d1          	movdqa %xmm1,%xmm2
  74:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
  78:	66 0f 61 d0          	punpcklwd %xmm0,%xmm2
  7c:	66 0f 69 e0          	punpckhwd %xmm0,%xmm4
  80:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
  84:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 8c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x8c>
  8b:	00 
  8c:	66 0f 6f ea          	movdqa %xmm2,%xmm5
  90:	66 0f 6f d9          	movdqa %xmm1,%xmm3
  94:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
  98:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
  9c:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
  a0:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
  a4:	66 0f 69 dd          	punpckhwd %xmm5,%xmm3
  a8:	66 0f 6f ea          	movdqa %xmm2,%xmm5
  ac:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
  b0:	66 0f d5 e8          	pmullw %xmm0,%xmm5
  b4:	66 0f 6f fd          	movdqa %xmm5,%xmm7
  b8:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
  bc:	66 0f 61 fa          	punpcklwd %xmm2,%xmm7
  c0:	66 0f 6f c7          	movdqa %xmm7,%xmm0
  c4:	66 0f 6f cf          	movdqa %xmm7,%xmm1
  c8:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
  cc:	66 0f 69 cd          	punpckhwd %xmm5,%xmm1
  d0:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  d4:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  d8:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
  dc:	66 0f 6f 0d 00 00 00 	movdqa 0x0(%rip),%xmm1        # e4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xe4>
  e3:	00 
  e4:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
  e8:	66 0f d5 c1          	pmullw %xmm1,%xmm0
  ec:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  f0:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # f8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xf8>
  f7:	00 
  f8:	66 0f 6f e2          	movdqa %xmm2,%xmm4
  fc:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 100:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 104:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 108:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 10c:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 110:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 114:	66 0f fe f7          	paddd  %xmm7,%xmm6
 118:	66 0f fe d5          	paddd  %xmm5,%xmm2
 11c:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 120:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 125:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 12a:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 12e:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 132:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 136:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 13a:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 13e:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 142:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 146:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 14e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x14e>
 14d:	00 
 14e:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 152:	66 0f e5 d3          	pmulhw %xmm3,%xmm2
 156:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 15a:	66 0f 69 fa          	punpckhwd %xmm2,%xmm7
 15e:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 162:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 166:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 16a:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 16e:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 172:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 176:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 17a:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 17e:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 182:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 186:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 18a:	66 0f 6f da          	movdqa %xmm2,%xmm3
 18e:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 192:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 196:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 19a:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 19e:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 1a2:	66 0f fe d4          	paddd  %xmm4,%xmm2
 1a6:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 1aa:	66 0f fe e7          	paddd  %xmm7,%xmm4
 1ae:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 1b3:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 1b8:	66 0f 6f da          	movdqa %xmm2,%xmm3
 1bc:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 1c0:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 1c4:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 1c8:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 1cc:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 1d0:	66 0f 6f de          	movdqa %xmm6,%xmm3
 1d4:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 1d8:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 1dc:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 1e0:	0f 29 77 10          	movaps %xmm6,0x10(%rdi)
 1e4:	0f 29 1f             	movaps %xmm3,(%rdi)
 1e7:	f3 0f 6f 7e 52       	movdqu 0x52(%rsi),%xmm7
 1ec:	f3 0f 6f 5e 42       	movdqu 0x42(%rsi),%xmm3
 1f1:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 1f5:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 1f9:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 1fd:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 201:	f3 0f 6f 7e 72       	movdqu 0x72(%rsi),%xmm7
 206:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 20a:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 20e:	f3 0f 6f 56 62       	movdqu 0x62(%rsi),%xmm2
 213:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 217:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 21b:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 21f:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 223:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 227:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 22b:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 22f:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 233:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 237:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 23b:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 23f:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 243:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 247:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 24f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x24f>
 24e:	00 
 24f:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 253:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 257:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 25b:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 25f:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 263:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 267:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 26b:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 26f:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 273:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 277:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 27b:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 27f:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 283:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 287:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 28b:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 28f:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 293:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 297:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 29b:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 29f:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 2a3:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 2a7:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 2ab:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 2af:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 2b3:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 2b7:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 2bb:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 2bf:	66 0f fe f7          	paddd  %xmm7,%xmm6
 2c3:	66 0f fe d5          	paddd  %xmm5,%xmm2
 2c7:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 2cb:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 2d0:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 2d5:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 2d9:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 2dd:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 2e1:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 2e5:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 2e9:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 2ed:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 2f1:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 2f9 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x2f9>
 2f8:	00 
 2f9:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 2fd:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 301:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 305:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 309:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 30d:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 311:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 315:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 319:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 31d:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 321:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 325:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 329:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 32d:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 331:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 335:	66 0f 6f da          	movdqa %xmm2,%xmm3
 339:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 33d:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 341:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 345:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 349:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 34d:	66 0f fe d4          	paddd  %xmm4,%xmm2
 351:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 355:	66 0f fe e7          	paddd  %xmm7,%xmm4
 359:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 35e:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 363:	66 0f 6f da          	movdqa %xmm2,%xmm3
 367:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 36b:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 36f:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 373:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 377:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 37b:	66 0f 6f de          	movdqa %xmm6,%xmm3
 37f:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 383:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 387:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 38b:	0f 29 77 30          	movaps %xmm6,0x30(%rdi)
 38f:	0f 29 5f 20          	movaps %xmm3,0x20(%rdi)
 393:	f3 0f 6f be 92 00 00 	movdqu 0x92(%rsi),%xmm7
 39a:	00 
 39b:	f3 0f 6f 9e 82 00 00 	movdqu 0x82(%rsi),%xmm3
 3a2:	00 
 3a3:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 3a7:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 3ab:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 3af:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 3b3:	f3 0f 6f be b2 00 00 	movdqu 0xb2(%rsi),%xmm7
 3ba:	00 
 3bb:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 3bf:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 3c3:	f3 0f 6f 96 a2 00 00 	movdqu 0xa2(%rsi),%xmm2
 3ca:	00 
 3cb:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 3cf:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 3d3:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 3d7:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 3db:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 3df:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 3e3:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 3e7:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 3eb:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 3ef:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 3f3:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 3f7:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 3fb:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 3ff:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 407 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x407>
 406:	00 
 407:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 40b:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 40f:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 413:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 417:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 41b:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 41f:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 423:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 427:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 42b:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 42f:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 433:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 437:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 43b:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 43f:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 443:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 447:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 44b:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 44f:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 453:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 457:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 45b:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 45f:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 463:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 467:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 46b:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 46f:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 473:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 477:	66 0f fe f7          	paddd  %xmm7,%xmm6
 47b:	66 0f fe d5          	paddd  %xmm5,%xmm2
 47f:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 483:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 488:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 48d:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 491:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 495:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 499:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 49d:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 4a1:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 4a5:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 4a9:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 4b1 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x4b1>
 4b0:	00 
 4b1:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 4b5:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 4b9:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 4bd:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 4c1:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 4c5:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 4c9:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 4cd:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 4d1:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 4d5:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 4d9:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 4dd:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 4e1:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 4e5:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 4e9:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 4ed:	66 0f 6f da          	movdqa %xmm2,%xmm3
 4f1:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 4f5:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 4f9:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 4fd:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 501:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 505:	66 0f fe d4          	paddd  %xmm4,%xmm2
 509:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 50d:	66 0f fe e7          	paddd  %xmm7,%xmm4
 511:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 516:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 51b:	66 0f 6f da          	movdqa %xmm2,%xmm3
 51f:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 523:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 527:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 52b:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 52f:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 533:	66 0f 6f de          	movdqa %xmm6,%xmm3
 537:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 53b:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 53f:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 543:	0f 29 77 50          	movaps %xmm6,0x50(%rdi)
 547:	0f 29 5f 40          	movaps %xmm3,0x40(%rdi)
 54b:	f3 0f 6f be d2 00 00 	movdqu 0xd2(%rsi),%xmm7
 552:	00 
 553:	f3 0f 6f 9e c2 00 00 	movdqu 0xc2(%rsi),%xmm3
 55a:	00 
 55b:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 55f:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 563:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 567:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 56b:	f3 0f 6f be f2 00 00 	movdqu 0xf2(%rsi),%xmm7
 572:	00 
 573:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 577:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 57b:	f3 0f 6f 96 e2 00 00 	movdqu 0xe2(%rsi),%xmm2
 582:	00 
 583:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 587:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 58b:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 58f:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 593:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 597:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 59b:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 59f:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 5a3:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 5a7:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 5ab:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 5af:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 5b3:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 5b7:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 5bf <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x5bf>
 5be:	00 
 5bf:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 5c3:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 5c7:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 5cb:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 5cf:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 5d3:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 5d7:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 5db:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 5df:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 5e3:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 5e7:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 5eb:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 5ef:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 5f3:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 5f7:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 5fb:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 5ff:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 603:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 607:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 60b:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 60f:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 613:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 617:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 61b:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 61f:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 623:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 627:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 62b:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 62f:	66 0f fe f7          	paddd  %xmm7,%xmm6
 633:	66 0f fe d5          	paddd  %xmm5,%xmm2
 637:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 63b:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 640:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 645:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 649:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 64d:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 651:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 655:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 659:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 65d:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 661:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 669 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x669>
 668:	00 
 669:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 66d:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 671:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 675:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 679:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 67d:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 681:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 685:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 689:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 68d:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 691:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 695:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 699:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 69d:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 6a1:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 6a5:	66 0f 6f da          	movdqa %xmm2,%xmm3
 6a9:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 6ad:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 6b1:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 6b5:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 6b9:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 6bd:	66 0f fe d4          	paddd  %xmm4,%xmm2
 6c1:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 6c5:	66 0f fe e7          	paddd  %xmm7,%xmm4
 6c9:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 6ce:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 6d3:	66 0f 6f da          	movdqa %xmm2,%xmm3
 6d7:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 6db:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 6df:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 6e3:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 6e7:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 6eb:	66 0f 6f de          	movdqa %xmm6,%xmm3
 6ef:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 6f3:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 6f7:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 6fb:	0f 29 5f 60          	movaps %xmm3,0x60(%rdi)
 6ff:	0f 29 77 70          	movaps %xmm6,0x70(%rdi)
 703:	f3 0f 6f be 12 01 00 	movdqu 0x112(%rsi),%xmm7
 70a:	00 
 70b:	f3 0f 6f 9e 02 01 00 	movdqu 0x102(%rsi),%xmm3
 712:	00 
 713:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 717:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 71b:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 71f:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 723:	f3 0f 6f be 32 01 00 	movdqu 0x132(%rsi),%xmm7
 72a:	00 
 72b:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 72f:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 733:	f3 0f 6f 96 22 01 00 	movdqu 0x122(%rsi),%xmm2
 73a:	00 
 73b:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 73f:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 743:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 747:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 74b:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 74f:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 753:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 757:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 75b:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 75f:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 763:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 767:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 76b:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 76f:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 777 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x777>
 776:	00 
 777:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 77b:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 77f:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 783:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 787:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 78b:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 78f:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 793:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 797:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 79b:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 79f:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 7a3:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 7a7:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 7ab:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 7af:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 7b3:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 7b7:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 7bb:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 7bf:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 7c3:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 7c7:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 7cb:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 7cf:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 7d3:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 7d7:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 7db:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 7df:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 7e3:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 7e7:	66 0f fe f7          	paddd  %xmm7,%xmm6
 7eb:	66 0f fe d5          	paddd  %xmm5,%xmm2
 7ef:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 7f3:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 7f8:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 7fd:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 801:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 805:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 809:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 80d:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 811:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 815:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 819:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 821 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x821>
 820:	00 
 821:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 825:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 829:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 82d:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 831:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 835:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 839:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 83d:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 841:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 845:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 849:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 84d:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 851:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 855:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 859:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 85d:	66 0f 6f da          	movdqa %xmm2,%xmm3
 861:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 865:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 869:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 86d:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 871:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 875:	66 0f fe d4          	paddd  %xmm4,%xmm2
 879:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 87d:	66 0f fe e7          	paddd  %xmm7,%xmm4
 881:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 886:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 88b:	66 0f 6f da          	movdqa %xmm2,%xmm3
 88f:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 893:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 897:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 89b:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 89f:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 8a3:	66 0f 6f de          	movdqa %xmm6,%xmm3
 8a7:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 8ab:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 8af:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 8b3:	0f 29 b7 90 00 00 00 	movaps %xmm6,0x90(%rdi)
 8ba:	0f 29 9f 80 00 00 00 	movaps %xmm3,0x80(%rdi)
 8c1:	f3 0f 6f be 52 01 00 	movdqu 0x152(%rsi),%xmm7
 8c8:	00 
 8c9:	f3 0f 6f 9e 42 01 00 	movdqu 0x142(%rsi),%xmm3
 8d0:	00 
 8d1:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 8d5:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 8d9:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 8dd:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 8e1:	f3 0f 6f be 72 01 00 	movdqu 0x172(%rsi),%xmm7
 8e8:	00 
 8e9:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 8ed:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 8f1:	f3 0f 6f 96 62 01 00 	movdqu 0x162(%rsi),%xmm2
 8f8:	00 
 8f9:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 8fd:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 901:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 905:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 909:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 90d:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 911:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 915:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 919:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 91d:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 921:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 925:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 929:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 92d:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 935 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x935>
 934:	00 
 935:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 939:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 93d:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 941:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 945:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 949:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 94d:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 951:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 955:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 959:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 95d:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 961:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 965:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 969:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 96d:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 971:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 975:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 979:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 97d:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 981:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 985:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 989:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 98d:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 991:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 995:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 999:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 99d:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 9a1:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 9a5:	66 0f fe f7          	paddd  %xmm7,%xmm6
 9a9:	66 0f fe d5          	paddd  %xmm5,%xmm2
 9ad:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 9b1:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 9b6:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 9bb:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 9bf:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 9c3:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 9c7:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 9cb:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 9cf:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 9d3:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 9d7:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 9df <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0x9df>
 9de:	00 
 9df:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 9e3:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 9e7:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 9eb:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 9ef:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 9f3:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 9f7:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 9fb:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 9ff:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 a03:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 a07:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 a0b:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 a0f:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 a13:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 a17:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 a1b:	66 0f 6f da          	movdqa %xmm2,%xmm3
 a1f:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 a23:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 a27:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 a2b:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 a2f:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 a33:	66 0f fe d4          	paddd  %xmm4,%xmm2
 a37:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 a3b:	66 0f fe e7          	paddd  %xmm7,%xmm4
 a3f:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 a44:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 a49:	66 0f 6f da          	movdqa %xmm2,%xmm3
 a4d:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 a51:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 a55:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 a59:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 a5d:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 a61:	66 0f 6f de          	movdqa %xmm6,%xmm3
 a65:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 a69:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 a6d:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 a71:	0f 29 b7 b0 00 00 00 	movaps %xmm6,0xb0(%rdi)
 a78:	0f 29 9f a0 00 00 00 	movaps %xmm3,0xa0(%rdi)
 a7f:	f3 0f 6f be 92 01 00 	movdqu 0x192(%rsi),%xmm7
 a86:	00 
 a87:	f3 0f 6f 9e 82 01 00 	movdqu 0x182(%rsi),%xmm3
 a8e:	00 
 a8f:	66 0f 6f d3          	movdqa %xmm3,%xmm2
 a93:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
 a97:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 a9b:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 a9f:	f3 0f 6f be b2 01 00 	movdqu 0x1b2(%rsi),%xmm7
 aa6:	00 
 aa7:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 aab:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 aaf:	f3 0f 6f 96 a2 01 00 	movdqu 0x1a2(%rsi),%xmm2
 ab6:	00 
 ab7:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
 abb:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 abf:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 ac3:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 ac7:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 acb:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 acf:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 ad3:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 ad7:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 adb:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 adf:	66 0f 61 e2          	punpcklwd %xmm2,%xmm4
 ae3:	66 0f 69 ea          	punpckhwd %xmm2,%xmm5
 ae7:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 aeb:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # af3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xaf3>
 af2:	00 
 af3:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 af7:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 afb:	66 0f 61 dd          	punpcklwd %xmm5,%xmm3
 aff:	66 0f 69 f5          	punpckhwd %xmm5,%xmm6
 b03:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
 b07:	66 0f 69 de          	punpckhwd %xmm6,%xmm3
 b0b:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 b0f:	66 0f e5 e2          	pmulhw %xmm2,%xmm4
 b13:	66 0f d5 ea          	pmullw %xmm2,%xmm5
 b17:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 b1b:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 b1f:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
 b23:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 b27:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 b2b:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 b2f:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 b33:	66 0f 6f f2          	movdqa %xmm2,%xmm6
 b37:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 b3b:	66 0f 69 f4          	punpckhwd %xmm4,%xmm6
 b3f:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 b43:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 b47:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 b4b:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 b4f:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 b53:	66 0f 6f f4          	movdqa %xmm4,%xmm6
 b57:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 b5b:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 b5f:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 b63:	66 0f fe f7          	paddd  %xmm7,%xmm6
 b67:	66 0f fe d5          	paddd  %xmm5,%xmm2
 b6b:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 b6f:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 b74:	66 0f 72 e6 10       	psrad  $0x10,%xmm6
 b79:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 b7d:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 b81:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 b85:	66 0f 6f d6          	movdqa %xmm6,%xmm2
 b89:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 b8d:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
 b91:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
 b95:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # b9d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xb9d>
 b9c:	00 
 b9d:	66 0f d5 fa          	pmullw %xmm2,%xmm7
 ba1:	66 0f e5 da          	pmulhw %xmm2,%xmm3
 ba5:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 ba9:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 bad:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 bb1:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 bb5:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 bb9:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 bbd:	66 0f 69 df          	punpckhwd %xmm7,%xmm3
 bc1:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 bc5:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 bc9:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 bcd:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 bd1:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 bd5:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 bd9:	66 0f 6f da          	movdqa %xmm2,%xmm3
 bdd:	66 0f d5 e8          	pmullw %xmm0,%xmm5
 be1:	66 0f e5 d8          	pmulhw %xmm0,%xmm3
 be5:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 be9:	66 0f 69 eb          	punpckhwd %xmm3,%xmm5
 bed:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 bf1:	66 0f fe d4          	paddd  %xmm4,%xmm2
 bf5:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 bf9:	66 0f fe e7          	paddd  %xmm7,%xmm4
 bfd:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 c02:	66 0f 72 e4 10       	psrad  $0x10,%xmm4
 c07:	66 0f 6f da          	movdqa %xmm2,%xmm3
 c0b:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 c0f:	66 0f 69 dc          	punpckhwd %xmm4,%xmm3
 c13:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 c17:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 c1b:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 c1f:	66 0f 6f de          	movdqa %xmm6,%xmm3
 c23:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 c27:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
 c2b:	66 0f 69 f2          	punpckhwd %xmm2,%xmm6
 c2f:	0f 29 9f c0 00 00 00 	movaps %xmm3,0xc0(%rdi)
 c36:	0f 29 b7 d0 00 00 00 	movaps %xmm6,0xd0(%rdi)
 c3d:	0f b7 86 c2 01 00 00 	movzwl 0x1c2(%rsi),%eax
 c44:	66 0f 6e d8          	movd   %eax,%xmm3
 c48:	0f b7 86 ca 01 00 00 	movzwl 0x1ca(%rsi),%eax
 c4f:	66 0f c4 9e c6 01 00 	pinsrw $0x1,0x1c6(%rsi),%xmm3
 c56:	00 01 
 c58:	66 0f 6e e8          	movd   %eax,%xmm5
 c5c:	0f b7 86 d2 01 00 00 	movzwl 0x1d2(%rsi),%eax
 c63:	66 0f c4 ae ce 01 00 	pinsrw $0x1,0x1ce(%rsi),%xmm5
 c6a:	00 01 
 c6c:	66 0f 6e d0          	movd   %eax,%xmm2
 c70:	0f b7 86 da 01 00 00 	movzwl 0x1da(%rsi),%eax
 c77:	66 0f 62 dd          	punpckldq %xmm5,%xmm3
 c7b:	66 0f c4 96 d6 01 00 	pinsrw $0x1,0x1d6(%rsi),%xmm2
 c82:	00 01 
 c84:	66 0f 6e e0          	movd   %eax,%xmm4
 c88:	66 0f c4 a6 de 01 00 	pinsrw $0x1,0x1de(%rsi),%xmm4
 c8f:	00 01 
 c91:	0f b7 86 e2 01 00 00 	movzwl 0x1e2(%rsi),%eax
 c98:	66 0f 62 d4          	punpckldq %xmm4,%xmm2
 c9c:	66 0f 6f e3          	movdqa %xmm3,%xmm4
 ca0:	66 0f 6c e2          	punpcklqdq %xmm2,%xmm4
 ca4:	66 0f 6e d0          	movd   %eax,%xmm2
 ca8:	0f b7 86 ea 01 00 00 	movzwl 0x1ea(%rsi),%eax
 caf:	66 0f c4 96 e6 01 00 	pinsrw $0x1,0x1e6(%rsi),%xmm2
 cb6:	00 01 
 cb8:	66 0f 6e f0          	movd   %eax,%xmm6
 cbc:	0f b7 86 f2 01 00 00 	movzwl 0x1f2(%rsi),%eax
 cc3:	66 0f c4 b6 ee 01 00 	pinsrw $0x1,0x1ee(%rsi),%xmm6
 cca:	00 01 
 ccc:	66 0f 6e d8          	movd   %eax,%xmm3
 cd0:	0f b7 86 fa 01 00 00 	movzwl 0x1fa(%rsi),%eax
 cd7:	66 0f 62 d6          	punpckldq %xmm6,%xmm2
 cdb:	66 0f c4 9e f6 01 00 	pinsrw $0x1,0x1f6(%rsi),%xmm3
 ce2:	00 01 
 ce4:	66 0f 6e e8          	movd   %eax,%xmm5
 ce8:	66 0f c4 ae fe 01 00 	pinsrw $0x1,0x1fe(%rsi),%xmm5
 cef:	00 01 
 cf1:	66 0f 62 dd          	punpckldq %xmm5,%xmm3
 cf5:	66 0f 6c d3          	punpcklqdq %xmm3,%xmm2
 cf9:	66 0f 6f 1d 00 00 00 	movdqa 0x0(%rip),%xmm3        # d01 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xd01>
 d00:	00 
 d01:	66 0f 6f f3          	movdqa %xmm3,%xmm6
 d05:	66 0f e5 dc          	pmulhw %xmm4,%xmm3
 d09:	66 0f d5 f4          	pmullw %xmm4,%xmm6
 d0d:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # d15 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xd15>
 d14:	00 
 d15:	66 44 0f 6f c6       	movdqa %xmm6,%xmm8
 d1a:	66 0f 69 f3          	punpckhwd %xmm3,%xmm6
 d1e:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
 d23:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 d27:	66 0f d5 da          	pmullw %xmm2,%xmm3
 d2b:	66 0f e5 d4          	pmulhw %xmm4,%xmm2
 d2f:	66 41 0f 6f e0       	movdqa %xmm8,%xmm4
 d34:	66 0f 69 e6          	punpckhwd %xmm6,%xmm4
 d38:	66 0f 6f eb          	movdqa %xmm3,%xmm5
 d3c:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
 d40:	66 0f 61 ea          	punpcklwd %xmm2,%xmm5
 d44:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
 d49:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 d4d:	66 0f 6f fa          	movdqa %xmm2,%xmm7
 d51:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 d55:	66 0f 69 fc          	punpckhwd %xmm4,%xmm7
 d59:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 d5d:	66 0f 61 d7          	punpcklwd %xmm7,%xmm2
 d61:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 d65:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 d69:	66 0f d5 d1          	pmullw %xmm1,%xmm2
 d6d:	66 0f 69 fb          	punpckhwd %xmm3,%xmm7
 d71:	66 44 0f 6f cc       	movdqa %xmm4,%xmm9
 d76:	66 44 0f 69 cf       	punpckhwd %xmm7,%xmm9
 d7b:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
 d7f:	66 41 0f 61 e1       	punpcklwd %xmm9,%xmm4
 d84:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 d88:	66 0f d5 f9          	pmullw %xmm1,%xmm7
 d8c:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 d90:	66 0f e5 d0          	pmulhw %xmm0,%xmm2
 d94:	66 0f d5 e0          	pmullw %xmm0,%xmm4
 d98:	66 0f 6f cc          	movdqa %xmm4,%xmm1
 d9c:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 da0:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 da4:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 da8:	66 41 0f fe c8       	paddd  %xmm8,%xmm1
 dad:	66 0f fe d6          	paddd  %xmm6,%xmm2
 db1:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 db6:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
 dbb:	66 0f 6f e1          	movdqa %xmm1,%xmm4
 dbf:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 dc3:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
 dc7:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 dcb:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 dcf:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
 dd3:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 dd7:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 ddb:	66 0f d5 d0          	pmullw %xmm0,%xmm2
 ddf:	66 0f e5 f8          	pmulhw %xmm0,%xmm7
 de3:	0f 29 8f e0 00 00 00 	movaps %xmm1,0xe0(%rdi)
 dea:	66 0f 6f c2          	movdqa %xmm2,%xmm0
 dee:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 df2:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 df6:	66 0f 69 cf          	punpckhwd %xmm7,%xmm1
 dfa:	66 0f fe c5          	paddd  %xmm5,%xmm0
 dfe:	66 0f fe cb          	paddd  %xmm3,%xmm1
 e02:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
 e07:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
 e0c:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 e10:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 e14:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
 e18:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 e1c:	66 0f 69 ca          	punpckhwd %xmm2,%xmm1
 e20:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 e24:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 e28:	0f 29 87 f0 00 00 00 	movaps %xmm0,0xf0(%rdi)
 e2f:	c3                   	ret
 e30:	31 c9                	xor    %ecx,%ecx
 e32:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # e39 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xe39>
 e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 e40:	41 0f bf 04 08       	movswl (%r8,%rcx,1),%eax
 e45:	44 0f bf 4c 8e 02    	movswl 0x2(%rsi,%rcx,4),%r9d
 e4b:	44 0f af c8          	imul   %eax,%r9d
 e4f:	89 c2                	mov    %eax,%edx
 e51:	f7 da                	neg    %edx
 e53:	0f bf d2             	movswl %dx,%edx
 e56:	66 41 69 c1 01 f3    	imul   $0xf301,%r9w,%ax
 e5c:	98                   	cwtl
 e5d:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 e63:	44 01 c8             	add    %r9d,%eax
 e66:	c1 f8 10             	sar    $0x10,%eax
 e69:	66 89 04 4f          	mov    %ax,(%rdi,%rcx,2)
 e6d:	0f bf 44 8e 06       	movswl 0x6(%rsi,%rcx,4),%eax
 e72:	0f af d0             	imul   %eax,%edx
 e75:	66 69 c2 01 f3       	imul   $0xf301,%dx,%ax
 e7a:	98                   	cwtl
 e7b:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 e81:	01 d0                	add    %edx,%eax
 e83:	c1 f8 10             	sar    $0x10,%eax
 e86:	66 89 44 4f 02       	mov    %ax,0x2(%rdi,%rcx,2)
 e8b:	48 83 c1 02          	add    $0x2,%rcx
 e8f:	48 81 f9 80 00 00 00 	cmp    $0x80,%rcx
 e96:	75 a8                	jne    e40 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_mulcache_compute+0xe40>
 e98:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe>
   d:	00 
   e:	49 89 ff             	mov    %rdi,%r15
  11:	31 c9                	xor    %ecx,%ecx
  13:	41 56                	push   %r14
  15:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x1d>
  1c:	00 
  1d:	bf 0a fd ff ff       	mov    $0xfffffd0a,%edi
  22:	41 55                	push   %r13
  24:	41 54                	push   %r12
  26:	55                   	push   %rbp
  27:	53                   	push   %rbx
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	44 8d 59 01          	lea    0x1(%rcx),%r11d
  34:	bb 01 00 00 00       	mov    $0x1,%ebx
  39:	bd 00 01 00 00       	mov    $0x100,%ebp
  3e:	45 31 c9             	xor    %r9d,%r9d
  41:	d3 e3                	shl    %cl,%ebx
  43:	44 89 5c 24 f4       	mov    %r11d,-0xc(%rsp)
  48:	44 89 d9             	mov    %r11d,%ecx
  4b:	d3 ed                	shr    %cl,%ebp
  4d:	44 8d 64 2d 00       	lea    0x0(%rbp,%rbp,1),%r12d
  52:	89 ee                	mov    %ebp,%esi
  54:	41 89 ee             	mov    %ebp,%r14d
  57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  5e:	00 00 
  60:	41 89 f3             	mov    %esi,%r11d
  63:	83 c3 01             	add    $0x1,%ebx
  66:	44 0f bf c7          	movswl %di,%r8d
  6a:	45 29 cb             	sub    %r9d,%r11d
  6d:	41 8d 43 ff          	lea    -0x1(%r11),%eax
  71:	83 f8 06             	cmp    $0x6,%eax
  74:	0f 86 86 03 00 00    	jbe    400 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x400>
  7a:	41 8d 41 01          	lea    0x1(%r9),%eax
  7e:	39 c6                	cmp    %eax,%esi
  80:	44 89 c8             	mov    %r9d,%eax
  83:	72 1e                	jb     a3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xa3>
  85:	4e 8d 54 30 08       	lea    0x8(%rax,%r14,1),%r10
  8a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
  8e:	4d 01 d2             	add    %r10,%r10
  91:	4c 8d 6a 10          	lea    0x10(%rdx),%r13
  95:	49 8d 4a f0          	lea    -0x10(%r10),%rcx
  99:	4c 39 e9             	cmp    %r13,%rcx
  9c:	7d 72                	jge    110 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x110>
  9e:	4c 39 d2             	cmp    %r10,%rdx
  a1:	7d 6d                	jge    110 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x110>
  a3:	89 f2                	mov    %esi,%edx
  a5:	48 29 c2             	sub    %rax,%rdx
  a8:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
  ac:	0f 1f 40 00          	nopl   0x0(%rax)
  b0:	0f bf 3c 41          	movswl (%rcx,%rax,2),%edi
  b4:	41 0f af f8          	imul   %r8d,%edi
  b8:	66 69 d7 01 f3       	imul   $0xf301,%di,%dx
  bd:	0f bf d2             	movswl %dx,%edx
  c0:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
  c6:	01 fa                	add    %edi,%edx
  c8:	41 0f b7 3c 47       	movzwl (%r15,%rax,2),%edi
  cd:	c1 fa 10             	sar    $0x10,%edx
  d0:	29 d7                	sub    %edx,%edi
  d2:	66 89 3c 41          	mov    %di,(%rcx,%rax,2)
  d6:	66 41 01 14 47       	add    %dx,(%r15,%rax,2)
  db:	48 83 c0 01          	add    $0x1,%rax
  df:	39 f0                	cmp    %esi,%eax
  e1:	72 cd                	jb     b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xb0>
  e3:	45 01 e1             	add    %r12d,%r9d
  e6:	44 01 e6             	add    %r12d,%esi
  e9:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
  f0:	0f 87 da 02 00 00    	ja     3d0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x3d0>
  f6:	89 d8                	mov    %ebx,%eax
  f8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ff <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xff>
  ff:	0f b7 3c 41          	movzwl (%rcx,%rax,2),%edi
 103:	e9 58 ff ff ff       	jmp    60 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x60>
 108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 10f:	00 
 110:	44 89 d8             	mov    %r11d,%eax
 113:	66 0f 6e e7          	movd   %edi,%xmm4
 117:	4c 01 f9             	add    %r15,%rcx
 11a:	4c 01 fa             	add    %r15,%rdx
 11d:	c1 e8 03             	shr    $0x3,%eax
 120:	66 0f 61 e4          	punpcklwd %xmm4,%xmm4
 124:	48 c1 e0 04          	shl    $0x4,%rax
 128:	66 0f 70 e4 00       	pshufd $0x0,%xmm4,%xmm4
 12d:	48 01 c8             	add    %rcx,%rax
 130:	f3 0f 6f 19          	movdqu (%rcx),%xmm3
 134:	f3 0f 6f 01          	movdqu (%rcx),%xmm0
 138:	48 83 c1 10          	add    $0x10,%rcx
 13c:	48 83 c2 10          	add    $0x10,%rdx
 140:	66 0f d5 dc          	pmullw %xmm4,%xmm3
 144:	66 0f e5 c4          	pmulhw %xmm4,%xmm0
 148:	66 0f 6f fb          	movdqa %xmm3,%xmm7
 14c:	66 0f 69 d8          	punpckhwd %xmm0,%xmm3
 150:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
 154:	66 0f 6f c7          	movdqa %xmm7,%xmm0
 158:	66 0f 6f cf          	movdqa %xmm7,%xmm1
 15c:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
 160:	66 0f 69 cb          	punpckhwd %xmm3,%xmm1
 164:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 168:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 16c:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
 170:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 174:	66 0f d5 c6          	pmullw %xmm6,%xmm0
 178:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 17c:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 180:	66 0f e5 cd          	pmulhw %xmm5,%xmm1
 184:	66 0f d5 d5          	pmullw %xmm5,%xmm2
 188:	66 0f 6f c2          	movdqa %xmm2,%xmm0
 18c:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
 190:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 194:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 198:	66 0f fe c7          	paddd  %xmm7,%xmm0
 19c:	66 0f fe cb          	paddd  %xmm3,%xmm1
 1a0:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
 1a5:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
 1aa:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 1ae:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 1b2:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
 1b6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 1ba:	66 0f 69 ca          	punpckhwd %xmm2,%xmm1
 1be:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 1c2:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 1c6:	f3 0f 6f 4a f0       	movdqu -0x10(%rdx),%xmm1
 1cb:	66 0f f9 c8          	psubw  %xmm0,%xmm1
 1cf:	0f 11 49 f0          	movups %xmm1,-0x10(%rcx)
 1d3:	f3 0f 6f 7a f0       	movdqu -0x10(%rdx),%xmm7
 1d8:	66 0f fd c7          	paddw  %xmm7,%xmm0
 1dc:	0f 11 42 f0          	movups %xmm0,-0x10(%rdx)
 1e0:	48 39 c8             	cmp    %rcx,%rax
 1e3:	0f 85 47 ff ff ff    	jne    130 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x130>
 1e9:	44 89 d8             	mov    %r11d,%eax
 1ec:	83 e0 f8             	and    $0xfffffff8,%eax
 1ef:	44 01 c8             	add    %r9d,%eax
 1f2:	41 83 e3 07          	and    $0x7,%r11d
 1f6:	0f 84 e7 fe ff ff    	je     e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 1fc:	8d 54 05 00          	lea    0x0(%rbp,%rax,1),%edx
 200:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 204:	0f bf 39             	movswl (%rcx),%edi
 207:	41 0f af f8          	imul   %r8d,%edi
 20b:	66 69 d7 01 f3       	imul   $0xf301,%di,%dx
 210:	0f bf d2             	movswl %dx,%edx
 213:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 219:	01 fa                	add    %edi,%edx
 21b:	89 c7                	mov    %eax,%edi
 21d:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 221:	c1 fa 10             	sar    $0x10,%edx
 224:	44 0f b7 17          	movzwl (%rdi),%r10d
 228:	41 29 d2             	sub    %edx,%r10d
 22b:	66 44 89 11          	mov    %r10w,(%rcx)
 22f:	66 01 17             	add    %dx,(%rdi)
 232:	8d 78 01             	lea    0x1(%rax),%edi
 235:	39 f7                	cmp    %esi,%edi
 237:	0f 83 a6 fe ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 23d:	8d 54 3d 00          	lea    0x0(%rbp,%rdi,1),%edx
 241:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 245:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 249:	44 0f bf 11          	movswl (%rcx),%r10d
 24d:	45 0f af d0          	imul   %r8d,%r10d
 251:	66 41 69 d2 01 f3    	imul   $0xf301,%r10w,%dx
 257:	0f bf d2             	movswl %dx,%edx
 25a:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 260:	44 01 d2             	add    %r10d,%edx
 263:	44 0f b7 17          	movzwl (%rdi),%r10d
 267:	c1 fa 10             	sar    $0x10,%edx
 26a:	41 29 d2             	sub    %edx,%r10d
 26d:	66 44 89 11          	mov    %r10w,(%rcx)
 271:	66 01 17             	add    %dx,(%rdi)
 274:	8d 78 02             	lea    0x2(%rax),%edi
 277:	39 f7                	cmp    %esi,%edi
 279:	0f 83 64 fe ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 27f:	8d 54 3d 00          	lea    0x0(%rbp,%rdi,1),%edx
 283:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 287:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 28b:	44 0f bf 11          	movswl (%rcx),%r10d
 28f:	45 0f af d0          	imul   %r8d,%r10d
 293:	66 41 69 d2 01 f3    	imul   $0xf301,%r10w,%dx
 299:	0f bf d2             	movswl %dx,%edx
 29c:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 2a2:	44 01 d2             	add    %r10d,%edx
 2a5:	44 0f b7 17          	movzwl (%rdi),%r10d
 2a9:	c1 fa 10             	sar    $0x10,%edx
 2ac:	41 29 d2             	sub    %edx,%r10d
 2af:	66 44 89 11          	mov    %r10w,(%rcx)
 2b3:	66 01 17             	add    %dx,(%rdi)
 2b6:	8d 78 03             	lea    0x3(%rax),%edi
 2b9:	39 f7                	cmp    %esi,%edi
 2bb:	0f 83 22 fe ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 2c1:	8d 54 3d 00          	lea    0x0(%rbp,%rdi,1),%edx
 2c5:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 2c9:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 2cd:	44 0f bf 11          	movswl (%rcx),%r10d
 2d1:	45 0f af d0          	imul   %r8d,%r10d
 2d5:	66 41 69 d2 01 f3    	imul   $0xf301,%r10w,%dx
 2db:	0f bf d2             	movswl %dx,%edx
 2de:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 2e4:	44 01 d2             	add    %r10d,%edx
 2e7:	44 0f b7 17          	movzwl (%rdi),%r10d
 2eb:	c1 fa 10             	sar    $0x10,%edx
 2ee:	41 29 d2             	sub    %edx,%r10d
 2f1:	66 44 89 11          	mov    %r10w,(%rcx)
 2f5:	66 01 17             	add    %dx,(%rdi)
 2f8:	8d 78 04             	lea    0x4(%rax),%edi
 2fb:	39 f7                	cmp    %esi,%edi
 2fd:	0f 83 e0 fd ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 303:	8d 54 3d 00          	lea    0x0(%rbp,%rdi,1),%edx
 307:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 30b:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 30f:	44 0f bf 11          	movswl (%rcx),%r10d
 313:	45 0f af d0          	imul   %r8d,%r10d
 317:	66 41 69 d2 01 f3    	imul   $0xf301,%r10w,%dx
 31d:	0f bf d2             	movswl %dx,%edx
 320:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 326:	44 01 d2             	add    %r10d,%edx
 329:	44 0f b7 17          	movzwl (%rdi),%r10d
 32d:	c1 fa 10             	sar    $0x10,%edx
 330:	41 29 d2             	sub    %edx,%r10d
 333:	66 44 89 11          	mov    %r10w,(%rcx)
 337:	66 01 17             	add    %dx,(%rdi)
 33a:	8d 78 05             	lea    0x5(%rax),%edi
 33d:	39 f7                	cmp    %esi,%edi
 33f:	0f 83 9e fd ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 345:	8d 54 3d 00          	lea    0x0(%rbp,%rdi,1),%edx
 349:	49 8d 3c 7f          	lea    (%r15,%rdi,2),%rdi
 34d:	49 8d 0c 57          	lea    (%r15,%rdx,2),%rcx
 351:	44 0f bf 11          	movswl (%rcx),%r10d
 355:	45 0f af d0          	imul   %r8d,%r10d
 359:	66 41 69 d2 01 f3    	imul   $0xf301,%r10w,%dx
 35f:	0f bf d2             	movswl %dx,%edx
 362:	69 d2 ff f2 ff ff    	imul   $0xfffff2ff,%edx,%edx
 368:	44 01 d2             	add    %r10d,%edx
 36b:	44 0f b7 17          	movzwl (%rdi),%r10d
 36f:	c1 fa 10             	sar    $0x10,%edx
 372:	41 29 d2             	sub    %edx,%r10d
 375:	66 44 89 11          	mov    %r10w,(%rcx)
 379:	8d 48 06             	lea    0x6(%rax),%ecx
 37c:	66 01 17             	add    %dx,(%rdi)
 37f:	39 f1                	cmp    %esi,%ecx
 381:	0f 83 5c fd ff ff    	jae    e3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xe3>
 387:	8d 44 0d 00          	lea    0x0(%rbp,%rcx,1),%eax
 38b:	49 8d 0c 4f          	lea    (%r15,%rcx,2),%rcx
 38f:	45 01 e1             	add    %r12d,%r9d
 392:	44 01 e6             	add    %r12d,%esi
 395:	49 8d 14 47          	lea    (%r15,%rax,2),%rdx
 399:	0f bf 3a             	movswl (%rdx),%edi
 39c:	41 0f af f8          	imul   %r8d,%edi
 3a0:	66 69 c7 01 f3       	imul   $0xf301,%di,%ax
 3a5:	98                   	cwtl
 3a6:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 3ac:	01 f8                	add    %edi,%eax
 3ae:	0f b7 39             	movzwl (%rcx),%edi
 3b1:	c1 f8 10             	sar    $0x10,%eax
 3b4:	29 c7                	sub    %eax,%edi
 3b6:	66 89 3a             	mov    %di,(%rdx)
 3b9:	66 01 01             	add    %ax,(%rcx)
 3bc:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
 3c3:	0f 86 2d fd ff ff    	jbe    f6 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xf6>
 3c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 3d0:	44 8b 5c 24 f4       	mov    -0xc(%rsp),%r11d
 3d5:	41 83 fb 07          	cmp    $0x7,%r11d
 3d9:	74 2d                	je     408 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x408>
 3db:	44 89 d9             	mov    %r11d,%ecx
 3de:	b8 01 00 00 00       	mov    $0x1,%eax
 3e3:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 3ea <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x3ea>
 3ea:	d3 e0                	shl    %cl,%eax
 3ec:	44 89 d9             	mov    %r11d,%ecx
 3ef:	0f b7 3c 43          	movzwl (%rbx,%rax,2),%edi
 3f3:	e9 38 fc ff ff       	jmp    30 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0x30>
 3f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 3ff:	00 
 400:	44 89 c8             	mov    %r9d,%eax
 403:	e9 9b fc ff ff       	jmp    a3 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_ntt+0xa3>
 408:	5b                   	pop    %rbx
 409:	5d                   	pop    %rbp
 40a:	41 5c                	pop    %r12
 40c:	41 5d                	pop    %r13
 40e:	41 5e                	pop    %r14
 410:	41 5f                	pop    %r15
 412:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0xe>
   d:	00 
   e:	48 89 fe             	mov    %rdi,%rsi
  11:	48 89 f8             	mov    %rdi,%rax
  14:	41 56                	push   %r14
  16:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e>
  1d:	00 
  1e:	48 8d 97 00 02 00 00 	lea    0x200(%rdi),%rdx
  25:	41 55                	push   %r13
  27:	66 0f 6f 15 00 00 00 	movdqa 0x0(%rip),%xmm2        # 2f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x2f>
  2e:	00 
  2f:	41 54                	push   %r12
  31:	55                   	push   %rbp
  32:	53                   	push   %rbx
  33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  38:	f3 0f 6f 20          	movdqu (%rax),%xmm4
  3c:	f3 0f 6f 00          	movdqu (%rax),%xmm0
  40:	48 83 c0 10          	add    $0x10,%rax
  44:	66 0f d5 e6          	pmullw %xmm6,%xmm4
  48:	66 0f e5 c6          	pmulhw %xmm6,%xmm0
  4c:	66 0f 6f fc          	movdqa %xmm4,%xmm7
  50:	66 0f 69 e0          	punpckhwd %xmm0,%xmm4
  54:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
  58:	66 0f 6f c7          	movdqa %xmm7,%xmm0
  5c:	66 0f 6f cf          	movdqa %xmm7,%xmm1
  60:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
  64:	66 0f 69 cc          	punpckhwd %xmm4,%xmm1
  68:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  6c:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  70:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
  74:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
  78:	66 0f d5 c5          	pmullw %xmm5,%xmm0
  7c:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  80:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  84:	66 0f e5 ca          	pmulhw %xmm2,%xmm1
  88:	66 0f d5 da          	pmullw %xmm2,%xmm3
  8c:	66 0f 6f c3          	movdqa %xmm3,%xmm0
  90:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
  94:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  98:	66 0f 6f cb          	movdqa %xmm3,%xmm1
  9c:	66 0f fe c7          	paddd  %xmm7,%xmm0
  a0:	66 0f fe cc          	paddd  %xmm4,%xmm1
  a4:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
  a9:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
  ae:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  b2:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  b6:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
  ba:	66 0f 6f c8          	movdqa %xmm0,%xmm1
  be:	66 0f 69 cb          	punpckhwd %xmm3,%xmm1
  c2:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
  c6:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
  ca:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  ce:	48 39 c2             	cmp    %rax,%rdx
  d1:	0f 85 61 ff ff ff    	jne    38 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x38>
  d7:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # df <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0xdf>
  de:	00 
  df:	66 0f 6f 1d 00 00 00 	movdqa 0x0(%rip),%xmm3        # e7 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0xe7>
  e6:	00 
  e7:	bb 07 00 00 00       	mov    $0x7,%ebx
  ec:	41 b8 5c 06 00 00    	mov    $0x65c,%r8d
  f2:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # fa <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0xfa>
  f9:	00 
  fa:	4c 8d 35 00 00 00 00 	lea    0x0(%rip),%r14        # 101 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x101>
 101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 108:	89 d9                	mov    %ebx,%ecx
 10a:	b8 00 01 00 00       	mov    $0x100,%eax
 10f:	bd 01 00 00 00       	mov    $0x1,%ebp
 114:	89 5c 24 f4          	mov    %ebx,-0xc(%rsp)
 118:	d3 e8                	shr    %cl,%eax
 11a:	d3 e5                	shl    %cl,%ebp
 11c:	31 c9                	xor    %ecx,%ecx
 11e:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
 122:	83 ed 01             	sub    $0x1,%ebp
 125:	44 8d 24 00          	lea    (%rax,%rax,1),%r12d
 129:	89 c2                	mov    %eax,%edx
 12b:	41 89 c7             	mov    %eax,%r15d
 12e:	66 90                	xchg   %ax,%ax
 130:	89 d3                	mov    %edx,%ebx
 132:	83 ed 01             	sub    $0x1,%ebp
 135:	45 0f bf d8          	movswl %r8w,%r11d
 139:	29 cb                	sub    %ecx,%ebx
 13b:	8d 43 ff             	lea    -0x1(%rbx),%eax
 13e:	83 f8 06             	cmp    $0x6,%eax
 141:	0f 86 09 05 00 00    	jbe    650 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x650>
 147:	8d 41 01             	lea    0x1(%rcx),%eax
 14a:	39 c2                	cmp    %eax,%edx
 14c:	89 c8                	mov    %ecx,%eax
 14e:	72 26                	jb     176 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x176>
 150:	4e 8d 54 38 08       	lea    0x8(%rax,%r15,1),%r10
 155:	48 8d 3c 00          	lea    (%rax,%rax,1),%rdi
 159:	4d 01 d2             	add    %r10,%r10
 15c:	4c 8d 6f 10          	lea    0x10(%rdi),%r13
 160:	4d 8d 4a f0          	lea    -0x10(%r10),%r9
 164:	4d 39 e9             	cmp    %r13,%r9
 167:	0f 8d 93 00 00 00    	jge    200 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x200>
 16d:	4c 39 d7             	cmp    %r10,%rdi
 170:	0f 8d 8a 00 00 00    	jge    200 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x200>
 176:	89 d7                	mov    %edx,%edi
 178:	4c 8d 04 7e          	lea    (%rsi,%rdi,2),%r8
 17c:	0f 1f 40 00          	nopl   0x0(%rax)
 180:	44 0f b7 14 46       	movzwl (%rsi,%rax,2),%r10d
 185:	45 0f b7 08          	movzwl (%r8),%r9d
 189:	49 83 c0 02          	add    $0x2,%r8
 18d:	45 01 d1             	add    %r10d,%r9d
 190:	41 0f bf f9          	movswl %r9w,%edi
 194:	69 ff bf 4e 00 00    	imul   $0x4ebf,%edi,%edi
 19a:	81 c7 00 00 00 02    	add    $0x2000000,%edi
 1a0:	c1 ff 1a             	sar    $0x1a,%edi
 1a3:	66 69 ff 01 0d       	imul   $0xd01,%di,%di
 1a8:	41 29 f9             	sub    %edi,%r9d
 1ab:	66 44 89 0c 46       	mov    %r9w,(%rsi,%rax,2)
 1b0:	45 0f b7 48 fe       	movzwl -0x2(%r8),%r9d
 1b5:	48 83 c0 01          	add    $0x1,%rax
 1b9:	45 29 d1             	sub    %r10d,%r9d
 1bc:	45 0f bf c9          	movswl %r9w,%r9d
 1c0:	45 0f af cb          	imul   %r11d,%r9d
 1c4:	66 41 69 f9 01 f3    	imul   $0xf301,%r9w,%di
 1ca:	0f bf ff             	movswl %di,%edi
 1cd:	69 ff ff f2 ff ff    	imul   $0xfffff2ff,%edi,%edi
 1d3:	44 01 cf             	add    %r9d,%edi
 1d6:	c1 ff 10             	sar    $0x10,%edi
 1d9:	66 41 89 78 fe       	mov    %di,-0x2(%r8)
 1de:	39 d0                	cmp    %edx,%eax
 1e0:	72 9e                	jb     180 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x180>
 1e2:	44 01 e1             	add    %r12d,%ecx
 1e5:	44 01 e2             	add    %r12d,%edx
 1e8:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 1ee:	0f 87 6c 04 00 00    	ja     660 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x660>
 1f4:	89 e8                	mov    %ebp,%eax
 1f6:	45 0f b7 04 46       	movzwl (%r14,%rax,2),%r8d
 1fb:	e9 30 ff ff ff       	jmp    130 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x130>
 200:	89 d8                	mov    %ebx,%eax
 202:	66 41 0f 6e c8       	movd   %r8d,%xmm1
 207:	48 01 f7             	add    %rsi,%rdi
 20a:	49 01 f1             	add    %rsi,%r9
 20d:	c1 e8 03             	shr    $0x3,%eax
 210:	66 0f 61 c9          	punpcklwd %xmm1,%xmm1
 214:	48 c1 e0 04          	shl    $0x4,%rax
 218:	66 0f 70 c9 00       	pshufd $0x0,%xmm1,%xmm1
 21d:	48 01 f8             	add    %rdi,%rax
 220:	f3 44 0f 6f 0f       	movdqu (%rdi),%xmm9
 225:	f3 45 0f 6f 01       	movdqu (%r9),%xmm8
 22a:	48 83 c7 10          	add    $0x10,%rdi
 22e:	49 83 c1 10          	add    $0x10,%r9
 232:	66 45 0f fd c1       	paddw  %xmm9,%xmm8
 237:	66 41 0f 6f f8       	movdqa %xmm8,%xmm7
 23c:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
 241:	66 0f d5 fc          	pmullw %xmm4,%xmm7
 245:	66 44 0f e5 d4       	pmulhw %xmm4,%xmm10
 24a:	66 0f 6f c7          	movdqa %xmm7,%xmm0
 24e:	66 41 0f 69 fa       	punpckhwd %xmm10,%xmm7
 253:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
 258:	66 0f fe fb          	paddd  %xmm3,%xmm7
 25c:	66 0f fe c3          	paddd  %xmm3,%xmm0
 260:	66 0f 72 e7 1a       	psrad  $0x1a,%xmm7
 265:	66 0f 72 e0 1a       	psrad  $0x1a,%xmm0
 26a:	66 44 0f 6f d0       	movdqa %xmm0,%xmm10
 26f:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 273:	66 44 0f 69 d7       	punpckhwd %xmm7,%xmm10
 278:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 27c:	66 41 0f 69 fa       	punpckhwd %xmm10,%xmm7
 281:	66 41 0f 61 c2       	punpcklwd %xmm10,%xmm0
 286:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 28a:	66 0f d5 c6          	pmullw %xmm6,%xmm0
 28e:	66 44 0f f9 c0       	psubw  %xmm0,%xmm8
 293:	44 0f 11 47 f0       	movups %xmm8,-0x10(%rdi)
 298:	f3 41 0f 6f 41 f0    	movdqu -0x10(%r9),%xmm0
 29e:	66 41 0f f9 c1       	psubw  %xmm9,%xmm0
 2a3:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
 2a8:	66 0f e5 c1          	pmulhw %xmm1,%xmm0
 2ac:	66 44 0f d5 c9       	pmullw %xmm1,%xmm9
 2b1:	66 45 0f 6f d1       	movdqa %xmm9,%xmm10
 2b6:	66 44 0f 69 c8       	punpckhwd %xmm0,%xmm9
 2bb:	66 44 0f 61 d0       	punpcklwd %xmm0,%xmm10
 2c0:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
 2c5:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
 2ca:	66 41 0f 61 c1       	punpcklwd %xmm9,%xmm0
 2cf:	66 41 0f 69 f9       	punpckhwd %xmm9,%xmm7
 2d4:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
 2d9:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 2dd:	66 44 0f 69 c7       	punpckhwd %xmm7,%xmm8
 2e2:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
 2e7:	66 0f d5 c5          	pmullw %xmm5,%xmm0
 2eb:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
 2f0:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 2f4:	66 0f e5 fa          	pmulhw %xmm2,%xmm7
 2f8:	66 44 0f d5 c2       	pmullw %xmm2,%xmm8
 2fd:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
 302:	66 44 0f 69 c7       	punpckhwd %xmm7,%xmm8
 307:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 30b:	66 41 0f 6f f8       	movdqa %xmm8,%xmm7
 310:	66 41 0f fe c2       	paddd  %xmm10,%xmm0
 315:	66 41 0f fe f9       	paddd  %xmm9,%xmm7
 31a:	66 0f 72 e7 10       	psrad  $0x10,%xmm7
 31f:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
 324:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
 329:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 32d:	66 44 0f 69 c7       	punpckhwd %xmm7,%xmm8
 332:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 336:	66 41 0f 69 f8       	punpckhwd %xmm8,%xmm7
 33b:	66 41 0f 61 c0       	punpcklwd %xmm8,%xmm0
 340:	66 0f 61 c7          	punpcklwd %xmm7,%xmm0
 344:	41 0f 11 41 f0       	movups %xmm0,-0x10(%r9)
 349:	48 39 f8             	cmp    %rdi,%rax
 34c:	0f 85 ce fe ff ff    	jne    220 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x220>
 352:	89 df                	mov    %ebx,%edi
 354:	83 e7 f8             	and    $0xfffffff8,%edi
 357:	01 cf                	add    %ecx,%edi
 359:	83 e3 07             	and    $0x7,%ebx
 35c:	0f 84 80 fe ff ff    	je     1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 362:	44 8b 6c 24 f0       	mov    -0x10(%rsp),%r13d
 367:	89 f8                	mov    %edi,%eax
 369:	48 8d 1c 46          	lea    (%rsi,%rax,2),%rbx
 36d:	41 8d 44 3d 00       	lea    0x0(%r13,%rdi,1),%eax
 372:	44 0f b7 13          	movzwl (%rbx),%r10d
 376:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 37a:	45 0f b7 01          	movzwl (%r9),%r8d
 37e:	45 01 d0             	add    %r10d,%r8d
 381:	41 0f bf c0          	movswl %r8w,%eax
 385:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 38b:	05 00 00 00 02       	add    $0x2000000,%eax
 390:	c1 f8 1a             	sar    $0x1a,%eax
 393:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 398:	41 29 c0             	sub    %eax,%r8d
 39b:	66 44 89 03          	mov    %r8w,(%rbx)
 39f:	45 0f b7 01          	movzwl (%r9),%r8d
 3a3:	45 29 d0             	sub    %r10d,%r8d
 3a6:	45 0f bf c0          	movswl %r8w,%r8d
 3aa:	45 0f af c3          	imul   %r11d,%r8d
 3ae:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 3b4:	98                   	cwtl
 3b5:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 3bb:	44 01 c0             	add    %r8d,%eax
 3be:	c1 f8 10             	sar    $0x10,%eax
 3c1:	66 41 89 01          	mov    %ax,(%r9)
 3c5:	8d 47 01             	lea    0x1(%rdi),%eax
 3c8:	39 d0                	cmp    %edx,%eax
 3ca:	0f 83 12 fe ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 3d0:	41 89 c0             	mov    %eax,%r8d
 3d3:	44 01 e8             	add    %r13d,%eax
 3d6:	89 c0                	mov    %eax,%eax
 3d8:	4a 8d 1c 46          	lea    (%rsi,%r8,2),%rbx
 3dc:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 3e0:	44 0f b7 13          	movzwl (%rbx),%r10d
 3e4:	45 0f b7 01          	movzwl (%r9),%r8d
 3e8:	45 01 d0             	add    %r10d,%r8d
 3eb:	41 0f bf c0          	movswl %r8w,%eax
 3ef:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 3f5:	05 00 00 00 02       	add    $0x2000000,%eax
 3fa:	c1 f8 1a             	sar    $0x1a,%eax
 3fd:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 402:	41 29 c0             	sub    %eax,%r8d
 405:	66 44 89 03          	mov    %r8w,(%rbx)
 409:	45 0f b7 01          	movzwl (%r9),%r8d
 40d:	45 29 d0             	sub    %r10d,%r8d
 410:	45 0f bf c0          	movswl %r8w,%r8d
 414:	45 0f af c3          	imul   %r11d,%r8d
 418:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 41e:	98                   	cwtl
 41f:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 425:	44 01 c0             	add    %r8d,%eax
 428:	c1 f8 10             	sar    $0x10,%eax
 42b:	66 41 89 01          	mov    %ax,(%r9)
 42f:	8d 47 02             	lea    0x2(%rdi),%eax
 432:	39 d0                	cmp    %edx,%eax
 434:	0f 83 a8 fd ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 43a:	41 89 c0             	mov    %eax,%r8d
 43d:	44 01 e8             	add    %r13d,%eax
 440:	89 c0                	mov    %eax,%eax
 442:	4e 8d 14 46          	lea    (%rsi,%r8,2),%r10
 446:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 44a:	41 0f b7 1a          	movzwl (%r10),%ebx
 44e:	45 0f b7 01          	movzwl (%r9),%r8d
 452:	41 01 d8             	add    %ebx,%r8d
 455:	41 0f bf c0          	movswl %r8w,%eax
 459:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 45f:	05 00 00 00 02       	add    $0x2000000,%eax
 464:	c1 f8 1a             	sar    $0x1a,%eax
 467:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 46c:	41 29 c0             	sub    %eax,%r8d
 46f:	66 45 89 02          	mov    %r8w,(%r10)
 473:	45 0f b7 01          	movzwl (%r9),%r8d
 477:	41 29 d8             	sub    %ebx,%r8d
 47a:	45 0f bf c0          	movswl %r8w,%r8d
 47e:	45 0f af c3          	imul   %r11d,%r8d
 482:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 488:	98                   	cwtl
 489:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 48f:	44 01 c0             	add    %r8d,%eax
 492:	c1 f8 10             	sar    $0x10,%eax
 495:	66 41 89 01          	mov    %ax,(%r9)
 499:	8d 47 03             	lea    0x3(%rdi),%eax
 49c:	39 d0                	cmp    %edx,%eax
 49e:	0f 83 3e fd ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 4a4:	41 89 c0             	mov    %eax,%r8d
 4a7:	44 01 e8             	add    %r13d,%eax
 4aa:	89 c0                	mov    %eax,%eax
 4ac:	4e 8d 14 46          	lea    (%rsi,%r8,2),%r10
 4b0:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 4b4:	41 0f b7 1a          	movzwl (%r10),%ebx
 4b8:	45 0f b7 01          	movzwl (%r9),%r8d
 4bc:	41 01 d8             	add    %ebx,%r8d
 4bf:	41 0f bf c0          	movswl %r8w,%eax
 4c3:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 4c9:	05 00 00 00 02       	add    $0x2000000,%eax
 4ce:	c1 f8 1a             	sar    $0x1a,%eax
 4d1:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 4d6:	41 29 c0             	sub    %eax,%r8d
 4d9:	66 45 89 02          	mov    %r8w,(%r10)
 4dd:	45 0f b7 01          	movzwl (%r9),%r8d
 4e1:	41 29 d8             	sub    %ebx,%r8d
 4e4:	45 0f bf c0          	movswl %r8w,%r8d
 4e8:	45 0f af c3          	imul   %r11d,%r8d
 4ec:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 4f2:	98                   	cwtl
 4f3:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 4f9:	44 01 c0             	add    %r8d,%eax
 4fc:	c1 f8 10             	sar    $0x10,%eax
 4ff:	66 41 89 01          	mov    %ax,(%r9)
 503:	8d 47 04             	lea    0x4(%rdi),%eax
 506:	39 d0                	cmp    %edx,%eax
 508:	0f 83 d4 fc ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 50e:	41 89 c0             	mov    %eax,%r8d
 511:	44 01 e8             	add    %r13d,%eax
 514:	89 c0                	mov    %eax,%eax
 516:	4e 8d 14 46          	lea    (%rsi,%r8,2),%r10
 51a:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 51e:	41 0f b7 1a          	movzwl (%r10),%ebx
 522:	45 0f b7 01          	movzwl (%r9),%r8d
 526:	41 01 d8             	add    %ebx,%r8d
 529:	41 0f bf c0          	movswl %r8w,%eax
 52d:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 533:	05 00 00 00 02       	add    $0x2000000,%eax
 538:	c1 f8 1a             	sar    $0x1a,%eax
 53b:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 540:	41 29 c0             	sub    %eax,%r8d
 543:	66 45 89 02          	mov    %r8w,(%r10)
 547:	45 0f b7 01          	movzwl (%r9),%r8d
 54b:	41 29 d8             	sub    %ebx,%r8d
 54e:	45 0f bf c0          	movswl %r8w,%r8d
 552:	45 0f af c3          	imul   %r11d,%r8d
 556:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 55c:	98                   	cwtl
 55d:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 563:	44 01 c0             	add    %r8d,%eax
 566:	c1 f8 10             	sar    $0x10,%eax
 569:	66 41 89 01          	mov    %ax,(%r9)
 56d:	8d 47 05             	lea    0x5(%rdi),%eax
 570:	39 d0                	cmp    %edx,%eax
 572:	0f 83 6a fc ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 578:	41 89 c0             	mov    %eax,%r8d
 57b:	44 01 e8             	add    %r13d,%eax
 57e:	83 c7 06             	add    $0x6,%edi
 581:	89 c0                	mov    %eax,%eax
 583:	4e 8d 14 46          	lea    (%rsi,%r8,2),%r10
 587:	4c 8d 0c 46          	lea    (%rsi,%rax,2),%r9
 58b:	41 0f b7 1a          	movzwl (%r10),%ebx
 58f:	45 0f b7 01          	movzwl (%r9),%r8d
 593:	41 01 d8             	add    %ebx,%r8d
 596:	41 0f bf c0          	movswl %r8w,%eax
 59a:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 5a0:	05 00 00 00 02       	add    $0x2000000,%eax
 5a5:	c1 f8 1a             	sar    $0x1a,%eax
 5a8:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 5ad:	41 29 c0             	sub    %eax,%r8d
 5b0:	66 45 89 02          	mov    %r8w,(%r10)
 5b4:	45 0f b7 01          	movzwl (%r9),%r8d
 5b8:	41 29 d8             	sub    %ebx,%r8d
 5bb:	45 0f bf c0          	movswl %r8w,%r8d
 5bf:	45 0f af c3          	imul   %r11d,%r8d
 5c3:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 5c9:	98                   	cwtl
 5ca:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 5d0:	44 01 c0             	add    %r8d,%eax
 5d3:	c1 f8 10             	sar    $0x10,%eax
 5d6:	66 41 89 01          	mov    %ax,(%r9)
 5da:	39 d7                	cmp    %edx,%edi
 5dc:	0f 83 00 fc ff ff    	jae    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 5e2:	41 89 f8             	mov    %edi,%r8d
 5e5:	44 01 ef             	add    %r13d,%edi
 5e8:	89 ff                	mov    %edi,%edi
 5ea:	4d 01 c0             	add    %r8,%r8
 5ed:	48 01 ff             	add    %rdi,%rdi
 5f0:	49 01 f0             	add    %rsi,%r8
 5f3:	48 01 f7             	add    %rsi,%rdi
 5f6:	45 0f b7 08          	movzwl (%r8),%r9d
 5fa:	44 0f b7 17          	movzwl (%rdi),%r10d
 5fe:	45 01 ca             	add    %r9d,%r10d
 601:	41 0f bf c2          	movswl %r10w,%eax
 605:	69 c0 bf 4e 00 00    	imul   $0x4ebf,%eax,%eax
 60b:	05 00 00 00 02       	add    $0x2000000,%eax
 610:	c1 f8 1a             	sar    $0x1a,%eax
 613:	66 69 c0 01 0d       	imul   $0xd01,%ax,%ax
 618:	41 29 c2             	sub    %eax,%r10d
 61b:	66 45 89 10          	mov    %r10w,(%r8)
 61f:	44 0f b7 07          	movzwl (%rdi),%r8d
 623:	45 29 c8             	sub    %r9d,%r8d
 626:	45 0f bf c0          	movswl %r8w,%r8d
 62a:	45 0f af c3          	imul   %r11d,%r8d
 62e:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 634:	98                   	cwtl
 635:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 63b:	44 01 c0             	add    %r8d,%eax
 63e:	c1 f8 10             	sar    $0x10,%eax
 641:	66 89 07             	mov    %ax,(%rdi)
 644:	e9 99 fb ff ff       	jmp    1e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x1e2>
 649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 650:	89 c8                	mov    %ecx,%eax
 652:	e9 1f fb ff ff       	jmp    176 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x176>
 657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 65e:	00 00 
 660:	8b 5c 24 f4          	mov    -0xc(%rsp),%ebx
 664:	83 eb 01             	sub    $0x1,%ebx
 667:	74 16                	je     67f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x67f>
 669:	b8 01 00 00 00       	mov    $0x1,%eax
 66e:	89 d9                	mov    %ebx,%ecx
 670:	d3 e0                	shl    %cl,%eax
 672:	83 e8 01             	sub    $0x1,%eax
 675:	45 0f b7 04 46       	movzwl (%r14,%rax,2),%r8d
 67a:	e9 89 fa ff ff       	jmp    108 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_invntt_tomont+0x108>
 67f:	5b                   	pop    %rbx
 680:	5d                   	pop    %rbp
 681:	41 5c                	pop    %r12
 683:	41 5d                	pop    %r13
 685:	41 5e                	pop    %r14
 687:	41 5f                	pop    %r15
 689:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/poly_k.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_compress_du:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_compress_du>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_compress_du+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 40 01 00 00 	lea    0x140(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_compress_du+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 80 02 00 00 	lea    0x280(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_decompress_du:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_decompress_du>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_decompress_du+0x15>
  15:	48 8d b5 40 01 00 00 	lea    0x140(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_decompress_du+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 80 02 00 00 	lea    0x280(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tobytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tobytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tobytes+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 80 01 00 00 	lea    0x180(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tobytes+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 03 00 00 	lea    0x300(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_frombytes:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_frombytes>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_frombytes+0x15>
  15:	48 8d b5 80 01 00 00 	lea    0x180(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_frombytes+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 03 00 00 	lea    0x300(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_ntt:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_ntt>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_ntt+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_ntt+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <.LC1+0x16>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_invntt_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_invntt_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_invntt_tomont+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_invntt_tomont+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <.LC1+0x16>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	49 89 cb             	mov    %rcx,%r11
   9:	48 8d 8f 00 02 00 00 	lea    0x200(%rdi),%rcx
  10:	48 89 f0             	mov    %rsi,%rax
  13:	41 56                	push   %r14
  15:	41 55                	push   %r13
  17:	41 54                	push   %r12
  19:	55                   	push   %rbp
  1a:	53                   	push   %rbx
  1b:	48 89 fb             	mov    %rdi,%rbx
  1e:	48 83 ec 40          	sub    $0x40,%rsp
  22:	49 39 cb             	cmp    %rcx,%r11
  25:	73 10                	jae    37 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x37>
  27:	49 8d 8b 00 03 00 00 	lea    0x300(%r11),%rcx
  2e:	48 39 cf             	cmp    %rcx,%rdi
  31:	0f 82 42 05 00 00    	jb     579 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x579>
  37:	48 05 00 02 00 00    	add    $0x200,%rax
  3d:	31 c9                	xor    %ecx,%ecx
  3f:	90                   	nop
  40:	66 0f 6f 88 10 fe ff 	movdqa -0x1f0(%rax),%xmm1
  47:	ff 
  48:	48 83 c2 20          	add    $0x20,%rdx
  4c:	48 83 c0 20          	add    $0x20,%rax
  50:	66 44 0f 6f 88 e0 fd 	movdqa -0x220(%rax),%xmm9
  57:	ff ff 
  59:	66 44 0f 6f 40 e0    	movdqa -0x20(%rax),%xmm8
  5f:	66 0f 6f b8 e0 01 00 	movdqa 0x1e0(%rax),%xmm7
  66:	00 
  67:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
  6c:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
  71:	66 44 0f 61 c9       	punpcklwd %xmm1,%xmm9
  76:	66 44 0f 6f aa e0 03 	movdqa 0x3e0(%rdx),%xmm13
  7d:	00 00 
  7f:	66 44 0f 61 d9       	punpcklwd %xmm1,%xmm11
  84:	66 0f 69 c1          	punpckhwd %xmm1,%xmm0
  88:	66 0f 6f 4a f0       	movdqa -0x10(%rdx),%xmm1
  8d:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
  92:	66 41 0f 6f d3       	movdqa %xmm11,%xmm2
  97:	66 44 0f 61 c8       	punpcklwd %xmm0,%xmm9
  9c:	66 44 0f 61 d8       	punpcklwd %xmm0,%xmm11
  a1:	66 0f 69 d0          	punpckhwd %xmm0,%xmm2
  a5:	66 44 0f 61 da       	punpcklwd %xmm2,%xmm11
  aa:	66 44 0f 69 ca       	punpckhwd %xmm2,%xmm9
  af:	66 0f 6f 52 e0       	movdqa -0x20(%rdx),%xmm2
  b4:	66 0f 6f c2          	movdqa %xmm2,%xmm0
  b8:	66 0f 6f f2          	movdqa %xmm2,%xmm6
  bc:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
  c0:	66 0f 69 c1          	punpckhwd %xmm1,%xmm0
  c4:	66 0f 61 f1          	punpcklwd %xmm1,%xmm6
  c8:	66 0f 6f 48 f0       	movdqa -0x10(%rax),%xmm1
  cd:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
  d2:	66 0f 6f de          	movdqa %xmm6,%xmm3
  d6:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
  db:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
  df:	66 0f 69 d8          	punpckhwd %xmm0,%xmm3
  e3:	66 44 0f 61 d1       	punpcklwd %xmm1,%xmm10
  e8:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
  ed:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
  f1:	66 0f 69 c1          	punpckhwd %xmm1,%xmm0
  f5:	66 44 0f 69 fb       	punpckhwd %xmm3,%xmm15
  fa:	66 44 0f 61 c1       	punpcklwd %xmm1,%xmm8
  ff:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
 104:	66 44 0f 61 d0       	punpcklwd %xmm0,%xmm10
 109:	66 0f 6f 8a e0 01 00 	movdqa 0x1e0(%rdx),%xmm1
 110:	00 
 111:	66 0f 69 d8          	punpckhwd %xmm0,%xmm3
 115:	66 44 0f 61 c0       	punpcklwd %xmm0,%xmm8
 11a:	44 0f 29 7c 24 88    	movaps %xmm15,-0x78(%rsp)
 120:	66 44 0f 61 d3       	punpcklwd %xmm3,%xmm10
 125:	66 44 0f 69 c3       	punpckhwd %xmm3,%xmm8
 12a:	66 0f 6f 9a f0 01 00 	movdqa 0x1f0(%rdx),%xmm3
 131:	00 
 132:	66 0f 6f e9          	movdqa %xmm1,%xmm5
 136:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 13a:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
 13e:	66 0f 69 c3          	punpckhwd %xmm3,%xmm0
 142:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
 146:	66 0f 6f 98 f0 01 00 	movdqa 0x1f0(%rax),%xmm3
 14d:	00 
 14e:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 152:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
 156:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
 15a:	66 0f 69 e0          	punpckhwd %xmm0,%xmm4
 15e:	66 0f 6f c7          	movdqa %xmm7,%xmm0
 162:	66 0f 61 ec          	punpcklwd %xmm4,%xmm5
 166:	66 0f 69 cc          	punpckhwd %xmm4,%xmm1
 16a:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 16e:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
 172:	66 0f 69 c3          	punpckhwd %xmm3,%xmm0
 176:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
 17a:	0f 29 4c 24 98       	movaps %xmm1,-0x68(%rsp)
 17f:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
 184:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
 188:	66 0f 61 e0          	punpcklwd %xmm0,%xmm4
 18c:	66 44 0f 69 e0       	punpckhwd %xmm0,%xmm12
 191:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
 196:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
 19b:	66 41 0f 69 fc       	punpckhwd %xmm12,%xmm7
 1a0:	66 41 0f 61 e4       	punpcklwd %xmm12,%xmm4
 1a5:	66 0f 6f ce          	movdqa %xmm6,%xmm1
 1a9:	66 44 0f 6f a2 f0 03 	movdqa 0x3f0(%rdx),%xmm12
 1b0:	00 00 
 1b2:	66 41 0f d5 cb       	pmullw %xmm11,%xmm1
 1b7:	66 41 0f 61 dc       	punpcklwd %xmm12,%xmm3
 1bc:	66 41 0f 69 c4       	punpckhwd %xmm12,%xmm0
 1c1:	66 45 0f 61 ec       	punpcklwd %xmm12,%xmm13
 1c6:	66 45 0f 6f 24 0b    	movdqa (%r11,%rcx,1),%xmm12
 1cc:	66 44 0f 6f f3       	movdqa %xmm3,%xmm14
 1d1:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
 1d6:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
 1da:	66 44 0f 69 f0       	punpckhwd %xmm0,%xmm14
 1df:	66 45 0f d5 e1       	pmullw %xmm9,%xmm12
 1e4:	66 0f 6f c6          	movdqa %xmm6,%xmm0
 1e8:	66 41 0f e5 c3       	pmulhw %xmm11,%xmm0
 1ed:	66 41 0f 61 de       	punpcklwd %xmm14,%xmm3
 1f2:	66 45 0f 69 ee       	punpckhwd %xmm14,%xmm13
 1f7:	44 0f 29 6c 24 a8    	movaps %xmm13,-0x58(%rsp)
 1fd:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
 202:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
 207:	66 45 0f e5 2c 0b    	pmulhw (%r11,%rcx,1),%xmm13
 20d:	44 0f 29 6c 24 e8    	movaps %xmm13,-0x18(%rsp)
 213:	44 0f 29 64 24 d8    	movaps %xmm12,-0x28(%rsp)
 219:	66 45 0f 61 e5       	punpcklwd %xmm13,%xmm12
 21e:	66 44 0f 6f f0       	movdqa %xmm0,%xmm14
 223:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 227:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
 22c:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
 231:	44 0f 29 74 24 c8    	movaps %xmm14,-0x38(%rsp)
 237:	66 45 0f 6f f0       	movdqa %xmm8,%xmm14
 23c:	66 45 0f e5 b4 0b 00 	pmulhw 0x100(%r11,%rcx,1),%xmm14
 243:	01 00 00 
 246:	66 44 0f fe e0       	paddd  %xmm0,%xmm12
 24b:	66 0f d5 cd          	pmullw %xmm5,%xmm1
 24f:	66 41 0f 6f 84 0b 00 	movdqa 0x100(%r11,%rcx,1),%xmm0
 256:	01 00 00 
 259:	44 0f 29 74 24 08    	movaps %xmm14,0x8(%rsp)
 25f:	66 44 0f 69 7c 24 c8 	punpckhwd -0x38(%rsp),%xmm15
 266:	66 41 0f d5 c0       	pmullw %xmm8,%xmm0
 26b:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
 270:	0f 29 44 24 f8       	movaps %xmm0,-0x8(%rsp)
 275:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
 27a:	66 44 0f 6f f7       	movdqa %xmm7,%xmm14
 27f:	66 45 0f e5 b4 0b 00 	pmulhw 0x200(%r11,%rcx,1),%xmm14
 286:	02 00 00 
 289:	66 44 0f fe e0       	paddd  %xmm0,%xmm12
 28e:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
 293:	44 0f 29 74 24 28    	movaps %xmm14,0x28(%rsp)
 299:	66 0f e5 c5          	pmulhw %xmm5,%xmm0
 29d:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
 2a1:	0f 29 44 24 18       	movaps %xmm0,0x18(%rsp)
 2a6:	66 44 0f fe e1       	paddd  %xmm1,%xmm12
 2ab:	66 41 0f 6f 8c 0b 00 	movdqa 0x200(%r11,%rcx,1),%xmm1
 2b2:	02 00 00 
 2b5:	66 0f d5 cf          	pmullw %xmm7,%xmm1
 2b9:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 2bd:	66 41 0f 61 ce       	punpcklwd %xmm14,%xmm1
 2c2:	66 44 0f fe e1       	paddd  %xmm1,%xmm12
 2c7:	66 0f 6f cc          	movdqa %xmm4,%xmm1
 2cb:	66 0f d5 cb          	pmullw %xmm3,%xmm1
 2cf:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
 2d4:	66 0f 6f cc          	movdqa %xmm4,%xmm1
 2d8:	66 0f e5 cb          	pmulhw %xmm3,%xmm1
 2dc:	66 41 0f 6f d6       	movdqa %xmm14,%xmm2
 2e1:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
 2e5:	66 44 0f 69 f1       	punpckhwd %xmm1,%xmm14
 2ea:	66 44 0f fe e2       	paddd  %xmm2,%xmm12
 2ef:	44 0f 29 64 24 b8    	movaps %xmm12,-0x48(%rsp)
 2f5:	66 44 0f 6f 64 24 d8 	movdqa -0x28(%rsp),%xmm12
 2fc:	66 44 0f 69 64 24 e8 	punpckhwd -0x18(%rsp),%xmm12
 303:	66 45 0f fe e7       	paddd  %xmm15,%xmm12
 308:	66 44 0f 6f 7c 24 f8 	movdqa -0x8(%rsp),%xmm15
 30f:	66 44 0f 69 7c 24 08 	punpckhwd 0x8(%rsp),%xmm15
 316:	66 44 0f 69 6c 24 18 	punpckhwd 0x18(%rsp),%xmm13
 31d:	66 0f 69 44 24 28    	punpckhwd 0x28(%rsp),%xmm0
 323:	66 45 0f fe fc       	paddd  %xmm12,%xmm15
 328:	66 0f 6f 4c 24 98    	movdqa -0x68(%rsp),%xmm1
 32e:	66 45 0f fe ef       	paddd  %xmm15,%xmm13
 333:	66 44 0f 6f 7c 24 88 	movdqa -0x78(%rsp),%xmm15
 33a:	66 41 0f fe c5       	paddd  %xmm13,%xmm0
 33f:	66 44 0f fe f0       	paddd  %xmm0,%xmm14
 344:	66 0f 6f c6          	movdqa %xmm6,%xmm0
 348:	66 41 0f d5 c1       	pmullw %xmm9,%xmm0
 34d:	66 41 0f e5 f1       	pmulhw %xmm9,%xmm6
 352:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 356:	66 0f 69 c6          	punpckhwd %xmm6,%xmm0
 35a:	66 0f 61 d6          	punpcklwd %xmm6,%xmm2
 35e:	66 44 0f 6f e2       	movdqa %xmm2,%xmm12
 363:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
 368:	66 41 0f d5 d3       	pmullw %xmm11,%xmm2
 36d:	66 44 0f 6f ca       	movdqa %xmm2,%xmm9
 372:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
 377:	66 44 0f 6f 7c 24 a8 	movdqa -0x58(%rsp),%xmm15
 37e:	66 41 0f e5 d3       	pmulhw %xmm11,%xmm2
 383:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
 388:	66 44 0f 61 da       	punpcklwd %xmm2,%xmm11
 38d:	66 44 0f 69 ca       	punpckhwd %xmm2,%xmm9
 392:	66 45 0f fe e3       	paddd  %xmm11,%xmm12
 397:	66 45 0f 6f da       	movdqa %xmm10,%xmm11
 39c:	66 44 0f fe c8       	paddd  %xmm0,%xmm9
 3a1:	66 44 0f d5 d9       	pmullw %xmm1,%xmm11
 3a6:	66 41 0f e5 ca       	pmulhw %xmm10,%xmm1
 3ab:	66 45 0f 6f d3       	movdqa %xmm11,%xmm10
 3b0:	66 44 0f 69 d9       	punpckhwd %xmm1,%xmm11
 3b5:	66 44 0f 61 d1       	punpcklwd %xmm1,%xmm10
 3ba:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
 3bf:	66 45 0f fe e2       	paddd  %xmm10,%xmm12
 3c4:	66 45 0f 6f d0       	movdqa %xmm8,%xmm10
 3c9:	66 41 0f fe cb       	paddd  %xmm11,%xmm1
 3ce:	66 44 0f d5 d5       	pmullw %xmm5,%xmm10
 3d3:	66 41 0f e5 e8       	pmulhw %xmm8,%xmm5
 3d8:	66 45 0f 6f c2       	movdqa %xmm10,%xmm8
 3dd:	66 44 0f 69 d5       	punpckhwd %xmm5,%xmm10
 3e2:	66 44 0f 61 c5       	punpcklwd %xmm5,%xmm8
 3e7:	66 0f 6f 6c 24 b8    	movdqa -0x48(%rsp),%xmm5
 3ed:	66 41 0f fe ca       	paddd  %xmm10,%xmm1
 3f2:	66 45 0f fe e0       	paddd  %xmm8,%xmm12
 3f7:	66 45 0f 6f c7       	movdqa %xmm15,%xmm8
 3fc:	66 44 0f d5 c4       	pmullw %xmm4,%xmm8
 401:	66 41 0f e5 e7       	pmulhw %xmm15,%xmm4
 406:	66 44 0f 6f ff       	movdqa %xmm7,%xmm15
 40b:	66 44 0f d5 fb       	pmullw %xmm3,%xmm15
 410:	66 0f e5 df          	pmulhw %xmm7,%xmm3
 414:	66 0f 6f c5          	movdqa %xmm5,%xmm0
 418:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
 41d:	66 0f 6f d5          	movdqa %xmm5,%xmm2
 421:	66 41 0f 69 d6       	punpckhwd %xmm14,%xmm2
 426:	66 45 0f 6f e8       	movdqa %xmm8,%xmm13
 42b:	66 44 0f 69 c4       	punpckhwd %xmm4,%xmm8
 430:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
 435:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
 43a:	66 41 0f fe c8       	paddd  %xmm8,%xmm1
 43f:	66 45 0f fe ec       	paddd  %xmm12,%xmm13
 444:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
 449:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
 44d:	66 44 0f 69 e3       	punpckhwd %xmm3,%xmm12
 452:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 456:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 45a:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
 45e:	66 41 0f fe fd       	paddd  %xmm13,%xmm7
 463:	66 41 0f fe cc       	paddd  %xmm12,%xmm1
 468:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
 46c:	66 0f 6f 1d 00 00 00 	movdqa 0x0(%rip),%xmm3        # 474 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x474>
 473:	00 
 474:	66 0f d5 05 00 00 00 	pmullw 0x0(%rip),%xmm0        # 47c <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x47c>
 47b:	00 
 47c:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 480:	66 0f e5 15 00 00 00 	pmulhw 0x0(%rip),%xmm2        # 488 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x488>
 487:	00 
 488:	66 0f d5 d8          	pmullw %xmm0,%xmm3
 48c:	66 0f 6f c3          	movdqa %xmm3,%xmm0
 490:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
 494:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 498:	66 44 0f fe f3       	paddd  %xmm3,%xmm14
 49d:	66 0f fe c5          	paddd  %xmm5,%xmm0
 4a1:	66 41 0f 72 e6 10    	psrad  $0x10,%xmm14
 4a7:	66 0f 72 e0 10       	psrad  $0x10,%xmm0
 4ac:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 4b0:	66 41 0f 61 c6       	punpcklwd %xmm14,%xmm0
 4b5:	66 41 0f 69 d6       	punpckhwd %xmm14,%xmm2
 4ba:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 4be:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
 4c2:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 4c6:	66 0f 6f d7          	movdqa %xmm7,%xmm2
 4ca:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
 4ce:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
 4d2:	66 0f 6f df          	movdqa %xmm7,%xmm3
 4d6:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
 4da:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 4de:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 4e2:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 4e6:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 4ea:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 4f2 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x4f2>
 4f1:	00 
 4f2:	66 0f d5 15 00 00 00 	pmullw 0x0(%rip),%xmm2        # 4fa <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x4fa>
 4f9:	00 
 4fa:	66 0f 6f da          	movdqa %xmm2,%xmm3
 4fe:	66 0f e5 1d 00 00 00 	pmulhw 0x0(%rip),%xmm3        # 506 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x506>
 505:	00 
 506:	66 0f d5 e2          	pmullw %xmm2,%xmm4
 50a:	66 0f 6f d4          	movdqa %xmm4,%xmm2
 50e:	66 0f 69 e3          	punpckhwd %xmm3,%xmm4
 512:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 516:	66 0f fe cc          	paddd  %xmm4,%xmm1
 51a:	66 0f fe d7          	paddd  %xmm7,%xmm2
 51e:	66 0f 72 e1 10       	psrad  $0x10,%xmm1
 523:	66 0f 72 e2 10       	psrad  $0x10,%xmm2
 528:	66 0f 6f da          	movdqa %xmm2,%xmm3
 52c:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
 530:	66 0f 69 d9          	punpckhwd %xmm1,%xmm3
 534:	66 0f 6f ca          	movdqa %xmm2,%xmm1
 538:	66 0f 69 cb          	punpckhwd %xmm3,%xmm1
 53c:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
 540:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
 544:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 548:	66 0f 61 ca          	punpcklwd %xmm2,%xmm1
 54c:	66 0f 69 c2          	punpckhwd %xmm2,%xmm0
 550:	0f 29 0c 4b          	movaps %xmm1,(%rbx,%rcx,2)
 554:	0f 29 44 4b 10       	movaps %xmm0,0x10(%rbx,%rcx,2)
 559:	48 83 c1 10          	add    $0x10,%rcx
 55d:	48 81 f9 00 01 00 00 	cmp    $0x100,%rcx
 564:	0f 85 d6 fa ff ff    	jne    40 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x40>
 56a:	48 83 c4 40          	add    $0x40,%rsp
 56e:	5b                   	pop    %rbx
 56f:	5d                   	pop    %rbp
 570:	41 5c                	pop    %r12
 572:	41 5d                	pop    %r13
 574:	41 5e                	pop    %r14
 576:	41 5f                	pop    %r15
 578:	c3                   	ret
 579:	48 89 7c 24 88       	mov    %rdi,-0x78(%rsp)
 57e:	48 89 f1             	mov    %rsi,%rcx
 581:	31 f6                	xor    %esi,%esi
 583:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 588:	44 0f bf 12          	movswl (%rdx),%r10d
 58c:	44 0f bf 71 02       	movswl 0x2(%rcx),%r14d
 591:	48 83 c1 04          	add    $0x4,%rcx
 595:	44 0f bf 79 fc       	movswl -0x4(%rcx),%r15d
 59a:	41 0f bf 04 73       	movswl (%r11,%rsi,2),%eax
 59f:	44 89 d7             	mov    %r10d,%edi
 5a2:	44 0f bf a1 fe 01 00 	movswl 0x1fe(%rcx),%r12d
 5a9:	00 
 5aa:	44 0f bf 8a 00 02 00 	movswl 0x200(%rdx),%r9d
 5b1:	00 
 5b2:	45 0f af d6          	imul   %r14d,%r10d
 5b6:	41 0f af ff          	imul   %r15d,%edi
 5ba:	44 0f bf a9 fc 01 00 	movswl 0x1fc(%rcx),%r13d
 5c1:	00 
 5c2:	0f bf 99 fe 03 00 00 	movswl 0x3fe(%rcx),%ebx
 5c9:	41 0f af c6          	imul   %r14d,%eax
 5cd:	44 0f bf 82 00 04 00 	movswl 0x400(%rdx),%r8d
 5d4:	00 
 5d5:	0f bf a9 fc 03 00 00 	movswl 0x3fc(%rcx),%ebp
 5dc:	01 f8                	add    %edi,%eax
 5de:	41 0f bf bc 73 00 01 	movswl 0x100(%r11,%rsi,2),%edi
 5e5:	00 00 
 5e7:	41 0f af fc          	imul   %r12d,%edi
 5eb:	01 c7                	add    %eax,%edi
 5ed:	44 89 c8             	mov    %r9d,%eax
 5f0:	41 0f af c5          	imul   %r13d,%eax
 5f4:	45 0f af cc          	imul   %r12d,%r9d
 5f8:	01 c7                	add    %eax,%edi
 5fa:	41 0f bf 84 73 00 02 	movswl 0x200(%r11,%rsi,2),%eax
 601:	00 00 
 603:	0f af c3             	imul   %ebx,%eax
 606:	01 f8                	add    %edi,%eax
 608:	44 89 c7             	mov    %r8d,%edi
 60b:	0f af fd             	imul   %ebp,%edi
 60e:	44 0f af c3          	imul   %ebx,%r8d
 612:	48 8b 5c 24 88       	mov    -0x78(%rsp),%rbx
 617:	01 c7                	add    %eax,%edi
 619:	0f bf 42 02          	movswl 0x2(%rdx),%eax
 61d:	41 0f af c7          	imul   %r15d,%eax
 621:	44 01 d0             	add    %r10d,%eax
 624:	44 0f bf 92 02 02 00 	movswl 0x202(%rdx),%r10d
 62b:	00 
 62c:	45 0f af d5          	imul   %r13d,%r10d
 630:	44 01 d0             	add    %r10d,%eax
 633:	44 01 c8             	add    %r9d,%eax
 636:	44 0f bf 8a 02 04 00 	movswl 0x402(%rdx),%r9d
 63d:	00 
 63e:	44 0f af cd          	imul   %ebp,%r9d
 642:	44 01 c8             	add    %r9d,%eax
 645:	41 01 c0             	add    %eax,%r8d
 648:	66 69 c7 01 f3       	imul   $0xf301,%di,%ax
 64d:	98                   	cwtl
 64e:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 654:	01 f8                	add    %edi,%eax
 656:	c1 f8 10             	sar    $0x10,%eax
 659:	66 89 04 b3          	mov    %ax,(%rbx,%rsi,4)
 65d:	66 41 69 c0 01 f3    	imul   $0xf301,%r8w,%ax
 663:	98                   	cwtl
 664:	69 c0 ff f2 ff ff    	imul   $0xfffff2ff,%eax,%eax
 66a:	44 01 c0             	add    %r8d,%eax
 66d:	c1 f8 10             	sar    $0x10,%eax
 670:	66 89 44 b3 02       	mov    %ax,0x2(%rbx,%rsi,4)
 675:	48 83 c6 01          	add    $0x1,%rsi
 679:	48 83 c2 04          	add    $0x4,%rdx
 67d:	48 81 fe 80 00 00 00 	cmp    $0x80,%rsi
 684:	0f 85 fe fe ff ff    	jne    588 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_basemul_acc_montgomery_cached+0x588>
 68a:	48 83 c4 40          	add    $0x40,%rsp
 68e:	5b                   	pop    %rbx
 68f:	5d                   	pop    %rbp
 690:	41 5c                	pop    %r12
 692:	41 5d                	pop    %r13
 694:	41 5e                	pop    %r14
 696:	41 5f                	pop    %r15
 698:	c3                   	ret

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_mulcache_compute:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_mulcache_compute>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_mulcache_compute+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 00 01 00 00 	lea    0x100(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_mulcache_compute+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_reduce:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_reduce>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_reduce+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_reduce+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <.LC1+0x16>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_add:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_add>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 f5             	mov    %rsi,%rbp
   8:	53                   	push   %rbx
   9:	48 89 fb             	mov    %rdi,%rbx
   c:	48 83 ec 08          	sub    $0x8,%rsp
  10:	e8 00 00 00 00       	call   15 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_add+0x15>
  15:	48 8d b5 00 02 00 00 	lea    0x200(%rbp),%rsi
  1c:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  23:	e8 00 00 00 00       	call   28 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_add+0x28>
  28:	48 83 c4 08          	add    $0x8,%rsp
  2c:	48 8d b5 00 04 00 00 	lea    0x400(%rbp),%rsi
  33:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  3a:	5b                   	pop    %rbx
  3b:	5d                   	pop    %rbp
  3c:	e9 00 00 00 00       	jmp    41 <.LC1+0x31>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tomont:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tomont>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	48 89 fb             	mov    %rdi,%rbx
   8:	e8 00 00 00 00       	call   d <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tomont+0xd>
   d:	48 8d bb 00 02 00 00 	lea    0x200(%rbx),%rdi
  14:	e8 00 00 00 00       	call   19 <PQCP_MLKEM_NATIVE_MLKEM768_C_polyvec_tomont+0x19>
  19:	48 8d bb 00 04 00 00 	lea    0x400(%rbx),%rdi
  20:	5b                   	pop    %rbx
  21:	e9 00 00 00 00       	jmp    26 <.LC1+0x16>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x>:
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
  46:	f3 41 0f 6f 40 10    	movdqu 0x10(%r8),%xmm0
  4c:	45 8b 1a             	mov    (%r10),%r11d
  4f:	48 89 bd a8 fc ff ff 	mov    %rdi,-0x358(%rbp)
  56:	f3 41 0f 6f 08       	movdqu (%r8),%xmm1
  5b:	41 8b 4a 08          	mov    0x8(%r10),%ecx
  5f:	48 89 95 98 fc ff ff 	mov    %rdx,-0x368(%rbp)
  66:	48 8d bd 30 fd ff ff 	lea    -0x2d0(%rbp),%rdi
  6d:	48 89 b5 a0 fc ff ff 	mov    %rsi,-0x360(%rbp)
  74:	41 8b 52 10          	mov    0x10(%r10),%edx
  78:	4c 8d 85 70 fd ff ff 	lea    -0x290(%rbp),%r8
  7f:	4c 8d 95 30 fe ff ff 	lea    -0x1d0(%rbp),%r10
  86:	64 48 8b 34 25 28 00 	mov    %fs:0x28,%rsi
  8d:	00 00 
  8f:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
  93:	31 f6                	xor    %esi,%esi
  95:	48 8d b5 f0 fc ff ff 	lea    -0x310(%rbp),%rsi
  9c:	0f 29 8d b0 fc ff ff 	movaps %xmm1,-0x350(%rbp)
  a3:	0f 29 85 c0 fc ff ff 	movaps %xmm0,-0x340(%rbp)
  aa:	0f 29 8d f0 fc ff ff 	movaps %xmm1,-0x310(%rbp)
  b1:	44 88 9d 10 fd ff ff 	mov    %r11b,-0x2f0(%rbp)
  b8:	0f 29 85 00 fd ff ff 	movaps %xmm0,-0x300(%rbp)
  bf:	0f 29 8d 30 fd ff ff 	movaps %xmm1,-0x2d0(%rbp)
  c6:	0f 29 85 40 fd ff ff 	movaps %xmm0,-0x2c0(%rbp)
  cd:	0f 29 8d 70 fd ff ff 	movaps %xmm1,-0x290(%rbp)
  d4:	0f 29 85 80 fd ff ff 	movaps %xmm0,-0x280(%rbp)
  db:	44 88 8d d0 fc ff ff 	mov    %r9b,-0x330(%rbp)
  e2:	4d 89 f9             	mov    %r15,%r9
  e5:	88 8d 50 fd ff ff    	mov    %cl,-0x2b0(%rbp)
  eb:	4c 89 e9             	mov    %r13,%rcx
  ee:	88 95 90 fd ff ff    	mov    %dl,-0x270(%rbp)
  f4:	4c 89 f2             	mov    %r14,%rdx
  f7:	6a 21                	push   $0x21
  f9:	41 50                	push   %r8
  fb:	41 b8 80 00 00 00    	mov    $0x80,%r8d
 101:	57                   	push   %rdi
 102:	48 89 df             	mov    %rbx,%rdi
 105:	56                   	push   %rsi
 106:	4c 89 d6             	mov    %r10,%rsi
 109:	4c 89 95 90 fc ff ff 	mov    %r10,-0x370(%rbp)
 110:	e8 00 00 00 00       	call   115 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x115>
 115:	48 8b bd a8 fc ff ff 	mov    -0x358(%rbp),%rdi
 11c:	48 83 c4 20          	add    $0x20,%rsp
 120:	48 89 de             	mov    %rbx,%rsi
 123:	e8 00 00 00 00       	call   128 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x128>
 128:	48 8b b5 90 fc ff ff 	mov    -0x370(%rbp),%rsi
 12f:	48 8b bd a0 fc ff ff 	mov    -0x360(%rbp),%rdi
 136:	e8 00 00 00 00       	call   13b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x13b>
 13b:	48 8b bd 98 fc ff ff 	mov    -0x368(%rbp),%rdi
 142:	4c 89 f6             	mov    %r14,%rsi
 145:	e8 00 00 00 00       	call   14a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x14a>
 14a:	4d 85 e4             	test   %r12,%r12
 14d:	74 0b                	je     15a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x15a>
 14f:	4c 89 ee             	mov    %r13,%rsi
 152:	4c 89 e7             	mov    %r12,%rdi
 155:	e8 00 00 00 00       	call   15a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x15a>
 15a:	31 c0                	xor    %eax,%eax
 15c:	48 89 df             	mov    %rbx,%rdi
 15f:	b9 40 00 00 00       	mov    $0x40,%ecx
 164:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 167:	b9 20 00 00 00       	mov    $0x20,%ecx
 16c:	4c 89 ff             	mov    %r15,%rdi
 16f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 172:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 176:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 17d:	00 00 
 17f:	75 15                	jne    196 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_getnoise_eta1_4x+0x196>
 181:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
 185:	5b                   	pop    %rbx
 186:	41 5a                	pop    %r10
 188:	41 5c                	pop    %r12
 18a:	41 5d                	pop    %r13
 18c:	41 5e                	pop    %r14
 18e:	41 5f                	pop    %r15
 190:	5d                   	pop    %rbp
 191:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 195:	c3                   	ret
 196:	e8 00 00 00 00       	call   19b <.LC1+0x18b>

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/sampling.c.o:     file format elf64-x86-64


Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	49 89 f7             	mov    %rsi,%r15
   d:	41 56                	push   %r14
   f:	41 55                	push   %r13
  11:	41 54                	push   %r12
  13:	45 31 e4             	xor    %r12d,%r12d
  16:	53                   	push   %rbx
  17:	4c 89 c3             	mov    %r8,%rbx
  1a:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1e:	48 81 ec 80 08 00 00 	sub    $0x880,%rsp
  25:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  2a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  2f:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  34:	49 89 c6             	mov    %rax,%r14
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  3f:	64 48 8b 14 25 28 00 	mov    %fs:0x28,%rdx
  46:	00 00 
  48:	48 89 94 24 78 08 00 	mov    %rdx,0x878(%rsp)
  4f:	00 
  50:	31 d2                	xor    %edx,%edx
  52:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  57:	e8 00 00 00 00       	call   5c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5c>
  5c:	48 8d 53 40          	lea    0x40(%rbx),%rdx
  60:	48 89 de             	mov    %rbx,%rsi
  63:	4c 89 f7             	mov    %r14,%rdi
  66:	48 8d 8b 80 00 00 00 	lea    0x80(%rbx),%rcx
  6d:	4c 8d 83 c0 00 00 00 	lea    0xc0(%rbx),%r8
  74:	41 b9 22 00 00 00    	mov    $0x22,%r9d
  7a:	e8 00 00 00 00       	call   7f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x7f>
  7f:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
  84:	4d 89 f1             	mov    %r14,%r9
  87:	48 8d bc 24 60 02 00 	lea    0x260(%rsp),%rdi
  8e:	00 
  8f:	48 89 fe             	mov    %rdi,%rsi
  92:	48 89 c3             	mov    %rax,%rbx
  95:	41 b8 f8 01 00 00    	mov    $0x1f8,%r8d
  9b:	48 89 04 24          	mov    %rax,(%rsp)
  9f:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
  a4:	48 8d 8c 24 60 06 00 	lea    0x660(%rsp),%rcx
  ab:	00 
  ac:	48 89 c7             	mov    %rax,%rdi
  af:	48 8d 94 24 60 04 00 	lea    0x460(%rsp),%rdx
  b6:	00 
  b7:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  bc:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  c1:	e8 00 00 00 00       	call   c6 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0xc6>
  c6:	4c 8b 5c 24 28       	mov    0x28(%rsp),%r11
  cb:	48 89 de             	mov    %rbx,%rsi
  ce:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  d3:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
  d8:	48 8d bc 24 58 02 00 	lea    0x258(%rsp),%rdi
  df:	00 
  e0:	eb 39                	jmp    11b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x11b>
  e2:	45 8d 44 24 01       	lea    0x1(%r12),%r8d
  e7:	66 43 89 0c 63       	mov    %cx,(%r11,%r12,2)
  ec:	41 81 f8 ff 00 00 00 	cmp    $0xff,%r8d
  f3:	77 61                	ja     156 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x156>
  f5:	66 81 fa 00 0d       	cmp    $0xd00,%dx
  fa:	7f 5a                	jg     156 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x156>
  fc:	45 8d 60 01          	lea    0x1(%r8),%r12d
 100:	66 43 89 14 43       	mov    %dx,(%r11,%r8,2)
 105:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
 10c:	74 54                	je     162 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x162>
 10e:	48 83 c6 03          	add    $0x3,%rsi
 112:	48 39 fe             	cmp    %rdi,%rsi
 115:	0f 84 62 05 00 00    	je     67d <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x67d>
 11b:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 11f:	0f b6 0e             	movzbl (%rsi),%ecx
 122:	41 89 d0             	mov    %edx,%r8d
 125:	c0 ea 04             	shr    $0x4,%dl
 128:	41 c1 e0 08          	shl    $0x8,%r8d
 12c:	0f b6 d2             	movzbl %dl,%edx
 12f:	44 09 c1             	or     %r8d,%ecx
 132:	44 0f b6 46 02       	movzbl 0x2(%rsi),%r8d
 137:	66 81 e1 ff 0f       	and    $0xfff,%cx
 13c:	41 c1 e0 04          	shl    $0x4,%r8d
 140:	44 09 c2             	or     %r8d,%edx
 143:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 148:	7e 98                	jle    e2 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0xe2>
 14a:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 14f:	7f bd                	jg     10e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x10e>
 151:	45 89 e0             	mov    %r12d,%r8d
 154:	eb a6                	jmp    fc <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0xfc>
 156:	45 89 c4             	mov    %r8d,%r12d
 159:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
 160:	75 ac                	jne    10e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x10e>
 162:	45 31 c9             	xor    %r9d,%r9d
 165:	48 8b 3c 24          	mov    (%rsp),%rdi
 169:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
 16e:	31 db                	xor    %ebx,%ebx
 170:	4c 8d 87 f8 03 00 00 	lea    0x3f8(%rdi),%r8
 177:	eb 34                	jmp    1ad <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1ad>
 179:	8d 7b 01             	lea    0x1(%rbx),%edi
 17c:	66 41 89 0c 5f       	mov    %cx,(%r15,%rbx,2)
 181:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 187:	77 58                	ja     1e1 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1e1>
 189:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 18e:	7f 51                	jg     1e1 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1e1>
 190:	8d 5f 01             	lea    0x1(%rdi),%ebx
 193:	66 41 89 14 7f       	mov    %dx,(%r15,%rdi,2)
 198:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 19e:	74 4b                	je     1eb <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1eb>
 1a0:	48 83 c6 03          	add    $0x3,%rsi
 1a4:	4c 39 c6             	cmp    %r8,%rsi
 1a7:	0f 84 db 04 00 00    	je     688 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x688>
 1ad:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 1b1:	0f b6 0e             	movzbl (%rsi),%ecx
 1b4:	89 d7                	mov    %edx,%edi
 1b6:	c0 ea 04             	shr    $0x4,%dl
 1b9:	c1 e7 08             	shl    $0x8,%edi
 1bc:	0f b6 d2             	movzbl %dl,%edx
 1bf:	09 f9                	or     %edi,%ecx
 1c1:	0f b6 7e 02          	movzbl 0x2(%rsi),%edi
 1c5:	66 81 e1 ff 0f       	and    $0xfff,%cx
 1ca:	c1 e7 04             	shl    $0x4,%edi
 1cd:	09 fa                	or     %edi,%edx
 1cf:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 1d4:	7e a3                	jle    179 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x179>
 1d6:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 1db:	7f c3                	jg     1a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1a0>
 1dd:	89 df                	mov    %ebx,%edi
 1df:	eb af                	jmp    190 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x190>
 1e1:	89 fb                	mov    %edi,%ebx
 1e3:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 1e9:	75 b5                	jne    1a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1a0>
 1eb:	48 8b 3c 24          	mov    (%rsp),%rdi
 1ef:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 1f4:	45 31 ed             	xor    %r13d,%r13d
 1f7:	4c 8d 87 f8 05 00 00 	lea    0x5f8(%rdi),%r8
 1fe:	eb 36                	jmp    236 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x236>
 200:	41 8d 7d 01          	lea    0x1(%r13),%edi
 204:	66 42 89 0c 68       	mov    %cx,(%rax,%r13,2)
 209:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 20f:	77 5a                	ja     26b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x26b>
 211:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 216:	7f 53                	jg     26b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x26b>
 218:	44 8d 6f 01          	lea    0x1(%rdi),%r13d
 21c:	66 89 14 78          	mov    %dx,(%rax,%rdi,2)
 220:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 227:	74 4e                	je     277 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x277>
 229:	48 83 c6 03          	add    $0x3,%rsi
 22d:	4c 39 c6             	cmp    %r8,%rsi
 230:	0f 84 3c 04 00 00    	je     672 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x672>
 236:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 23a:	0f b6 0e             	movzbl (%rsi),%ecx
 23d:	89 d7                	mov    %edx,%edi
 23f:	c0 ea 04             	shr    $0x4,%dl
 242:	c1 e7 08             	shl    $0x8,%edi
 245:	0f b6 d2             	movzbl %dl,%edx
 248:	09 f9                	or     %edi,%ecx
 24a:	0f b6 7e 02          	movzbl 0x2(%rsi),%edi
 24e:	66 81 e1 ff 0f       	and    $0xfff,%cx
 253:	c1 e7 04             	shl    $0x4,%edi
 256:	09 fa                	or     %edi,%edx
 258:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 25d:	7e a1                	jle    200 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x200>
 25f:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 264:	7f c3                	jg     229 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x229>
 266:	44 89 ef             	mov    %r13d,%edi
 269:	eb ad                	jmp    218 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x218>
 26b:	41 89 fd             	mov    %edi,%r13d
 26e:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 275:	75 b2                	jne    229 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x229>
 277:	48 8b 3c 24          	mov    (%rsp),%rdi
 27b:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
 280:	45 31 f6             	xor    %r14d,%r14d
 283:	4c 8d 87 f8 07 00 00 	lea    0x7f8(%rdi),%r8
 28a:	eb 33                	jmp    2bf <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2bf>
 28c:	41 8d 7e 01          	lea    0x1(%r14),%edi
 290:	66 43 89 0c 72       	mov    %cx,(%r10,%r14,2)
 295:	81 ff ff 00 00 00    	cmp    $0xff,%edi
 29b:	77 57                	ja     2f4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2f4>
 29d:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 2a2:	7f 50                	jg     2f4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2f4>
 2a4:	44 8d 77 01          	lea    0x1(%rdi),%r14d
 2a8:	66 41 89 14 7a       	mov    %dx,(%r10,%rdi,2)
 2ad:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 2b4:	74 4a                	je     300 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x300>
 2b6:	48 83 c6 03          	add    $0x3,%rsi
 2ba:	4c 39 c6             	cmp    %r8,%rsi
 2bd:	74 4a                	je     309 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x309>
 2bf:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 2c3:	0f b6 0e             	movzbl (%rsi),%ecx
 2c6:	89 d7                	mov    %edx,%edi
 2c8:	c0 ea 04             	shr    $0x4,%dl
 2cb:	c1 e7 08             	shl    $0x8,%edi
 2ce:	0f b6 d2             	movzbl %dl,%edx
 2d1:	09 f9                	or     %edi,%ecx
 2d3:	0f b6 7e 02          	movzbl 0x2(%rsi),%edi
 2d7:	66 81 e1 ff 0f       	and    $0xfff,%cx
 2dc:	c1 e7 04             	shl    $0x4,%edi
 2df:	09 fa                	or     %edi,%edx
 2e1:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 2e6:	7e a4                	jle    28c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x28c>
 2e8:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 2ed:	7f c7                	jg     2b6 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2b6>
 2ef:	44 89 f7             	mov    %r14d,%edi
 2f2:	eb b0                	jmp    2a4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2a4>
 2f4:	41 89 fe             	mov    %edi,%r14d
 2f7:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 2fe:	75 b6                	jne    2b6 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x2b6>
 300:	45 84 c9             	test   %r9b,%r9b
 303:	0f 84 13 03 00 00    	je     61c <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x61c>
 309:	48 8b 3c 24          	mov    (%rsp),%rdi
 30d:	48 8d b7 a8 00 00 00 	lea    0xa8(%rdi),%rsi
 314:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 319:	4c 89 fe             	mov    %r15,%rsi
 31c:	4d 89 df             	mov    %r11,%r15
 31f:	49 89 f3             	mov    %rsi,%r11
 322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 328:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
 32d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 332:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
 337:	41 b8 a8 00 00 00    	mov    $0xa8,%r8d
 33d:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
 342:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
 347:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 34c:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
 351:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
 356:	e8 00 00 00 00       	call   35b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x35b>
 35b:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
 360:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
 365:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
 36c:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 371:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
 376:	0f 87 94 00 00 00    	ja     410 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x410>
 37c:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 381:	48 89 fe             	mov    %rdi,%rsi
 384:	eb 3f                	jmp    3c5 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x3c5>
 386:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 38d:	00 00 00 
 390:	45 8d 4c 24 01       	lea    0x1(%r12),%r9d
 395:	66 43 89 0c 67       	mov    %cx,(%r15,%r12,2)
 39a:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
 3a1:	77 5d                	ja     400 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x400>
 3a3:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 3a8:	7f 56                	jg     400 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x400>
 3aa:	45 8d 61 01          	lea    0x1(%r9),%r12d
 3ae:	66 43 89 14 4f       	mov    %dx,(%r15,%r9,2)
 3b3:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
 3ba:	74 54                	je     410 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x410>
 3bc:	48 83 c6 03          	add    $0x3,%rsi
 3c0:	4c 39 c6             	cmp    %r8,%rsi
 3c3:	74 4b                	je     410 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x410>
 3c5:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 3c9:	0f b6 0e             	movzbl (%rsi),%ecx
 3cc:	41 89 d1             	mov    %edx,%r9d
 3cf:	c0 ea 04             	shr    $0x4,%dl
 3d2:	41 c1 e1 08          	shl    $0x8,%r9d
 3d6:	0f b6 d2             	movzbl %dl,%edx
 3d9:	44 09 c9             	or     %r9d,%ecx
 3dc:	44 0f b6 4e 02       	movzbl 0x2(%rsi),%r9d
 3e1:	66 81 e1 ff 0f       	and    $0xfff,%cx
 3e6:	41 c1 e1 04          	shl    $0x4,%r9d
 3ea:	44 09 ca             	or     %r9d,%edx
 3ed:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 3f2:	7e 9c                	jle    390 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x390>
 3f4:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 3f9:	7f c1                	jg     3bc <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x3bc>
 3fb:	45 89 e1             	mov    %r12d,%r9d
 3fe:	eb aa                	jmp    3aa <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x3aa>
 400:	45 89 cc             	mov    %r9d,%r12d
 403:	41 81 fc 00 01 00 00 	cmp    $0x100,%r12d
 40a:	75 b0                	jne    3bc <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x3bc>
 40c:	0f 1f 40 00          	nopl   0x0(%rax)
 410:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
 415:	4c 8d 87 a8 02 00 00 	lea    0x2a8(%rdi),%r8
 41c:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
 422:	76 3f                	jbe    463 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x463>
 424:	e9 87 00 00 00       	jmp    4b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4b0>
 429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 430:	44 8d 4b 01          	lea    0x1(%rbx),%r9d
 434:	66 41 89 0c 5b       	mov    %cx,(%r11,%rbx,2)
 439:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
 440:	77 5e                	ja     4a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4a0>
 442:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 447:	7f 57                	jg     4a0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4a0>
 449:	41 8d 59 01          	lea    0x1(%r9),%ebx
 44d:	66 43 89 14 4b       	mov    %dx,(%r11,%r9,2)
 452:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 458:	74 56                	je     4b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4b0>
 45a:	48 83 c6 03          	add    $0x3,%rsi
 45e:	4c 39 c6             	cmp    %r8,%rsi
 461:	74 4d                	je     4b0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4b0>
 463:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 467:	0f b6 0e             	movzbl (%rsi),%ecx
 46a:	41 89 d1             	mov    %edx,%r9d
 46d:	c0 ea 04             	shr    $0x4,%dl
 470:	41 c1 e1 08          	shl    $0x8,%r9d
 474:	0f b6 d2             	movzbl %dl,%edx
 477:	44 09 c9             	or     %r9d,%ecx
 47a:	44 0f b6 4e 02       	movzbl 0x2(%rsi),%r9d
 47f:	66 81 e1 ff 0f       	and    $0xfff,%cx
 484:	41 c1 e1 04          	shl    $0x4,%r9d
 488:	44 09 ca             	or     %r9d,%edx
 48b:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 490:	7e 9e                	jle    430 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x430>
 492:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 497:	7f c1                	jg     45a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x45a>
 499:	41 89 d9             	mov    %ebx,%r9d
 49c:	eb ab                	jmp    449 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x449>
 49e:	66 90                	xchg   %ax,%ax
 4a0:	44 89 cb             	mov    %r9d,%ebx
 4a3:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
 4a9:	75 af                	jne    45a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x45a>
 4ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 4b0:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 4b5:	4c 8d 87 a8 04 00 00 	lea    0x4a8(%rdi),%r8
 4bc:	41 81 fd ff 00 00 00 	cmp    $0xff,%r13d
 4c3:	76 43                	jbe    508 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x508>
 4c5:	e9 8a 00 00 00       	jmp    554 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x554>
 4ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 4d0:	45 8d 4d 01          	lea    0x1(%r13),%r9d
 4d4:	66 42 89 0c 68       	mov    %cx,(%rax,%r13,2)
 4d9:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
 4e0:	77 66                	ja     548 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x548>
 4e2:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 4e7:	7f 5f                	jg     548 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x548>
 4e9:	45 8d 69 01          	lea    0x1(%r9),%r13d
 4ed:	66 42 89 14 48       	mov    %dx,(%rax,%r9,2)
 4f2:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 4f9:	74 59                	je     554 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x554>
 4fb:	48 83 c6 03          	add    $0x3,%rsi
 4ff:	4c 39 c6             	cmp    %r8,%rsi
 502:	0f 84 58 01 00 00    	je     660 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x660>
 508:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 50c:	0f b6 0e             	movzbl (%rsi),%ecx
 50f:	41 89 d1             	mov    %edx,%r9d
 512:	c0 ea 04             	shr    $0x4,%dl
 515:	41 c1 e1 08          	shl    $0x8,%r9d
 519:	0f b6 d2             	movzbl %dl,%edx
 51c:	44 09 c9             	or     %r9d,%ecx
 51f:	44 0f b6 4e 02       	movzbl 0x2(%rsi),%r9d
 524:	66 81 e1 ff 0f       	and    $0xfff,%cx
 529:	41 c1 e1 04          	shl    $0x4,%r9d
 52d:	44 09 ca             	or     %r9d,%edx
 530:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 535:	7e 99                	jle    4d0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4d0>
 537:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 53c:	7f bd                	jg     4fb <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4fb>
 53e:	45 89 e9             	mov    %r13d,%r9d
 541:	eb a6                	jmp    4e9 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4e9>
 543:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 548:	45 89 cd             	mov    %r9d,%r13d
 54b:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 552:	75 a7                	jne    4fb <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x4fb>
 554:	41 81 fe ff 00 00 00 	cmp    $0xff,%r14d
 55b:	0f 87 93 00 00 00    	ja     5f4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5f4>
 561:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
 566:	4c 8d 87 a8 06 00 00 	lea    0x6a8(%rdi),%r8
 56d:	eb 39                	jmp    5a8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5a8>
 56f:	90                   	nop
 570:	45 8d 4e 01          	lea    0x1(%r14),%r9d
 574:	66 43 89 0c 72       	mov    %cx,(%r10,%r14,2)
 579:	41 81 f9 ff 00 00 00 	cmp    $0xff,%r9d
 580:	77 66                	ja     5e8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5e8>
 582:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 587:	7f 5f                	jg     5e8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5e8>
 589:	45 8d 71 01          	lea    0x1(%r9),%r14d
 58d:	66 43 89 14 4a       	mov    %dx,(%r10,%r9,2)
 592:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 599:	74 59                	je     5f4 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x5f4>
 59b:	48 83 c6 03          	add    $0x3,%rsi
 59f:	4c 39 c6             	cmp    %r8,%rsi
 5a2:	0f 84 80 fd ff ff    	je     328 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x328>
 5a8:	0f b6 56 01          	movzbl 0x1(%rsi),%edx
 5ac:	0f b6 0e             	movzbl (%rsi),%ecx
 5af:	41 89 d1             	mov    %edx,%r9d
 5b2:	c0 ea 04             	shr    $0x4,%dl
 5b5:	41 c1 e1 08          	shl    $0x8,%r9d
 5b9:	0f b6 d2             	movzbl %dl,%edx
 5bc:	44 09 c9             	or     %r9d,%ecx
 5bf:	44 0f b6 4e 02       	movzbl 0x2(%rsi),%r9d
 5c4:	66 81 e1 ff 0f       	and    $0xfff,%cx
 5c9:	41 c1 e1 04          	shl    $0x4,%r9d
 5cd:	44 09 ca             	or     %r9d,%edx
 5d0:	66 81 f9 00 0d       	cmp    $0xd00,%cx
 5d5:	7e 99                	jle    570 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x570>
 5d7:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 5dc:	7f bd                	jg     59b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x59b>
 5de:	45 89 f1             	mov    %r14d,%r9d
 5e1:	eb a6                	jmp    589 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x589>
 5e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 5e8:	45 89 ce             	mov    %r9d,%r14d
 5eb:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
 5f2:	75 a7                	jne    59b <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x59b>
 5f4:	81 fb ff 00 00 00    	cmp    $0xff,%ebx
 5fa:	0f 96 c2             	setbe  %dl
 5fd:	41 81 fc ff 00 00 00 	cmp    $0xff,%r12d
 604:	0f 96 c1             	setbe  %cl
 607:	08 ca                	or     %cl,%dl
 609:	0f 85 19 fd ff ff    	jne    328 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x328>
 60f:	41 81 fd ff 00 00 00 	cmp    $0xff,%r13d
 616:	0f 86 0c fd ff ff    	jbe    328 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x328>
 61c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
 621:	e8 00 00 00 00       	call   626 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x626>
 626:	48 8b 3c 24          	mov    (%rsp),%rdi
 62a:	31 c0                	xor    %eax,%eax
 62c:	b9 00 01 00 00       	mov    $0x100,%ecx
 631:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 634:	48 8b 3c 24          	mov    (%rsp),%rdi
 638:	48 8b 84 24 78 08 00 	mov    0x878(%rsp),%rax
 63f:	00 
 640:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 647:	00 00 
 649:	75 48                	jne    693 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x693>
 64b:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 64f:	5b                   	pop    %rbx
 650:	41 5c                	pop    %r12
 652:	41 5d                	pop    %r13
 654:	41 5e                	pop    %r14
 656:	41 5f                	pop    %r15
 658:	5d                   	pop    %rbp
 659:	c3                   	ret
 65a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 660:	41 81 fe ff 00 00 00 	cmp    $0xff,%r14d
 667:	0f 86 f4 fe ff ff    	jbe    561 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x561>
 66d:	e9 b6 fc ff ff       	jmp    328 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x328>
 672:	41 b9 01 00 00 00    	mov    $0x1,%r9d
 678:	e9 fa fb ff ff       	jmp    277 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x277>
 67d:	41 b9 01 00 00 00    	mov    $0x1,%r9d
 683:	e9 dd fa ff ff       	jmp    165 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x165>
 688:	41 b9 01 00 00 00    	mov    $0x1,%r9d
 68e:	e9 58 fb ff ff       	jmp    1eb <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform_x4+0x1eb>
 693:	e8 00 00 00 00       	call   698 <.LC1+0x688>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	41 56                	push   %r14
   c:	49 89 fe             	mov    %rdi,%r14
   f:	41 55                	push   %r13
  11:	45 31 ed             	xor    %r13d,%r13d
  14:	41 54                	push   %r12
  16:	53                   	push   %rbx
  17:	48 89 f3             	mov    %rsi,%rbx
  1a:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  1e:	48 81 ec 20 02 00 00 	sub    $0x220,%rsp
  25:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2c:	00 00 
  2e:	48 89 84 24 18 02 00 	mov    %rax,0x218(%rsp)
  35:	00 
  36:	31 c0                	xor    %eax,%eax
  38:	4c 8d 64 24 18       	lea    0x18(%rsp),%r12
  3d:	4c 89 e7             	mov    %r12,%rdi
  40:	e8 00 00 00 00       	call   45 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x45>
  45:	48 89 de             	mov    %rbx,%rsi
  48:	ba 22 00 00 00       	mov    $0x22,%edx
  4d:	4c 89 e7             	mov    %r12,%rdi
  50:	e8 00 00 00 00       	call   55 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x55>
  55:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  5a:	be f8 01 00 00       	mov    $0x1f8,%esi
  5f:	4c 89 e2             	mov    %r12,%rdx
  62:	48 89 df             	mov    %rbx,%rdi
  65:	e8 00 00 00 00       	call   6a <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x6a>
  6a:	48 8d bc 24 18 02 00 	lea    0x218(%rsp),%rdi
  71:	00 
  72:	48 89 de             	mov    %rbx,%rsi
  75:	eb 43                	jmp    ba <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xba>
  77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  7e:	00 00 
  80:	41 8d 4d 01          	lea    0x1(%r13),%ecx
  84:	66 43 89 14 6e       	mov    %dx,(%r14,%r13,2)
  89:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
  8f:	0f 87 9b 00 00 00    	ja     130 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x130>
  95:	66 3d 00 0d          	cmp    $0xd00,%ax
  99:	0f 8f 91 00 00 00    	jg     130 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x130>
  9f:	66 41 89 04 4e       	mov    %ax,(%r14,%rcx,2)
  a4:	44 8d 69 01          	lea    0x1(%rcx),%r13d
  a8:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
  af:	74 3f                	je     f0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xf0>
  b1:	48 83 c6 03          	add    $0x3,%rsi
  b5:	48 39 fe             	cmp    %rdi,%rsi
  b8:	74 7e                	je     138 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x138>
  ba:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
  be:	0f b6 16             	movzbl (%rsi),%edx
  c1:	89 c1                	mov    %eax,%ecx
  c3:	c0 e8 04             	shr    $0x4,%al
  c6:	c1 e1 08             	shl    $0x8,%ecx
  c9:	0f b6 c0             	movzbl %al,%eax
  cc:	09 ca                	or     %ecx,%edx
  ce:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
  d2:	66 81 e2 ff 0f       	and    $0xfff,%dx
  d7:	c1 e1 04             	shl    $0x4,%ecx
  da:	09 c8                	or     %ecx,%eax
  dc:	66 81 fa 00 0d       	cmp    $0xd00,%dx
  e1:	7e 9d                	jle    80 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x80>
  e3:	66 3d 00 0d          	cmp    $0xd00,%ax
  e7:	7f c8                	jg     b1 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xb1>
  e9:	44 89 e9             	mov    %r13d,%ecx
  ec:	eb b1                	jmp    9f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x9f>
  ee:	66 90                	xchg   %ax,%ax
  f0:	4c 89 e7             	mov    %r12,%rdi
  f3:	e8 00 00 00 00       	call   f8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xf8>
  f8:	31 c0                	xor    %eax,%eax
  fa:	48 89 df             	mov    %rbx,%rdi
  fd:	b9 3f 00 00 00       	mov    $0x3f,%ecx
 102:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 105:	48 8b 84 24 18 02 00 	mov    0x218(%rsp),%rax
 10c:	00 
 10d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 114:	00 00 
 116:	0f 85 b1 00 00 00    	jne    1cd <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x1cd>
 11c:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 120:	5b                   	pop    %rbx
 121:	41 5c                	pop    %r12
 123:	41 5d                	pop    %r13
 125:	41 5e                	pop    %r14
 127:	41 5f                	pop    %r15
 129:	5d                   	pop    %rbp
 12a:	c3                   	ret
 12b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 130:	41 89 cd             	mov    %ecx,%r13d
 133:	e9 70 ff ff ff       	jmp    a8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xa8>
 138:	4c 8d bb a8 00 00 00 	lea    0xa8(%rbx),%r15
 13f:	90                   	nop
 140:	be a8 00 00 00       	mov    $0xa8,%esi
 145:	4c 89 e2             	mov    %r12,%rdx
 148:	48 89 df             	mov    %rbx,%rdi
 14b:	e8 00 00 00 00       	call   150 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x150>
 150:	48 89 de             	mov    %rbx,%rsi
 153:	eb 39                	jmp    18e <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x18e>
 155:	0f 1f 00             	nopl   (%rax)
 158:	41 8d 4d 01          	lea    0x1(%r13),%ecx
 15c:	66 43 89 14 6e       	mov    %dx,(%r14,%r13,2)
 161:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
 167:	77 5f                	ja     1c8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x1c8>
 169:	66 3d 00 0d          	cmp    $0xd00,%ax
 16d:	7f 59                	jg     1c8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x1c8>
 16f:	66 41 89 04 4e       	mov    %ax,(%r14,%rcx,2)
 174:	44 8d 69 01          	lea    0x1(%rcx),%r13d
 178:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
 17f:	0f 84 6b ff ff ff    	je     f0 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0xf0>
 185:	48 83 c6 03          	add    $0x3,%rsi
 189:	4c 39 fe             	cmp    %r15,%rsi
 18c:	74 b2                	je     140 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x140>
 18e:	0f b6 46 01          	movzbl 0x1(%rsi),%eax
 192:	0f b6 16             	movzbl (%rsi),%edx
 195:	89 c1                	mov    %eax,%ecx
 197:	c0 e8 04             	shr    $0x4,%al
 19a:	c1 e1 08             	shl    $0x8,%ecx
 19d:	0f b6 c0             	movzbl %al,%eax
 1a0:	09 ca                	or     %ecx,%edx
 1a2:	0f b6 4e 02          	movzbl 0x2(%rsi),%ecx
 1a6:	66 81 e2 ff 0f       	and    $0xfff,%dx
 1ab:	c1 e1 04             	shl    $0x4,%ecx
 1ae:	09 c8                	or     %ecx,%eax
 1b0:	66 81 fa 00 0d       	cmp    $0xd00,%dx
 1b5:	7e a1                	jle    158 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x158>
 1b7:	66 3d 00 0d          	cmp    $0xd00,%ax
 1bb:	7f c8                	jg     185 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x185>
 1bd:	44 89 e9             	mov    %r13d,%ecx
 1c0:	eb ad                	jmp    16f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x16f>
 1c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 1c8:	41 89 cd             	mov    %ecx,%r13d
 1cb:	eb ab                	jmp    178 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_rej_uniform+0x178>
 1cd:	e8 00 00 00 00       	call   1d2 <.LC1+0x1c2>

Disassembly of section .text.PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2:

0000000000000000 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 8d 86 80 00 00 00 	lea    0x80(%rsi),%rax
   b:	48 89 fa             	mov    %rdi,%rdx
   e:	48 89 f1             	mov    %rsi,%rcx
  11:	48 39 c7             	cmp    %rax,%rdi
  14:	73 10                	jae    26 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x26>
  16:	4c 8d 87 00 02 00 00 	lea    0x200(%rdi),%r8
  1d:	4c 39 c6             	cmp    %r8,%rsi
  20:	0f 82 b2 04 00 00    	jb     4d8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x4d8>
  26:	66 44 0f 6f 15 00 00 	movdqa 0x0(%rip),%xmm10        # 2f <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x2f>
  2d:	00 00 
  2f:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 37 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x37>
  36:	00 
  37:	f3 0f 6f 09          	movdqu (%rcx),%xmm1
  3b:	f3 0f 6f 51 10       	movdqu 0x10(%rcx),%xmm2
  40:	48 83 c1 20          	add    $0x20,%rcx
  44:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
  48:	66 0f 6f c1          	movdqa %xmm1,%xmm0
  4c:	66 41 0f db ca       	pand   %xmm10,%xmm1
  51:	66 0f 72 d0 01       	psrld  $0x1,%xmm0
  56:	66 41 0f db c2       	pand   %xmm10,%xmm0
  5b:	66 0f fe c1          	paddd  %xmm1,%xmm0
  5f:	66 0f 6f ca          	movdqa %xmm2,%xmm1
  63:	66 41 0f db d2       	pand   %xmm10,%xmm2
  68:	66 0f 72 d1 01       	psrld  $0x1,%xmm1
  6d:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  71:	66 41 0f db ca       	pand   %xmm10,%xmm1
  76:	66 0f fe ca          	paddd  %xmm2,%xmm1
  7a:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  7e:	66 0f 61 d9          	punpcklwd %xmm1,%xmm3
  82:	66 0f 69 d1          	punpckhwd %xmm1,%xmm2
  86:	66 0f 6f e9          	movdqa %xmm1,%xmm5
  8a:	66 0f 6f e3          	movdqa %xmm3,%xmm4
  8e:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
  92:	66 0f 6f f9          	movdqa %xmm1,%xmm7
  96:	66 0f 69 e2          	punpckhwd %xmm2,%xmm4
  9a:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  9e:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
  a3:	66 0f 72 d5 02       	psrld  $0x2,%xmm5
  a8:	66 0f 72 d2 02       	psrld  $0x2,%xmm2
  ad:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
  b1:	66 0f 6f e2          	movdqa %xmm2,%xmm4
  b5:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
  b9:	66 0f db de          	pand   %xmm6,%xmm3
  bd:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
  c1:	66 0f 6f ea          	movdqa %xmm2,%xmm5
  c5:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
  ca:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
  ce:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
  d2:	66 44 0f 6f d9       	movdqa %xmm1,%xmm11
  d7:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
  db:	66 0f 6f e9          	movdqa %xmm1,%xmm5
  df:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
  e4:	66 0f db d6          	pand   %xmm6,%xmm2
  e8:	66 0f 72 d5 04       	psrld  $0x4,%xmm5
  ed:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
  f2:	66 0f 72 d7 06       	psrld  $0x6,%xmm7
  f7:	66 41 0f 72 d0 0a    	psrld  $0xa,%xmm8
  fd:	66 0f f9 da          	psubw  %xmm2,%xmm3
 101:	66 41 0f 72 d1 0e    	psrld  $0xe,%xmm9
 107:	66 41 0f 72 d3 12    	psrld  $0x12,%xmm11
 10d:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 111:	66 0f 72 d2 04       	psrld  $0x4,%xmm2
 116:	66 41 0f 72 d4 16    	psrld  $0x16,%xmm12
 11c:	66 0f 6f e2          	movdqa %xmm2,%xmm4
 120:	66 41 0f 72 d5 1a    	psrld  $0x1a,%xmm13
 126:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 12a:	66 0f 69 e5          	punpckhwd %xmm5,%xmm4
 12e:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 132:	66 0f 69 ec          	punpckhwd %xmm4,%xmm5
 136:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
 13a:	66 0f 6f e0          	movdqa %xmm0,%xmm4
 13e:	66 0f 72 d4 06       	psrld  $0x6,%xmm4
 143:	66 0f 61 d5          	punpcklwd %xmm5,%xmm2
 147:	66 0f 6f ec          	movdqa %xmm4,%xmm5
 14b:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
 14f:	66 0f db d6          	pand   %xmm6,%xmm2
 153:	66 0f 69 ef          	punpckhwd %xmm7,%xmm5
 157:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 15b:	66 0f 69 fd          	punpckhwd %xmm5,%xmm7
 15f:	66 0f 61 e5          	punpcklwd %xmm5,%xmm4
 163:	66 0f 6f e8          	movdqa %xmm0,%xmm5
 167:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
 16b:	66 0f 72 d5 08       	psrld  $0x8,%xmm5
 170:	66 0f 6f f9          	movdqa %xmm1,%xmm7
 174:	66 0f 72 d7 08       	psrld  $0x8,%xmm7
 179:	66 0f db e6          	pand   %xmm6,%xmm4
 17d:	66 0f f9 d4          	psubw  %xmm4,%xmm2
 181:	66 0f 6f e5          	movdqa %xmm5,%xmm4
 185:	66 0f 61 ef          	punpcklwd %xmm7,%xmm5
 189:	66 0f 69 e7          	punpckhwd %xmm7,%xmm4
 18d:	66 0f 6f fd          	movdqa %xmm5,%xmm7
 191:	66 0f 69 fc          	punpckhwd %xmm4,%xmm7
 195:	66 0f 61 ec          	punpcklwd %xmm4,%xmm5
 199:	66 0f 6f e0          	movdqa %xmm0,%xmm4
 19d:	66 0f 72 d4 0a       	psrld  $0xa,%xmm4
 1a2:	66 0f 61 ef          	punpcklwd %xmm7,%xmm5
 1a6:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 1aa:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
 1af:	66 0f db ee          	pand   %xmm6,%xmm5
 1b3:	66 41 0f 69 f8       	punpckhwd %xmm8,%xmm7
 1b8:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
 1bd:	66 44 0f 69 c7       	punpckhwd %xmm7,%xmm8
 1c2:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
 1c6:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
 1cb:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
 1d0:	66 0f db e6          	pand   %xmm6,%xmm4
 1d4:	66 41 0f 72 d0 0c    	psrld  $0xc,%xmm8
 1da:	66 0f f9 ec          	psubw  %xmm4,%xmm5
 1de:	66 0f 6f e0          	movdqa %xmm0,%xmm4
 1e2:	66 0f 72 d4 0c       	psrld  $0xc,%xmm4
 1e7:	66 0f 6f fc          	movdqa %xmm4,%xmm7
 1eb:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
 1f0:	66 41 0f 69 f8       	punpckhwd %xmm8,%xmm7
 1f5:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
 1fa:	66 44 0f 69 c7       	punpckhwd %xmm7,%xmm8
 1ff:	66 0f 61 e7          	punpcklwd %xmm7,%xmm4
 203:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 207:	66 0f 72 d7 0e       	psrld  $0xe,%xmm7
 20c:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
 211:	66 44 0f 6f c7       	movdqa %xmm7,%xmm8
 216:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
 21b:	66 0f db e6          	pand   %xmm6,%xmm4
 21f:	66 45 0f 69 c1       	punpckhwd %xmm9,%xmm8
 224:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
 229:	66 45 0f 69 c8       	punpckhwd %xmm8,%xmm9
 22e:	66 41 0f 61 f8       	punpcklwd %xmm8,%xmm7
 233:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
 238:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
 23d:	66 41 0f 72 d0 10    	psrld  $0x10,%xmm8
 243:	66 44 0f 6f c9       	movdqa %xmm1,%xmm9
 248:	66 41 0f 72 d1 10    	psrld  $0x10,%xmm9
 24e:	66 0f db fe          	pand   %xmm6,%xmm7
 252:	66 0f f9 e7          	psubw  %xmm7,%xmm4
 256:	66 41 0f 6f f8       	movdqa %xmm8,%xmm7
 25b:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
 260:	66 41 0f 69 f9       	punpckhwd %xmm9,%xmm7
 265:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
 26a:	66 44 0f 69 cf       	punpckhwd %xmm7,%xmm9
 26f:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 274:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 278:	66 0f 72 d7 12       	psrld  $0x12,%xmm7
 27d:	66 45 0f 61 c1       	punpcklwd %xmm9,%xmm8
 282:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
 287:	66 41 0f 61 fb       	punpcklwd %xmm11,%xmm7
 28c:	66 44 0f db c6       	pand   %xmm6,%xmm8
 291:	66 45 0f 69 cb       	punpckhwd %xmm11,%xmm9
 296:	66 44 0f 6f df       	movdqa %xmm7,%xmm11
 29b:	66 45 0f 69 d9       	punpckhwd %xmm9,%xmm11
 2a0:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
 2a5:	66 41 0f 61 fb       	punpcklwd %xmm11,%xmm7
 2aa:	66 44 0f 6f d9       	movdqa %xmm1,%xmm11
 2af:	66 0f db fe          	pand   %xmm6,%xmm7
 2b3:	66 41 0f 72 d3 14    	psrld  $0x14,%xmm11
 2b9:	66 44 0f f9 c7       	psubw  %xmm7,%xmm8
 2be:	66 0f 6f f8          	movdqa %xmm0,%xmm7
 2c2:	66 0f 72 d7 14       	psrld  $0x14,%xmm7
 2c7:	66 44 0f 6f cf       	movdqa %xmm7,%xmm9
 2cc:	66 41 0f 61 fb       	punpcklwd %xmm11,%xmm7
 2d1:	66 45 0f 69 cb       	punpckhwd %xmm11,%xmm9
 2d6:	66 44 0f 6f df       	movdqa %xmm7,%xmm11
 2db:	66 45 0f 69 d9       	punpckhwd %xmm9,%xmm11
 2e0:	66 41 0f 61 f9       	punpcklwd %xmm9,%xmm7
 2e5:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
 2ea:	66 41 0f 72 d1 16    	psrld  $0x16,%xmm9
 2f0:	66 41 0f 61 fb       	punpcklwd %xmm11,%xmm7
 2f5:	66 45 0f 6f d9       	movdqa %xmm9,%xmm11
 2fa:	66 45 0f 61 cc       	punpcklwd %xmm12,%xmm9
 2ff:	66 0f db fe          	pand   %xmm6,%xmm7
 303:	66 45 0f 69 dc       	punpckhwd %xmm12,%xmm11
 308:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
 30d:	66 45 0f 69 e3       	punpckhwd %xmm11,%xmm12
 312:	66 45 0f 61 cb       	punpcklwd %xmm11,%xmm9
 317:	66 44 0f 6f d8       	movdqa %xmm0,%xmm11
 31c:	66 45 0f 61 cc       	punpcklwd %xmm12,%xmm9
 321:	66 41 0f 72 d3 18    	psrld  $0x18,%xmm11
 327:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
 32c:	66 41 0f 72 d4 18    	psrld  $0x18,%xmm12
 332:	66 44 0f db ce       	pand   %xmm6,%xmm9
 337:	66 41 0f f9 f9       	psubw  %xmm9,%xmm7
 33c:	66 45 0f 6f cb       	movdqa %xmm11,%xmm9
 341:	66 45 0f 61 dc       	punpcklwd %xmm12,%xmm11
 346:	66 45 0f 69 cc       	punpckhwd %xmm12,%xmm9
 34b:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
 350:	66 45 0f 69 e1       	punpckhwd %xmm9,%xmm12
 355:	66 45 0f 61 d9       	punpcklwd %xmm9,%xmm11
 35a:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
 35f:	66 41 0f 72 d1 1a    	psrld  $0x1a,%xmm9
 365:	66 45 0f 61 dc       	punpcklwd %xmm12,%xmm11
 36a:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
 36f:	66 45 0f 61 cd       	punpcklwd %xmm13,%xmm9
 374:	66 44 0f db de       	pand   %xmm6,%xmm11
 379:	66 45 0f 69 e5       	punpckhwd %xmm13,%xmm12
 37e:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
 383:	66 45 0f 69 ec       	punpckhwd %xmm12,%xmm13
 388:	66 45 0f 61 cc       	punpcklwd %xmm12,%xmm9
 38d:	66 45 0f 61 cd       	punpcklwd %xmm13,%xmm9
 392:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
 397:	66 41 0f 72 d5 1c    	psrld  $0x1c,%xmm13
 39d:	66 0f 72 d1 1e       	psrld  $0x1e,%xmm1
 3a2:	66 44 0f db ce       	pand   %xmm6,%xmm9
 3a7:	66 45 0f f9 d9       	psubw  %xmm9,%xmm11
 3ac:	66 44 0f 6f c8       	movdqa %xmm0,%xmm9
 3b1:	66 41 0f 72 d1 1c    	psrld  $0x1c,%xmm9
 3b7:	66 0f 72 d0 1e       	psrld  $0x1e,%xmm0
 3bc:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
 3c1:	66 45 0f 61 cd       	punpcklwd %xmm13,%xmm9
 3c6:	66 45 0f 69 e5       	punpckhwd %xmm13,%xmm12
 3cb:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
 3d0:	66 45 0f 69 ec       	punpckhwd %xmm12,%xmm13
 3d5:	66 45 0f 61 cc       	punpcklwd %xmm12,%xmm9
 3da:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
 3df:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 3e3:	66 44 0f 69 e1       	punpckhwd %xmm1,%xmm12
 3e8:	66 45 0f 61 cd       	punpcklwd %xmm13,%xmm9
 3ed:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 3f1:	66 41 0f 61 c4       	punpcklwd %xmm12,%xmm0
 3f6:	66 44 0f db ce       	pand   %xmm6,%xmm9
 3fb:	66 41 0f 69 cc       	punpckhwd %xmm12,%xmm1
 400:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
 404:	66 0f 6f cb          	movdqa %xmm3,%xmm1
 408:	66 41 0f 69 d8       	punpckhwd %xmm8,%xmm3
 40d:	66 44 0f f9 c8       	psubw  %xmm0,%xmm9
 412:	66 41 0f 61 c8       	punpcklwd %xmm8,%xmm1
 417:	66 0f 6f c5          	movdqa %xmm5,%xmm0
 41b:	66 44 0f 6f c2       	movdqa %xmm2,%xmm8
 420:	66 41 0f 61 c3       	punpcklwd %xmm11,%xmm0
 425:	66 0f 69 d7          	punpckhwd %xmm7,%xmm2
 429:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
 42e:	66 0f 6f f9          	movdqa %xmm1,%xmm7
 432:	66 41 0f 69 eb       	punpckhwd %xmm11,%xmm5
 437:	66 0f 61 f8          	punpcklwd %xmm0,%xmm7
 43b:	66 0f 69 c8          	punpckhwd %xmm0,%xmm1
 43f:	66 44 0f 6f dc       	movdqa %xmm4,%xmm11
 444:	66 0f 6f c3          	movdqa %xmm3,%xmm0
 448:	66 41 0f 69 e1       	punpckhwd %xmm9,%xmm4
 44d:	66 45 0f 61 d9       	punpcklwd %xmm9,%xmm11
 452:	66 0f 61 c5          	punpcklwd %xmm5,%xmm0
 456:	66 0f 69 dd          	punpckhwd %xmm5,%xmm3
 45a:	66 45 0f 6f c8       	movdqa %xmm8,%xmm9
 45f:	66 0f 6f ea          	movdqa %xmm2,%xmm5
 463:	66 45 0f 61 cb       	punpcklwd %xmm11,%xmm9
 468:	66 0f 69 d4          	punpckhwd %xmm4,%xmm2
 46c:	66 0f 61 ec          	punpcklwd %xmm4,%xmm5
 470:	66 0f 6f e7          	movdqa %xmm7,%xmm4
 474:	66 45 0f 69 c3       	punpckhwd %xmm11,%xmm8
 479:	66 41 0f 61 e1       	punpcklwd %xmm9,%xmm4
 47e:	66 41 0f 69 f9       	punpckhwd %xmm9,%xmm7
 483:	0f 29 62 80          	movaps %xmm4,-0x80(%rdx)
 487:	66 0f 6f e1          	movdqa %xmm1,%xmm4
 48b:	66 41 0f 69 c8       	punpckhwd %xmm8,%xmm1
 490:	0f 29 4a b0          	movaps %xmm1,-0x50(%rdx)
 494:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 498:	66 0f 69 c5          	punpckhwd %xmm5,%xmm0
 49c:	66 41 0f 61 e0       	punpcklwd %xmm8,%xmm4
 4a1:	0f 29 42 d0          	movaps %xmm0,-0x30(%rdx)
 4a5:	66 0f 6f c3          	movdqa %xmm3,%xmm0
 4a9:	66 0f 61 cd          	punpcklwd %xmm5,%xmm1
 4ad:	66 0f 69 da          	punpckhwd %xmm2,%xmm3
 4b1:	66 0f 61 c2          	punpcklwd %xmm2,%xmm0
 4b5:	0f 29 7a 90          	movaps %xmm7,-0x70(%rdx)
 4b9:	0f 29 62 a0          	movaps %xmm4,-0x60(%rdx)
 4bd:	0f 29 4a c0          	movaps %xmm1,-0x40(%rdx)
 4c1:	0f 29 42 e0          	movaps %xmm0,-0x20(%rdx)
 4c5:	0f 29 5a f0          	movaps %xmm3,-0x10(%rdx)
 4c9:	48 39 c1             	cmp    %rax,%rcx
 4cc:	0f 85 65 fb ff ff    	jne    37 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x37>
 4d2:	c3                   	ret
 4d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 4d8:	8b 01                	mov    (%rcx),%eax
 4da:	89 c6                	mov    %eax,%esi
 4dc:	d1 e8                	shr    $1,%eax
 4de:	81 e6 55 55 55 55    	and    $0x55555555,%esi
 4e4:	25 55 55 55 55       	and    $0x55555555,%eax
 4e9:	01 f0                	add    %esi,%eax
 4eb:	89 c7                	mov    %eax,%edi
 4ed:	89 c6                	mov    %eax,%esi
 4ef:	c1 ef 02             	shr    $0x2,%edi
 4f2:	83 e6 03             	and    $0x3,%esi
 4f5:	83 e7 03             	and    $0x3,%edi
 4f8:	29 fe                	sub    %edi,%esi
 4fa:	89 c7                	mov    %eax,%edi
 4fc:	66 89 32             	mov    %si,(%rdx)
 4ff:	89 c6                	mov    %eax,%esi
 501:	c1 ef 06             	shr    $0x6,%edi
 504:	c1 ee 04             	shr    $0x4,%esi
 507:	83 e7 03             	and    $0x3,%edi
 50a:	83 e6 03             	and    $0x3,%esi
 50d:	29 fe                	sub    %edi,%esi
 50f:	89 c7                	mov    %eax,%edi
 511:	66 89 72 02          	mov    %si,0x2(%rdx)
 515:	89 c6                	mov    %eax,%esi
 517:	c1 ef 0a             	shr    $0xa,%edi
 51a:	c1 ee 08             	shr    $0x8,%esi
 51d:	83 e7 03             	and    $0x3,%edi
 520:	83 e6 03             	and    $0x3,%esi
 523:	29 fe                	sub    %edi,%esi
 525:	89 c7                	mov    %eax,%edi
 527:	66 89 72 04          	mov    %si,0x4(%rdx)
 52b:	89 c6                	mov    %eax,%esi
 52d:	66 c1 ef 0e          	shr    $0xe,%di
 531:	c1 ee 0c             	shr    $0xc,%esi
 534:	83 e6 03             	and    $0x3,%esi
 537:	29 fe                	sub    %edi,%esi
 539:	89 c7                	mov    %eax,%edi
 53b:	66 89 72 06          	mov    %si,0x6(%rdx)
 53f:	89 c6                	mov    %eax,%esi
 541:	c1 ef 12             	shr    $0x12,%edi
 544:	c1 ee 10             	shr    $0x10,%esi
 547:	83 e7 03             	and    $0x3,%edi
 54a:	83 e6 03             	and    $0x3,%esi
 54d:	29 fe                	sub    %edi,%esi
 54f:	89 c7                	mov    %eax,%edi
 551:	66 89 72 08          	mov    %si,0x8(%rdx)
 555:	89 c6                	mov    %eax,%esi
 557:	c1 ef 16             	shr    $0x16,%edi
 55a:	c1 ee 14             	shr    $0x14,%esi
 55d:	83 e7 03             	and    $0x3,%edi
 560:	83 e6 03             	and    $0x3,%esi
 563:	29 fe                	sub    %edi,%esi
 565:	89 c7                	mov    %eax,%edi
 567:	66 89 72 0a          	mov    %si,0xa(%rdx)
 56b:	89 c6                	mov    %eax,%esi
 56d:	c1 ee 18             	shr    $0x18,%esi
 570:	c1 ef 1a             	shr    $0x1a,%edi
 573:	48 83 c2 10          	add    $0x10,%rdx
 577:	48 83 c1 04          	add    $0x4,%rcx
 57b:	83 e6 03             	and    $0x3,%esi
 57e:	83 e7 03             	and    $0x3,%edi
 581:	29 fe                	sub    %edi,%esi
 583:	66 89 72 fc          	mov    %si,-0x4(%rdx)
 587:	89 c6                	mov    %eax,%esi
 589:	c1 e8 1e             	shr    $0x1e,%eax
 58c:	c1 ee 1c             	shr    $0x1c,%esi
 58f:	83 e6 03             	and    $0x3,%esi
 592:	29 c6                	sub    %eax,%esi
 594:	66 89 72 fe          	mov    %si,-0x2(%rdx)
 598:	4c 39 c2             	cmp    %r8,%rdx
 59b:	0f 85 37 ff ff ff    	jne    4d8 <PQCP_MLKEM_NATIVE_MLKEM768_C_poly_cbd2+0x4d8>
 5a1:	c3                   	ret

<PACK-WORKDIR>/work/liboqs/build/src/kem/ml_kem/CMakeFiles/ml_kem_768_ref.dir/mlkem-native_ml-kem-768_ref/mlkem/src/verify.c.o:     file format elf64-x86-64

