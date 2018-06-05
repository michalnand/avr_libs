
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
  38:	0c 94 b9 02 	jmp	0x572	; 0x572 <__vector_14>
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
  68:	d4 00       	.word	0x00d4	; ????
  6a:	4b 03       	fmul	r20, r19

0000006c <__ctors_end>:
  6c:	d8 00       	.word	0x00d8	; ????
  6e:	4f 03       	fmul	r20, r23

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
  82:	e0 e9       	ldi	r30, 0x90	; 144
  84:	f9 e0       	ldi	r31, 0x09	; 9
  86:	02 c0       	rjmp	.+4      	; 0x8c <__do_copy_data+0x10>
  88:	05 90       	lpm	r0, Z+
  8a:	0d 92       	st	X+, r0
  8c:	aa 33       	cpi	r26, 0x3A	; 58
  8e:	b1 07       	cpc	r27, r17
  90:	d9 f7       	brne	.-10     	; 0x88 <__do_copy_data+0xc>

00000092 <__do_clear_bss>:
  92:	22 e0       	ldi	r18, 0x02	; 2
  94:	aa e3       	ldi	r26, 0x3A	; 58
  96:	b1 e0       	ldi	r27, 0x01	; 1
  98:	01 c0       	rjmp	.+2      	; 0x9c <.do_clear_bss_start>

0000009a <.do_clear_bss_loop>:
  9a:	1d 92       	st	X+, r1

0000009c <.do_clear_bss_start>:
  9c:	a1 39       	cpi	r26, 0x91	; 145
  9e:	b2 07       	cpc	r27, r18
  a0:	e1 f7       	brne	.-8      	; 0x9a <.do_clear_bss_loop>

000000a2 <__do_global_ctors>:
  a2:	10 e0       	ldi	r17, 0x00	; 0
  a4:	c6 e3       	ldi	r28, 0x36	; 54
  a6:	d0 e0       	ldi	r29, 0x00	; 0
  a8:	04 c0       	rjmp	.+8      	; 0xb2 <__do_global_ctors+0x10>
  aa:	21 97       	sbiw	r28, 0x01	; 1
  ac:	fe 01       	movw	r30, r28
  ae:	0e 94 94 03 	call	0x728	; 0x728 <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 bb 04 	jmp	0x976	; 0x976 <__do_global_dtors>

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
  d2:	8c e8       	ldi	r24, 0x8C	; 140
  d4:	92 e0       	ldi	r25, 0x02	; 2
  d6:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 92 02 	call	0x524	; 0x524 <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 b0 02 	call	0x560	; 0x560 <_ZN11SampleTimer4waitEv>
  ee:	8a e3       	ldi	r24, 0x3A	; 58
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 91 01 	call	0x322	; 0x322 <_ZN10LineCamera4readEv>
  f6:	8a e3       	ldi	r24, 0x3A	; 58
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 0f 01 	call	0x21e	; 0x21e <_ZN10LineCamera7processEv>
  fe:	8a e3       	ldi	r24, 0x3A	; 58
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 55 02 	call	0x4aa	; 0x4aa <_ZN11LinePostion21compute_line_positionEv>
 106:	0a e3       	ldi	r16, 0x3A	; 58
 108:	11 e0       	ldi	r17, 0x01	; 1
 10a:	f8 01       	movw	r30, r16
 10c:	44 81       	ldd	r20, Z+4	; 0x04
 10e:	55 81       	ldd	r21, Z+5	; 0x05
 110:	05 2e       	mov	r0, r21
 112:	00 0c       	add	r0, r0
 114:	66 0b       	sbc	r22, r22
 116:	77 0b       	sbc	r23, r23
 118:	8c e8       	ldi	r24, 0x8C	; 140
 11a:	92 e0       	ldi	r25, 0x02	; 2
 11c:	0e 94 de 02 	call	0x5bc	; 0x5bc <_ZN8Terminal4putiEl>
 120:	60 e2       	ldi	r22, 0x20	; 32
 122:	71 e0       	ldi	r23, 0x01	; 1
 124:	8c e8       	ldi	r24, 0x8C	; 140
 126:	92 e0       	ldi	r25, 0x02	; 2
 128:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 12c:	08 5f       	subi	r16, 0xF8	; 248
 12e:	1f 4f       	sbci	r17, 0xFF	; 255
 130:	f2 e0       	ldi	r31, 0x02	; 2
 132:	0a 33       	cpi	r16, 0x3A	; 58
 134:	1f 07       	cpc	r17, r31
 136:	49 f7       	brne	.-46     	; 0x10a <main+0x46>
 138:	61 e1       	ldi	r22, 0x11	; 17
 13a:	71 e0       	ldi	r23, 0x01	; 1
 13c:	8c e8       	ldi	r24, 0x8C	; 140
 13e:	92 e0       	ldi	r25, 0x02	; 2
 140:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 144:	8a e3       	ldi	r24, 0x3A	; 58
 146:	91 e0       	ldi	r25, 0x01	; 1
 148:	0e 94 02 02 	call	0x404	; 0x404 <_ZN11LinePostion3getEv>
 14c:	8c 01       	movw	r16, r24
 14e:	63 e1       	ldi	r22, 0x13	; 19
 150:	71 e0       	ldi	r23, 0x01	; 1
 152:	8c e8       	ldi	r24, 0x8C	; 140
 154:	92 e0       	ldi	r25, 0x02	; 2
 156:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 15a:	a8 01       	movw	r20, r16
 15c:	11 0f       	add	r17, r17
 15e:	66 0b       	sbc	r22, r22
 160:	77 0b       	sbc	r23, r23
 162:	8c e8       	ldi	r24, 0x8C	; 140
 164:	92 e0       	ldi	r25, 0x02	; 2
 166:	0e 94 de 02 	call	0x5bc	; 0x5bc <_ZN8Terminal4putiEl>
 16a:	60 e2       	ldi	r22, 0x20	; 32
 16c:	71 e0       	ldi	r23, 0x01	; 1
 16e:	8c e8       	ldi	r24, 0x8C	; 140
 170:	92 e0       	ldi	r25, 0x02	; 2
 172:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 176:	8a e3       	ldi	r24, 0x3A	; 58
 178:	91 e0       	ldi	r25, 0x01	; 1
 17a:	0e 94 08 02 	call	0x410	; 0x410 <_ZN11LinePostion14get_confidenceEv>
 17e:	6b 01       	movw	r12, r22
 180:	7c 01       	movw	r14, r24
 182:	6a e1       	ldi	r22, 0x1A	; 26
 184:	71 e0       	ldi	r23, 0x01	; 1
 186:	8c e8       	ldi	r24, 0x8C	; 140
 188:	92 e0       	ldi	r25, 0x02	; 2
 18a:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 18e:	b7 01       	movw	r22, r14
 190:	a6 01       	movw	r20, r12
 192:	8c e8       	ldi	r24, 0x8C	; 140
 194:	92 e0       	ldi	r25, 0x02	; 2
 196:	0e 94 de 02 	call	0x5bc	; 0x5bc <_ZN8Terminal4putiEl>
 19a:	61 e1       	ldi	r22, 0x11	; 17
 19c:	71 e0       	ldi	r23, 0x01	; 1
 19e:	8c e8       	ldi	r24, 0x8C	; 140
 1a0:	92 e0       	ldi	r25, 0x02	; 2
 1a2:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZN8Terminal4putsEPKc>
 1a6:	9f cf       	rjmp	.-194    	; 0xe6 <main+0x22>

000001a8 <_GLOBAL__sub_I_line_position>:
 1a8:	8a e3       	ldi	r24, 0x3A	; 58
 1aa:	91 e0       	ldi	r25, 0x01	; 1
 1ac:	0c 94 db 01 	jmp	0x3b6	; 0x3b6 <_ZN11LinePostionC1Ev>

000001b0 <_GLOBAL__sub_D_line_position>:
 1b0:	8a e3       	ldi	r24, 0x3A	; 58
 1b2:	91 e0       	ldi	r25, 0x01	; 1
 1b4:	0c 94 00 02 	jmp	0x400	; 0x400 <_ZN11LinePostionD1Ev>

000001b8 <_ZN5USARTC1Ev>:
 1b8:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 1bc:	80 e1       	ldi	r24, 0x10	; 16
 1be:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 1c2:	e2 ec       	ldi	r30, 0xC2	; 194
 1c4:	f0 e0       	ldi	r31, 0x00	; 0
 1c6:	80 81       	ld	r24, Z
 1c8:	86 60       	ori	r24, 0x06	; 6
 1ca:	80 83       	st	Z, r24
 1cc:	e1 ec       	ldi	r30, 0xC1	; 193
 1ce:	f0 e0       	ldi	r31, 0x00	; 0
 1d0:	80 81       	ld	r24, Z
 1d2:	88 61       	ori	r24, 0x18	; 24
 1d4:	80 83       	st	Z, r24
 1d6:	08 95       	ret

000001d8 <_ZN5USARTD1Ev>:
 1d8:	08 95       	ret

000001da <_ZN5USART8put_charEc>:
 1da:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 1de:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 1e2:	85 fd       	sbrc	r24, 5
 1e4:	02 c0       	rjmp	.+4      	; 0x1ea <_ZN5USART8put_charEc+0x10>
 1e6:	00 00       	nop
 1e8:	fa cf       	rjmp	.-12     	; 0x1de <_ZN5USART8put_charEc+0x4>
 1ea:	08 95       	ret

000001ec <_ZN5ArrayIiLj128EED1Ev>:
 1ec:	08 95       	ret

000001ee <_ZN5ArrayIiLj128EE4sizeEv>:
 1ee:	80 e8       	ldi	r24, 0x80	; 128
 1f0:	90 e0       	ldi	r25, 0x00	; 0
 1f2:	08 95       	ret

000001f4 <_ZN5ArrayIiLj128EEixEj>:
 1f4:	6e 5f       	subi	r22, 0xFE	; 254
 1f6:	7f 4f       	sbci	r23, 0xFF	; 255
 1f8:	66 0f       	add	r22, r22
 1fa:	77 1f       	adc	r23, r23
 1fc:	86 0f       	add	r24, r22
 1fe:	97 1f       	adc	r25, r23
 200:	08 95       	ret

00000202 <_ZN5ArrayIiLj128EED0Ev>:
 202:	0c 94 c8 02 	jmp	0x590	; 0x590 <_ZdlPv>

00000206 <_ZN10LineCameraC1Ev>:
 206:	26 e2       	ldi	r18, 0x26	; 38
 208:	31 e0       	ldi	r19, 0x01	; 1
 20a:	fc 01       	movw	r30, r24
 20c:	31 83       	std	Z+1, r19	; 0x01
 20e:	20 83       	st	Z, r18
 210:	38 98       	cbi	0x07, 0	; 7
 212:	39 9a       	sbi	0x07, 1	; 7
 214:	3a 9a       	sbi	0x07, 2	; 7
 216:	42 98       	cbi	0x08, 2	; 8
 218:	41 98       	cbi	0x08, 1	; 8
 21a:	08 95       	ret

0000021c <_ZN10LineCameraD1Ev>:
 21c:	08 95       	ret

0000021e <_ZN10LineCamera7processEv>:
 21e:	8f 92       	push	r8
 220:	9f 92       	push	r9
 222:	af 92       	push	r10
 224:	bf 92       	push	r11
 226:	ef 92       	push	r14
 228:	ff 92       	push	r15
 22a:	0f 93       	push	r16
 22c:	1f 93       	push	r17
 22e:	cf 93       	push	r28
 230:	df 93       	push	r29
 232:	ec 01       	movw	r28, r24
 234:	8c 01       	movw	r16, r24
 236:	0c 5f       	subi	r16, 0xFC	; 252
 238:	1f 4f       	sbci	r17, 0xFF	; 255
 23a:	7c 01       	movw	r14, r24
 23c:	8c ef       	ldi	r24, 0xFC	; 252
 23e:	e8 1a       	sub	r14, r24
 240:	8e ef       	ldi	r24, 0xFE	; 254
 242:	f8 0a       	sbc	r15, r24
 244:	f8 01       	movw	r30, r16
 246:	60 e0       	ldi	r22, 0x00	; 0
 248:	70 e0       	ldi	r23, 0x00	; 0
 24a:	cb 01       	movw	r24, r22
 24c:	81 90       	ld	r8, Z+
 24e:	91 90       	ld	r9, Z+
 250:	09 2c       	mov	r0, r9
 252:	00 0c       	add	r0, r0
 254:	aa 08       	sbc	r10, r10
 256:	bb 08       	sbc	r11, r11
 258:	68 0d       	add	r22, r8
 25a:	79 1d       	adc	r23, r9
 25c:	8a 1d       	adc	r24, r10
 25e:	9b 1d       	adc	r25, r11
 260:	ee 15       	cp	r30, r14
 262:	ff 05       	cpc	r31, r15
 264:	99 f7       	brne	.-26     	; 0x24c <_ZN10LineCamera7processEv+0x2e>
 266:	20 e8       	ldi	r18, 0x80	; 128
 268:	30 e0       	ldi	r19, 0x00	; 0
 26a:	40 e0       	ldi	r20, 0x00	; 0
 26c:	50 e0       	ldi	r21, 0x00	; 0
 26e:	0e 94 75 03 	call	0x6ea	; 0x6ea <__divmodsi4>
 272:	f8 01       	movw	r30, r16
 274:	80 81       	ld	r24, Z
 276:	91 81       	ldd	r25, Z+1	; 0x01
 278:	82 1b       	sub	r24, r18
 27a:	93 0b       	sbc	r25, r19
 27c:	81 93       	st	Z+, r24
 27e:	91 93       	st	Z+, r25
 280:	8f 01       	movw	r16, r30
 282:	ee 15       	cp	r30, r14
 284:	ff 05       	cpc	r31, r15
 286:	a9 f7       	brne	.-22     	; 0x272 <_ZN10LineCamera7processEv+0x54>
 288:	fe 01       	movw	r30, r28
 28a:	ce 01       	movw	r24, r28
 28c:	93 95       	inc	r25
 28e:	2f ef       	ldi	r18, 0xFF	; 255
 290:	3f ef       	ldi	r19, 0xFF	; 255
 292:	41 e0       	ldi	r20, 0x01	; 1
 294:	50 e0       	ldi	r21, 0x00	; 0
 296:	64 81       	ldd	r22, Z+4	; 0x04
 298:	75 81       	ldd	r23, Z+5	; 0x05
 29a:	16 16       	cp	r1, r22
 29c:	17 06       	cpc	r1, r23
 29e:	1c f4       	brge	.+6      	; 0x2a6 <_ZN10LineCamera7processEv+0x88>
 2a0:	55 83       	std	Z+5, r21	; 0x05
 2a2:	44 83       	std	Z+4, r20	; 0x04
 2a4:	02 c0       	rjmp	.+4      	; 0x2aa <_ZN10LineCamera7processEv+0x8c>
 2a6:	35 83       	std	Z+5, r19	; 0x05
 2a8:	24 83       	std	Z+4, r18	; 0x04
 2aa:	32 96       	adiw	r30, 0x02	; 2
 2ac:	8e 17       	cp	r24, r30
 2ae:	9f 07       	cpc	r25, r31
 2b0:	91 f7       	brne	.-28     	; 0x296 <_ZN10LineCamera7processEv+0x78>
 2b2:	df 91       	pop	r29
 2b4:	cf 91       	pop	r28
 2b6:	1f 91       	pop	r17
 2b8:	0f 91       	pop	r16
 2ba:	ff 90       	pop	r15
 2bc:	ef 90       	pop	r14
 2be:	bf 90       	pop	r11
 2c0:	af 90       	pop	r10
 2c2:	9f 90       	pop	r9
 2c4:	8f 90       	pop	r8
 2c6:	08 95       	ret

000002c8 <_ZN10LineCamera8adc_initEh>:
 2c8:	ec e7       	ldi	r30, 0x7C	; 124
 2ca:	f0 e0       	ldi	r31, 0x00	; 0
 2cc:	80 e4       	ldi	r24, 0x40	; 64
 2ce:	80 83       	st	Z, r24
 2d0:	83 e8       	ldi	r24, 0x83	; 131
 2d2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2d6:	80 81       	ld	r24, Z
 2d8:	67 70       	andi	r22, 0x07	; 7
 2da:	68 2b       	or	r22, r24
 2dc:	60 83       	st	Z, r22
 2de:	08 95       	ret

000002e0 <_ZN10LineCamera8adc_readEv>:
 2e0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2e4:	80 64       	ori	r24, 0x40	; 64
 2e6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2ea:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2ee:	86 ff       	sbrs	r24, 6
 2f0:	02 c0       	rjmp	.+4      	; 0x2f6 <_ZN10LineCamera8adc_readEv+0x16>
 2f2:	00 00       	nop
 2f4:	fa cf       	rjmp	.-12     	; 0x2ea <_ZN10LineCamera8adc_readEv+0xa>
 2f6:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 2fa:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 2fe:	08 95       	ret

00000300 <_ZN10LineCamera11delay_microEv>:
	...
 320:	08 95       	ret

00000322 <_ZN10LineCamera4readEv>:
 322:	ef 92       	push	r14
 324:	ff 92       	push	r15
 326:	0f 93       	push	r16
 328:	1f 93       	push	r17
 32a:	cf 93       	push	r28
 32c:	df 93       	push	r29
 32e:	ec 01       	movw	r28, r24
 330:	60 e0       	ldi	r22, 0x00	; 0
 332:	0e 94 64 01 	call	0x2c8	; 0x2c8 <_ZN10LineCamera8adc_initEh>
 336:	ce 01       	movw	r24, r28
 338:	0e 94 80 01 	call	0x300	; 0x300 <_ZN10LineCamera11delay_microEv>
 33c:	41 98       	cbi	0x08, 1	; 8
 33e:	42 9a       	sbi	0x08, 2	; 8
 340:	41 9a       	sbi	0x08, 1	; 8
 342:	42 98       	cbi	0x08, 2	; 8
 344:	ce 01       	movw	r24, r28
 346:	0e 94 80 01 	call	0x300	; 0x300 <_ZN10LineCamera11delay_microEv>
 34a:	8e 01       	movw	r16, r28
 34c:	0c 5f       	subi	r16, 0xFC	; 252
 34e:	1f 4f       	sbci	r17, 0xFF	; 255
 350:	7e 01       	movw	r14, r28
 352:	8c ef       	ldi	r24, 0xFC	; 252
 354:	e8 1a       	sub	r14, r24
 356:	8e ef       	ldi	r24, 0xFE	; 254
 358:	f8 0a       	sbc	r15, r24
 35a:	ce 01       	movw	r24, r28
 35c:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_ZN10LineCamera8adc_readEv>
 360:	95 95       	asr	r25
 362:	87 95       	ror	r24
 364:	95 95       	asr	r25
 366:	87 95       	ror	r24
 368:	f8 01       	movw	r30, r16
 36a:	81 93       	st	Z+, r24
 36c:	91 93       	st	Z+, r25
 36e:	8f 01       	movw	r16, r30
 370:	41 98       	cbi	0x08, 1	; 8
 372:	ce 01       	movw	r24, r28
 374:	0e 94 80 01 	call	0x300	; 0x300 <_ZN10LineCamera11delay_microEv>
 378:	41 9a       	sbi	0x08, 1	; 8
 37a:	0e 15       	cp	r16, r14
 37c:	1f 05       	cpc	r17, r15
 37e:	69 f7       	brne	.-38     	; 0x35a <_ZN10LineCamera4readEv+0x38>
 380:	41 98       	cbi	0x08, 1	; 8
 382:	ce 01       	movw	r24, r28
 384:	0e 94 80 01 	call	0x300	; 0x300 <_ZN10LineCamera11delay_microEv>
 388:	41 9a       	sbi	0x08, 1	; 8
 38a:	ce 01       	movw	r24, r28
 38c:	df 91       	pop	r29
 38e:	cf 91       	pop	r28
 390:	1f 91       	pop	r17
 392:	0f 91       	pop	r16
 394:	ff 90       	pop	r15
 396:	ef 90       	pop	r14
 398:	0c 94 80 01 	jmp	0x300	; 0x300 <_ZN10LineCamera11delay_microEv>

0000039c <_ZN5ArrayIiLj32EED1Ev>:
 39c:	08 95       	ret

0000039e <_ZN5ArrayIiLj32EE4sizeEv>:
 39e:	80 e2       	ldi	r24, 0x20	; 32
 3a0:	90 e0       	ldi	r25, 0x00	; 0
 3a2:	08 95       	ret

000003a4 <_ZN5ArrayIiLj32EEixEj>:
 3a4:	6e 5f       	subi	r22, 0xFE	; 254
 3a6:	7f 4f       	sbci	r23, 0xFF	; 255
 3a8:	66 0f       	add	r22, r22
 3aa:	77 1f       	adc	r23, r23
 3ac:	86 0f       	add	r24, r22
 3ae:	97 1f       	adc	r25, r23
 3b0:	08 95       	ret

000003b2 <_ZN5ArrayIiLj32EED0Ev>:
 3b2:	0c 94 c8 02 	jmp	0x590	; 0x590 <_ZdlPv>

000003b6 <_ZN11LinePostionC1Ev>:
 3b6:	cf 93       	push	r28
 3b8:	df 93       	push	r29
 3ba:	ec 01       	movw	r28, r24
 3bc:	0e 94 03 01 	call	0x206	; 0x206 <_ZN10LineCameraC1Ev>
 3c0:	fe 01       	movw	r30, r28
 3c2:	e3 5f       	subi	r30, 0xF3	; 243
 3c4:	fe 4f       	sbci	r31, 0xFE	; 254
 3c6:	82 e3       	ldi	r24, 0x32	; 50
 3c8:	91 e0       	ldi	r25, 0x01	; 1
 3ca:	91 83       	std	Z+1, r25	; 0x01
 3cc:	80 83       	st	Z, r24
 3ce:	34 96       	adiw	r30, 0x04	; 4
 3d0:	ce 01       	movw	r24, r28
 3d2:	8f 5a       	subi	r24, 0xAF	; 175
 3d4:	9e 4f       	sbci	r25, 0xFE	; 254
 3d6:	21 e0       	ldi	r18, 0x01	; 1
 3d8:	30 e0       	ldi	r19, 0x00	; 0
 3da:	21 93       	st	Z+, r18
 3dc:	31 93       	st	Z+, r19
 3de:	e8 17       	cp	r30, r24
 3e0:	f9 07       	cpc	r31, r25
 3e2:	d9 f7       	brne	.-10     	; 0x3da <_ZN11LinePostionC1Ev+0x24>
 3e4:	fe 01       	movw	r30, r28
 3e6:	e7 5f       	subi	r30, 0xF7	; 247
 3e8:	fe 4f       	sbci	r31, 0xFE	; 254
 3ea:	10 82       	st	Z, r1
 3ec:	11 82       	std	Z+1, r1	; 0x01
 3ee:	12 82       	std	Z+2, r1	; 0x02
 3f0:	13 82       	std	Z+3, r1	; 0x03
 3f2:	c9 5f       	subi	r28, 0xF9	; 249
 3f4:	de 4f       	sbci	r29, 0xFE	; 254
 3f6:	19 82       	std	Y+1, r1	; 0x01
 3f8:	18 82       	st	Y, r1
 3fa:	df 91       	pop	r29
 3fc:	cf 91       	pop	r28
 3fe:	08 95       	ret

00000400 <_ZN11LinePostionD1Ev>:
 400:	0c 94 0e 01 	jmp	0x21c	; 0x21c <_ZN10LineCameraD1Ev>

00000404 <_ZN11LinePostion3getEv>:
 404:	89 5f       	subi	r24, 0xF9	; 249
 406:	9e 4f       	sbci	r25, 0xFE	; 254
 408:	fc 01       	movw	r30, r24
 40a:	80 81       	ld	r24, Z
 40c:	91 81       	ldd	r25, Z+1	; 0x01
 40e:	08 95       	ret

00000410 <_ZN11LinePostion14get_confidenceEv>:
 410:	87 5f       	subi	r24, 0xF7	; 247
 412:	9e 4f       	sbci	r25, 0xFE	; 254
 414:	fc 01       	movw	r30, r24
 416:	60 81       	ld	r22, Z
 418:	71 81       	ldd	r23, Z+1	; 0x01
 41a:	82 81       	ldd	r24, Z+2	; 0x02
 41c:	93 81       	ldd	r25, Z+3	; 0x03
 41e:	08 95       	ret

00000420 <_ZN11LinePostion19process_convolutionEj>:
 420:	cf 92       	push	r12
 422:	df 92       	push	r13
 424:	ef 92       	push	r14
 426:	ff 92       	push	r15
 428:	0f 93       	push	r16
 42a:	1f 93       	push	r17
 42c:	cf 93       	push	r28
 42e:	df 93       	push	r29
 430:	db 01       	movw	r26, r22
 432:	ac 01       	movw	r20, r24
 434:	4f 5e       	subi	r20, 0xEF	; 239
 436:	5e 4f       	sbci	r21, 0xFE	; 254
 438:	fb 01       	movw	r30, r22
 43a:	ee 0f       	add	r30, r30
 43c:	ff 1f       	adc	r31, r31
 43e:	20 e0       	ldi	r18, 0x00	; 0
 440:	30 e0       	ldi	r19, 0x00	; 0
 442:	60 e0       	ldi	r22, 0x00	; 0
 444:	70 e0       	ldi	r23, 0x00	; 0
 446:	cb 01       	movw	r24, r22
 448:	8f 01       	movw	r16, r30
 44a:	0d 50       	subi	r16, 0x0D	; 13
 44c:	11 40       	sbci	r17, 0x01	; 1
 44e:	ed 01       	movw	r28, r26
 450:	c2 0f       	add	r28, r18
 452:	d3 1f       	adc	r29, r19
 454:	c0 38       	cpi	r28, 0x80	; 128
 456:	d1 05       	cpc	r29, r1
 458:	c0 f4       	brcc	.+48     	; 0x48a <_ZN11LinePostion19process_convolutionEj+0x6a>
 45a:	ea 01       	movw	r28, r20
 45c:	c0 0f       	add	r28, r16
 45e:	d1 1f       	adc	r29, r17
 460:	09 90       	ld	r0, Y+
 462:	d8 81       	ld	r29, Y
 464:	c0 2d       	mov	r28, r0
 466:	fa 01       	movw	r30, r20
 468:	e0 80       	ld	r14, Z
 46a:	f1 80       	ldd	r15, Z+1	; 0x01
 46c:	ce 9d       	mul	r28, r14
 46e:	60 01       	movw	r12, r0
 470:	cf 9d       	mul	r28, r15
 472:	d0 0c       	add	r13, r0
 474:	de 9d       	mul	r29, r14
 476:	d0 0c       	add	r13, r0
 478:	11 24       	eor	r1, r1
 47a:	0d 2c       	mov	r0, r13
 47c:	00 0c       	add	r0, r0
 47e:	ee 08       	sbc	r14, r14
 480:	ff 08       	sbc	r15, r15
 482:	6c 0d       	add	r22, r12
 484:	7d 1d       	adc	r23, r13
 486:	8e 1d       	adc	r24, r14
 488:	9f 1d       	adc	r25, r15
 48a:	2f 5f       	subi	r18, 0xFF	; 255
 48c:	3f 4f       	sbci	r19, 0xFF	; 255
 48e:	4e 5f       	subi	r20, 0xFE	; 254
 490:	5f 4f       	sbci	r21, 0xFF	; 255
 492:	20 32       	cpi	r18, 0x20	; 32
 494:	31 05       	cpc	r19, r1
 496:	d9 f6       	brne	.-74     	; 0x44e <_ZN11LinePostion19process_convolutionEj+0x2e>
 498:	df 91       	pop	r29
 49a:	cf 91       	pop	r28
 49c:	1f 91       	pop	r17
 49e:	0f 91       	pop	r16
 4a0:	ff 90       	pop	r15
 4a2:	ef 90       	pop	r14
 4a4:	df 90       	pop	r13
 4a6:	cf 90       	pop	r12
 4a8:	08 95       	ret

000004aa <_ZN11LinePostion21compute_line_positionEv>:
 4aa:	af 92       	push	r10
 4ac:	bf 92       	push	r11
 4ae:	cf 92       	push	r12
 4b0:	df 92       	push	r13
 4b2:	ef 92       	push	r14
 4b4:	ff 92       	push	r15
 4b6:	0f 93       	push	r16
 4b8:	1f 93       	push	r17
 4ba:	cf 93       	push	r28
 4bc:	df 93       	push	r29
 4be:	ec 01       	movw	r28, r24
 4c0:	00 e0       	ldi	r16, 0x00	; 0
 4c2:	10 e0       	ldi	r17, 0x00	; 0
 4c4:	c1 2c       	mov	r12, r1
 4c6:	8f e1       	ldi	r24, 0x1F	; 31
 4c8:	d8 2e       	mov	r13, r24
 4ca:	8a e0       	ldi	r24, 0x0A	; 10
 4cc:	e8 2e       	mov	r14, r24
 4ce:	8a ef       	ldi	r24, 0xFA	; 250
 4d0:	f8 2e       	mov	r15, r24
 4d2:	5e 01       	movw	r10, r28
 4d4:	89 ef       	ldi	r24, 0xF9	; 249
 4d6:	a8 1a       	sub	r10, r24
 4d8:	8e ef       	ldi	r24, 0xFE	; 254
 4da:	b8 0a       	sbc	r11, r24
 4dc:	b8 01       	movw	r22, r16
 4de:	ce 01       	movw	r24, r28
 4e0:	0e 94 10 02 	call	0x420	; 0x420 <_ZN11LinePostion19process_convolutionEj>
 4e4:	c6 16       	cp	r12, r22
 4e6:	d7 06       	cpc	r13, r23
 4e8:	e8 06       	cpc	r14, r24
 4ea:	f9 06       	cpc	r15, r25
 4ec:	2c f4       	brge	.+10     	; 0x4f8 <_ZN11LinePostion21compute_line_positionEv+0x4e>
 4ee:	f5 01       	movw	r30, r10
 4f0:	11 83       	std	Z+1, r17	; 0x01
 4f2:	00 83       	st	Z, r16
 4f4:	6b 01       	movw	r12, r22
 4f6:	7c 01       	movw	r14, r24
 4f8:	0f 5f       	subi	r16, 0xFF	; 255
 4fa:	1f 4f       	sbci	r17, 0xFF	; 255
 4fc:	00 38       	cpi	r16, 0x80	; 128
 4fe:	11 05       	cpc	r17, r1
 500:	69 f7       	brne	.-38     	; 0x4dc <_ZN11LinePostion21compute_line_positionEv+0x32>
 502:	c7 5f       	subi	r28, 0xF7	; 247
 504:	de 4f       	sbci	r29, 0xFE	; 254
 506:	c8 82       	st	Y, r12
 508:	d9 82       	std	Y+1, r13	; 0x01
 50a:	ea 82       	std	Y+2, r14	; 0x02
 50c:	fb 82       	std	Y+3, r15	; 0x03
 50e:	df 91       	pop	r29
 510:	cf 91       	pop	r28
 512:	1f 91       	pop	r17
 514:	0f 91       	pop	r16
 516:	ff 90       	pop	r15
 518:	ef 90       	pop	r14
 51a:	df 90       	pop	r13
 51c:	cf 90       	pop	r12
 51e:	bf 90       	pop	r11
 520:	af 90       	pop	r10
 522:	08 95       	ret

00000524 <_ZN11SampleTimerC1Ej>:
 524:	10 92 8b 02 	sts	0x028B, r1	; 0x80028b <g_sample_timer_flag>
 528:	84 b5       	in	r24, 0x24	; 36
 52a:	82 60       	ori	r24, 0x02	; 2
 52c:	84 bd       	out	0x24, r24	; 36
 52e:	9b 01       	movw	r18, r22
 530:	86 e0       	ldi	r24, 0x06	; 6
 532:	22 0f       	add	r18, r18
 534:	33 1f       	adc	r19, r19
 536:	8a 95       	dec	r24
 538:	e1 f7       	brne	.-8      	; 0x532 <_ZN11SampleTimerC1Ej+0xe>
 53a:	40 e0       	ldi	r20, 0x00	; 0
 53c:	50 e0       	ldi	r21, 0x00	; 0
 53e:	60 e0       	ldi	r22, 0x00	; 0
 540:	74 e2       	ldi	r23, 0x24	; 36
 542:	84 ef       	ldi	r24, 0xF4	; 244
 544:	90 e0       	ldi	r25, 0x00	; 0
 546:	0e 94 53 03 	call	0x6a6	; 0x6a6 <__udivmodsi4>
 54a:	21 50       	subi	r18, 0x01	; 1
 54c:	27 bd       	out	0x27, r18	; 39
 54e:	83 e0       	ldi	r24, 0x03	; 3
 550:	85 bd       	out	0x25, r24	; 37
 552:	ee e6       	ldi	r30, 0x6E	; 110
 554:	f0 e0       	ldi	r31, 0x00	; 0
 556:	80 81       	ld	r24, Z
 558:	82 60       	ori	r24, 0x02	; 2
 55a:	80 83       	st	Z, r24
 55c:	78 94       	sei
 55e:	08 95       	ret

00000560 <_ZN11SampleTimer4waitEv>:
 560:	80 91 8b 02 	lds	r24, 0x028B	; 0x80028b <g_sample_timer_flag>
 564:	88 23       	and	r24, r24
 566:	19 f0       	breq	.+6      	; 0x56e <_ZN11SampleTimer4waitEv+0xe>
 568:	10 92 8b 02 	sts	0x028B, r1	; 0x80028b <g_sample_timer_flag>
 56c:	08 95       	ret
 56e:	00 00       	nop
 570:	f7 cf       	rjmp	.-18     	; 0x560 <_ZN11SampleTimer4waitEv>

00000572 <__vector_14>:
 572:	1f 92       	push	r1
 574:	0f 92       	push	r0
 576:	0f b6       	in	r0, 0x3f	; 63
 578:	0f 92       	push	r0
 57a:	11 24       	eor	r1, r1
 57c:	8f 93       	push	r24
 57e:	81 e0       	ldi	r24, 0x01	; 1
 580:	80 93 8b 02 	sts	0x028B, r24	; 0x80028b <g_sample_timer_flag>
 584:	8f 91       	pop	r24
 586:	0f 90       	pop	r0
 588:	0f be       	out	0x3f, r0	; 63
 58a:	0f 90       	pop	r0
 58c:	1f 90       	pop	r1
 58e:	18 95       	reti

00000590 <_ZdlPv>:
 590:	0c 94 32 04 	jmp	0x864	; 0x864 <free>

00000594 <_ZN8Terminal4putsEPc>:
 594:	0f 93       	push	r16
 596:	1f 93       	push	r17
 598:	cf 93       	push	r28
 59a:	df 93       	push	r29
 59c:	8c 01       	movw	r16, r24
 59e:	eb 01       	movw	r28, r22
 5a0:	69 91       	ld	r22, Y+
 5a2:	66 23       	and	r22, r22
 5a4:	21 f0       	breq	.+8      	; 0x5ae <_ZN8Terminal4putsEPc+0x1a>
 5a6:	c8 01       	movw	r24, r16
 5a8:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN5USART8put_charEc>
 5ac:	f9 cf       	rjmp	.-14     	; 0x5a0 <_ZN8Terminal4putsEPc+0xc>
 5ae:	df 91       	pop	r29
 5b0:	cf 91       	pop	r28
 5b2:	1f 91       	pop	r17
 5b4:	0f 91       	pop	r16
 5b6:	08 95       	ret

000005b8 <_ZN8Terminal4putsEPKc>:
 5b8:	0c 94 ca 02 	jmp	0x594	; 0x594 <_ZN8Terminal4putsEPc>

000005bc <_ZN8Terminal4putiEl>:
 5bc:	8f 92       	push	r8
 5be:	9f 92       	push	r9
 5c0:	af 92       	push	r10
 5c2:	bf 92       	push	r11
 5c4:	cf 92       	push	r12
 5c6:	df 92       	push	r13
 5c8:	ef 92       	push	r14
 5ca:	ff 92       	push	r15
 5cc:	0f 93       	push	r16
 5ce:	1f 93       	push	r17
 5d0:	cf 93       	push	r28
 5d2:	df 93       	push	r29
 5d4:	cd b7       	in	r28, 0x3d	; 61
 5d6:	de b7       	in	r29, 0x3e	; 62
 5d8:	2c 97       	sbiw	r28, 0x0c	; 12
 5da:	0f b6       	in	r0, 0x3f	; 63
 5dc:	f8 94       	cli
 5de:	de bf       	out	0x3e, r29	; 62
 5e0:	0f be       	out	0x3f, r0	; 63
 5e2:	cd bf       	out	0x3d, r28	; 61
 5e4:	7c 01       	movw	r14, r24
 5e6:	77 ff       	sbrs	r23, 7
 5e8:	09 c0       	rjmp	.+18     	; 0x5fc <_ZN8Terminal4putiEl+0x40>
 5ea:	70 95       	com	r23
 5ec:	60 95       	com	r22
 5ee:	50 95       	com	r21
 5f0:	41 95       	neg	r20
 5f2:	5f 4f       	sbci	r21, 0xFF	; 255
 5f4:	6f 4f       	sbci	r22, 0xFF	; 255
 5f6:	7f 4f       	sbci	r23, 0xFF	; 255
 5f8:	01 e0       	ldi	r16, 0x01	; 1
 5fa:	01 c0       	rjmp	.+2      	; 0x5fe <_ZN8Terminal4putiEl+0x42>
 5fc:	00 e0       	ldi	r16, 0x00	; 0
 5fe:	1c 86       	std	Y+12, r1	; 0x0c
 600:	1a e0       	ldi	r17, 0x0A	; 10
 602:	9a e0       	ldi	r25, 0x0A	; 10
 604:	89 2e       	mov	r8, r25
 606:	91 2c       	mov	r9, r1
 608:	a1 2c       	mov	r10, r1
 60a:	b1 2c       	mov	r11, r1
 60c:	cc 24       	eor	r12, r12
 60e:	c3 94       	inc	r12
 610:	d1 2c       	mov	r13, r1
 612:	cc 0e       	add	r12, r28
 614:	dd 1e       	adc	r13, r29
 616:	c1 0e       	add	r12, r17
 618:	d1 1c       	adc	r13, r1
 61a:	cb 01       	movw	r24, r22
 61c:	ba 01       	movw	r22, r20
 61e:	a5 01       	movw	r20, r10
 620:	94 01       	movw	r18, r8
 622:	0e 94 75 03 	call	0x6ea	; 0x6ea <__divmodsi4>
 626:	94 2f       	mov	r25, r20
 628:	85 2f       	mov	r24, r21
 62a:	60 5d       	subi	r22, 0xD0	; 208
 62c:	f6 01       	movw	r30, r12
 62e:	60 83       	st	Z, r22
 630:	a9 01       	movw	r20, r18
 632:	69 2f       	mov	r22, r25
 634:	78 2f       	mov	r23, r24
 636:	8f ef       	ldi	r24, 0xFF	; 255
 638:	81 0f       	add	r24, r17
 63a:	41 15       	cp	r20, r1
 63c:	51 05       	cpc	r21, r1
 63e:	61 05       	cpc	r22, r1
 640:	71 05       	cpc	r23, r1
 642:	11 f0       	breq	.+4      	; 0x648 <_ZN8Terminal4putiEl+0x8c>
 644:	18 2f       	mov	r17, r24
 646:	e2 cf       	rjmp	.-60     	; 0x60c <_ZN8Terminal4putiEl+0x50>
 648:	00 23       	and	r16, r16
 64a:	49 f0       	breq	.+18     	; 0x65e <_ZN8Terminal4putiEl+0xa2>
 64c:	e1 e0       	ldi	r30, 0x01	; 1
 64e:	f0 e0       	ldi	r31, 0x00	; 0
 650:	ec 0f       	add	r30, r28
 652:	fd 1f       	adc	r31, r29
 654:	e8 0f       	add	r30, r24
 656:	f1 1d       	adc	r31, r1
 658:	9d e2       	ldi	r25, 0x2D	; 45
 65a:	90 83       	st	Z, r25
 65c:	18 2f       	mov	r17, r24
 65e:	61 e0       	ldi	r22, 0x01	; 1
 660:	70 e0       	ldi	r23, 0x00	; 0
 662:	6c 0f       	add	r22, r28
 664:	7d 1f       	adc	r23, r29
 666:	61 0f       	add	r22, r17
 668:	71 1d       	adc	r23, r1
 66a:	c7 01       	movw	r24, r14
 66c:	0e 94 ca 02 	call	0x594	; 0x594 <_ZN8Terminal4putsEPc>
 670:	2c 96       	adiw	r28, 0x0c	; 12
 672:	0f b6       	in	r0, 0x3f	; 63
 674:	f8 94       	cli
 676:	de bf       	out	0x3e, r29	; 62
 678:	0f be       	out	0x3f, r0	; 63
 67a:	cd bf       	out	0x3d, r28	; 61
 67c:	df 91       	pop	r29
 67e:	cf 91       	pop	r28
 680:	1f 91       	pop	r17
 682:	0f 91       	pop	r16
 684:	ff 90       	pop	r15
 686:	ef 90       	pop	r14
 688:	df 90       	pop	r13
 68a:	cf 90       	pop	r12
 68c:	bf 90       	pop	r11
 68e:	af 90       	pop	r10
 690:	9f 90       	pop	r9
 692:	8f 90       	pop	r8
 694:	08 95       	ret

00000696 <_GLOBAL__sub_I_terminal>:
 696:	8c e8       	ldi	r24, 0x8C	; 140
 698:	92 e0       	ldi	r25, 0x02	; 2
 69a:	0c 94 dc 00 	jmp	0x1b8	; 0x1b8 <_ZN5USARTC1Ev>

0000069e <_GLOBAL__sub_D_terminal>:
 69e:	8c e8       	ldi	r24, 0x8C	; 140
 6a0:	92 e0       	ldi	r25, 0x02	; 2
 6a2:	0c 94 ec 00 	jmp	0x1d8	; 0x1d8 <_ZN5USARTD1Ev>

000006a6 <__udivmodsi4>:
 6a6:	a1 e2       	ldi	r26, 0x21	; 33
 6a8:	1a 2e       	mov	r1, r26
 6aa:	aa 1b       	sub	r26, r26
 6ac:	bb 1b       	sub	r27, r27
 6ae:	fd 01       	movw	r30, r26
 6b0:	0d c0       	rjmp	.+26     	; 0x6cc <__udivmodsi4_ep>

000006b2 <__udivmodsi4_loop>:
 6b2:	aa 1f       	adc	r26, r26
 6b4:	bb 1f       	adc	r27, r27
 6b6:	ee 1f       	adc	r30, r30
 6b8:	ff 1f       	adc	r31, r31
 6ba:	a2 17       	cp	r26, r18
 6bc:	b3 07       	cpc	r27, r19
 6be:	e4 07       	cpc	r30, r20
 6c0:	f5 07       	cpc	r31, r21
 6c2:	20 f0       	brcs	.+8      	; 0x6cc <__udivmodsi4_ep>
 6c4:	a2 1b       	sub	r26, r18
 6c6:	b3 0b       	sbc	r27, r19
 6c8:	e4 0b       	sbc	r30, r20
 6ca:	f5 0b       	sbc	r31, r21

000006cc <__udivmodsi4_ep>:
 6cc:	66 1f       	adc	r22, r22
 6ce:	77 1f       	adc	r23, r23
 6d0:	88 1f       	adc	r24, r24
 6d2:	99 1f       	adc	r25, r25
 6d4:	1a 94       	dec	r1
 6d6:	69 f7       	brne	.-38     	; 0x6b2 <__udivmodsi4_loop>
 6d8:	60 95       	com	r22
 6da:	70 95       	com	r23
 6dc:	80 95       	com	r24
 6de:	90 95       	com	r25
 6e0:	9b 01       	movw	r18, r22
 6e2:	ac 01       	movw	r20, r24
 6e4:	bd 01       	movw	r22, r26
 6e6:	cf 01       	movw	r24, r30
 6e8:	08 95       	ret

000006ea <__divmodsi4>:
 6ea:	05 2e       	mov	r0, r21
 6ec:	97 fb       	bst	r25, 7
 6ee:	1e f4       	brtc	.+6      	; 0x6f6 <__divmodsi4+0xc>
 6f0:	00 94       	com	r0
 6f2:	0e 94 8c 03 	call	0x718	; 0x718 <__negsi2>
 6f6:	57 fd       	sbrc	r21, 7
 6f8:	07 d0       	rcall	.+14     	; 0x708 <__divmodsi4_neg2>
 6fa:	0e 94 53 03 	call	0x6a6	; 0x6a6 <__udivmodsi4>
 6fe:	07 fc       	sbrc	r0, 7
 700:	03 d0       	rcall	.+6      	; 0x708 <__divmodsi4_neg2>
 702:	4e f4       	brtc	.+18     	; 0x716 <__divmodsi4_exit>
 704:	0c 94 8c 03 	jmp	0x718	; 0x718 <__negsi2>

00000708 <__divmodsi4_neg2>:
 708:	50 95       	com	r21
 70a:	40 95       	com	r20
 70c:	30 95       	com	r19
 70e:	21 95       	neg	r18
 710:	3f 4f       	sbci	r19, 0xFF	; 255
 712:	4f 4f       	sbci	r20, 0xFF	; 255
 714:	5f 4f       	sbci	r21, 0xFF	; 255

00000716 <__divmodsi4_exit>:
 716:	08 95       	ret

00000718 <__negsi2>:
 718:	90 95       	com	r25
 71a:	80 95       	com	r24
 71c:	70 95       	com	r23
 71e:	61 95       	neg	r22
 720:	7f 4f       	sbci	r23, 0xFF	; 255
 722:	8f 4f       	sbci	r24, 0xFF	; 255
 724:	9f 4f       	sbci	r25, 0xFF	; 255
 726:	08 95       	ret

00000728 <__tablejump2__>:
 728:	ee 0f       	add	r30, r30
 72a:	ff 1f       	adc	r31, r31
 72c:	05 90       	lpm	r0, Z+
 72e:	f4 91       	lpm	r31, Z
 730:	e0 2d       	mov	r30, r0
 732:	09 94       	ijmp

00000734 <malloc>:
 734:	0f 93       	push	r16
 736:	1f 93       	push	r17
 738:	cf 93       	push	r28
 73a:	df 93       	push	r29
 73c:	82 30       	cpi	r24, 0x02	; 2
 73e:	91 05       	cpc	r25, r1
 740:	10 f4       	brcc	.+4      	; 0x746 <malloc+0x12>
 742:	82 e0       	ldi	r24, 0x02	; 2
 744:	90 e0       	ldi	r25, 0x00	; 0
 746:	e0 91 8f 02 	lds	r30, 0x028F	; 0x80028f <__flp>
 74a:	f0 91 90 02 	lds	r31, 0x0290	; 0x800290 <__flp+0x1>
 74e:	20 e0       	ldi	r18, 0x00	; 0
 750:	30 e0       	ldi	r19, 0x00	; 0
 752:	a0 e0       	ldi	r26, 0x00	; 0
 754:	b0 e0       	ldi	r27, 0x00	; 0
 756:	30 97       	sbiw	r30, 0x00	; 0
 758:	19 f1       	breq	.+70     	; 0x7a0 <malloc+0x6c>
 75a:	40 81       	ld	r20, Z
 75c:	51 81       	ldd	r21, Z+1	; 0x01
 75e:	02 81       	ldd	r16, Z+2	; 0x02
 760:	13 81       	ldd	r17, Z+3	; 0x03
 762:	48 17       	cp	r20, r24
 764:	59 07       	cpc	r21, r25
 766:	c8 f0       	brcs	.+50     	; 0x79a <malloc+0x66>
 768:	84 17       	cp	r24, r20
 76a:	95 07       	cpc	r25, r21
 76c:	69 f4       	brne	.+26     	; 0x788 <malloc+0x54>
 76e:	10 97       	sbiw	r26, 0x00	; 0
 770:	31 f0       	breq	.+12     	; 0x77e <malloc+0x4a>
 772:	12 96       	adiw	r26, 0x02	; 2
 774:	0c 93       	st	X, r16
 776:	12 97       	sbiw	r26, 0x02	; 2
 778:	13 96       	adiw	r26, 0x03	; 3
 77a:	1c 93       	st	X, r17
 77c:	27 c0       	rjmp	.+78     	; 0x7cc <malloc+0x98>
 77e:	00 93 8f 02 	sts	0x028F, r16	; 0x80028f <__flp>
 782:	10 93 90 02 	sts	0x0290, r17	; 0x800290 <__flp+0x1>
 786:	22 c0       	rjmp	.+68     	; 0x7cc <malloc+0x98>
 788:	21 15       	cp	r18, r1
 78a:	31 05       	cpc	r19, r1
 78c:	19 f0       	breq	.+6      	; 0x794 <malloc+0x60>
 78e:	42 17       	cp	r20, r18
 790:	53 07       	cpc	r21, r19
 792:	18 f4       	brcc	.+6      	; 0x79a <malloc+0x66>
 794:	9a 01       	movw	r18, r20
 796:	bd 01       	movw	r22, r26
 798:	ef 01       	movw	r28, r30
 79a:	df 01       	movw	r26, r30
 79c:	f8 01       	movw	r30, r16
 79e:	db cf       	rjmp	.-74     	; 0x756 <malloc+0x22>
 7a0:	21 15       	cp	r18, r1
 7a2:	31 05       	cpc	r19, r1
 7a4:	f9 f0       	breq	.+62     	; 0x7e4 <malloc+0xb0>
 7a6:	28 1b       	sub	r18, r24
 7a8:	39 0b       	sbc	r19, r25
 7aa:	24 30       	cpi	r18, 0x04	; 4
 7ac:	31 05       	cpc	r19, r1
 7ae:	80 f4       	brcc	.+32     	; 0x7d0 <malloc+0x9c>
 7b0:	8a 81       	ldd	r24, Y+2	; 0x02
 7b2:	9b 81       	ldd	r25, Y+3	; 0x03
 7b4:	61 15       	cp	r22, r1
 7b6:	71 05       	cpc	r23, r1
 7b8:	21 f0       	breq	.+8      	; 0x7c2 <malloc+0x8e>
 7ba:	fb 01       	movw	r30, r22
 7bc:	93 83       	std	Z+3, r25	; 0x03
 7be:	82 83       	std	Z+2, r24	; 0x02
 7c0:	04 c0       	rjmp	.+8      	; 0x7ca <malloc+0x96>
 7c2:	90 93 90 02 	sts	0x0290, r25	; 0x800290 <__flp+0x1>
 7c6:	80 93 8f 02 	sts	0x028F, r24	; 0x80028f <__flp>
 7ca:	fe 01       	movw	r30, r28
 7cc:	32 96       	adiw	r30, 0x02	; 2
 7ce:	44 c0       	rjmp	.+136    	; 0x858 <malloc+0x124>
 7d0:	fe 01       	movw	r30, r28
 7d2:	e2 0f       	add	r30, r18
 7d4:	f3 1f       	adc	r31, r19
 7d6:	81 93       	st	Z+, r24
 7d8:	91 93       	st	Z+, r25
 7da:	22 50       	subi	r18, 0x02	; 2
 7dc:	31 09       	sbc	r19, r1
 7de:	39 83       	std	Y+1, r19	; 0x01
 7e0:	28 83       	st	Y, r18
 7e2:	3a c0       	rjmp	.+116    	; 0x858 <malloc+0x124>
 7e4:	20 91 8d 02 	lds	r18, 0x028D	; 0x80028d <__brkval>
 7e8:	30 91 8e 02 	lds	r19, 0x028E	; 0x80028e <__brkval+0x1>
 7ec:	23 2b       	or	r18, r19
 7ee:	41 f4       	brne	.+16     	; 0x800 <malloc+0xcc>
 7f0:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 7f4:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 7f8:	30 93 8e 02 	sts	0x028E, r19	; 0x80028e <__brkval+0x1>
 7fc:	20 93 8d 02 	sts	0x028D, r18	; 0x80028d <__brkval>
 800:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 804:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 808:	21 15       	cp	r18, r1
 80a:	31 05       	cpc	r19, r1
 80c:	41 f4       	brne	.+16     	; 0x81e <malloc+0xea>
 80e:	2d b7       	in	r18, 0x3d	; 61
 810:	3e b7       	in	r19, 0x3e	; 62
 812:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 816:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 81a:	24 1b       	sub	r18, r20
 81c:	35 0b       	sbc	r19, r21
 81e:	e0 91 8d 02 	lds	r30, 0x028D	; 0x80028d <__brkval>
 822:	f0 91 8e 02 	lds	r31, 0x028E	; 0x80028e <__brkval+0x1>
 826:	e2 17       	cp	r30, r18
 828:	f3 07       	cpc	r31, r19
 82a:	a0 f4       	brcc	.+40     	; 0x854 <malloc+0x120>
 82c:	2e 1b       	sub	r18, r30
 82e:	3f 0b       	sbc	r19, r31
 830:	28 17       	cp	r18, r24
 832:	39 07       	cpc	r19, r25
 834:	78 f0       	brcs	.+30     	; 0x854 <malloc+0x120>
 836:	ac 01       	movw	r20, r24
 838:	4e 5f       	subi	r20, 0xFE	; 254
 83a:	5f 4f       	sbci	r21, 0xFF	; 255
 83c:	24 17       	cp	r18, r20
 83e:	35 07       	cpc	r19, r21
 840:	48 f0       	brcs	.+18     	; 0x854 <malloc+0x120>
 842:	4e 0f       	add	r20, r30
 844:	5f 1f       	adc	r21, r31
 846:	50 93 8e 02 	sts	0x028E, r21	; 0x80028e <__brkval+0x1>
 84a:	40 93 8d 02 	sts	0x028D, r20	; 0x80028d <__brkval>
 84e:	81 93       	st	Z+, r24
 850:	91 93       	st	Z+, r25
 852:	02 c0       	rjmp	.+4      	; 0x858 <malloc+0x124>
 854:	e0 e0       	ldi	r30, 0x00	; 0
 856:	f0 e0       	ldi	r31, 0x00	; 0
 858:	cf 01       	movw	r24, r30
 85a:	df 91       	pop	r29
 85c:	cf 91       	pop	r28
 85e:	1f 91       	pop	r17
 860:	0f 91       	pop	r16
 862:	08 95       	ret

00000864 <free>:
 864:	cf 93       	push	r28
 866:	df 93       	push	r29
 868:	00 97       	sbiw	r24, 0x00	; 0
 86a:	09 f4       	brne	.+2      	; 0x86e <free+0xa>
 86c:	81 c0       	rjmp	.+258    	; 0x970 <__stack+0x71>
 86e:	fc 01       	movw	r30, r24
 870:	32 97       	sbiw	r30, 0x02	; 2
 872:	13 82       	std	Z+3, r1	; 0x03
 874:	12 82       	std	Z+2, r1	; 0x02
 876:	a0 91 8f 02 	lds	r26, 0x028F	; 0x80028f <__flp>
 87a:	b0 91 90 02 	lds	r27, 0x0290	; 0x800290 <__flp+0x1>
 87e:	10 97       	sbiw	r26, 0x00	; 0
 880:	81 f4       	brne	.+32     	; 0x8a2 <free+0x3e>
 882:	20 81       	ld	r18, Z
 884:	31 81       	ldd	r19, Z+1	; 0x01
 886:	82 0f       	add	r24, r18
 888:	93 1f       	adc	r25, r19
 88a:	20 91 8d 02 	lds	r18, 0x028D	; 0x80028d <__brkval>
 88e:	30 91 8e 02 	lds	r19, 0x028E	; 0x80028e <__brkval+0x1>
 892:	28 17       	cp	r18, r24
 894:	39 07       	cpc	r19, r25
 896:	51 f5       	brne	.+84     	; 0x8ec <free+0x88>
 898:	f0 93 8e 02 	sts	0x028E, r31	; 0x80028e <__brkval+0x1>
 89c:	e0 93 8d 02 	sts	0x028D, r30	; 0x80028d <__brkval>
 8a0:	67 c0       	rjmp	.+206    	; 0x970 <__stack+0x71>
 8a2:	ed 01       	movw	r28, r26
 8a4:	20 e0       	ldi	r18, 0x00	; 0
 8a6:	30 e0       	ldi	r19, 0x00	; 0
 8a8:	ce 17       	cp	r28, r30
 8aa:	df 07       	cpc	r29, r31
 8ac:	40 f4       	brcc	.+16     	; 0x8be <free+0x5a>
 8ae:	4a 81       	ldd	r20, Y+2	; 0x02
 8b0:	5b 81       	ldd	r21, Y+3	; 0x03
 8b2:	9e 01       	movw	r18, r28
 8b4:	41 15       	cp	r20, r1
 8b6:	51 05       	cpc	r21, r1
 8b8:	f1 f0       	breq	.+60     	; 0x8f6 <free+0x92>
 8ba:	ea 01       	movw	r28, r20
 8bc:	f5 cf       	rjmp	.-22     	; 0x8a8 <free+0x44>
 8be:	d3 83       	std	Z+3, r29	; 0x03
 8c0:	c2 83       	std	Z+2, r28	; 0x02
 8c2:	40 81       	ld	r20, Z
 8c4:	51 81       	ldd	r21, Z+1	; 0x01
 8c6:	84 0f       	add	r24, r20
 8c8:	95 1f       	adc	r25, r21
 8ca:	c8 17       	cp	r28, r24
 8cc:	d9 07       	cpc	r29, r25
 8ce:	59 f4       	brne	.+22     	; 0x8e6 <free+0x82>
 8d0:	88 81       	ld	r24, Y
 8d2:	99 81       	ldd	r25, Y+1	; 0x01
 8d4:	84 0f       	add	r24, r20
 8d6:	95 1f       	adc	r25, r21
 8d8:	02 96       	adiw	r24, 0x02	; 2
 8da:	91 83       	std	Z+1, r25	; 0x01
 8dc:	80 83       	st	Z, r24
 8de:	8a 81       	ldd	r24, Y+2	; 0x02
 8e0:	9b 81       	ldd	r25, Y+3	; 0x03
 8e2:	93 83       	std	Z+3, r25	; 0x03
 8e4:	82 83       	std	Z+2, r24	; 0x02
 8e6:	21 15       	cp	r18, r1
 8e8:	31 05       	cpc	r19, r1
 8ea:	29 f4       	brne	.+10     	; 0x8f6 <free+0x92>
 8ec:	f0 93 90 02 	sts	0x0290, r31	; 0x800290 <__flp+0x1>
 8f0:	e0 93 8f 02 	sts	0x028F, r30	; 0x80028f <__flp>
 8f4:	3d c0       	rjmp	.+122    	; 0x970 <__stack+0x71>
 8f6:	e9 01       	movw	r28, r18
 8f8:	fb 83       	std	Y+3, r31	; 0x03
 8fa:	ea 83       	std	Y+2, r30	; 0x02
 8fc:	49 91       	ld	r20, Y+
 8fe:	59 91       	ld	r21, Y+
 900:	c4 0f       	add	r28, r20
 902:	d5 1f       	adc	r29, r21
 904:	ec 17       	cp	r30, r28
 906:	fd 07       	cpc	r31, r29
 908:	61 f4       	brne	.+24     	; 0x922 <__stack+0x23>
 90a:	80 81       	ld	r24, Z
 90c:	91 81       	ldd	r25, Z+1	; 0x01
 90e:	84 0f       	add	r24, r20
 910:	95 1f       	adc	r25, r21
 912:	02 96       	adiw	r24, 0x02	; 2
 914:	e9 01       	movw	r28, r18
 916:	99 83       	std	Y+1, r25	; 0x01
 918:	88 83       	st	Y, r24
 91a:	82 81       	ldd	r24, Z+2	; 0x02
 91c:	93 81       	ldd	r25, Z+3	; 0x03
 91e:	9b 83       	std	Y+3, r25	; 0x03
 920:	8a 83       	std	Y+2, r24	; 0x02
 922:	e0 e0       	ldi	r30, 0x00	; 0
 924:	f0 e0       	ldi	r31, 0x00	; 0
 926:	12 96       	adiw	r26, 0x02	; 2
 928:	8d 91       	ld	r24, X+
 92a:	9c 91       	ld	r25, X
 92c:	13 97       	sbiw	r26, 0x03	; 3
 92e:	00 97       	sbiw	r24, 0x00	; 0
 930:	19 f0       	breq	.+6      	; 0x938 <__stack+0x39>
 932:	fd 01       	movw	r30, r26
 934:	dc 01       	movw	r26, r24
 936:	f7 cf       	rjmp	.-18     	; 0x926 <__stack+0x27>
 938:	8d 91       	ld	r24, X+
 93a:	9c 91       	ld	r25, X
 93c:	11 97       	sbiw	r26, 0x01	; 1
 93e:	9d 01       	movw	r18, r26
 940:	2e 5f       	subi	r18, 0xFE	; 254
 942:	3f 4f       	sbci	r19, 0xFF	; 255
 944:	82 0f       	add	r24, r18
 946:	93 1f       	adc	r25, r19
 948:	20 91 8d 02 	lds	r18, 0x028D	; 0x80028d <__brkval>
 94c:	30 91 8e 02 	lds	r19, 0x028E	; 0x80028e <__brkval+0x1>
 950:	28 17       	cp	r18, r24
 952:	39 07       	cpc	r19, r25
 954:	69 f4       	brne	.+26     	; 0x970 <__stack+0x71>
 956:	30 97       	sbiw	r30, 0x00	; 0
 958:	29 f4       	brne	.+10     	; 0x964 <__stack+0x65>
 95a:	10 92 90 02 	sts	0x0290, r1	; 0x800290 <__flp+0x1>
 95e:	10 92 8f 02 	sts	0x028F, r1	; 0x80028f <__flp>
 962:	02 c0       	rjmp	.+4      	; 0x968 <__stack+0x69>
 964:	13 82       	std	Z+3, r1	; 0x03
 966:	12 82       	std	Z+2, r1	; 0x02
 968:	b0 93 8e 02 	sts	0x028E, r27	; 0x80028e <__brkval+0x1>
 96c:	a0 93 8d 02 	sts	0x028D, r26	; 0x80028d <__brkval>
 970:	df 91       	pop	r29
 972:	cf 91       	pop	r28
 974:	08 95       	ret

00000976 <__do_global_dtors>:
 976:	10 e0       	ldi	r17, 0x00	; 0
 978:	c6 e3       	ldi	r28, 0x36	; 54
 97a:	d0 e0       	ldi	r29, 0x00	; 0
 97c:	04 c0       	rjmp	.+8      	; 0x986 <__do_global_dtors+0x10>
 97e:	fe 01       	movw	r30, r28
 980:	0e 94 94 03 	call	0x728	; 0x728 <__tablejump2__>
 984:	21 96       	adiw	r28, 0x01	; 1
 986:	c8 33       	cpi	r28, 0x38	; 56
 988:	d1 07       	cpc	r29, r17
 98a:	c9 f7       	brne	.-14     	; 0x97e <__do_global_dtors+0x8>
 98c:	f8 94       	cli

0000098e <__stop_program>:
 98e:	ff cf       	rjmp	.-2      	; 0x98e <__stop_program>
