
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
  38:	0c 94 65 02 	jmp	0x4ca	; 0x4ca <__vector_14>
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
  68:	ba 00       	.word	0x00ba	; ????
  6a:	f7 02       	muls	r31, r23

0000006c <__ctors_end>:
  6c:	be 00       	.word	0x00be	; ????
  6e:	fb 02       	muls	r31, r27

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
  82:	e8 ee       	ldi	r30, 0xE8	; 232
  84:	f8 e0       	ldi	r31, 0x08	; 8
  86:	02 c0       	rjmp	.+4      	; 0x8c <__do_copy_data+0x10>
  88:	05 90       	lpm	r0, Z+
  8a:	0d 92       	st	X+, r0
  8c:	a6 33       	cpi	r26, 0x36	; 54
  8e:	b1 07       	cpc	r27, r17
  90:	d9 f7       	brne	.-10     	; 0x88 <__do_copy_data+0xc>

00000092 <__do_clear_bss>:
  92:	22 e0       	ldi	r18, 0x02	; 2
  94:	a6 e3       	ldi	r26, 0x36	; 54
  96:	b1 e0       	ldi	r27, 0x01	; 1
  98:	01 c0       	rjmp	.+2      	; 0x9c <.do_clear_bss_start>

0000009a <.do_clear_bss_loop>:
  9a:	1d 92       	st	X+, r1

0000009c <.do_clear_bss_start>:
  9c:	a9 36       	cpi	r26, 0x69	; 105
  9e:	b2 07       	cpc	r27, r18
  a0:	e1 f7       	brne	.-8      	; 0x9a <.do_clear_bss_loop>

000000a2 <__do_global_ctors>:
  a2:	10 e0       	ldi	r17, 0x00	; 0
  a4:	c6 e3       	ldi	r28, 0x36	; 54
  a6:	d0 e0       	ldi	r29, 0x00	; 0
  a8:	04 c0       	rjmp	.+8      	; 0xb2 <__do_global_ctors+0x10>
  aa:	21 97       	sbiw	r28, 0x01	; 1
  ac:	fe 01       	movw	r30, r28
  ae:	0e 94 40 03 	call	0x680	; 0x680 <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 67 04 	jmp	0x8ce	; 0x8ce <__do_global_dtors>

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
  d2:	84 e6       	ldi	r24, 0x64	; 100
  d4:	92 e0       	ldi	r25, 0x02	; 2
  d6:	0e 94 88 02 	call	0x510	; 0x510 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 3e 02 	call	0x47c	; 0x47c <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 5c 02 	call	0x4b8	; 0x4b8 <_ZN11SampleTimer4waitEv>
  ee:	86 e3       	ldi	r24, 0x36	; 54
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 58 01 	call	0x2b0	; 0x2b0 <_ZN10LineCamera4readEv>
  f6:	86 e3       	ldi	r24, 0x36	; 54
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 f5 00 	call	0x1ea	; 0x1ea <_ZN10LineCamera7processEv>
  fe:	86 e3       	ldi	r24, 0x36	; 54
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 08 02 	call	0x410	; 0x410 <_ZN11LinePostion21compute_line_positionEv>
 106:	06 e3       	ldi	r16, 0x36	; 54
 108:	11 e0       	ldi	r17, 0x01	; 1
 10a:	f8 01       	movw	r30, r16
 10c:	84 81       	ldd	r24, Z+4	; 0x04
 10e:	95 81       	ldd	r25, Z+5	; 0x05
 110:	18 16       	cp	r1, r24
 112:	19 06       	cpc	r1, r25
 114:	1c f4       	brge	.+6      	; 0x11c <main+0x58>
 116:	63 e1       	ldi	r22, 0x13	; 19
 118:	71 e0       	ldi	r23, 0x01	; 1
 11a:	02 c0       	rjmp	.+4      	; 0x120 <main+0x5c>
 11c:	65 e1       	ldi	r22, 0x15	; 21
 11e:	71 e0       	ldi	r23, 0x01	; 1
 120:	84 e6       	ldi	r24, 0x64	; 100
 122:	92 e0       	ldi	r25, 0x02	; 2
 124:	0e 94 88 02 	call	0x510	; 0x510 <_ZN8Terminal4putsEPKc>
 128:	0c 5f       	subi	r16, 0xFC	; 252
 12a:	1f 4f       	sbci	r17, 0xFF	; 255
 12c:	f2 e0       	ldi	r31, 0x02	; 2
 12e:	06 33       	cpi	r16, 0x36	; 54
 130:	1f 07       	cpc	r17, r31
 132:	59 f7       	brne	.-42     	; 0x10a <main+0x46>
 134:	61 e1       	ldi	r22, 0x11	; 17
 136:	71 e0       	ldi	r23, 0x01	; 1
 138:	84 e6       	ldi	r24, 0x64	; 100
 13a:	92 e0       	ldi	r25, 0x02	; 2
 13c:	0e 94 88 02 	call	0x510	; 0x510 <_ZN8Terminal4putsEPKc>
 140:	86 e3       	ldi	r24, 0x36	; 54
 142:	91 e0       	ldi	r25, 0x01	; 1
 144:	0e 94 bd 01 	call	0x37a	; 0x37a <_ZN11LinePostion3getEv>
 148:	8c 01       	movw	r16, r24
 14a:	67 e1       	ldi	r22, 0x17	; 23
 14c:	71 e0       	ldi	r23, 0x01	; 1
 14e:	84 e6       	ldi	r24, 0x64	; 100
 150:	92 e0       	ldi	r25, 0x02	; 2
 152:	0e 94 88 02 	call	0x510	; 0x510 <_ZN8Terminal4putsEPKc>
 156:	a8 01       	movw	r20, r16
 158:	11 0f       	add	r17, r17
 15a:	66 0b       	sbc	r22, r22
 15c:	77 0b       	sbc	r23, r23
 15e:	84 e6       	ldi	r24, 0x64	; 100
 160:	92 e0       	ldi	r25, 0x02	; 2
 162:	0e 94 8a 02 	call	0x514	; 0x514 <_ZN8Terminal4putiEl>
 166:	61 e1       	ldi	r22, 0x11	; 17
 168:	71 e0       	ldi	r23, 0x01	; 1
 16a:	84 e6       	ldi	r24, 0x64	; 100
 16c:	92 e0       	ldi	r25, 0x02	; 2
 16e:	0e 94 88 02 	call	0x510	; 0x510 <_ZN8Terminal4putsEPKc>
 172:	b9 cf       	rjmp	.-142    	; 0xe6 <main+0x22>

00000174 <_GLOBAL__sub_I_line_position>:
 174:	86 e3       	ldi	r24, 0x36	; 54
 176:	91 e0       	ldi	r25, 0x01	; 1
 178:	0c 94 a2 01 	jmp	0x344	; 0x344 <_ZN11LinePostionC1Ev>

0000017c <_GLOBAL__sub_D_line_position>:
 17c:	86 e3       	ldi	r24, 0x36	; 54
 17e:	91 e0       	ldi	r25, 0x01	; 1
 180:	0c 94 bb 01 	jmp	0x376	; 0x376 <_ZN11LinePostionD1Ev>

00000184 <_ZN5USARTC1Ev>:
 184:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 188:	80 e1       	ldi	r24, 0x10	; 16
 18a:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 18e:	e2 ec       	ldi	r30, 0xC2	; 194
 190:	f0 e0       	ldi	r31, 0x00	; 0
 192:	80 81       	ld	r24, Z
 194:	86 60       	ori	r24, 0x06	; 6
 196:	80 83       	st	Z, r24
 198:	e1 ec       	ldi	r30, 0xC1	; 193
 19a:	f0 e0       	ldi	r31, 0x00	; 0
 19c:	80 81       	ld	r24, Z
 19e:	88 61       	ori	r24, 0x18	; 24
 1a0:	80 83       	st	Z, r24
 1a2:	08 95       	ret

000001a4 <_ZN5USARTD1Ev>:
 1a4:	08 95       	ret

000001a6 <_ZN5USART8put_charEc>:
 1a6:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 1aa:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 1ae:	85 fd       	sbrc	r24, 5
 1b0:	02 c0       	rjmp	.+4      	; 0x1b6 <_ZN5USART8put_charEc+0x10>
 1b2:	00 00       	nop
 1b4:	fa cf       	rjmp	.-12     	; 0x1aa <_ZN5USART8put_charEc+0x4>
 1b6:	08 95       	ret

000001b8 <_ZN5ArrayIiLj128EED1Ev>:
 1b8:	08 95       	ret

000001ba <_ZN5ArrayIiLj128EE4sizeEv>:
 1ba:	80 e8       	ldi	r24, 0x80	; 128
 1bc:	90 e0       	ldi	r25, 0x00	; 0
 1be:	08 95       	ret

000001c0 <_ZN5ArrayIiLj128EEixEj>:
 1c0:	6e 5f       	subi	r22, 0xFE	; 254
 1c2:	7f 4f       	sbci	r23, 0xFF	; 255
 1c4:	66 0f       	add	r22, r22
 1c6:	77 1f       	adc	r23, r23
 1c8:	86 0f       	add	r24, r22
 1ca:	97 1f       	adc	r25, r23
 1cc:	08 95       	ret

000001ce <_ZN5ArrayIiLj128EED0Ev>:
 1ce:	0c 94 74 02 	jmp	0x4e8	; 0x4e8 <_ZdlPv>

000001d2 <_ZN10LineCameraC1Ev>:
 1d2:	22 e2       	ldi	r18, 0x22	; 34
 1d4:	31 e0       	ldi	r19, 0x01	; 1
 1d6:	fc 01       	movw	r30, r24
 1d8:	31 83       	std	Z+1, r19	; 0x01
 1da:	20 83       	st	Z, r18
 1dc:	38 98       	cbi	0x07, 0	; 7
 1de:	39 9a       	sbi	0x07, 1	; 7
 1e0:	3a 9a       	sbi	0x07, 2	; 7
 1e2:	42 98       	cbi	0x08, 2	; 8
 1e4:	41 98       	cbi	0x08, 1	; 8
 1e6:	08 95       	ret

000001e8 <_ZN10LineCameraD1Ev>:
 1e8:	08 95       	ret

000001ea <_ZN10LineCamera7processEv>:
 1ea:	cf 92       	push	r12
 1ec:	df 92       	push	r13
 1ee:	ef 92       	push	r14
 1f0:	ff 92       	push	r15
 1f2:	0f 93       	push	r16
 1f4:	1f 93       	push	r17
 1f6:	cf 93       	push	r28
 1f8:	df 93       	push	r29
 1fa:	ec 01       	movw	r28, r24
 1fc:	24 96       	adiw	r28, 0x04	; 4
 1fe:	8c 01       	movw	r16, r24
 200:	0c 5f       	subi	r16, 0xFC	; 252
 202:	1e 4f       	sbci	r17, 0xFE	; 254
 204:	fe 01       	movw	r30, r28
 206:	60 e0       	ldi	r22, 0x00	; 0
 208:	70 e0       	ldi	r23, 0x00	; 0
 20a:	cb 01       	movw	r24, r22
 20c:	c1 90       	ld	r12, Z+
 20e:	d1 90       	ld	r13, Z+
 210:	0d 2c       	mov	r0, r13
 212:	00 0c       	add	r0, r0
 214:	ee 08       	sbc	r14, r14
 216:	ff 08       	sbc	r15, r15
 218:	6c 0d       	add	r22, r12
 21a:	7d 1d       	adc	r23, r13
 21c:	8e 1d       	adc	r24, r14
 21e:	9f 1d       	adc	r25, r15
 220:	0e 17       	cp	r16, r30
 222:	1f 07       	cpc	r17, r31
 224:	99 f7       	brne	.-26     	; 0x20c <_ZN10LineCamera7processEv+0x22>
 226:	20 e8       	ldi	r18, 0x80	; 128
 228:	30 e0       	ldi	r19, 0x00	; 0
 22a:	40 e0       	ldi	r20, 0x00	; 0
 22c:	50 e0       	ldi	r21, 0x00	; 0
 22e:	0e 94 21 03 	call	0x642	; 0x642 <__divmodsi4>
 232:	88 81       	ld	r24, Y
 234:	99 81       	ldd	r25, Y+1	; 0x01
 236:	82 1b       	sub	r24, r18
 238:	93 0b       	sbc	r25, r19
 23a:	89 93       	st	Y+, r24
 23c:	99 93       	st	Y+, r25
 23e:	0c 17       	cp	r16, r28
 240:	1d 07       	cpc	r17, r29
 242:	b9 f7       	brne	.-18     	; 0x232 <_ZN10LineCamera7processEv+0x48>
 244:	df 91       	pop	r29
 246:	cf 91       	pop	r28
 248:	1f 91       	pop	r17
 24a:	0f 91       	pop	r16
 24c:	ff 90       	pop	r15
 24e:	ef 90       	pop	r14
 250:	df 90       	pop	r13
 252:	cf 90       	pop	r12
 254:	08 95       	ret

00000256 <_ZN10LineCamera8adc_initEh>:
 256:	ec e7       	ldi	r30, 0x7C	; 124
 258:	f0 e0       	ldi	r31, 0x00	; 0
 25a:	80 e4       	ldi	r24, 0x40	; 64
 25c:	80 83       	st	Z, r24
 25e:	83 e8       	ldi	r24, 0x83	; 131
 260:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 264:	80 81       	ld	r24, Z
 266:	67 70       	andi	r22, 0x07	; 7
 268:	68 2b       	or	r22, r24
 26a:	60 83       	st	Z, r22
 26c:	08 95       	ret

0000026e <_ZN10LineCamera8adc_readEv>:
 26e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 272:	80 64       	ori	r24, 0x40	; 64
 274:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 278:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 27c:	86 ff       	sbrs	r24, 6
 27e:	02 c0       	rjmp	.+4      	; 0x284 <_ZN10LineCamera8adc_readEv+0x16>
 280:	00 00       	nop
 282:	fa cf       	rjmp	.-12     	; 0x278 <_ZN10LineCamera8adc_readEv+0xa>
 284:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 288:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 28c:	08 95       	ret

0000028e <_ZN10LineCamera11delay_microEv>:
	...
 2ae:	08 95       	ret

000002b0 <_ZN10LineCamera4readEv>:
 2b0:	ef 92       	push	r14
 2b2:	ff 92       	push	r15
 2b4:	0f 93       	push	r16
 2b6:	1f 93       	push	r17
 2b8:	cf 93       	push	r28
 2ba:	df 93       	push	r29
 2bc:	ec 01       	movw	r28, r24
 2be:	60 e0       	ldi	r22, 0x00	; 0
 2c0:	0e 94 2b 01 	call	0x256	; 0x256 <_ZN10LineCamera8adc_initEh>
 2c4:	ce 01       	movw	r24, r28
 2c6:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN10LineCamera11delay_microEv>
 2ca:	41 98       	cbi	0x08, 1	; 8
 2cc:	42 9a       	sbi	0x08, 2	; 8
 2ce:	41 9a       	sbi	0x08, 1	; 8
 2d0:	42 98       	cbi	0x08, 2	; 8
 2d2:	ce 01       	movw	r24, r28
 2d4:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN10LineCamera11delay_microEv>
 2d8:	8e 01       	movw	r16, r28
 2da:	0c 5f       	subi	r16, 0xFC	; 252
 2dc:	1f 4f       	sbci	r17, 0xFF	; 255
 2de:	7e 01       	movw	r14, r28
 2e0:	8c ef       	ldi	r24, 0xFC	; 252
 2e2:	e8 1a       	sub	r14, r24
 2e4:	8e ef       	ldi	r24, 0xFE	; 254
 2e6:	f8 0a       	sbc	r15, r24
 2e8:	ce 01       	movw	r24, r28
 2ea:	0e 94 37 01 	call	0x26e	; 0x26e <_ZN10LineCamera8adc_readEv>
 2ee:	95 95       	asr	r25
 2f0:	87 95       	ror	r24
 2f2:	95 95       	asr	r25
 2f4:	87 95       	ror	r24
 2f6:	f8 01       	movw	r30, r16
 2f8:	81 93       	st	Z+, r24
 2fa:	91 93       	st	Z+, r25
 2fc:	8f 01       	movw	r16, r30
 2fe:	41 98       	cbi	0x08, 1	; 8
 300:	ce 01       	movw	r24, r28
 302:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN10LineCamera11delay_microEv>
 306:	41 9a       	sbi	0x08, 1	; 8
 308:	0e 15       	cp	r16, r14
 30a:	1f 05       	cpc	r17, r15
 30c:	69 f7       	brne	.-38     	; 0x2e8 <_ZN10LineCamera4readEv+0x38>
 30e:	41 98       	cbi	0x08, 1	; 8
 310:	ce 01       	movw	r24, r28
 312:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN10LineCamera11delay_microEv>
 316:	41 9a       	sbi	0x08, 1	; 8
 318:	ce 01       	movw	r24, r28
 31a:	df 91       	pop	r29
 31c:	cf 91       	pop	r28
 31e:	1f 91       	pop	r17
 320:	0f 91       	pop	r16
 322:	ff 90       	pop	r15
 324:	ef 90       	pop	r14
 326:	0c 94 47 01 	jmp	0x28e	; 0x28e <_ZN10LineCamera11delay_microEv>

0000032a <_ZN5ArrayIiLj16EED1Ev>:
 32a:	08 95       	ret

0000032c <_ZN5ArrayIiLj16EE4sizeEv>:
 32c:	80 e1       	ldi	r24, 0x10	; 16
 32e:	90 e0       	ldi	r25, 0x00	; 0
 330:	08 95       	ret

00000332 <_ZN5ArrayIiLj16EEixEj>:
 332:	6e 5f       	subi	r22, 0xFE	; 254
 334:	7f 4f       	sbci	r23, 0xFF	; 255
 336:	66 0f       	add	r22, r22
 338:	77 1f       	adc	r23, r23
 33a:	86 0f       	add	r24, r22
 33c:	97 1f       	adc	r25, r23
 33e:	08 95       	ret

00000340 <_ZN5ArrayIiLj16EED0Ev>:
 340:	0c 94 74 02 	jmp	0x4e8	; 0x4e8 <_ZdlPv>

00000344 <_ZN11LinePostionC1Ev>:
 344:	cf 93       	push	r28
 346:	df 93       	push	r29
 348:	ec 01       	movw	r28, r24
 34a:	0e 94 e9 00 	call	0x1d2	; 0x1d2 <_ZN10LineCameraC1Ev>
 34e:	fe 01       	movw	r30, r28
 350:	e7 5f       	subi	r30, 0xF7	; 247
 352:	fe 4f       	sbci	r31, 0xFE	; 254
 354:	8e e2       	ldi	r24, 0x2E	; 46
 356:	91 e0       	ldi	r25, 0x01	; 1
 358:	91 83       	std	Z+1, r25	; 0x01
 35a:	80 83       	st	Z, r24
 35c:	34 96       	adiw	r30, 0x04	; 4
 35e:	c3 5d       	subi	r28, 0xD3	; 211
 360:	de 4f       	sbci	r29, 0xFE	; 254
 362:	8f ef       	ldi	r24, 0xFF	; 255
 364:	9f ef       	ldi	r25, 0xFF	; 255
 366:	81 93       	st	Z+, r24
 368:	91 93       	st	Z+, r25
 36a:	ec 17       	cp	r30, r28
 36c:	fd 07       	cpc	r31, r29
 36e:	d9 f7       	brne	.-10     	; 0x366 <_ZN11LinePostionC1Ev+0x22>
 370:	df 91       	pop	r29
 372:	cf 91       	pop	r28
 374:	08 95       	ret

00000376 <_ZN11LinePostionD1Ev>:
 376:	0c 94 f4 00 	jmp	0x1e8	; 0x1e8 <_ZN10LineCameraD1Ev>

0000037a <_ZN11LinePostion3getEv>:
 37a:	89 5f       	subi	r24, 0xF9	; 249
 37c:	9e 4f       	sbci	r25, 0xFE	; 254
 37e:	fc 01       	movw	r30, r24
 380:	80 81       	ld	r24, Z
 382:	91 81       	ldd	r25, Z+1	; 0x01
 384:	08 95       	ret

00000386 <_ZN11LinePostion19process_convolutionEj>:
 386:	cf 92       	push	r12
 388:	df 92       	push	r13
 38a:	ef 92       	push	r14
 38c:	ff 92       	push	r15
 38e:	0f 93       	push	r16
 390:	1f 93       	push	r17
 392:	cf 93       	push	r28
 394:	df 93       	push	r29
 396:	db 01       	movw	r26, r22
 398:	ac 01       	movw	r20, r24
 39a:	43 5f       	subi	r20, 0xF3	; 243
 39c:	5e 4f       	sbci	r21, 0xFE	; 254
 39e:	fb 01       	movw	r30, r22
 3a0:	ee 0f       	add	r30, r30
 3a2:	ff 1f       	adc	r31, r31
 3a4:	20 e0       	ldi	r18, 0x00	; 0
 3a6:	30 e0       	ldi	r19, 0x00	; 0
 3a8:	60 e0       	ldi	r22, 0x00	; 0
 3aa:	70 e0       	ldi	r23, 0x00	; 0
 3ac:	cb 01       	movw	r24, r22
 3ae:	8f 01       	movw	r16, r30
 3b0:	09 50       	subi	r16, 0x09	; 9
 3b2:	11 40       	sbci	r17, 0x01	; 1
 3b4:	ed 01       	movw	r28, r26
 3b6:	c2 0f       	add	r28, r18
 3b8:	d3 1f       	adc	r29, r19
 3ba:	c0 38       	cpi	r28, 0x80	; 128
 3bc:	d1 05       	cpc	r29, r1
 3be:	c0 f4       	brcc	.+48     	; 0x3f0 <_ZN11LinePostion19process_convolutionEj+0x6a>
 3c0:	ea 01       	movw	r28, r20
 3c2:	c0 0f       	add	r28, r16
 3c4:	d1 1f       	adc	r29, r17
 3c6:	09 90       	ld	r0, Y+
 3c8:	d8 81       	ld	r29, Y
 3ca:	c0 2d       	mov	r28, r0
 3cc:	fa 01       	movw	r30, r20
 3ce:	e0 80       	ld	r14, Z
 3d0:	f1 80       	ldd	r15, Z+1	; 0x01
 3d2:	ce 9d       	mul	r28, r14
 3d4:	60 01       	movw	r12, r0
 3d6:	cf 9d       	mul	r28, r15
 3d8:	d0 0c       	add	r13, r0
 3da:	de 9d       	mul	r29, r14
 3dc:	d0 0c       	add	r13, r0
 3de:	11 24       	eor	r1, r1
 3e0:	0d 2c       	mov	r0, r13
 3e2:	00 0c       	add	r0, r0
 3e4:	ee 08       	sbc	r14, r14
 3e6:	ff 08       	sbc	r15, r15
 3e8:	6c 0d       	add	r22, r12
 3ea:	7d 1d       	adc	r23, r13
 3ec:	8e 1d       	adc	r24, r14
 3ee:	9f 1d       	adc	r25, r15
 3f0:	2f 5f       	subi	r18, 0xFF	; 255
 3f2:	3f 4f       	sbci	r19, 0xFF	; 255
 3f4:	4e 5f       	subi	r20, 0xFE	; 254
 3f6:	5f 4f       	sbci	r21, 0xFF	; 255
 3f8:	20 31       	cpi	r18, 0x10	; 16
 3fa:	31 05       	cpc	r19, r1
 3fc:	d9 f6       	brne	.-74     	; 0x3b4 <_ZN11LinePostion19process_convolutionEj+0x2e>
 3fe:	df 91       	pop	r29
 400:	cf 91       	pop	r28
 402:	1f 91       	pop	r17
 404:	0f 91       	pop	r16
 406:	ff 90       	pop	r15
 408:	ef 90       	pop	r14
 40a:	df 90       	pop	r13
 40c:	cf 90       	pop	r12
 40e:	08 95       	ret

00000410 <_ZN11LinePostion21compute_line_positionEv>:
 410:	af 92       	push	r10
 412:	bf 92       	push	r11
 414:	cf 92       	push	r12
 416:	df 92       	push	r13
 418:	ef 92       	push	r14
 41a:	ff 92       	push	r15
 41c:	0f 93       	push	r16
 41e:	1f 93       	push	r17
 420:	cf 93       	push	r28
 422:	df 93       	push	r29
 424:	8c 01       	movw	r16, r24
 426:	c0 e0       	ldi	r28, 0x00	; 0
 428:	d0 e0       	ldi	r29, 0x00	; 0
 42a:	c1 2c       	mov	r12, r1
 42c:	8f e1       	ldi	r24, 0x1F	; 31
 42e:	d8 2e       	mov	r13, r24
 430:	8a e0       	ldi	r24, 0x0A	; 10
 432:	e8 2e       	mov	r14, r24
 434:	8a ef       	ldi	r24, 0xFA	; 250
 436:	f8 2e       	mov	r15, r24
 438:	58 01       	movw	r10, r16
 43a:	89 ef       	ldi	r24, 0xF9	; 249
 43c:	a8 1a       	sub	r10, r24
 43e:	8e ef       	ldi	r24, 0xFE	; 254
 440:	b8 0a       	sbc	r11, r24
 442:	be 01       	movw	r22, r28
 444:	c8 01       	movw	r24, r16
 446:	0e 94 c3 01 	call	0x386	; 0x386 <_ZN11LinePostion19process_convolutionEj>
 44a:	c6 16       	cp	r12, r22
 44c:	d7 06       	cpc	r13, r23
 44e:	e8 06       	cpc	r14, r24
 450:	f9 06       	cpc	r15, r25
 452:	2c f4       	brge	.+10     	; 0x45e <_ZN11LinePostion21compute_line_positionEv+0x4e>
 454:	f5 01       	movw	r30, r10
 456:	d1 83       	std	Z+1, r29	; 0x01
 458:	c0 83       	st	Z, r28
 45a:	6b 01       	movw	r12, r22
 45c:	7c 01       	movw	r14, r24
 45e:	21 96       	adiw	r28, 0x01	; 1
 460:	c0 38       	cpi	r28, 0x80	; 128
 462:	d1 05       	cpc	r29, r1
 464:	71 f7       	brne	.-36     	; 0x442 <_ZN11LinePostion21compute_line_positionEv+0x32>
 466:	df 91       	pop	r29
 468:	cf 91       	pop	r28
 46a:	1f 91       	pop	r17
 46c:	0f 91       	pop	r16
 46e:	ff 90       	pop	r15
 470:	ef 90       	pop	r14
 472:	df 90       	pop	r13
 474:	cf 90       	pop	r12
 476:	bf 90       	pop	r11
 478:	af 90       	pop	r10
 47a:	08 95       	ret

0000047c <_ZN11SampleTimerC1Ej>:
 47c:	10 92 63 02 	sts	0x0263, r1	; 0x800263 <g_sample_timer_flag>
 480:	84 b5       	in	r24, 0x24	; 36
 482:	82 60       	ori	r24, 0x02	; 2
 484:	84 bd       	out	0x24, r24	; 36
 486:	9b 01       	movw	r18, r22
 488:	86 e0       	ldi	r24, 0x06	; 6
 48a:	22 0f       	add	r18, r18
 48c:	33 1f       	adc	r19, r19
 48e:	8a 95       	dec	r24
 490:	e1 f7       	brne	.-8      	; 0x48a <_ZN11SampleTimerC1Ej+0xe>
 492:	40 e0       	ldi	r20, 0x00	; 0
 494:	50 e0       	ldi	r21, 0x00	; 0
 496:	60 e0       	ldi	r22, 0x00	; 0
 498:	74 e2       	ldi	r23, 0x24	; 36
 49a:	84 ef       	ldi	r24, 0xF4	; 244
 49c:	90 e0       	ldi	r25, 0x00	; 0
 49e:	0e 94 ff 02 	call	0x5fe	; 0x5fe <__udivmodsi4>
 4a2:	21 50       	subi	r18, 0x01	; 1
 4a4:	27 bd       	out	0x27, r18	; 39
 4a6:	83 e0       	ldi	r24, 0x03	; 3
 4a8:	85 bd       	out	0x25, r24	; 37
 4aa:	ee e6       	ldi	r30, 0x6E	; 110
 4ac:	f0 e0       	ldi	r31, 0x00	; 0
 4ae:	80 81       	ld	r24, Z
 4b0:	82 60       	ori	r24, 0x02	; 2
 4b2:	80 83       	st	Z, r24
 4b4:	78 94       	sei
 4b6:	08 95       	ret

000004b8 <_ZN11SampleTimer4waitEv>:
 4b8:	80 91 63 02 	lds	r24, 0x0263	; 0x800263 <g_sample_timer_flag>
 4bc:	88 23       	and	r24, r24
 4be:	19 f0       	breq	.+6      	; 0x4c6 <_ZN11SampleTimer4waitEv+0xe>
 4c0:	10 92 63 02 	sts	0x0263, r1	; 0x800263 <g_sample_timer_flag>
 4c4:	08 95       	ret
 4c6:	00 00       	nop
 4c8:	f7 cf       	rjmp	.-18     	; 0x4b8 <_ZN11SampleTimer4waitEv>

000004ca <__vector_14>:
 4ca:	1f 92       	push	r1
 4cc:	0f 92       	push	r0
 4ce:	0f b6       	in	r0, 0x3f	; 63
 4d0:	0f 92       	push	r0
 4d2:	11 24       	eor	r1, r1
 4d4:	8f 93       	push	r24
 4d6:	81 e0       	ldi	r24, 0x01	; 1
 4d8:	80 93 63 02 	sts	0x0263, r24	; 0x800263 <g_sample_timer_flag>
 4dc:	8f 91       	pop	r24
 4de:	0f 90       	pop	r0
 4e0:	0f be       	out	0x3f, r0	; 63
 4e2:	0f 90       	pop	r0
 4e4:	1f 90       	pop	r1
 4e6:	18 95       	reti

000004e8 <_ZdlPv>:
 4e8:	0c 94 de 03 	jmp	0x7bc	; 0x7bc <free>

000004ec <_ZN8Terminal4putsEPc>:
 4ec:	0f 93       	push	r16
 4ee:	1f 93       	push	r17
 4f0:	cf 93       	push	r28
 4f2:	df 93       	push	r29
 4f4:	8c 01       	movw	r16, r24
 4f6:	eb 01       	movw	r28, r22
 4f8:	69 91       	ld	r22, Y+
 4fa:	66 23       	and	r22, r22
 4fc:	21 f0       	breq	.+8      	; 0x506 <_ZN8Terminal4putsEPc+0x1a>
 4fe:	c8 01       	movw	r24, r16
 500:	0e 94 d3 00 	call	0x1a6	; 0x1a6 <_ZN5USART8put_charEc>
 504:	f9 cf       	rjmp	.-14     	; 0x4f8 <_ZN8Terminal4putsEPc+0xc>
 506:	df 91       	pop	r29
 508:	cf 91       	pop	r28
 50a:	1f 91       	pop	r17
 50c:	0f 91       	pop	r16
 50e:	08 95       	ret

00000510 <_ZN8Terminal4putsEPKc>:
 510:	0c 94 76 02 	jmp	0x4ec	; 0x4ec <_ZN8Terminal4putsEPc>

00000514 <_ZN8Terminal4putiEl>:
 514:	8f 92       	push	r8
 516:	9f 92       	push	r9
 518:	af 92       	push	r10
 51a:	bf 92       	push	r11
 51c:	cf 92       	push	r12
 51e:	df 92       	push	r13
 520:	ef 92       	push	r14
 522:	ff 92       	push	r15
 524:	0f 93       	push	r16
 526:	1f 93       	push	r17
 528:	cf 93       	push	r28
 52a:	df 93       	push	r29
 52c:	cd b7       	in	r28, 0x3d	; 61
 52e:	de b7       	in	r29, 0x3e	; 62
 530:	2c 97       	sbiw	r28, 0x0c	; 12
 532:	0f b6       	in	r0, 0x3f	; 63
 534:	f8 94       	cli
 536:	de bf       	out	0x3e, r29	; 62
 538:	0f be       	out	0x3f, r0	; 63
 53a:	cd bf       	out	0x3d, r28	; 61
 53c:	7c 01       	movw	r14, r24
 53e:	77 ff       	sbrs	r23, 7
 540:	09 c0       	rjmp	.+18     	; 0x554 <_ZN8Terminal4putiEl+0x40>
 542:	70 95       	com	r23
 544:	60 95       	com	r22
 546:	50 95       	com	r21
 548:	41 95       	neg	r20
 54a:	5f 4f       	sbci	r21, 0xFF	; 255
 54c:	6f 4f       	sbci	r22, 0xFF	; 255
 54e:	7f 4f       	sbci	r23, 0xFF	; 255
 550:	01 e0       	ldi	r16, 0x01	; 1
 552:	01 c0       	rjmp	.+2      	; 0x556 <_ZN8Terminal4putiEl+0x42>
 554:	00 e0       	ldi	r16, 0x00	; 0
 556:	1c 86       	std	Y+12, r1	; 0x0c
 558:	1a e0       	ldi	r17, 0x0A	; 10
 55a:	9a e0       	ldi	r25, 0x0A	; 10
 55c:	89 2e       	mov	r8, r25
 55e:	91 2c       	mov	r9, r1
 560:	a1 2c       	mov	r10, r1
 562:	b1 2c       	mov	r11, r1
 564:	cc 24       	eor	r12, r12
 566:	c3 94       	inc	r12
 568:	d1 2c       	mov	r13, r1
 56a:	cc 0e       	add	r12, r28
 56c:	dd 1e       	adc	r13, r29
 56e:	c1 0e       	add	r12, r17
 570:	d1 1c       	adc	r13, r1
 572:	cb 01       	movw	r24, r22
 574:	ba 01       	movw	r22, r20
 576:	a5 01       	movw	r20, r10
 578:	94 01       	movw	r18, r8
 57a:	0e 94 21 03 	call	0x642	; 0x642 <__divmodsi4>
 57e:	94 2f       	mov	r25, r20
 580:	85 2f       	mov	r24, r21
 582:	60 5d       	subi	r22, 0xD0	; 208
 584:	f6 01       	movw	r30, r12
 586:	60 83       	st	Z, r22
 588:	a9 01       	movw	r20, r18
 58a:	69 2f       	mov	r22, r25
 58c:	78 2f       	mov	r23, r24
 58e:	8f ef       	ldi	r24, 0xFF	; 255
 590:	81 0f       	add	r24, r17
 592:	41 15       	cp	r20, r1
 594:	51 05       	cpc	r21, r1
 596:	61 05       	cpc	r22, r1
 598:	71 05       	cpc	r23, r1
 59a:	11 f0       	breq	.+4      	; 0x5a0 <_ZN8Terminal4putiEl+0x8c>
 59c:	18 2f       	mov	r17, r24
 59e:	e2 cf       	rjmp	.-60     	; 0x564 <_ZN8Terminal4putiEl+0x50>
 5a0:	00 23       	and	r16, r16
 5a2:	49 f0       	breq	.+18     	; 0x5b6 <_ZN8Terminal4putiEl+0xa2>
 5a4:	e1 e0       	ldi	r30, 0x01	; 1
 5a6:	f0 e0       	ldi	r31, 0x00	; 0
 5a8:	ec 0f       	add	r30, r28
 5aa:	fd 1f       	adc	r31, r29
 5ac:	e8 0f       	add	r30, r24
 5ae:	f1 1d       	adc	r31, r1
 5b0:	9d e2       	ldi	r25, 0x2D	; 45
 5b2:	90 83       	st	Z, r25
 5b4:	18 2f       	mov	r17, r24
 5b6:	61 e0       	ldi	r22, 0x01	; 1
 5b8:	70 e0       	ldi	r23, 0x00	; 0
 5ba:	6c 0f       	add	r22, r28
 5bc:	7d 1f       	adc	r23, r29
 5be:	61 0f       	add	r22, r17
 5c0:	71 1d       	adc	r23, r1
 5c2:	c7 01       	movw	r24, r14
 5c4:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN8Terminal4putsEPc>
 5c8:	2c 96       	adiw	r28, 0x0c	; 12
 5ca:	0f b6       	in	r0, 0x3f	; 63
 5cc:	f8 94       	cli
 5ce:	de bf       	out	0x3e, r29	; 62
 5d0:	0f be       	out	0x3f, r0	; 63
 5d2:	cd bf       	out	0x3d, r28	; 61
 5d4:	df 91       	pop	r29
 5d6:	cf 91       	pop	r28
 5d8:	1f 91       	pop	r17
 5da:	0f 91       	pop	r16
 5dc:	ff 90       	pop	r15
 5de:	ef 90       	pop	r14
 5e0:	df 90       	pop	r13
 5e2:	cf 90       	pop	r12
 5e4:	bf 90       	pop	r11
 5e6:	af 90       	pop	r10
 5e8:	9f 90       	pop	r9
 5ea:	8f 90       	pop	r8
 5ec:	08 95       	ret

000005ee <_GLOBAL__sub_I_terminal>:
 5ee:	84 e6       	ldi	r24, 0x64	; 100
 5f0:	92 e0       	ldi	r25, 0x02	; 2
 5f2:	0c 94 c2 00 	jmp	0x184	; 0x184 <_ZN5USARTC1Ev>

000005f6 <_GLOBAL__sub_D_terminal>:
 5f6:	84 e6       	ldi	r24, 0x64	; 100
 5f8:	92 e0       	ldi	r25, 0x02	; 2
 5fa:	0c 94 d2 00 	jmp	0x1a4	; 0x1a4 <_ZN5USARTD1Ev>

000005fe <__udivmodsi4>:
 5fe:	a1 e2       	ldi	r26, 0x21	; 33
 600:	1a 2e       	mov	r1, r26
 602:	aa 1b       	sub	r26, r26
 604:	bb 1b       	sub	r27, r27
 606:	fd 01       	movw	r30, r26
 608:	0d c0       	rjmp	.+26     	; 0x624 <__udivmodsi4_ep>

0000060a <__udivmodsi4_loop>:
 60a:	aa 1f       	adc	r26, r26
 60c:	bb 1f       	adc	r27, r27
 60e:	ee 1f       	adc	r30, r30
 610:	ff 1f       	adc	r31, r31
 612:	a2 17       	cp	r26, r18
 614:	b3 07       	cpc	r27, r19
 616:	e4 07       	cpc	r30, r20
 618:	f5 07       	cpc	r31, r21
 61a:	20 f0       	brcs	.+8      	; 0x624 <__udivmodsi4_ep>
 61c:	a2 1b       	sub	r26, r18
 61e:	b3 0b       	sbc	r27, r19
 620:	e4 0b       	sbc	r30, r20
 622:	f5 0b       	sbc	r31, r21

00000624 <__udivmodsi4_ep>:
 624:	66 1f       	adc	r22, r22
 626:	77 1f       	adc	r23, r23
 628:	88 1f       	adc	r24, r24
 62a:	99 1f       	adc	r25, r25
 62c:	1a 94       	dec	r1
 62e:	69 f7       	brne	.-38     	; 0x60a <__udivmodsi4_loop>
 630:	60 95       	com	r22
 632:	70 95       	com	r23
 634:	80 95       	com	r24
 636:	90 95       	com	r25
 638:	9b 01       	movw	r18, r22
 63a:	ac 01       	movw	r20, r24
 63c:	bd 01       	movw	r22, r26
 63e:	cf 01       	movw	r24, r30
 640:	08 95       	ret

00000642 <__divmodsi4>:
 642:	05 2e       	mov	r0, r21
 644:	97 fb       	bst	r25, 7
 646:	1e f4       	brtc	.+6      	; 0x64e <__divmodsi4+0xc>
 648:	00 94       	com	r0
 64a:	0e 94 38 03 	call	0x670	; 0x670 <__negsi2>
 64e:	57 fd       	sbrc	r21, 7
 650:	07 d0       	rcall	.+14     	; 0x660 <__divmodsi4_neg2>
 652:	0e 94 ff 02 	call	0x5fe	; 0x5fe <__udivmodsi4>
 656:	07 fc       	sbrc	r0, 7
 658:	03 d0       	rcall	.+6      	; 0x660 <__divmodsi4_neg2>
 65a:	4e f4       	brtc	.+18     	; 0x66e <__divmodsi4_exit>
 65c:	0c 94 38 03 	jmp	0x670	; 0x670 <__negsi2>

00000660 <__divmodsi4_neg2>:
 660:	50 95       	com	r21
 662:	40 95       	com	r20
 664:	30 95       	com	r19
 666:	21 95       	neg	r18
 668:	3f 4f       	sbci	r19, 0xFF	; 255
 66a:	4f 4f       	sbci	r20, 0xFF	; 255
 66c:	5f 4f       	sbci	r21, 0xFF	; 255

0000066e <__divmodsi4_exit>:
 66e:	08 95       	ret

00000670 <__negsi2>:
 670:	90 95       	com	r25
 672:	80 95       	com	r24
 674:	70 95       	com	r23
 676:	61 95       	neg	r22
 678:	7f 4f       	sbci	r23, 0xFF	; 255
 67a:	8f 4f       	sbci	r24, 0xFF	; 255
 67c:	9f 4f       	sbci	r25, 0xFF	; 255
 67e:	08 95       	ret

00000680 <__tablejump2__>:
 680:	ee 0f       	add	r30, r30
 682:	ff 1f       	adc	r31, r31
 684:	05 90       	lpm	r0, Z+
 686:	f4 91       	lpm	r31, Z
 688:	e0 2d       	mov	r30, r0
 68a:	09 94       	ijmp

0000068c <malloc>:
 68c:	0f 93       	push	r16
 68e:	1f 93       	push	r17
 690:	cf 93       	push	r28
 692:	df 93       	push	r29
 694:	82 30       	cpi	r24, 0x02	; 2
 696:	91 05       	cpc	r25, r1
 698:	10 f4       	brcc	.+4      	; 0x69e <malloc+0x12>
 69a:	82 e0       	ldi	r24, 0x02	; 2
 69c:	90 e0       	ldi	r25, 0x00	; 0
 69e:	e0 91 67 02 	lds	r30, 0x0267	; 0x800267 <__flp>
 6a2:	f0 91 68 02 	lds	r31, 0x0268	; 0x800268 <__flp+0x1>
 6a6:	20 e0       	ldi	r18, 0x00	; 0
 6a8:	30 e0       	ldi	r19, 0x00	; 0
 6aa:	a0 e0       	ldi	r26, 0x00	; 0
 6ac:	b0 e0       	ldi	r27, 0x00	; 0
 6ae:	30 97       	sbiw	r30, 0x00	; 0
 6b0:	19 f1       	breq	.+70     	; 0x6f8 <malloc+0x6c>
 6b2:	40 81       	ld	r20, Z
 6b4:	51 81       	ldd	r21, Z+1	; 0x01
 6b6:	02 81       	ldd	r16, Z+2	; 0x02
 6b8:	13 81       	ldd	r17, Z+3	; 0x03
 6ba:	48 17       	cp	r20, r24
 6bc:	59 07       	cpc	r21, r25
 6be:	c8 f0       	brcs	.+50     	; 0x6f2 <malloc+0x66>
 6c0:	84 17       	cp	r24, r20
 6c2:	95 07       	cpc	r25, r21
 6c4:	69 f4       	brne	.+26     	; 0x6e0 <malloc+0x54>
 6c6:	10 97       	sbiw	r26, 0x00	; 0
 6c8:	31 f0       	breq	.+12     	; 0x6d6 <malloc+0x4a>
 6ca:	12 96       	adiw	r26, 0x02	; 2
 6cc:	0c 93       	st	X, r16
 6ce:	12 97       	sbiw	r26, 0x02	; 2
 6d0:	13 96       	adiw	r26, 0x03	; 3
 6d2:	1c 93       	st	X, r17
 6d4:	27 c0       	rjmp	.+78     	; 0x724 <malloc+0x98>
 6d6:	00 93 67 02 	sts	0x0267, r16	; 0x800267 <__flp>
 6da:	10 93 68 02 	sts	0x0268, r17	; 0x800268 <__flp+0x1>
 6de:	22 c0       	rjmp	.+68     	; 0x724 <malloc+0x98>
 6e0:	21 15       	cp	r18, r1
 6e2:	31 05       	cpc	r19, r1
 6e4:	19 f0       	breq	.+6      	; 0x6ec <malloc+0x60>
 6e6:	42 17       	cp	r20, r18
 6e8:	53 07       	cpc	r21, r19
 6ea:	18 f4       	brcc	.+6      	; 0x6f2 <malloc+0x66>
 6ec:	9a 01       	movw	r18, r20
 6ee:	bd 01       	movw	r22, r26
 6f0:	ef 01       	movw	r28, r30
 6f2:	df 01       	movw	r26, r30
 6f4:	f8 01       	movw	r30, r16
 6f6:	db cf       	rjmp	.-74     	; 0x6ae <malloc+0x22>
 6f8:	21 15       	cp	r18, r1
 6fa:	31 05       	cpc	r19, r1
 6fc:	f9 f0       	breq	.+62     	; 0x73c <malloc+0xb0>
 6fe:	28 1b       	sub	r18, r24
 700:	39 0b       	sbc	r19, r25
 702:	24 30       	cpi	r18, 0x04	; 4
 704:	31 05       	cpc	r19, r1
 706:	80 f4       	brcc	.+32     	; 0x728 <malloc+0x9c>
 708:	8a 81       	ldd	r24, Y+2	; 0x02
 70a:	9b 81       	ldd	r25, Y+3	; 0x03
 70c:	61 15       	cp	r22, r1
 70e:	71 05       	cpc	r23, r1
 710:	21 f0       	breq	.+8      	; 0x71a <malloc+0x8e>
 712:	fb 01       	movw	r30, r22
 714:	93 83       	std	Z+3, r25	; 0x03
 716:	82 83       	std	Z+2, r24	; 0x02
 718:	04 c0       	rjmp	.+8      	; 0x722 <malloc+0x96>
 71a:	90 93 68 02 	sts	0x0268, r25	; 0x800268 <__flp+0x1>
 71e:	80 93 67 02 	sts	0x0267, r24	; 0x800267 <__flp>
 722:	fe 01       	movw	r30, r28
 724:	32 96       	adiw	r30, 0x02	; 2
 726:	44 c0       	rjmp	.+136    	; 0x7b0 <malloc+0x124>
 728:	fe 01       	movw	r30, r28
 72a:	e2 0f       	add	r30, r18
 72c:	f3 1f       	adc	r31, r19
 72e:	81 93       	st	Z+, r24
 730:	91 93       	st	Z+, r25
 732:	22 50       	subi	r18, 0x02	; 2
 734:	31 09       	sbc	r19, r1
 736:	39 83       	std	Y+1, r19	; 0x01
 738:	28 83       	st	Y, r18
 73a:	3a c0       	rjmp	.+116    	; 0x7b0 <malloc+0x124>
 73c:	20 91 65 02 	lds	r18, 0x0265	; 0x800265 <__brkval>
 740:	30 91 66 02 	lds	r19, 0x0266	; 0x800266 <__brkval+0x1>
 744:	23 2b       	or	r18, r19
 746:	41 f4       	brne	.+16     	; 0x758 <malloc+0xcc>
 748:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 74c:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 750:	30 93 66 02 	sts	0x0266, r19	; 0x800266 <__brkval+0x1>
 754:	20 93 65 02 	sts	0x0265, r18	; 0x800265 <__brkval>
 758:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 75c:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 760:	21 15       	cp	r18, r1
 762:	31 05       	cpc	r19, r1
 764:	41 f4       	brne	.+16     	; 0x776 <malloc+0xea>
 766:	2d b7       	in	r18, 0x3d	; 61
 768:	3e b7       	in	r19, 0x3e	; 62
 76a:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 76e:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 772:	24 1b       	sub	r18, r20
 774:	35 0b       	sbc	r19, r21
 776:	e0 91 65 02 	lds	r30, 0x0265	; 0x800265 <__brkval>
 77a:	f0 91 66 02 	lds	r31, 0x0266	; 0x800266 <__brkval+0x1>
 77e:	e2 17       	cp	r30, r18
 780:	f3 07       	cpc	r31, r19
 782:	a0 f4       	brcc	.+40     	; 0x7ac <malloc+0x120>
 784:	2e 1b       	sub	r18, r30
 786:	3f 0b       	sbc	r19, r31
 788:	28 17       	cp	r18, r24
 78a:	39 07       	cpc	r19, r25
 78c:	78 f0       	brcs	.+30     	; 0x7ac <malloc+0x120>
 78e:	ac 01       	movw	r20, r24
 790:	4e 5f       	subi	r20, 0xFE	; 254
 792:	5f 4f       	sbci	r21, 0xFF	; 255
 794:	24 17       	cp	r18, r20
 796:	35 07       	cpc	r19, r21
 798:	48 f0       	brcs	.+18     	; 0x7ac <malloc+0x120>
 79a:	4e 0f       	add	r20, r30
 79c:	5f 1f       	adc	r21, r31
 79e:	50 93 66 02 	sts	0x0266, r21	; 0x800266 <__brkval+0x1>
 7a2:	40 93 65 02 	sts	0x0265, r20	; 0x800265 <__brkval>
 7a6:	81 93       	st	Z+, r24
 7a8:	91 93       	st	Z+, r25
 7aa:	02 c0       	rjmp	.+4      	; 0x7b0 <malloc+0x124>
 7ac:	e0 e0       	ldi	r30, 0x00	; 0
 7ae:	f0 e0       	ldi	r31, 0x00	; 0
 7b0:	cf 01       	movw	r24, r30
 7b2:	df 91       	pop	r29
 7b4:	cf 91       	pop	r28
 7b6:	1f 91       	pop	r17
 7b8:	0f 91       	pop	r16
 7ba:	08 95       	ret

000007bc <free>:
 7bc:	cf 93       	push	r28
 7be:	df 93       	push	r29
 7c0:	00 97       	sbiw	r24, 0x00	; 0
 7c2:	09 f4       	brne	.+2      	; 0x7c6 <free+0xa>
 7c4:	81 c0       	rjmp	.+258    	; 0x8c8 <free+0x10c>
 7c6:	fc 01       	movw	r30, r24
 7c8:	32 97       	sbiw	r30, 0x02	; 2
 7ca:	13 82       	std	Z+3, r1	; 0x03
 7cc:	12 82       	std	Z+2, r1	; 0x02
 7ce:	a0 91 67 02 	lds	r26, 0x0267	; 0x800267 <__flp>
 7d2:	b0 91 68 02 	lds	r27, 0x0268	; 0x800268 <__flp+0x1>
 7d6:	10 97       	sbiw	r26, 0x00	; 0
 7d8:	81 f4       	brne	.+32     	; 0x7fa <free+0x3e>
 7da:	20 81       	ld	r18, Z
 7dc:	31 81       	ldd	r19, Z+1	; 0x01
 7de:	82 0f       	add	r24, r18
 7e0:	93 1f       	adc	r25, r19
 7e2:	20 91 65 02 	lds	r18, 0x0265	; 0x800265 <__brkval>
 7e6:	30 91 66 02 	lds	r19, 0x0266	; 0x800266 <__brkval+0x1>
 7ea:	28 17       	cp	r18, r24
 7ec:	39 07       	cpc	r19, r25
 7ee:	51 f5       	brne	.+84     	; 0x844 <free+0x88>
 7f0:	f0 93 66 02 	sts	0x0266, r31	; 0x800266 <__brkval+0x1>
 7f4:	e0 93 65 02 	sts	0x0265, r30	; 0x800265 <__brkval>
 7f8:	67 c0       	rjmp	.+206    	; 0x8c8 <free+0x10c>
 7fa:	ed 01       	movw	r28, r26
 7fc:	20 e0       	ldi	r18, 0x00	; 0
 7fe:	30 e0       	ldi	r19, 0x00	; 0
 800:	ce 17       	cp	r28, r30
 802:	df 07       	cpc	r29, r31
 804:	40 f4       	brcc	.+16     	; 0x816 <free+0x5a>
 806:	4a 81       	ldd	r20, Y+2	; 0x02
 808:	5b 81       	ldd	r21, Y+3	; 0x03
 80a:	9e 01       	movw	r18, r28
 80c:	41 15       	cp	r20, r1
 80e:	51 05       	cpc	r21, r1
 810:	f1 f0       	breq	.+60     	; 0x84e <free+0x92>
 812:	ea 01       	movw	r28, r20
 814:	f5 cf       	rjmp	.-22     	; 0x800 <free+0x44>
 816:	d3 83       	std	Z+3, r29	; 0x03
 818:	c2 83       	std	Z+2, r28	; 0x02
 81a:	40 81       	ld	r20, Z
 81c:	51 81       	ldd	r21, Z+1	; 0x01
 81e:	84 0f       	add	r24, r20
 820:	95 1f       	adc	r25, r21
 822:	c8 17       	cp	r28, r24
 824:	d9 07       	cpc	r29, r25
 826:	59 f4       	brne	.+22     	; 0x83e <free+0x82>
 828:	88 81       	ld	r24, Y
 82a:	99 81       	ldd	r25, Y+1	; 0x01
 82c:	84 0f       	add	r24, r20
 82e:	95 1f       	adc	r25, r21
 830:	02 96       	adiw	r24, 0x02	; 2
 832:	91 83       	std	Z+1, r25	; 0x01
 834:	80 83       	st	Z, r24
 836:	8a 81       	ldd	r24, Y+2	; 0x02
 838:	9b 81       	ldd	r25, Y+3	; 0x03
 83a:	93 83       	std	Z+3, r25	; 0x03
 83c:	82 83       	std	Z+2, r24	; 0x02
 83e:	21 15       	cp	r18, r1
 840:	31 05       	cpc	r19, r1
 842:	29 f4       	brne	.+10     	; 0x84e <free+0x92>
 844:	f0 93 68 02 	sts	0x0268, r31	; 0x800268 <__flp+0x1>
 848:	e0 93 67 02 	sts	0x0267, r30	; 0x800267 <__flp>
 84c:	3d c0       	rjmp	.+122    	; 0x8c8 <free+0x10c>
 84e:	e9 01       	movw	r28, r18
 850:	fb 83       	std	Y+3, r31	; 0x03
 852:	ea 83       	std	Y+2, r30	; 0x02
 854:	49 91       	ld	r20, Y+
 856:	59 91       	ld	r21, Y+
 858:	c4 0f       	add	r28, r20
 85a:	d5 1f       	adc	r29, r21
 85c:	ec 17       	cp	r30, r28
 85e:	fd 07       	cpc	r31, r29
 860:	61 f4       	brne	.+24     	; 0x87a <free+0xbe>
 862:	80 81       	ld	r24, Z
 864:	91 81       	ldd	r25, Z+1	; 0x01
 866:	84 0f       	add	r24, r20
 868:	95 1f       	adc	r25, r21
 86a:	02 96       	adiw	r24, 0x02	; 2
 86c:	e9 01       	movw	r28, r18
 86e:	99 83       	std	Y+1, r25	; 0x01
 870:	88 83       	st	Y, r24
 872:	82 81       	ldd	r24, Z+2	; 0x02
 874:	93 81       	ldd	r25, Z+3	; 0x03
 876:	9b 83       	std	Y+3, r25	; 0x03
 878:	8a 83       	std	Y+2, r24	; 0x02
 87a:	e0 e0       	ldi	r30, 0x00	; 0
 87c:	f0 e0       	ldi	r31, 0x00	; 0
 87e:	12 96       	adiw	r26, 0x02	; 2
 880:	8d 91       	ld	r24, X+
 882:	9c 91       	ld	r25, X
 884:	13 97       	sbiw	r26, 0x03	; 3
 886:	00 97       	sbiw	r24, 0x00	; 0
 888:	19 f0       	breq	.+6      	; 0x890 <free+0xd4>
 88a:	fd 01       	movw	r30, r26
 88c:	dc 01       	movw	r26, r24
 88e:	f7 cf       	rjmp	.-18     	; 0x87e <free+0xc2>
 890:	8d 91       	ld	r24, X+
 892:	9c 91       	ld	r25, X
 894:	11 97       	sbiw	r26, 0x01	; 1
 896:	9d 01       	movw	r18, r26
 898:	2e 5f       	subi	r18, 0xFE	; 254
 89a:	3f 4f       	sbci	r19, 0xFF	; 255
 89c:	82 0f       	add	r24, r18
 89e:	93 1f       	adc	r25, r19
 8a0:	20 91 65 02 	lds	r18, 0x0265	; 0x800265 <__brkval>
 8a4:	30 91 66 02 	lds	r19, 0x0266	; 0x800266 <__brkval+0x1>
 8a8:	28 17       	cp	r18, r24
 8aa:	39 07       	cpc	r19, r25
 8ac:	69 f4       	brne	.+26     	; 0x8c8 <free+0x10c>
 8ae:	30 97       	sbiw	r30, 0x00	; 0
 8b0:	29 f4       	brne	.+10     	; 0x8bc <free+0x100>
 8b2:	10 92 68 02 	sts	0x0268, r1	; 0x800268 <__flp+0x1>
 8b6:	10 92 67 02 	sts	0x0267, r1	; 0x800267 <__flp>
 8ba:	02 c0       	rjmp	.+4      	; 0x8c0 <free+0x104>
 8bc:	13 82       	std	Z+3, r1	; 0x03
 8be:	12 82       	std	Z+2, r1	; 0x02
 8c0:	b0 93 66 02 	sts	0x0266, r27	; 0x800266 <__brkval+0x1>
 8c4:	a0 93 65 02 	sts	0x0265, r26	; 0x800265 <__brkval>
 8c8:	df 91       	pop	r29
 8ca:	cf 91       	pop	r28
 8cc:	08 95       	ret

000008ce <__do_global_dtors>:
 8ce:	10 e0       	ldi	r17, 0x00	; 0
 8d0:	c6 e3       	ldi	r28, 0x36	; 54
 8d2:	d0 e0       	ldi	r29, 0x00	; 0
 8d4:	04 c0       	rjmp	.+8      	; 0x8de <__do_global_dtors+0x10>
 8d6:	fe 01       	movw	r30, r28
 8d8:	0e 94 40 03 	call	0x680	; 0x680 <__tablejump2__>
 8dc:	21 96       	adiw	r28, 0x01	; 1
 8de:	c8 33       	cpi	r28, 0x38	; 56
 8e0:	d1 07       	cpc	r29, r17
 8e2:	c9 f7       	brne	.-14     	; 0x8d6 <__do_global_dtors+0x8>
 8e4:	f8 94       	cli

000008e6 <__stop_program>:
 8e6:	ff cf       	rjmp	.-2      	; 0x8e6 <__stop_program>
