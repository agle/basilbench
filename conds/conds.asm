
conds:     file format elf64-littleaarch64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	78696e2f 	.inst	0x78696e2f ; undefined
  40023c:	6f74732f 	fcmla	v15.8h, v25.8h, v20.h[1], #270
  400240:	762f6572 	.inst	0x762f6572 ; undefined
  400244:	7769697a 	.inst	0x7769697a ; undefined
  400248:	6b316b34 	subs	w20, w25, w17, uxtx #2
  40024c:	7038386c 	adr	x12, 47095b <__bss_end__+0x50923>
  400250:	37347671 	tbnz	w17, #6, 3f911c <__abi_tag-0x718c>
  400254:	676c686e 	.inst	0x676c686e ; undefined
  400258:	3538667a 	cbnz	w26, 470f24 <__bss_end__+0x50eec>
  40025c:	6e68766d 	uabd	v13.8h, v19.8h, v8.8h
  400260:	2d616962 	ldp	s2, s26, [x11, #-248]
  400264:	62696c67 	.inst	0x62696c67 ; undefined
  400268:	61612d63 	.inst	0x61612d63 ; undefined
  40026c:	36686372 	tbz	w18, #13, 400ed8 <__FRAME_END__+0x5e0>
  400270:	6e752d34 	uqsub	v20.8h, v9.8h, v21.8h
  400274:	776f6e6b 	.inst	0x776f6e6b ; undefined
  400278:	696c2d6e 	ldpsw	x14, x11, [x11, #-160]
  40027c:	2d78756e 	ldp	s14, s29, [x11, #-64]
  400280:	2d756e67 	ldp	s7, s27, [x19, #-88]
  400284:	30342e32 	adr	x18, 468849 <__bss_end__+0x48811>
  400288:	2f36362d 	ursra	v13.2s, v17.2s, #10
  40028c:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
  400290:	6c2d646c 	stnp	d12, d25, [x3, #-304]
  400294:	78756e69 	.inst	0x78756e69 ; undefined
  400298:	7261612d 	.inst	0x7261612d ; undefined
  40029c:	34366863 	cbz	w3, 46cfa8 <__bss_end__+0x4cf70>
  4002a0:	2e6f732e 	uabdl	v14.4s, v25.4h, v15.4h
  4002a4:	Address 0x4002a4 is out of bounds.


Disassembly of section .note.ABI-tag:

00000000004002a8 <__abi_tag>:
  4002a8:	00000004 	udf	#4
  4002ac:	00000010 	udf	#16
  4002b0:	00000001 	udf	#1
  4002b4:	00554e47 	.inst	0x00554e47 ; undefined
  4002b8:	00000000 	udf	#0
  4002bc:	00000003 	udf	#3
  4002c0:	0000000a 	udf	#10
  4002c4:	00000000 	udf	#0

Disassembly of section .hash:

00000000004002c8 <.hash>:
  4002c8:	00000003 	udf	#3
  4002cc:	00000006 	udf	#6
  4002d0:	00000003 	udf	#3
  4002d4:	00000005 	udf	#5
  4002d8:	00000004 	udf	#4
	...
  4002e4:	00000001 	udf	#1
	...
  4002f0:	00000002 	udf	#2

Disassembly of section .gnu.hash:

00000000004002f8 <.gnu.hash>:
  4002f8:	00000001 	udf	#1
  4002fc:	00000001 	udf	#1
  400300:	00000001 	udf	#1
	...

Disassembly of section .dynsym:

0000000000400318 <.dynsym>:
	...
  400330:	00000001 	udf	#1
  400334:	00000012 	udf	#18
	...
  400348:	00000143 	udf	#323
  40034c:	00000020 	udf	#32
	...
  400360:	0000015f 	udf	#351
  400364:	00000020 	udf	#32
	...
  400378:	00000013 	udf	#19
  40037c:	00000012 	udf	#18
	...
  400390:	0000016e 	udf	#366
  400394:	00000020 	udf	#32
	...

Disassembly of section .dynstr:

00000000004003a8 <.dynstr>:
  4003a8:	6c5f5f00 	ldnp	d0, d23, [x24, #496]
  4003ac:	5f636269 	.inst	0x5f636269 ; undefined
  4003b0:	72617473 	.inst	0x72617473 ; undefined
  4003b4:	616d5f74 	.inst	0x616d5f74 ; undefined
  4003b8:	61006e69 	.inst	0x61006e69 ; undefined
  4003bc:	74726f62 	.inst	0x74726f62 ; undefined
  4003c0:	62696c00 	.inst	0x62696c00 ; undefined
  4003c4:	6f732e63 	.inst	0x6f732e63 ; undefined
  4003c8:	4700362e 	.inst	0x4700362e ; undefined
  4003cc:	4342494c 	.inst	0x4342494c ; undefined
  4003d0:	312e325f 	cmn	w18, #0xb8c
  4003d4:	4c470037 	.inst	0x4c470037 ; undefined
  4003d8:	5f434249 	.inst	0x5f434249 ; undefined
  4003dc:	34332e32 	cbz	w18, 4669a0 <__bss_end__+0x46968>
  4003e0:	696e2f00 	ldpsw	x0, x11, [x24, #-144]
  4003e4:	74732f78 	.inst	0x74732f78 ; undefined
  4003e8:	2f65726f 	fcmla	v15.4h, v19.4h, v5.h[1], #270
  4003ec:	38373476 	.inst	0x38373476 ; undefined
  4003f0:	6c647261 	ldnp	d1, d28, [x19, #-448]
  4003f4:	6e7a3864 	.inst	0x6e7a3864 ; undefined
  4003f8:	706a6333 	adr	x19, 4d505f <__bss_end__+0xb5027>
  4003fc:	61366961 	.inst	0x61366961 ; undefined
  400400:	306b7678 	adr	x24, 4d72cd <__bss_end__+0xb7295>
  400404:	33636c69 	.inst	0x33636c69 ; undefined
  400408:	6b667a6e 	.inst	0x6b667a6e ; undefined
  40040c:	78696e2d 	.inst	0x78696e2d ; undefined
  400410:	6568732d 	fnmls	z13.h, p4/m, z25.h, z8.h
  400414:	6c2f6c6c 	stnp	d12, d27, [x3, #-272]
  400418:	2f3a6269 	.inst	0x2f3a6269 ; undefined
  40041c:	2f78696e 	umlsl	v14.4s, v11.4h, v8.h[7]
  400420:	726f7473 	.inst	0x726f7473 ; undefined
  400424:	7a762f65 	.inst	0x7a762f65 ; undefined
  400428:	34776969 	cbz	w9, 4ef154 <__bss_end__+0xcf11c>
  40042c:	6c6b316b 	ldnp	d11, d12, [x11, #-336]
  400430:	71703838 	subs	w24, w1, #0xc0e, lsl #12
  400434:	6e373476 	cmhi	v22.16b, v3.16b, v23.16b
  400438:	7a676c68 	.inst	0x7a676c68 ; undefined
  40043c:	6d353866 	stp	d6, d14, [x3, #-176]
  400440:	626e6876 	.inst	0x626e6876 ; undefined
  400444:	672d6169 	.inst	0x672d6169 ; undefined
  400448:	6362696c 	.inst	0x6362696c ; undefined
  40044c:	7261612d 	.inst	0x7261612d ; undefined
  400450:	34366863 	cbz	w3, 46d15c <__bss_end__+0x4d124>
  400454:	6b6e752d 	.inst	0x6b6e752d ; undefined
  400458:	6e776f6e 	umin	v14.8h, v27.8h, v23.8h
  40045c:	6e696c2d 	umin	v13.8h, v1.8h, v9.8h
  400460:	672d7875 	.inst	0x672d7875 ; undefined
  400464:	322d756e 	orr	w14, w11, #0xfff9ffff
  400468:	2d30342e 	stp	s14, s13, [x1, #-128]
  40046c:	6c2f3636 	stnp	d22, d13, [x17, #-272]
  400470:	2f3a6269 	.inst	0x2f3a6269 ; undefined
  400474:	2f78696e 	umlsl	v14.4s, v11.4h, v8.h[7]
  400478:	726f7473 	.inst	0x726f7473 ; undefined
  40047c:	356a2f65 	cbnz	w5, 4d4a68 <__bss_end__+0xb4a30>
  400480:	6b343872 	.inst	0x6b343872 ; undefined
  400484:	68307967 	.inst	0x68307967 ; undefined
  400488:	6e636a76 	.inst	0x6e636a76 ; undefined
  40048c:	33646e32 	.inst	0x33646e32 ; undefined
  400490:	66637a76 	.inst	0x66637a76 ; undefined
  400494:	6a616164 	bics	w4, w11, w1, lsr #24
  400498:	78723530 	.inst	0x78723530 ; undefined
  40049c:	612d6d32 	.inst	0x612d6d32 ; undefined
  4004a0:	68637261 	.inst	0x68637261 ; undefined
  4004a4:	752d3436 	.inst	0x752d3436 ; undefined
  4004a8:	6f6e6b6e 	umlsl2	v14.4s, v27.8h, v14.h[6]
  4004ac:	6c2d6e77 	stnp	d23, d27, [x19, #-304]
  4004b0:	78756e69 	.inst	0x78756e69 ; undefined
  4004b4:	756e672d 	.inst	0x756e672d ; undefined
  4004b8:	6363672d 	.inst	0x6363672d ; undefined
  4004bc:	2d34312d 	stp	s13, s12, [x9, #-96]
  4004c0:	34323032 	cbz	w18, 464ac4 <__bss_end__+0x44a8c>
  4004c4:	36313131 	tbz	w17, #6, 402ae8 <__FRAME_END__+0x21f0>
  4004c8:	62696c2d 	.inst	0x62696c2d ; undefined
  4004cc:	7261612f 	.inst	0x7261612f ; undefined
  4004d0:	34366863 	cbz	w3, 46d1dc <__bss_end__+0x4d1a4>
  4004d4:	6b6e752d 	.inst	0x6b6e752d ; undefined
  4004d8:	6e776f6e 	umin	v14.8h, v27.8h, v23.8h
  4004dc:	6e696c2d 	umin	v13.8h, v1.8h, v9.8h
  4004e0:	672d7875 	.inst	0x672d7875 ; undefined
  4004e4:	6c2f756e 	stnp	d14, d29, [x11, #-272]
  4004e8:	5f006269 	.inst	0x5f006269 ; undefined
  4004ec:	5f4d5449 	shl	d9, d2, #13
  4004f0:	65726564 	fnmls	z4.h, p1/m, z11.h, z18.h
  4004f4:	74736967 	.inst	0x74736967 ; undefined
  4004f8:	4d547265 	.inst	0x4d547265 ; undefined
  4004fc:	6e6f6c43 	umin	v3.8h, v2.8h, v15.8h
  400500:	62615465 	.inst	0x62615465 ; undefined
  400504:	5f00656c 	.inst	0x5f00656c ; undefined
  400508:	6f6d675f 	sqshlu	v31.2d, v26.2d, #45
  40050c:	74735f6e 	.inst	0x74735f6e ; undefined
  400510:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
  400514:	495f005f 	.inst	0x495f005f ; undefined
  400518:	725f4d54 	.inst	0x725f4d54 ; undefined
  40051c:	73696765 	.inst	0x73696765 ; undefined
  400520:	54726574 	bc.mi	4e51cc <__bss_end__+0xc5194>  // bc.first
  400524:	6f6c434d 	mls	v13.8h, v26.8h, v12.h[2]
  400528:	6154656e 	.inst	0x6154656e ; undefined
  40052c:	00656c62 	.inst	0x00656c62 ; undefined

Disassembly of section .gnu.version:

0000000000400530 <.gnu.version>:
  400530:	00020000 	.inst	0x00020000 ; undefined
  400534:	00010001 	.inst	0x00010001 ; undefined
  400538:	00010003 	.inst	0x00010003 ; undefined

Disassembly of section .gnu.version_r:

0000000000400540 <.gnu.version_r>:
  400540:	00020001 	.inst	0x00020001 ; undefined
  400544:	00000019 	udf	#25
  400548:	00000010 	udf	#16
  40054c:	00000000 	udf	#0
  400550:	06969197 	.inst	0x06969197 ; undefined
  400554:	00030000 	.inst	0x00030000 ; undefined
  400558:	00000023 	udf	#35
  40055c:	00000010 	udf	#16
  400560:	069691b4 	.inst	0x069691b4 ; undefined
  400564:	00020000 	.inst	0x00020000 ; undefined
  400568:	0000002e 	udf	#46
  40056c:	00000000 	udf	#0

Disassembly of section .rela.dyn:

0000000000400570 <.rela.dyn>:
  400570:	0041ffd0 	.inst	0x0041ffd0 ; undefined
  400574:	00000000 	udf	#0
  400578:	00000401 	udf	#1025
  40057c:	00000002 	udf	#2
	...
  400588:	0041ffd8 	.inst	0x0041ffd8 ; undefined
  40058c:	00000000 	udf	#0
  400590:	00000401 	udf	#1025
  400594:	00000003 	udf	#3
	...
  4005a0:	0041ffe0 	.inst	0x0041ffe0 ; undefined
  4005a4:	00000000 	udf	#0
  4005a8:	00000401 	udf	#1025
  4005ac:	00000005 	udf	#5
	...

Disassembly of section .rela.plt:

00000000004005b8 <.rela.plt>:
  4005b8:	00420000 	.inst	0x00420000 ; undefined
  4005bc:	00000000 	udf	#0
  4005c0:	00000402 	udf	#1026
  4005c4:	00000001 	udf	#1
	...
  4005d0:	00420008 	.inst	0x00420008 ; undefined
  4005d4:	00000000 	udf	#0
  4005d8:	00000402 	udf	#1026
  4005dc:	00000003 	udf	#3
	...
  4005e8:	00420010 	.inst	0x00420010 ; undefined
  4005ec:	00000000 	udf	#0
  4005f0:	00000402 	udf	#1026
  4005f4:	00000004 	udf	#4
	...

Disassembly of section .init:

0000000000400600 <_init>:
  400600:	d503201f 	nop
  400604:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400608:	910003fd 	mov	x29, sp
  40060c:	9400002e 	bl	4006c4 <call_weak_fn>
  400610:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400614:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400620 <.plt>:
  400620:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400624:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1e708>
  400628:	f947fe11 	ldr	x17, [x16, #4088]
  40062c:	913fe210 	add	x16, x16, #0xff8
  400630:	d61f0220 	br	x17
  400634:	d503201f 	nop
  400638:	d503201f 	nop
  40063c:	d503201f 	nop

0000000000400640 <__libc_start_main@plt>:
  400640:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400644:	f9400211 	ldr	x17, [x16]
  400648:	91000210 	add	x16, x16, #0x0
  40064c:	d61f0220 	br	x17

0000000000400650 <__gmon_start__@plt>:
  400650:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400654:	f9400611 	ldr	x17, [x16, #8]
  400658:	91002210 	add	x16, x16, #0x8
  40065c:	d61f0220 	br	x17

0000000000400660 <abort@plt>:
  400660:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400664:	f9400a11 	ldr	x17, [x16, #16]
  400668:	91004210 	add	x16, x16, #0x10
  40066c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400680 <_start>:
  400680:	d503201f 	nop
  400684:	d280001d 	mov	x29, #0x0                   	// #0
  400688:	d280001e 	mov	x30, #0x0                   	// #0
  40068c:	aa0003e5 	mov	x5, x0
  400690:	f94003e1 	ldr	x1, [sp]
  400694:	910023e2 	add	x2, sp, #0x8
  400698:	910003e6 	mov	x6, sp
  40069c:	90000000 	adrp	x0, 400000 <__abi_tag-0x2a8>
  4006a0:	911ad000 	add	x0, x0, #0x6b4
  4006a4:	d2800003 	mov	x3, #0x0                   	// #0
  4006a8:	d2800004 	mov	x4, #0x0                   	// #0
  4006ac:	97ffffe5 	bl	400640 <__libc_start_main@plt>
  4006b0:	97ffffec 	bl	400660 <abort@plt>

00000000004006b4 <__wrap_main>:
  4006b4:	d503201f 	nop
  4006b8:	1400003b 	b	4007a4 <main>
  4006bc:	d503201f 	nop

00000000004006c0 <_dl_relocate_static_pie>:
  4006c0:	d65f03c0 	ret

00000000004006c4 <call_weak_fn>:
  4006c4:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e708>
  4006c8:	f947ec00 	ldr	x0, [x0, #4056]
  4006cc:	b4000040 	cbz	x0, 4006d4 <call_weak_fn+0x10>
  4006d0:	17ffffe0 	b	400650 <__gmon_start__@plt>
  4006d4:	d65f03c0 	ret
  4006d8:	d503201f 	nop
  4006dc:	d503201f 	nop

00000000004006e0 <deregister_tm_clones>:
  4006e0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4006e4:	9100a000 	add	x0, x0, #0x28
  4006e8:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  4006ec:	9100a021 	add	x1, x1, #0x28
  4006f0:	eb00003f 	cmp	x1, x0
  4006f4:	540000c0 	b.eq	40070c <deregister_tm_clones+0x2c>  // b.none
  4006f8:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1e708>
  4006fc:	f947e821 	ldr	x1, [x1, #4048]
  400700:	b4000061 	cbz	x1, 40070c <deregister_tm_clones+0x2c>
  400704:	aa0103f0 	mov	x16, x1
  400708:	d61f0200 	br	x16
  40070c:	d65f03c0 	ret

0000000000400710 <register_tm_clones>:
  400710:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400714:	9100a000 	add	x0, x0, #0x28
  400718:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40071c:	9100a021 	add	x1, x1, #0x28
  400720:	cb000021 	sub	x1, x1, x0
  400724:	d37ffc22 	lsr	x2, x1, #63
  400728:	8b810c41 	add	x1, x2, x1, asr #3
  40072c:	9341fc21 	asr	x1, x1, #1
  400730:	b40000c1 	cbz	x1, 400748 <register_tm_clones+0x38>
  400734:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1e708>
  400738:	f947f042 	ldr	x2, [x2, #4064]
  40073c:	b4000062 	cbz	x2, 400748 <register_tm_clones+0x38>
  400740:	aa0203f0 	mov	x16, x2
  400744:	d61f0200 	br	x16
  400748:	d65f03c0 	ret

000000000040074c <__do_global_dtors_aux>:
  40074c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400750:	910003fd 	mov	x29, sp
  400754:	f9000bf3 	str	x19, [sp, #16]
  400758:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  40075c:	3940a260 	ldrb	w0, [x19, #40]
  400760:	37000080 	tbnz	w0, #0, 400770 <__do_global_dtors_aux+0x24>
  400764:	97ffffdf 	bl	4006e0 <deregister_tm_clones>
  400768:	52800020 	mov	w0, #0x1                   	// #1
  40076c:	3900a260 	strb	w0, [x19, #40]
  400770:	f9400bf3 	ldr	x19, [sp, #16]
  400774:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400778:	d65f03c0 	ret
  40077c:	d503201f 	nop

0000000000400780 <frame_dummy>:
  400780:	17ffffe4 	b	400710 <register_tm_clones>

0000000000400784 <square>:
  400784:	d142e801 	sub	x1, x0, #0xba, lsl #12
  400788:	f1144421 	subs	x1, x1, #0x511
  40078c:	54000080 	b.eq	40079c <square+0x18>  // b.none
  400790:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  400794:	f9001820 	str	x0, [x1, #48]
  400798:	d65f03c0 	ret
  40079c:	d2800600 	mov	x0, #0x30                  	// #48
  4007a0:	17fffffe 	b	400798 <square+0x14>

00000000004007a4 <main>:
  4007a4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4007a8:	f9401800 	ldr	x0, [x0, #48]
  4007ac:	d142e801 	sub	x1, x0, #0xba, lsl #12
  4007b0:	f1144421 	subs	x1, x1, #0x511
  4007b4:	54000080 	b.eq	4007c4 <main+0x20>  // b.none
  4007b8:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  4007bc:	f9001820 	str	x0, [x1, #48]
  4007c0:	d65f03c0 	ret
  4007c4:	d2800600 	mov	x0, #0x30                  	// #48
  4007c8:	17fffffe 	b	4007c0 <main+0x1c>

Disassembly of section .fini:

00000000004007cc <_fini>:
  4007cc:	d503201f 	nop
  4007d0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4007d4:	910003fd 	mov	x29, sp
  4007d8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4007dc:	d65f03c0 	ret

Disassembly of section .rodata:

00000000004007e0 <_IO_stdin_used>:
  4007e0:	00020001 	.inst	0x00020001 ; undefined

Disassembly of section .eh_frame_hdr:

00000000004007e4 <__GNU_EH_FRAME_HDR>:
  4007e4:	3b031b01 	.inst	0x3b031b01 ; undefined
  4007e8:	00000048 	udf	#72
  4007ec:	00000008 	udf	#8
  4007f0:	fffffe9c 	.inst	0xfffffe9c ; undefined
  4007f4:	00000060 	udf	#96
  4007f8:	fffffedc 	.inst	0xfffffedc ; undefined
  4007fc:	00000074 	udf	#116
  400800:	fffffefc 	.inst	0xfffffefc ; undefined
  400804:	0000008c 	udf	#140
  400808:	ffffff2c 	.inst	0xffffff2c ; undefined
  40080c:	000000a0 	udf	#160
  400810:	ffffff68 	.inst	0xffffff68 ; undefined
  400814:	000000b4 	udf	#180
  400818:	ffffff9c 	.inst	0xffffff9c ; undefined
  40081c:	000000d8 	udf	#216
  400820:	ffffffa0 	.inst	0xffffffa0 ; undefined
  400824:	000000ec 	udf	#236
  400828:	ffffffc0 	.inst	0xffffffc0 ; undefined
  40082c:	00000100 	udf	#256

Disassembly of section .eh_frame:

0000000000400830 <__FRAME_END__-0xc8>:
  400830:	00000010 	udf	#16
  400834:	00000000 	udf	#0
  400838:	00527a01 	.inst	0x00527a01 ; undefined
  40083c:	011e7804 	.inst	0x011e7804 ; undefined
  400840:	001f0c1b 	.inst	0x001f0c1b ; undefined
  400844:	00000010 	udf	#16
  400848:	00000018 	udf	#24
  40084c:	fffffe34 	.inst	0xfffffe34 ; undefined
  400850:	0000003c 	udf	#60
  400854:	1e074100 	.inst	0x1e074100 ; undefined
  400858:	00000014 	udf	#20
  40085c:	0000002c 	udf	#44
  400860:	fffffe60 	.inst	0xfffffe60 ; undefined
  400864:	00000004 	udf	#4
	...
  400870:	00000010 	udf	#16
  400874:	00000044 	udf	#68
  400878:	fffffe68 	.inst	0xfffffe68 ; undefined
  40087c:	00000030 	udf	#48
  400880:	00000000 	udf	#0
  400884:	00000010 	udf	#16
  400888:	00000058 	udf	#88
  40088c:	fffffe84 	.inst	0xfffffe84 ; undefined
  400890:	0000003c 	udf	#60
  400894:	00000000 	udf	#0
  400898:	00000020 	udf	#32
  40089c:	0000006c 	udf	#108
  4008a0:	fffffeac 	.inst	0xfffffeac ; undefined
  4008a4:	00000030 	udf	#48
  4008a8:	200e4100 	.inst	0x200e4100 ; undefined
  4008ac:	039e049d 	.inst	0x039e049d ; undefined
  4008b0:	48029342 	stlxrh	w2, w2, [x26]
  4008b4:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
  4008b8:	00000000 	udf	#0
  4008bc:	00000010 	udf	#16
  4008c0:	00000090 	udf	#144
  4008c4:	fffffebc 	.inst	0xfffffebc ; undefined
  4008c8:	00000004 	udf	#4
  4008cc:	00000000 	udf	#0
  4008d0:	00000010 	udf	#16
  4008d4:	000000a4 	udf	#164
  4008d8:	fffffeac 	.inst	0xfffffeac ; undefined
  4008dc:	00000020 	udf	#32
  4008e0:	00000000 	udf	#0
  4008e4:	00000010 	udf	#16
  4008e8:	000000b8 	udf	#184
  4008ec:	fffffeb8 	.inst	0xfffffeb8 ; undefined
  4008f0:	00000028 	udf	#40
  4008f4:	00000000 	udf	#0

00000000004008f8 <__FRAME_END__>:
  4008f8:	00000000 	udf	#0

Disassembly of section .init_array:

000000000041fdc8 <__frame_dummy_init_array_entry>:
  41fdc8:	00400780 	.inst	0x00400780 ; undefined
  41fdcc:	00000000 	udf	#0

Disassembly of section .fini_array:

000000000041fdd0 <__do_global_dtors_aux_fini_array_entry>:
  41fdd0:	0040074c 	.inst	0x0040074c ; undefined
  41fdd4:	00000000 	udf	#0

Disassembly of section .dynamic:

000000000041fdd8 <_DYNAMIC>:
  41fdd8:	00000001 	udf	#1
  41fddc:	00000000 	udf	#0
  41fde0:	00000019 	udf	#25
  41fde4:	00000000 	udf	#0
  41fde8:	0000001d 	udf	#29
  41fdec:	00000000 	udf	#0
  41fdf0:	00000039 	udf	#57
  41fdf4:	00000000 	udf	#0
  41fdf8:	0000000c 	udf	#12
  41fdfc:	00000000 	udf	#0
  41fe00:	00400600 	.inst	0x00400600 ; undefined
  41fe04:	00000000 	udf	#0
  41fe08:	0000000d 	udf	#13
  41fe0c:	00000000 	udf	#0
  41fe10:	004007cc 	.inst	0x004007cc ; undefined
  41fe14:	00000000 	udf	#0
  41fe18:	00000019 	udf	#25
  41fe1c:	00000000 	udf	#0
  41fe20:	0041fdc8 	.inst	0x0041fdc8 ; undefined
  41fe24:	00000000 	udf	#0
  41fe28:	0000001b 	udf	#27
  41fe2c:	00000000 	udf	#0
  41fe30:	00000008 	udf	#8
  41fe34:	00000000 	udf	#0
  41fe38:	0000001a 	udf	#26
  41fe3c:	00000000 	udf	#0
  41fe40:	0041fdd0 	.inst	0x0041fdd0 ; undefined
  41fe44:	00000000 	udf	#0
  41fe48:	0000001c 	udf	#28
  41fe4c:	00000000 	udf	#0
  41fe50:	00000008 	udf	#8
  41fe54:	00000000 	udf	#0
  41fe58:	00000004 	udf	#4
  41fe5c:	00000000 	udf	#0
  41fe60:	004002c8 	.inst	0x004002c8 ; undefined
  41fe64:	00000000 	udf	#0
  41fe68:	6ffffef5 	.inst	0x6ffffef5 ; undefined
  41fe6c:	00000000 	udf	#0
  41fe70:	004002f8 	.inst	0x004002f8 ; undefined
  41fe74:	00000000 	udf	#0
  41fe78:	00000005 	udf	#5
  41fe7c:	00000000 	udf	#0
  41fe80:	004003a8 	.inst	0x004003a8 ; undefined
  41fe84:	00000000 	udf	#0
  41fe88:	00000006 	udf	#6
  41fe8c:	00000000 	udf	#0
  41fe90:	00400318 	.inst	0x00400318 ; undefined
  41fe94:	00000000 	udf	#0
  41fe98:	0000000a 	udf	#10
  41fe9c:	00000000 	udf	#0
  41fea0:	00000188 	udf	#392
  41fea4:	00000000 	udf	#0
  41fea8:	0000000b 	udf	#11
  41feac:	00000000 	udf	#0
  41feb0:	00000018 	udf	#24
  41feb4:	00000000 	udf	#0
  41feb8:	00000015 	udf	#21
	...
  41fec8:	00000003 	udf	#3
  41fecc:	00000000 	udf	#0
  41fed0:	0041ffe8 	.inst	0x0041ffe8 ; undefined
  41fed4:	00000000 	udf	#0
  41fed8:	00000002 	udf	#2
  41fedc:	00000000 	udf	#0
  41fee0:	00000048 	udf	#72
  41fee4:	00000000 	udf	#0
  41fee8:	00000014 	udf	#20
  41feec:	00000000 	udf	#0
  41fef0:	00000007 	udf	#7
  41fef4:	00000000 	udf	#0
  41fef8:	00000017 	udf	#23
  41fefc:	00000000 	udf	#0
  41ff00:	004005b8 	.inst	0x004005b8 ; undefined
  41ff04:	00000000 	udf	#0
  41ff08:	00000007 	udf	#7
  41ff0c:	00000000 	udf	#0
  41ff10:	00400570 	.inst	0x00400570 ; undefined
  41ff14:	00000000 	udf	#0
  41ff18:	00000008 	udf	#8
  41ff1c:	00000000 	udf	#0
  41ff20:	00000048 	udf	#72
  41ff24:	00000000 	udf	#0
  41ff28:	00000009 	udf	#9
  41ff2c:	00000000 	udf	#0
  41ff30:	00000018 	udf	#24
  41ff34:	00000000 	udf	#0
  41ff38:	6ffffffe 	.inst	0x6ffffffe ; undefined
  41ff3c:	00000000 	udf	#0
  41ff40:	00400540 	.inst	0x00400540 ; undefined
  41ff44:	00000000 	udf	#0
  41ff48:	6fffffff 	.inst	0x6fffffff ; undefined
  41ff4c:	00000000 	udf	#0
  41ff50:	00000001 	udf	#1
  41ff54:	00000000 	udf	#0
  41ff58:	6ffffff0 	.inst	0x6ffffff0 ; undefined
  41ff5c:	00000000 	udf	#0
  41ff60:	00400530 	.inst	0x00400530 ; undefined
	...

Disassembly of section .got:

000000000041ffc8 <_GLOBAL_OFFSET_TABLE_>:
  41ffc8:	0041fdd8 	.inst	0x0041fdd8 ; undefined
	...

Disassembly of section .got.plt:

000000000041ffe8 <.got.plt>:
	...
  420000:	00400620 	.inst	0x00400620 ; undefined
  420004:	00000000 	udf	#0
  420008:	00400620 	.inst	0x00400620 ; undefined
  42000c:	00000000 	udf	#0
  420010:	00400620 	.inst	0x00400620 ; undefined
  420014:	00000000 	udf	#0

Disassembly of section .data:

0000000000420018 <__data_start>:
	...

0000000000420020 <__dso_handle>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi	// mi = first
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
   8:	31202955 	adds	w21, w10, #0x80a
   c:	2e322e34 	uqsub	v20.8b, v17.8b, v18.8b
  10:	30322031 	adr	x17, 64415 <__abi_tag-0x39be93>
  14:	31313432 	adds	w18, w1, #0xc4d
  18:	Address 0x18 is out of bounds.

