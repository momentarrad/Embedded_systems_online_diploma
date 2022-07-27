
my_executable.elf:     file format elf32-littlearm


Disassembly of section .reset:

00010000 <reset_handler>:
   10000:	e51fd000 	ldr	sp, [pc, #-0]	; 10008 <stop>
   10004:	eb000000 	bl	1000c <main>

00010008 <stop>:
   10008:	000110d4 	ldrdeq	r1, [r1], -r4

Disassembly of section .text:

0001000c <main>:
   1000c:	e92d4800 	push	{fp, lr}
   10010:	e28db004 	add	fp, sp, #4
   10014:	e59f0004 	ldr	r0, [pc, #4]	; 10020 <main+0x14>
   10018:	eb000001 	bl	10024 <uart_send_string>
   1001c:	e8bd8800 	pop	{fp, pc}
   10020:	00010070 	andeq	r0, r1, r0, ror r0

00010024 <uart_send_string>:
   10024:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10028:	e28db000 	add	fp, sp, #0
   1002c:	e24dd00c 	sub	sp, sp, #12
   10030:	e50b0008 	str	r0, [fp, #-8]
   10034:	ea000006 	b	10054 <uart_send_string+0x30>
   10038:	e59f302c 	ldr	r3, [pc, #44]	; 1006c <uart_send_string+0x48>
   1003c:	e51b2008 	ldr	r2, [fp, #-8]
   10040:	e5d22000 	ldrb	r2, [r2]
   10044:	e5832000 	str	r2, [r3]
   10048:	e51b3008 	ldr	r3, [fp, #-8]
   1004c:	e2833001 	add	r3, r3, #1
   10050:	e50b3008 	str	r3, [fp, #-8]
   10054:	e51b3008 	ldr	r3, [fp, #-8]
   10058:	e3530000 	cmp	r3, #0
   1005c:	1afffff5 	bne	10038 <uart_send_string+0x14>
   10060:	e28bd000 	add	sp, fp, #0
   10064:	e8bd0800 	ldmfd	sp!, {fp}
   10068:	e12fff1e 	bx	lr
   1006c:	101f1000 	andsne	r1, pc, r0

Disassembly of section .data:

00010070 <string_buffer>:
   10070:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   10074:	6e692d6e 	cdpvs	13, 6, cr2, cr9, cr14, {3}
   10078:	7065642d 	rsbvc	r6, r5, sp, lsr #8
   1007c:	6d3a6874 	ldcvs	8, cr6, [sl, #-464]!	; 0xfffffe30
   10080:	6e656d6f 	cdpvs	13, 6, cr6, cr5, cr15, {3}
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0x239
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0x109
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <STACK_TOP+0x10bfc50>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	34202955 	strtcc	r2, [r0], #-2389	; 0x955
   c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000068 	andeq	r0, r0, r8, rrx
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000017 	andeq	r0, r0, r7, lsl r0
  10:	00006001 	andeq	r6, r0, r1
  14:	00002300 	andeq	r2, r0, r0, lsl #6
  18:	01000c00 	tsteq	r0, r0, lsl #24
  1c:	01002400 	tsteq	r0, r0, lsl #8
  20:	00000000 	andeq	r0, r0, r0
  24:	74010200 	strvc	r0, [r1], #-512	; 0x200
  28:	01000000 	mrseq	r0, (UNDEF: 0)
  2c:	000c0105 	andeq	r0, ip, r5, lsl #2
  30:	00240001 	eoreq	r0, r4, r1
  34:	00000001 	andeq	r0, r0, r1
  38:	03010000 	movweq	r0, #4096	; 0x1000
  3c:	00000052 	andeq	r0, r0, r2, asr r0
  40:	0000004b 	andeq	r0, r0, fp, asr #32
  44:	00004b04 	andeq	r4, r0, r4, lsl #22
  48:	05006300 	streq	r6, [r0, #-768]	; 0x300
  4c:	000e0704 	andeq	r0, lr, r4, lsl #14
  50:	01050000 	mrseq	r0, (UNDEF: 5)
  54:	00000008 	andeq	r0, r0, r8
  58:	00660600 	rsbeq	r0, r6, r0, lsl #12
  5c:	03010000 	movweq	r0, #4096	; 0x1000
  60:	0000003b 	andeq	r0, r0, fp, lsr r0
  64:	70030501 	andvc	r0, r3, r1, lsl #10
  68:	00000100 	andeq	r0, r0, r0, lsl #2
  6c:	00000058 	andeq	r0, r0, r8, asr r0
  70:	005a0002 	subseq	r0, sl, r2
  74:	01040000 	mrseq	r0, (UNDEF: 4)
  78:	00000017 	andeq	r0, r0, r7, lsl r0
  7c:	00007901 	andeq	r7, r0, r1, lsl #18
  80:	00002300 	andeq	r2, r0, r0, lsl #6
  84:	01002400 	tsteq	r0, r0, lsl #8
  88:	01007000 	mrseq	r7, (UNDEF: 0)
  8c:	00003500 	andeq	r3, r0, r0, lsl #10
  90:	8c010200 	sfmhi	f0, 4, [r1], {-0}
  94:	01000000 	mrseq	r0, (UNDEF: 0)
  98:	00240104 	eoreq	r0, r4, r4, lsl #2
  9c:	00700001 	rsbseq	r0, r0, r1
  a0:	002c0001 	eoreq	r0, ip, r1
  a4:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
  a8:	03000000 	movweq	r0, #0
  ac:	00000080 	andeq	r0, r0, r0, lsl #1
  b0:	004e0401 	subeq	r0, lr, r1, lsl #8
  b4:	91020000 	mrsls	r0, (UNDEF: 2)
  b8:	04040074 	streq	r0, [r4], #-116	; 0x74
  bc:	00000054 	andeq	r0, r0, r4, asr r0
  c0:	00080105 	andeq	r0, r8, r5, lsl #2
  c4:	00000000 	andeq	r0, r0, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffff64 <STACK_TOP+0xfffeee90>
  18:	0b3a0e03 	bleq	e8382c <STACK_TOP+0xe72758>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
  28:	0300000c 	movweq	r0, #12
  2c:	13490101 	movtne	r0, #37121	; 0x9101
  30:	00001301 	andeq	r1, r0, r1, lsl #6
  34:	49002104 	stmdbmi	r0, {r2, r8, sp}
  38:	000b2f13 	andeq	r2, fp, r3, lsl pc
  3c:	00240500 	eoreq	r0, r4, r0, lsl #10
  40:	0b3e0b0b 	bleq	f82c74 <STACK_TOP+0xf71ba0>
  44:	00000e03 	andeq	r0, r0, r3, lsl #28
  48:	03003406 	movweq	r3, #1030	; 0x406
  4c:	3b0b3a0e 	blcc	2ce88c <STACK_TOP+0x2bd7b8>
  50:	3f13490b 	svccc	0x0013490b
  54:	000a020c 	andeq	r0, sl, ip, lsl #4
  58:	11010000 	mrsne	r0, (UNDEF: 1)
  5c:	130e2501 	movwne	r2, #58625	; 0xe501
  60:	1b0e030b 	blne	380c94 <STACK_TOP+0x36fbc0>
  64:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  68:	00061001 	andeq	r1, r6, r1
  6c:	012e0200 	teqeq	lr, r0, lsl #4
  70:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  74:	0b3b0b3a 	bleq	ec2d64 <STACK_TOP+0xeb1c90>
  78:	01110c27 	tsteq	r1, r7, lsr #24
  7c:	06400112 			; <UNDEFINED> instruction: 0x06400112
  80:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
  84:	03000013 	movweq	r0, #19
  88:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
  8c:	0b3b0b3a 	bleq	ec2d7c <STACK_TOP+0xeb1ca8>
  90:	0a021349 	beq	84dbc <STACK_TOP+0x73ce8>
  94:	0f040000 	svceq	0x00040000
  98:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  9c:	05000013 	streq	r0, [r0, #-19]
  a0:	0b0b0024 	bleq	2c0138 <STACK_TOP+0x2af064>
  a4:	0e030b3e 	vmoveq.16	d3[0], r0
  a8:	Address 0x000000a8 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000004 	andeq	r0, r0, r4
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000004 	andeq	r0, r0, r4
  10:	00000008 	andeq	r0, r0, r8
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000008 	andeq	r0, r0, r8
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	047b0002 	ldrbteq	r0, [fp], #-2
	...
  30:	00000004 	andeq	r0, r0, r4
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	00000004 	andeq	r0, r0, r4
  3c:	00000008 	andeq	r0, r0, r8
  40:	047d0002 	ldrbteq	r0, [sp], #-2
  44:	00000008 	andeq	r0, r0, r8
  48:	0000004c 	andeq	r0, r0, ip, asr #32
  4c:	047b0002 	ldrbteq	r0, [fp], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	0001000c 	andeq	r0, r1, ip
  14:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	006c0002 	rsbeq	r0, ip, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00010024 	andeq	r0, r1, r4, lsr #32
  34:	0000004c 	andeq	r0, r0, ip, asr #32
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000031 	andeq	r0, r0, r1, lsr r0
   4:	001c0002 	andseq	r0, ip, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	05000000 	streq	r0, [r0, #-0]
  28:	01000c02 	tsteq	r0, r2, lsl #24
  2c:	4b4c1700 	blmi	1305c34 <STACK_TOP+0x12f4b60>
  30:	01000402 	tsteq	r0, r2, lsl #8
  34:	00003b01 	andeq	r3, r0, r1, lsl #22
  38:	1d000200 	sfmne	f0, 4, [r0, #-0]
  3c:	02000000 	andeq	r0, r0, #0
  40:	0d0efb01 	vstreq	d15, [lr, #-4]
  44:	01010100 	mrseq	r0, (UNDEF: 17)
  48:	00000001 	andeq	r0, r0, r1
  4c:	01000001 	tsteq	r0, r1
  50:	72617500 	rsbvc	r7, r1, #0, 10
  54:	00632e74 	rsbeq	r2, r3, r4, ror lr
  58:	00000000 	andeq	r0, r0, r0
  5c:	24020500 	strcs	r0, [r2], #-1280	; 0x500
  60:	16000100 	strne	r0, [r0], -r0, lsl #2
  64:	00833084 	addeq	r3, r3, r4, lsl #1
  68:	63010402 	movwvs	r0, #5122	; 0x1402
  6c:	02660a03 	rsbeq	r0, r6, #12288	; 0x3000
  70:	01010008 	tsteq	r1, r8

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
   4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
   8:	61686320 	cmnvs	r8, r0, lsr #6
   c:	69730072 	ldmdbvs	r3!, {r1, r4, r5, r6}^
  10:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
  14:	47006570 	smlsdxmi	r0, r0, r5, r6
  18:	4320554e 	teqmi	r0, #327155712	; 0x13800000
  1c:	372e3420 	strcc	r3, [lr, -r0, lsr #8]!
  20:	4400322e 	strmi	r3, [r0], #-558	; 0x22e
  24:	6f6d5c3a 	svcvs	0x006d5c3a
  28:	6e656d32 	mcrvs	13, 3, r6, cr5, cr2, {1}
  2c:	6d6f6d5c 	stclvs	13, cr6, [pc, #-368]!	; fffffec4 <STACK_TOP+0xfffeedf0>
  30:	4b5c6e65 	blmi	171b9cc <STACK_TOP+0x170a8f8>
  34:	6d652053 	stclvs	0, cr2, [r5, #-332]!	; 0xfffffeb4
  38:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  3c:	64206465 	strtvs	r6, [r0], #-1125	; 0x465
  40:	6f6c7069 	svcvs	0x006c7069
  44:	315c616d 	cmpcc	ip, sp, ror #2
  48:	65202d37 	strvs	r2, [r0, #-3383]!	; 0xd37
  4c:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  50:	43646564 	cmnmi	r4, #100, 10	; 0x19000000
  54:	43454c5f 	movtmi	r4, #23647	; 0x5c5f
  58:	6c5c3254 	lfmvs	f3, 2, [ip], {84}	; 0x54
  5c:	00316261 	eorseq	r6, r1, r1, ror #4
  60:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  64:	74730063 	ldrbtvc	r0, [r3], #-99	; 0x63
  68:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
  6c:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
  70:	00726566 	rsbseq	r6, r2, r6, ror #10
  74:	6e69616d 	powvsez	f6, f1, #5.0
  78:	72617500 	rsbvc	r7, r1, #0, 10
  7c:	00632e74 	rsbeq	r2, r3, r4, ror lr
  80:	78745f70 	ldmdavc	r4!, {r4, r5, r6, r8, r9, sl, fp, ip, lr}^
  84:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
  88:	00676e69 	rsbeq	r6, r7, r9, ror #28
  8c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
  90:	6e65735f 	mcrvs	3, 3, r7, cr5, cr15, {2}
  94:	74735f64 	ldrbtvc	r5, [r3], #-3940	; 0xf64
  98:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	0001000c 	andeq	r0, r1, ip
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	8b080e42 	blhi	203930 <STACK_TOP+0x1f285c>
  24:	42018e02 	andmi	r8, r1, #2, 28
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	00010024 	andeq	r0, r1, r4, lsr #32
  48:	0000004c 	andeq	r0, r0, ip, asr #32
  4c:	8b040e42 	blhi	10395c <STACK_TOP+0xf2888>
  50:	0b0d4201 	bleq	35085c <STACK_TOP+0x33f788>
