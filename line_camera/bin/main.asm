
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 38 00 	jmp	0x70	; 0x70 <__dtors_end>
   4:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
   8:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
   c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  10:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  14:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  18:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  1c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  20:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  24:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  28:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  2c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  30:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  34:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  38:	0c 94 9f 01 	jmp	0x33e	; 0x33e <__vector_14>
  3c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  40:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  44:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  48:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  4c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  50:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  54:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  58:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  5c:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  60:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>
  64:	0c 94 60 00 	jmp	0xc0	; 0xc0 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	9d 00       	.word	0x009d	; ????
  6a:	c4 01       	movw	r24, r8

0000006c <__ctors_end>:
  6c:	a1 00       	.word	0x00a1	; ????
  6e:	c8 01       	movw	r24, r16

00000070 <__dtors_end>:
  70:	11 24       	eor	r1, r1
  72:	1f be       	out	0x3f, r1	; 63
  74:	cf ef       	ldi	r28, 0xFF	; 255
  76:	d8 e0       	ldi	r29, 0x08	; 8
  78:	de bf       	out	0x3e, r29	; 62
  7a:	cd bf       	out	0x3d, r28	; 61

0000007c <__do_copy_data>:
  7c:	11 e0       	ldi	r17, 0x01	; 1
  7e:	a0 e0       	ldi	r26, 0x00	; 0
  80:	b1 e0       	ldi	r27, 0x01	; 1
  82:	e2 e8       	ldi	r30, 0x82	; 130
  84:	f6 e0       	ldi	r31, 0x06	; 6
  86:	02 c0       	rjmp	.+4      	; 0x8c <__do_copy_data+0x10>
  88:	05 90       	lpm	r0, Z+
  8a:	0d 92       	st	X+, r0
  8c:	a4 32       	cpi	r26, 0x24	; 36
  8e:	b1 07       	cpc	r27, r17
  90:	d9 f7       	brne	.-10     	; 0x88 <__do_copy_data+0xc>

00000092 <__do_clear_bss>:
  92:	22 e0       	ldi	r18, 0x02	; 2
  94:	a4 e2       	ldi	r26, 0x24	; 36
  96:	b1 e0       	ldi	r27, 0x01	; 1
  98:	01 c0       	rjmp	.+2      	; 0x9c <.do_clear_bss_start>

0000009a <.do_clear_bss_loop>:
  9a:	1d 92       	st	X+, r1

0000009c <.do_clear_bss_start>:
  9c:	a1 33       	cpi	r26, 0x31	; 49
  9e:	b2 07       	cpc	r27, r18
  a0:	e1 f7       	brne	.-8      	; 0x9a <.do_clear_bss_loop>

000000a2 <__do_global_ctors>:
  a2:	10 e0       	ldi	r17, 0x00	; 0
  a4:	c6 e3       	ldi	r28, 0x36	; 54
  a6:	d0 e0       	ldi	r29, 0x00	; 0
  a8:	04 c0       	rjmp	.+8      	; 0xb2 <__do_global_ctors+0x10>
  aa:	21 97       	sbiw	r28, 0x01	; 1
  ac:	fe 01       	movw	r30, r28
  ae:	0e 94 0d 02 	call	0x41a	; 0x41a <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 34 03 	jmp	0x668	; 0x668 <__do_global_dtors>

000000c0 <__bad_interrupt>:
  c0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c4 <main>:
  c4:	cf 93       	push	r28
  c6:	df 93       	push	r29
  c8:	1f 92       	push	r1
  ca:	cd b7       	in	r28, 0x3d	; 61
  cc:	de b7       	in	r29, 0x3e	; 62
  ce:	66 e0       	ldi	r22, 0x06	; 6
  d0:	71 e0       	ldi	r23, 0x01	; 1
  d2:	8c e2       	ldi	r24, 0x2C	; 44
  d4:	92 e0       	ldi	r25, 0x02	; 2
  d6:	0e 94 c2 01 	call	0x384	; 0x384 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 96 01 	call	0x32c	; 0x32c <_ZN11SampleTimer4waitEv>
  ee:	84 e2       	ldi	r24, 0x24	; 36
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 3b 01 	call	0x276	; 0x276 <_ZN10LineCamera4readEv>
  f6:	84 e2       	ldi	r24, 0x24	; 36
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 d8 00 	call	0x1b0	; 0x1b0 <_ZN10LineCamera7processEv>
  fe:	04 e2       	ldi	r16, 0x24	; 36
 100:	11 e0       	ldi	r17, 0x01	; 1
 102:	f8 01       	movw	r30, r16
 104:	84 81       	ldd	r24, Z+4	; 0x04
 106:	95 81       	ldd	r25, Z+5	; 0x05
 108:	18 16       	cp	r1, r24
 10a:	19 06       	cpc	r1, r25
 10c:	1c f4       	brge	.+6      	; 0x114 <main+0x50>
 10e:	63 e1       	ldi	r22, 0x13	; 19
 110:	71 e0       	ldi	r23, 0x01	; 1
 112:	02 c0       	rjmp	.+4      	; 0x118 <main+0x54>
 114:	65 e1       	ldi	r22, 0x15	; 21
 116:	71 e0       	ldi	r23, 0x01	; 1
 118:	8c e2       	ldi	r24, 0x2C	; 44
 11a:	92 e0       	ldi	r25, 0x02	; 2
 11c:	0e 94 c2 01 	call	0x384	; 0x384 <_ZN8Terminal4putsEPKc>
 120:	0c 5f       	subi	r16, 0xFC	; 252
 122:	1f 4f       	sbci	r17, 0xFF	; 255
 124:	f2 e0       	ldi	r31, 0x02	; 2
 126:	04 32       	cpi	r16, 0x24	; 36
 128:	1f 07       	cpc	r17, r31
 12a:	59 f7       	brne	.-42     	; 0x102 <main+0x3e>
 12c:	61 e1       	ldi	r22, 0x11	; 17
 12e:	71 e0       	ldi	r23, 0x01	; 1
 130:	8c e2       	ldi	r24, 0x2C	; 44
 132:	92 e0       	ldi	r25, 0x02	; 2
 134:	0e 94 c2 01 	call	0x384	; 0x384 <_ZN8Terminal4putsEPKc>
 138:	d6 cf       	rjmp	.-84     	; 0xe6 <main+0x22>

0000013a <_GLOBAL__sub_I_camera>:
 13a:	84 e2       	ldi	r24, 0x24	; 36
 13c:	91 e0       	ldi	r25, 0x01	; 1
 13e:	0c 94 cc 00 	jmp	0x198	; 0x198 <_ZN10LineCameraC1Ev>

00000142 <_GLOBAL__sub_D_camera>:
 142:	84 e2       	ldi	r24, 0x24	; 36
 144:	91 e0       	ldi	r25, 0x01	; 1
 146:	0c 94 d7 00 	jmp	0x1ae	; 0x1ae <_ZN10LineCameraD1Ev>

0000014a <_ZN5USARTC1Ev>:
 14a:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 14e:	80 e1       	ldi	r24, 0x10	; 16
 150:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 154:	e2 ec       	ldi	r30, 0xC2	; 194
 156:	f0 e0       	ldi	r31, 0x00	; 0
 158:	80 81       	ld	r24, Z
 15a:	86 60       	ori	r24, 0x06	; 6
 15c:	80 83       	st	Z, r24
 15e:	e1 ec       	ldi	r30, 0xC1	; 193
 160:	f0 e0       	ldi	r31, 0x00	; 0
 162:	80 81       	ld	r24, Z
 164:	88 61       	ori	r24, 0x18	; 24
 166:	80 83       	st	Z, r24
 168:	08 95       	ret

0000016a <_ZN5USARTD1Ev>:
 16a:	08 95       	ret

0000016c <_ZN5USART8put_charEc>:
 16c:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 170:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 174:	85 fd       	sbrc	r24, 5
 176:	02 c0       	rjmp	.+4      	; 0x17c <_ZN5USART8put_charEc+0x10>
 178:	00 00       	nop
 17a:	fa cf       	rjmp	.-12     	; 0x170 <_ZN5USART8put_charEc+0x4>
 17c:	08 95       	ret

0000017e <_ZN5ArrayIiLj128EED1Ev>:
 17e:	08 95       	ret

00000180 <_ZN5ArrayIiLj128EE4sizeEv>:
 180:	80 e8       	ldi	r24, 0x80	; 128
 182:	90 e0       	ldi	r25, 0x00	; 0
 184:	08 95       	ret

00000186 <_ZN5ArrayIiLj128EEixEj>:
 186:	6e 5f       	subi	r22, 0xFE	; 254
 188:	7f 4f       	sbci	r23, 0xFF	; 255
 18a:	66 0f       	add	r22, r22
 18c:	77 1f       	adc	r23, r23
 18e:	86 0f       	add	r24, r22
 190:	97 1f       	adc	r25, r23
 192:	08 95       	ret

00000194 <_ZN5ArrayIiLj128EED0Ev>:
 194:	0c 94 ae 01 	jmp	0x35c	; 0x35c <_ZdlPv>

00000198 <_ZN10LineCameraC1Ev>:
 198:	2b e1       	ldi	r18, 0x1B	; 27
 19a:	31 e0       	ldi	r19, 0x01	; 1
 19c:	fc 01       	movw	r30, r24
 19e:	31 83       	std	Z+1, r19	; 0x01
 1a0:	20 83       	st	Z, r18
 1a2:	38 98       	cbi	0x07, 0	; 7
 1a4:	39 9a       	sbi	0x07, 1	; 7
 1a6:	3a 9a       	sbi	0x07, 2	; 7
 1a8:	42 98       	cbi	0x08, 2	; 8
 1aa:	41 98       	cbi	0x08, 1	; 8
 1ac:	08 95       	ret

000001ae <_ZN10LineCameraD1Ev>:
 1ae:	08 95       	ret

000001b0 <_ZN10LineCamera7processEv>:
 1b0:	cf 92       	push	r12
 1b2:	df 92       	push	r13
 1b4:	ef 92       	push	r14
 1b6:	ff 92       	push	r15
 1b8:	0f 93       	push	r16
 1ba:	1f 93       	push	r17
 1bc:	cf 93       	push	r28
 1be:	df 93       	push	r29
 1c0:	ec 01       	movw	r28, r24
 1c2:	24 96       	adiw	r28, 0x04	; 4
 1c4:	8c 01       	movw	r16, r24
 1c6:	0c 5f       	subi	r16, 0xFC	; 252
 1c8:	1e 4f       	sbci	r17, 0xFE	; 254
 1ca:	fe 01       	movw	r30, r28
 1cc:	60 e0       	ldi	r22, 0x00	; 0
 1ce:	70 e0       	ldi	r23, 0x00	; 0
 1d0:	cb 01       	movw	r24, r22
 1d2:	c1 90       	ld	r12, Z+
 1d4:	d1 90       	ld	r13, Z+
 1d6:	0d 2c       	mov	r0, r13
 1d8:	00 0c       	add	r0, r0
 1da:	ee 08       	sbc	r14, r14
 1dc:	ff 08       	sbc	r15, r15
 1de:	6c 0d       	add	r22, r12
 1e0:	7d 1d       	adc	r23, r13
 1e2:	8e 1d       	adc	r24, r14
 1e4:	9f 1d       	adc	r25, r15
 1e6:	0e 17       	cp	r16, r30
 1e8:	1f 07       	cpc	r17, r31
 1ea:	99 f7       	brne	.-26     	; 0x1d2 <_ZN10LineCamera7processEv+0x22>
 1ec:	20 e8       	ldi	r18, 0x80	; 128
 1ee:	30 e0       	ldi	r19, 0x00	; 0
 1f0:	40 e0       	ldi	r20, 0x00	; 0
 1f2:	50 e0       	ldi	r21, 0x00	; 0
 1f4:	0e 94 ee 01 	call	0x3dc	; 0x3dc <__divmodsi4>
 1f8:	88 81       	ld	r24, Y
 1fa:	99 81       	ldd	r25, Y+1	; 0x01
 1fc:	82 1b       	sub	r24, r18
 1fe:	93 0b       	sbc	r25, r19
 200:	89 93       	st	Y+, r24
 202:	99 93       	st	Y+, r25
 204:	0c 17       	cp	r16, r28
 206:	1d 07       	cpc	r17, r29
 208:	b9 f7       	brne	.-18     	; 0x1f8 <_ZN10LineCamera7processEv+0x48>
 20a:	df 91       	pop	r29
 20c:	cf 91       	pop	r28
 20e:	1f 91       	pop	r17
 210:	0f 91       	pop	r16
 212:	ff 90       	pop	r15
 214:	ef 90       	pop	r14
 216:	df 90       	pop	r13
 218:	cf 90       	pop	r12
 21a:	08 95       	ret

0000021c <_ZN10LineCamera8adc_initEh>:
 21c:	ec e7       	ldi	r30, 0x7C	; 124
 21e:	f0 e0       	ldi	r31, 0x00	; 0
 220:	80 e4       	ldi	r24, 0x40	; 64
 222:	80 83       	st	Z, r24
 224:	83 e8       	ldi	r24, 0x83	; 131
 226:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 22a:	80 81       	ld	r24, Z
 22c:	67 70       	andi	r22, 0x07	; 7
 22e:	68 2b       	or	r22, r24
 230:	60 83       	st	Z, r22
 232:	08 95       	ret

00000234 <_ZN10LineCamera8adc_readEv>:
 234:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 238:	80 64       	ori	r24, 0x40	; 64
 23a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 23e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 242:	86 ff       	sbrs	r24, 6
 244:	02 c0       	rjmp	.+4      	; 0x24a <_ZN10LineCamera8adc_readEv+0x16>
 246:	00 00       	nop
 248:	fa cf       	rjmp	.-12     	; 0x23e <_ZN10LineCamera8adc_readEv+0xa>
 24a:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 24e:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 252:	08 95       	ret

00000254 <_ZN10LineCamera11delay_microEv>:
	...
 274:	08 95       	ret

00000276 <_ZN10LineCamera4readEv>:
 276:	ef 92       	push	r14
 278:	ff 92       	push	r15
 27a:	0f 93       	push	r16
 27c:	1f 93       	push	r17
 27e:	cf 93       	push	r28
 280:	df 93       	push	r29
 282:	ec 01       	movw	r28, r24
 284:	60 e0       	ldi	r22, 0x00	; 0
 286:	0e 94 0e 01 	call	0x21c	; 0x21c <_ZN10LineCamera8adc_initEh>
 28a:	ce 01       	movw	r24, r28
 28c:	0e 94 2a 01 	call	0x254	; 0x254 <_ZN10LineCamera11delay_microEv>
 290:	41 98       	cbi	0x08, 1	; 8
 292:	42 9a       	sbi	0x08, 2	; 8
 294:	41 9a       	sbi	0x08, 1	; 8
 296:	42 98       	cbi	0x08, 2	; 8
 298:	ce 01       	movw	r24, r28
 29a:	0e 94 2a 01 	call	0x254	; 0x254 <_ZN10LineCamera11delay_microEv>
 29e:	8e 01       	movw	r16, r28
 2a0:	0c 5f       	subi	r16, 0xFC	; 252
 2a2:	1f 4f       	sbci	r17, 0xFF	; 255
 2a4:	7e 01       	movw	r14, r28
 2a6:	8c ef       	ldi	r24, 0xFC	; 252
 2a8:	e8 1a       	sub	r14, r24
 2aa:	8e ef       	ldi	r24, 0xFE	; 254
 2ac:	f8 0a       	sbc	r15, r24
 2ae:	ce 01       	movw	r24, r28
 2b0:	0e 94 1a 01 	call	0x234	; 0x234 <_ZN10LineCamera8adc_readEv>
 2b4:	95 95       	asr	r25
 2b6:	87 95       	ror	r24
 2b8:	95 95       	asr	r25
 2ba:	87 95       	ror	r24
 2bc:	f8 01       	movw	r30, r16
 2be:	81 93       	st	Z+, r24
 2c0:	91 93       	st	Z+, r25
 2c2:	8f 01       	movw	r16, r30
 2c4:	41 98       	cbi	0x08, 1	; 8
 2c6:	ce 01       	movw	r24, r28
 2c8:	0e 94 2a 01 	call	0x254	; 0x254 <_ZN10LineCamera11delay_microEv>
 2cc:	41 9a       	sbi	0x08, 1	; 8
 2ce:	0e 15       	cp	r16, r14
 2d0:	1f 05       	cpc	r17, r15
 2d2:	69 f7       	brne	.-38     	; 0x2ae <_ZN10LineCamera4readEv+0x38>
 2d4:	41 98       	cbi	0x08, 1	; 8
 2d6:	ce 01       	movw	r24, r28
 2d8:	0e 94 2a 01 	call	0x254	; 0x254 <_ZN10LineCamera11delay_microEv>
 2dc:	41 9a       	sbi	0x08, 1	; 8
 2de:	ce 01       	movw	r24, r28
 2e0:	df 91       	pop	r29
 2e2:	cf 91       	pop	r28
 2e4:	1f 91       	pop	r17
 2e6:	0f 91       	pop	r16
 2e8:	ff 90       	pop	r15
 2ea:	ef 90       	pop	r14
 2ec:	0c 94 2a 01 	jmp	0x254	; 0x254 <_ZN10LineCamera11delay_microEv>

000002f0 <_ZN11SampleTimerC1Ej>:
 2f0:	10 92 2b 02 	sts	0x022B, r1	; 0x80022b <g_sample_timer_flag>
 2f4:	84 b5       	in	r24, 0x24	; 36
 2f6:	82 60       	ori	r24, 0x02	; 2
 2f8:	84 bd       	out	0x24, r24	; 36
 2fa:	9b 01       	movw	r18, r22
 2fc:	86 e0       	ldi	r24, 0x06	; 6
 2fe:	22 0f       	add	r18, r18
 300:	33 1f       	adc	r19, r19
 302:	8a 95       	dec	r24
 304:	e1 f7       	brne	.-8      	; 0x2fe <_ZN11SampleTimerC1Ej+0xe>
 306:	40 e0       	ldi	r20, 0x00	; 0
 308:	50 e0       	ldi	r21, 0x00	; 0
 30a:	60 e0       	ldi	r22, 0x00	; 0
 30c:	74 e2       	ldi	r23, 0x24	; 36
 30e:	84 ef       	ldi	r24, 0xF4	; 244
 310:	90 e0       	ldi	r25, 0x00	; 0
 312:	0e 94 cc 01 	call	0x398	; 0x398 <__udivmodsi4>
 316:	21 50       	subi	r18, 0x01	; 1
 318:	27 bd       	out	0x27, r18	; 39
 31a:	83 e0       	ldi	r24, 0x03	; 3
 31c:	85 bd       	out	0x25, r24	; 37
 31e:	ee e6       	ldi	r30, 0x6E	; 110
 320:	f0 e0       	ldi	r31, 0x00	; 0
 322:	80 81       	ld	r24, Z
 324:	82 60       	ori	r24, 0x02	; 2
 326:	80 83       	st	Z, r24
 328:	78 94       	sei
 32a:	08 95       	ret

0000032c <_ZN11SampleTimer4waitEv>:
 32c:	80 91 2b 02 	lds	r24, 0x022B	; 0x80022b <g_sample_timer_flag>
 330:	88 23       	and	r24, r24
 332:	19 f0       	breq	.+6      	; 0x33a <_ZN11SampleTimer4waitEv+0xe>
 334:	10 92 2b 02 	sts	0x022B, r1	; 0x80022b <g_sample_timer_flag>
 338:	08 95       	ret
 33a:	00 00       	nop
 33c:	f7 cf       	rjmp	.-18     	; 0x32c <_ZN11SampleTimer4waitEv>

0000033e <__vector_14>:
 33e:	1f 92       	push	r1
 340:	0f 92       	push	r0
 342:	0f b6       	in	r0, 0x3f	; 63
 344:	0f 92       	push	r0
 346:	11 24       	eor	r1, r1
 348:	8f 93       	push	r24
 34a:	81 e0       	ldi	r24, 0x01	; 1
 34c:	80 93 2b 02 	sts	0x022B, r24	; 0x80022b <g_sample_timer_flag>
 350:	8f 91       	pop	r24
 352:	0f 90       	pop	r0
 354:	0f be       	out	0x3f, r0	; 63
 356:	0f 90       	pop	r0
 358:	1f 90       	pop	r1
 35a:	18 95       	reti

0000035c <_ZdlPv>:
 35c:	0c 94 ab 02 	jmp	0x556	; 0x556 <free>

00000360 <_ZN8Terminal4putsEPc>:
 360:	0f 93       	push	r16
 362:	1f 93       	push	r17
 364:	cf 93       	push	r28
 366:	df 93       	push	r29
 368:	8c 01       	movw	r16, r24
 36a:	eb 01       	movw	r28, r22
 36c:	69 91       	ld	r22, Y+
 36e:	66 23       	and	r22, r22
 370:	21 f0       	breq	.+8      	; 0x37a <_ZN8Terminal4putsEPc+0x1a>
 372:	c8 01       	movw	r24, r16
 374:	0e 94 b6 00 	call	0x16c	; 0x16c <_ZN5USART8put_charEc>
 378:	f9 cf       	rjmp	.-14     	; 0x36c <_ZN8Terminal4putsEPc+0xc>
 37a:	df 91       	pop	r29
 37c:	cf 91       	pop	r28
 37e:	1f 91       	pop	r17
 380:	0f 91       	pop	r16
 382:	08 95       	ret

00000384 <_ZN8Terminal4putsEPKc>:
 384:	0c 94 b0 01 	jmp	0x360	; 0x360 <_ZN8Terminal4putsEPc>

00000388 <_GLOBAL__sub_I_terminal>:
 388:	8c e2       	ldi	r24, 0x2C	; 44
 38a:	92 e0       	ldi	r25, 0x02	; 2
 38c:	0c 94 a5 00 	jmp	0x14a	; 0x14a <_ZN5USARTC1Ev>

00000390 <_GLOBAL__sub_D_terminal>:
 390:	8c e2       	ldi	r24, 0x2C	; 44
 392:	92 e0       	ldi	r25, 0x02	; 2
 394:	0c 94 b5 00 	jmp	0x16a	; 0x16a <_ZN5USARTD1Ev>

00000398 <__udivmodsi4>:
 398:	a1 e2       	ldi	r26, 0x21	; 33
 39a:	1a 2e       	mov	r1, r26
 39c:	aa 1b       	sub	r26, r26
 39e:	bb 1b       	sub	r27, r27
 3a0:	fd 01       	movw	r30, r26
 3a2:	0d c0       	rjmp	.+26     	; 0x3be <__udivmodsi4_ep>

000003a4 <__udivmodsi4_loop>:
 3a4:	aa 1f       	adc	r26, r26
 3a6:	bb 1f       	adc	r27, r27
 3a8:	ee 1f       	adc	r30, r30
 3aa:	ff 1f       	adc	r31, r31
 3ac:	a2 17       	cp	r26, r18
 3ae:	b3 07       	cpc	r27, r19
 3b0:	e4 07       	cpc	r30, r20
 3b2:	f5 07       	cpc	r31, r21
 3b4:	20 f0       	brcs	.+8      	; 0x3be <__udivmodsi4_ep>
 3b6:	a2 1b       	sub	r26, r18
 3b8:	b3 0b       	sbc	r27, r19
 3ba:	e4 0b       	sbc	r30, r20
 3bc:	f5 0b       	sbc	r31, r21

000003be <__udivmodsi4_ep>:
 3be:	66 1f       	adc	r22, r22
 3c0:	77 1f       	adc	r23, r23
 3c2:	88 1f       	adc	r24, r24
 3c4:	99 1f       	adc	r25, r25
 3c6:	1a 94       	dec	r1
 3c8:	69 f7       	brne	.-38     	; 0x3a4 <__udivmodsi4_loop>
 3ca:	60 95       	com	r22
 3cc:	70 95       	com	r23
 3ce:	80 95       	com	r24
 3d0:	90 95       	com	r25
 3d2:	9b 01       	movw	r18, r22
 3d4:	ac 01       	movw	r20, r24
 3d6:	bd 01       	movw	r22, r26
 3d8:	cf 01       	movw	r24, r30
 3da:	08 95       	ret

000003dc <__divmodsi4>:
 3dc:	05 2e       	mov	r0, r21
 3de:	97 fb       	bst	r25, 7
 3e0:	1e f4       	brtc	.+6      	; 0x3e8 <__divmodsi4+0xc>
 3e2:	00 94       	com	r0
 3e4:	0e 94 05 02 	call	0x40a	; 0x40a <__negsi2>
 3e8:	57 fd       	sbrc	r21, 7
 3ea:	07 d0       	rcall	.+14     	; 0x3fa <__divmodsi4_neg2>
 3ec:	0e 94 cc 01 	call	0x398	; 0x398 <__udivmodsi4>
 3f0:	07 fc       	sbrc	r0, 7
 3f2:	03 d0       	rcall	.+6      	; 0x3fa <__divmodsi4_neg2>
 3f4:	4e f4       	brtc	.+18     	; 0x408 <__divmodsi4_exit>
 3f6:	0c 94 05 02 	jmp	0x40a	; 0x40a <__negsi2>

000003fa <__divmodsi4_neg2>:
 3fa:	50 95       	com	r21
 3fc:	40 95       	com	r20
 3fe:	30 95       	com	r19
 400:	21 95       	neg	r18
 402:	3f 4f       	sbci	r19, 0xFF	; 255
 404:	4f 4f       	sbci	r20, 0xFF	; 255
 406:	5f 4f       	sbci	r21, 0xFF	; 255

00000408 <__divmodsi4_exit>:
 408:	08 95       	ret

0000040a <__negsi2>:
 40a:	90 95       	com	r25
 40c:	80 95       	com	r24
 40e:	70 95       	com	r23
 410:	61 95       	neg	r22
 412:	7f 4f       	sbci	r23, 0xFF	; 255
 414:	8f 4f       	sbci	r24, 0xFF	; 255
 416:	9f 4f       	sbci	r25, 0xFF	; 255
 418:	08 95       	ret

0000041a <__tablejump2__>:
 41a:	ee 0f       	add	r30, r30
 41c:	ff 1f       	adc	r31, r31
 41e:	05 90       	lpm	r0, Z+
 420:	f4 91       	lpm	r31, Z
 422:	e0 2d       	mov	r30, r0
 424:	09 94       	ijmp

00000426 <malloc>:
 426:	0f 93       	push	r16
 428:	1f 93       	push	r17
 42a:	cf 93       	push	r28
 42c:	df 93       	push	r29
 42e:	82 30       	cpi	r24, 0x02	; 2
 430:	91 05       	cpc	r25, r1
 432:	10 f4       	brcc	.+4      	; 0x438 <malloc+0x12>
 434:	82 e0       	ldi	r24, 0x02	; 2
 436:	90 e0       	ldi	r25, 0x00	; 0
 438:	e0 91 2f 02 	lds	r30, 0x022F	; 0x80022f <__flp>
 43c:	f0 91 30 02 	lds	r31, 0x0230	; 0x800230 <__flp+0x1>
 440:	20 e0       	ldi	r18, 0x00	; 0
 442:	30 e0       	ldi	r19, 0x00	; 0
 444:	a0 e0       	ldi	r26, 0x00	; 0
 446:	b0 e0       	ldi	r27, 0x00	; 0
 448:	30 97       	sbiw	r30, 0x00	; 0
 44a:	19 f1       	breq	.+70     	; 0x492 <malloc+0x6c>
 44c:	40 81       	ld	r20, Z
 44e:	51 81       	ldd	r21, Z+1	; 0x01
 450:	02 81       	ldd	r16, Z+2	; 0x02
 452:	13 81       	ldd	r17, Z+3	; 0x03
 454:	48 17       	cp	r20, r24
 456:	59 07       	cpc	r21, r25
 458:	c8 f0       	brcs	.+50     	; 0x48c <malloc+0x66>
 45a:	84 17       	cp	r24, r20
 45c:	95 07       	cpc	r25, r21
 45e:	69 f4       	brne	.+26     	; 0x47a <malloc+0x54>
 460:	10 97       	sbiw	r26, 0x00	; 0
 462:	31 f0       	breq	.+12     	; 0x470 <malloc+0x4a>
 464:	12 96       	adiw	r26, 0x02	; 2
 466:	0c 93       	st	X, r16
 468:	12 97       	sbiw	r26, 0x02	; 2
 46a:	13 96       	adiw	r26, 0x03	; 3
 46c:	1c 93       	st	X, r17
 46e:	27 c0       	rjmp	.+78     	; 0x4be <malloc+0x98>
 470:	00 93 2f 02 	sts	0x022F, r16	; 0x80022f <__flp>
 474:	10 93 30 02 	sts	0x0230, r17	; 0x800230 <__flp+0x1>
 478:	22 c0       	rjmp	.+68     	; 0x4be <malloc+0x98>
 47a:	21 15       	cp	r18, r1
 47c:	31 05       	cpc	r19, r1
 47e:	19 f0       	breq	.+6      	; 0x486 <malloc+0x60>
 480:	42 17       	cp	r20, r18
 482:	53 07       	cpc	r21, r19
 484:	18 f4       	brcc	.+6      	; 0x48c <malloc+0x66>
 486:	9a 01       	movw	r18, r20
 488:	bd 01       	movw	r22, r26
 48a:	ef 01       	movw	r28, r30
 48c:	df 01       	movw	r26, r30
 48e:	f8 01       	movw	r30, r16
 490:	db cf       	rjmp	.-74     	; 0x448 <malloc+0x22>
 492:	21 15       	cp	r18, r1
 494:	31 05       	cpc	r19, r1
 496:	f9 f0       	breq	.+62     	; 0x4d6 <malloc+0xb0>
 498:	28 1b       	sub	r18, r24
 49a:	39 0b       	sbc	r19, r25
 49c:	24 30       	cpi	r18, 0x04	; 4
 49e:	31 05       	cpc	r19, r1
 4a0:	80 f4       	brcc	.+32     	; 0x4c2 <malloc+0x9c>
 4a2:	8a 81       	ldd	r24, Y+2	; 0x02
 4a4:	9b 81       	ldd	r25, Y+3	; 0x03
 4a6:	61 15       	cp	r22, r1
 4a8:	71 05       	cpc	r23, r1
 4aa:	21 f0       	breq	.+8      	; 0x4b4 <malloc+0x8e>
 4ac:	fb 01       	movw	r30, r22
 4ae:	93 83       	std	Z+3, r25	; 0x03
 4b0:	82 83       	std	Z+2, r24	; 0x02
 4b2:	04 c0       	rjmp	.+8      	; 0x4bc <malloc+0x96>
 4b4:	90 93 30 02 	sts	0x0230, r25	; 0x800230 <__flp+0x1>
 4b8:	80 93 2f 02 	sts	0x022F, r24	; 0x80022f <__flp>
 4bc:	fe 01       	movw	r30, r28
 4be:	32 96       	adiw	r30, 0x02	; 2
 4c0:	44 c0       	rjmp	.+136    	; 0x54a <malloc+0x124>
 4c2:	fe 01       	movw	r30, r28
 4c4:	e2 0f       	add	r30, r18
 4c6:	f3 1f       	adc	r31, r19
 4c8:	81 93       	st	Z+, r24
 4ca:	91 93       	st	Z+, r25
 4cc:	22 50       	subi	r18, 0x02	; 2
 4ce:	31 09       	sbc	r19, r1
 4d0:	39 83       	std	Y+1, r19	; 0x01
 4d2:	28 83       	st	Y, r18
 4d4:	3a c0       	rjmp	.+116    	; 0x54a <malloc+0x124>
 4d6:	20 91 2d 02 	lds	r18, 0x022D	; 0x80022d <__brkval>
 4da:	30 91 2e 02 	lds	r19, 0x022E	; 0x80022e <__brkval+0x1>
 4de:	23 2b       	or	r18, r19
 4e0:	41 f4       	brne	.+16     	; 0x4f2 <malloc+0xcc>
 4e2:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 4e6:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 4ea:	30 93 2e 02 	sts	0x022E, r19	; 0x80022e <__brkval+0x1>
 4ee:	20 93 2d 02 	sts	0x022D, r18	; 0x80022d <__brkval>
 4f2:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 4f6:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 4fa:	21 15       	cp	r18, r1
 4fc:	31 05       	cpc	r19, r1
 4fe:	41 f4       	brne	.+16     	; 0x510 <malloc+0xea>
 500:	2d b7       	in	r18, 0x3d	; 61
 502:	3e b7       	in	r19, 0x3e	; 62
 504:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 508:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 50c:	24 1b       	sub	r18, r20
 50e:	35 0b       	sbc	r19, r21
 510:	e0 91 2d 02 	lds	r30, 0x022D	; 0x80022d <__brkval>
 514:	f0 91 2e 02 	lds	r31, 0x022E	; 0x80022e <__brkval+0x1>
 518:	e2 17       	cp	r30, r18
 51a:	f3 07       	cpc	r31, r19
 51c:	a0 f4       	brcc	.+40     	; 0x546 <malloc+0x120>
 51e:	2e 1b       	sub	r18, r30
 520:	3f 0b       	sbc	r19, r31
 522:	28 17       	cp	r18, r24
 524:	39 07       	cpc	r19, r25
 526:	78 f0       	brcs	.+30     	; 0x546 <malloc+0x120>
 528:	ac 01       	movw	r20, r24
 52a:	4e 5f       	subi	r20, 0xFE	; 254
 52c:	5f 4f       	sbci	r21, 0xFF	; 255
 52e:	24 17       	cp	r18, r20
 530:	35 07       	cpc	r19, r21
 532:	48 f0       	brcs	.+18     	; 0x546 <malloc+0x120>
 534:	4e 0f       	add	r20, r30
 536:	5f 1f       	adc	r21, r31
 538:	50 93 2e 02 	sts	0x022E, r21	; 0x80022e <__brkval+0x1>
 53c:	40 93 2d 02 	sts	0x022D, r20	; 0x80022d <__brkval>
 540:	81 93       	st	Z+, r24
 542:	91 93       	st	Z+, r25
 544:	02 c0       	rjmp	.+4      	; 0x54a <malloc+0x124>
 546:	e0 e0       	ldi	r30, 0x00	; 0
 548:	f0 e0       	ldi	r31, 0x00	; 0
 54a:	cf 01       	movw	r24, r30
 54c:	df 91       	pop	r29
 54e:	cf 91       	pop	r28
 550:	1f 91       	pop	r17
 552:	0f 91       	pop	r16
 554:	08 95       	ret

00000556 <free>:
 556:	cf 93       	push	r28
 558:	df 93       	push	r29
 55a:	00 97       	sbiw	r24, 0x00	; 0
 55c:	09 f4       	brne	.+2      	; 0x560 <free+0xa>
 55e:	81 c0       	rjmp	.+258    	; 0x662 <free+0x10c>
 560:	fc 01       	movw	r30, r24
 562:	32 97       	sbiw	r30, 0x02	; 2
 564:	13 82       	std	Z+3, r1	; 0x03
 566:	12 82       	std	Z+2, r1	; 0x02
 568:	a0 91 2f 02 	lds	r26, 0x022F	; 0x80022f <__flp>
 56c:	b0 91 30 02 	lds	r27, 0x0230	; 0x800230 <__flp+0x1>
 570:	10 97       	sbiw	r26, 0x00	; 0
 572:	81 f4       	brne	.+32     	; 0x594 <free+0x3e>
 574:	20 81       	ld	r18, Z
 576:	31 81       	ldd	r19, Z+1	; 0x01
 578:	82 0f       	add	r24, r18
 57a:	93 1f       	adc	r25, r19
 57c:	20 91 2d 02 	lds	r18, 0x022D	; 0x80022d <__brkval>
 580:	30 91 2e 02 	lds	r19, 0x022E	; 0x80022e <__brkval+0x1>
 584:	28 17       	cp	r18, r24
 586:	39 07       	cpc	r19, r25
 588:	51 f5       	brne	.+84     	; 0x5de <free+0x88>
 58a:	f0 93 2e 02 	sts	0x022E, r31	; 0x80022e <__brkval+0x1>
 58e:	e0 93 2d 02 	sts	0x022D, r30	; 0x80022d <__brkval>
 592:	67 c0       	rjmp	.+206    	; 0x662 <free+0x10c>
 594:	ed 01       	movw	r28, r26
 596:	20 e0       	ldi	r18, 0x00	; 0
 598:	30 e0       	ldi	r19, 0x00	; 0
 59a:	ce 17       	cp	r28, r30
 59c:	df 07       	cpc	r29, r31
 59e:	40 f4       	brcc	.+16     	; 0x5b0 <free+0x5a>
 5a0:	4a 81       	ldd	r20, Y+2	; 0x02
 5a2:	5b 81       	ldd	r21, Y+3	; 0x03
 5a4:	9e 01       	movw	r18, r28
 5a6:	41 15       	cp	r20, r1
 5a8:	51 05       	cpc	r21, r1
 5aa:	f1 f0       	breq	.+60     	; 0x5e8 <free+0x92>
 5ac:	ea 01       	movw	r28, r20
 5ae:	f5 cf       	rjmp	.-22     	; 0x59a <free+0x44>
 5b0:	d3 83       	std	Z+3, r29	; 0x03
 5b2:	c2 83       	std	Z+2, r28	; 0x02
 5b4:	40 81       	ld	r20, Z
 5b6:	51 81       	ldd	r21, Z+1	; 0x01
 5b8:	84 0f       	add	r24, r20
 5ba:	95 1f       	adc	r25, r21
 5bc:	c8 17       	cp	r28, r24
 5be:	d9 07       	cpc	r29, r25
 5c0:	59 f4       	brne	.+22     	; 0x5d8 <free+0x82>
 5c2:	88 81       	ld	r24, Y
 5c4:	99 81       	ldd	r25, Y+1	; 0x01
 5c6:	84 0f       	add	r24, r20
 5c8:	95 1f       	adc	r25, r21
 5ca:	02 96       	adiw	r24, 0x02	; 2
 5cc:	91 83       	std	Z+1, r25	; 0x01
 5ce:	80 83       	st	Z, r24
 5d0:	8a 81       	ldd	r24, Y+2	; 0x02
 5d2:	9b 81       	ldd	r25, Y+3	; 0x03
 5d4:	93 83       	std	Z+3, r25	; 0x03
 5d6:	82 83       	std	Z+2, r24	; 0x02
 5d8:	21 15       	cp	r18, r1
 5da:	31 05       	cpc	r19, r1
 5dc:	29 f4       	brne	.+10     	; 0x5e8 <free+0x92>
 5de:	f0 93 30 02 	sts	0x0230, r31	; 0x800230 <__flp+0x1>
 5e2:	e0 93 2f 02 	sts	0x022F, r30	; 0x80022f <__flp>
 5e6:	3d c0       	rjmp	.+122    	; 0x662 <free+0x10c>
 5e8:	e9 01       	movw	r28, r18
 5ea:	fb 83       	std	Y+3, r31	; 0x03
 5ec:	ea 83       	std	Y+2, r30	; 0x02
 5ee:	49 91       	ld	r20, Y+
 5f0:	59 91       	ld	r21, Y+
 5f2:	c4 0f       	add	r28, r20
 5f4:	d5 1f       	adc	r29, r21
 5f6:	ec 17       	cp	r30, r28
 5f8:	fd 07       	cpc	r31, r29
 5fa:	61 f4       	brne	.+24     	; 0x614 <free+0xbe>
 5fc:	80 81       	ld	r24, Z
 5fe:	91 81       	ldd	r25, Z+1	; 0x01
 600:	84 0f       	add	r24, r20
 602:	95 1f       	adc	r25, r21
 604:	02 96       	adiw	r24, 0x02	; 2
 606:	e9 01       	movw	r28, r18
 608:	99 83       	std	Y+1, r25	; 0x01
 60a:	88 83       	st	Y, r24
 60c:	82 81       	ldd	r24, Z+2	; 0x02
 60e:	93 81       	ldd	r25, Z+3	; 0x03
 610:	9b 83       	std	Y+3, r25	; 0x03
 612:	8a 83       	std	Y+2, r24	; 0x02
 614:	e0 e0       	ldi	r30, 0x00	; 0
 616:	f0 e0       	ldi	r31, 0x00	; 0
 618:	12 96       	adiw	r26, 0x02	; 2
 61a:	8d 91       	ld	r24, X+
 61c:	9c 91       	ld	r25, X
 61e:	13 97       	sbiw	r26, 0x03	; 3
 620:	00 97       	sbiw	r24, 0x00	; 0
 622:	19 f0       	breq	.+6      	; 0x62a <free+0xd4>
 624:	fd 01       	movw	r30, r26
 626:	dc 01       	movw	r26, r24
 628:	f7 cf       	rjmp	.-18     	; 0x618 <free+0xc2>
 62a:	8d 91       	ld	r24, X+
 62c:	9c 91       	ld	r25, X
 62e:	11 97       	sbiw	r26, 0x01	; 1
 630:	9d 01       	movw	r18, r26
 632:	2e 5f       	subi	r18, 0xFE	; 254
 634:	3f 4f       	sbci	r19, 0xFF	; 255
 636:	82 0f       	add	r24, r18
 638:	93 1f       	adc	r25, r19
 63a:	20 91 2d 02 	lds	r18, 0x022D	; 0x80022d <__brkval>
 63e:	30 91 2e 02 	lds	r19, 0x022E	; 0x80022e <__brkval+0x1>
 642:	28 17       	cp	r18, r24
 644:	39 07       	cpc	r19, r25
 646:	69 f4       	brne	.+26     	; 0x662 <free+0x10c>
 648:	30 97       	sbiw	r30, 0x00	; 0
 64a:	29 f4       	brne	.+10     	; 0x656 <free+0x100>
 64c:	10 92 30 02 	sts	0x0230, r1	; 0x800230 <__flp+0x1>
 650:	10 92 2f 02 	sts	0x022F, r1	; 0x80022f <__flp>
 654:	02 c0       	rjmp	.+4      	; 0x65a <free+0x104>
 656:	13 82       	std	Z+3, r1	; 0x03
 658:	12 82       	std	Z+2, r1	; 0x02
 65a:	b0 93 2e 02 	sts	0x022E, r27	; 0x80022e <__brkval+0x1>
 65e:	a0 93 2d 02 	sts	0x022D, r26	; 0x80022d <__brkval>
 662:	df 91       	pop	r29
 664:	cf 91       	pop	r28
 666:	08 95       	ret

00000668 <__do_global_dtors>:
 668:	10 e0       	ldi	r17, 0x00	; 0
 66a:	c6 e3       	ldi	r28, 0x36	; 54
 66c:	d0 e0       	ldi	r29, 0x00	; 0
 66e:	04 c0       	rjmp	.+8      	; 0x678 <__do_global_dtors+0x10>
 670:	fe 01       	movw	r30, r28
 672:	0e 94 0d 02 	call	0x41a	; 0x41a <__tablejump2__>
 676:	21 96       	adiw	r28, 0x01	; 1
 678:	c8 33       	cpi	r28, 0x38	; 56
 67a:	d1 07       	cpc	r29, r17
 67c:	c9 f7       	brne	.-14     	; 0x670 <__do_global_dtors+0x8>
 67e:	f8 94       	cli

00000680 <__stop_program>:
 680:	ff cf       	rjmp	.-2      	; 0x680 <__stop_program>
