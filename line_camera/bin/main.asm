
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
  38:	0c 94 b6 02 	jmp	0x56c	; 0x56c <__vector_14>
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
  68:	d1 00       	.word	0x00d1	; ????
  6a:	48 03       	fmul	r20, r16

0000006c <__ctors_end>:
  6c:	d5 00       	.word	0x00d5	; ????
  6e:	4c 03       	fmul	r20, r20

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
  82:	ea e8       	ldi	r30, 0x8A	; 138
  84:	f9 e0       	ldi	r31, 0x09	; 9
  86:	02 c0       	rjmp	.+4      	; 0x8c <__do_copy_data+0x10>
  88:	05 90       	lpm	r0, Z+
  8a:	0d 92       	st	X+, r0
  8c:	ae 33       	cpi	r26, 0x3E	; 62
  8e:	b1 07       	cpc	r27, r17
  90:	d9 f7       	brne	.-10     	; 0x88 <__do_copy_data+0xc>

00000092 <__do_clear_bss>:
  92:	22 e0       	ldi	r18, 0x02	; 2
  94:	ae e3       	ldi	r26, 0x3E	; 62
  96:	b1 e0       	ldi	r27, 0x01	; 1
  98:	01 c0       	rjmp	.+2      	; 0x9c <.do_clear_bss_start>

0000009a <.do_clear_bss_loop>:
  9a:	1d 92       	st	X+, r1

0000009c <.do_clear_bss_start>:
  9c:	a5 3a       	cpi	r26, 0xA5	; 165
  9e:	b2 07       	cpc	r27, r18
  a0:	e1 f7       	brne	.-8      	; 0x9a <.do_clear_bss_loop>

000000a2 <__do_global_ctors>:
  a2:	10 e0       	ldi	r17, 0x00	; 0
  a4:	c6 e3       	ldi	r28, 0x36	; 54
  a6:	d0 e0       	ldi	r29, 0x00	; 0
  a8:	04 c0       	rjmp	.+8      	; 0xb2 <__do_global_ctors+0x10>
  aa:	21 97       	sbiw	r28, 0x01	; 1
  ac:	fe 01       	movw	r30, r28
  ae:	0e 94 91 03 	call	0x722	; 0x722 <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 b8 04 	jmp	0x970	; 0x970 <__do_global_dtors>

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
  d2:	80 ea       	ldi	r24, 0xA0	; 160
  d4:	92 e0       	ldi	r25, 0x02	; 2
  d6:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 8f 02 	call	0x51e	; 0x51e <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 ad 02 	call	0x55a	; 0x55a <_ZN11SampleTimer4waitEv>
  ee:	8e e3       	ldi	r24, 0x3E	; 62
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN10LineCamera4readEv>
  f6:	8e e3       	ldi	r24, 0x3E	; 62
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 0c 01 	call	0x218	; 0x218 <_ZN10LineCamera7processEv>
  fe:	8e e3       	ldi	r24, 0x3E	; 62
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 52 02 	call	0x4a4	; 0x4a4 <_ZN11LinePostion21compute_line_positionEv>
 106:	0e e3       	ldi	r16, 0x3E	; 62
 108:	11 e0       	ldi	r17, 0x01	; 1
 10a:	f8 01       	movw	r30, r16
 10c:	84 81       	ldd	r24, Z+4	; 0x04
 10e:	95 81       	ldd	r25, Z+5	; 0x05
 110:	97 ff       	sbrs	r25, 7
 112:	03 c0       	rjmp	.+6      	; 0x11a <main+0x56>
 114:	63 e1       	ldi	r22, 0x13	; 19
 116:	71 e0       	ldi	r23, 0x01	; 1
 118:	02 c0       	rjmp	.+4      	; 0x11e <main+0x5a>
 11a:	65 e1       	ldi	r22, 0x15	; 21
 11c:	71 e0       	ldi	r23, 0x01	; 1
 11e:	80 ea       	ldi	r24, 0xA0	; 160
 120:	92 e0       	ldi	r25, 0x02	; 2
 122:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 126:	0c 5f       	subi	r16, 0xFC	; 252
 128:	1f 4f       	sbci	r17, 0xFF	; 255
 12a:	f2 e0       	ldi	r31, 0x02	; 2
 12c:	0e 33       	cpi	r16, 0x3E	; 62
 12e:	1f 07       	cpc	r17, r31
 130:	61 f7       	brne	.-40     	; 0x10a <main+0x46>
 132:	61 e1       	ldi	r22, 0x11	; 17
 134:	71 e0       	ldi	r23, 0x01	; 1
 136:	80 ea       	ldi	r24, 0xA0	; 160
 138:	92 e0       	ldi	r25, 0x02	; 2
 13a:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 13e:	8e e3       	ldi	r24, 0x3E	; 62
 140:	91 e0       	ldi	r25, 0x01	; 1
 142:	0e 94 ff 01 	call	0x3fe	; 0x3fe <_ZN11LinePostion3getEv>
 146:	8c 01       	movw	r16, r24
 148:	67 e1       	ldi	r22, 0x17	; 23
 14a:	71 e0       	ldi	r23, 0x01	; 1
 14c:	80 ea       	ldi	r24, 0xA0	; 160
 14e:	92 e0       	ldi	r25, 0x02	; 2
 150:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 154:	a8 01       	movw	r20, r16
 156:	11 0f       	add	r17, r17
 158:	66 0b       	sbc	r22, r22
 15a:	77 0b       	sbc	r23, r23
 15c:	80 ea       	ldi	r24, 0xA0	; 160
 15e:	92 e0       	ldi	r25, 0x02	; 2
 160:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putiEl>
 164:	64 e2       	ldi	r22, 0x24	; 36
 166:	71 e0       	ldi	r23, 0x01	; 1
 168:	80 ea       	ldi	r24, 0xA0	; 160
 16a:	92 e0       	ldi	r25, 0x02	; 2
 16c:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 170:	8e e3       	ldi	r24, 0x3E	; 62
 172:	91 e0       	ldi	r25, 0x01	; 1
 174:	0e 94 05 02 	call	0x40a	; 0x40a <_ZN11LinePostion14get_confidenceEv>
 178:	6b 01       	movw	r12, r22
 17a:	7c 01       	movw	r14, r24
 17c:	6e e1       	ldi	r22, 0x1E	; 30
 17e:	71 e0       	ldi	r23, 0x01	; 1
 180:	80 ea       	ldi	r24, 0xA0	; 160
 182:	92 e0       	ldi	r25, 0x02	; 2
 184:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 188:	b7 01       	movw	r22, r14
 18a:	a6 01       	movw	r20, r12
 18c:	80 ea       	ldi	r24, 0xA0	; 160
 18e:	92 e0       	ldi	r25, 0x02	; 2
 190:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putiEl>
 194:	61 e1       	ldi	r22, 0x11	; 17
 196:	71 e0       	ldi	r23, 0x01	; 1
 198:	80 ea       	ldi	r24, 0xA0	; 160
 19a:	92 e0       	ldi	r25, 0x02	; 2
 19c:	0e 94 d9 02 	call	0x5b2	; 0x5b2 <_ZN8Terminal4putsEPKc>
 1a0:	a2 cf       	rjmp	.-188    	; 0xe6 <main+0x22>

000001a2 <_GLOBAL__sub_I_line_position>:
 1a2:	8e e3       	ldi	r24, 0x3E	; 62
 1a4:	91 e0       	ldi	r25, 0x01	; 1
 1a6:	0c 94 d8 01 	jmp	0x3b0	; 0x3b0 <_ZN11LinePostionC1Ev>

000001aa <_GLOBAL__sub_D_line_position>:
 1aa:	8e e3       	ldi	r24, 0x3E	; 62
 1ac:	91 e0       	ldi	r25, 0x01	; 1
 1ae:	0c 94 fd 01 	jmp	0x3fa	; 0x3fa <_ZN11LinePostionD1Ev>

000001b2 <_ZN5USARTC1Ev>:
 1b2:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 1b6:	80 e1       	ldi	r24, 0x10	; 16
 1b8:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 1bc:	e2 ec       	ldi	r30, 0xC2	; 194
 1be:	f0 e0       	ldi	r31, 0x00	; 0
 1c0:	80 81       	ld	r24, Z
 1c2:	86 60       	ori	r24, 0x06	; 6
 1c4:	80 83       	st	Z, r24
 1c6:	e1 ec       	ldi	r30, 0xC1	; 193
 1c8:	f0 e0       	ldi	r31, 0x00	; 0
 1ca:	80 81       	ld	r24, Z
 1cc:	88 61       	ori	r24, 0x18	; 24
 1ce:	80 83       	st	Z, r24
 1d0:	08 95       	ret

000001d2 <_ZN5USARTD1Ev>:
 1d2:	08 95       	ret

000001d4 <_ZN5USART8put_charEc>:
 1d4:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 1d8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 1dc:	85 fd       	sbrc	r24, 5
 1de:	02 c0       	rjmp	.+4      	; 0x1e4 <_ZN5USART8put_charEc+0x10>
 1e0:	00 00       	nop
 1e2:	fa cf       	rjmp	.-12     	; 0x1d8 <_ZN5USART8put_charEc+0x4>
 1e4:	08 95       	ret

000001e6 <_ZN5ArrayIiLj128EED1Ev>:
 1e6:	08 95       	ret

000001e8 <_ZN5ArrayIiLj128EE4sizeEv>:
 1e8:	80 e8       	ldi	r24, 0x80	; 128
 1ea:	90 e0       	ldi	r25, 0x00	; 0
 1ec:	08 95       	ret

000001ee <_ZN5ArrayIiLj128EEixEj>:
 1ee:	6e 5f       	subi	r22, 0xFE	; 254
 1f0:	7f 4f       	sbci	r23, 0xFF	; 255
 1f2:	66 0f       	add	r22, r22
 1f4:	77 1f       	adc	r23, r23
 1f6:	86 0f       	add	r24, r22
 1f8:	97 1f       	adc	r25, r23
 1fa:	08 95       	ret

000001fc <_ZN5ArrayIiLj128EED0Ev>:
 1fc:	0c 94 c5 02 	jmp	0x58a	; 0x58a <_ZdlPv>

00000200 <_ZN10LineCameraC1Ev>:
 200:	2a e2       	ldi	r18, 0x2A	; 42
 202:	31 e0       	ldi	r19, 0x01	; 1
 204:	fc 01       	movw	r30, r24
 206:	31 83       	std	Z+1, r19	; 0x01
 208:	20 83       	st	Z, r18
 20a:	38 98       	cbi	0x07, 0	; 7
 20c:	39 9a       	sbi	0x07, 1	; 7
 20e:	3a 9a       	sbi	0x07, 2	; 7
 210:	42 98       	cbi	0x08, 2	; 8
 212:	41 98       	cbi	0x08, 1	; 8
 214:	08 95       	ret

00000216 <_ZN10LineCameraD1Ev>:
 216:	08 95       	ret

00000218 <_ZN10LineCamera7processEv>:
 218:	8f 92       	push	r8
 21a:	9f 92       	push	r9
 21c:	af 92       	push	r10
 21e:	bf 92       	push	r11
 220:	ef 92       	push	r14
 222:	ff 92       	push	r15
 224:	0f 93       	push	r16
 226:	1f 93       	push	r17
 228:	cf 93       	push	r28
 22a:	df 93       	push	r29
 22c:	ec 01       	movw	r28, r24
 22e:	8c 01       	movw	r16, r24
 230:	0c 5f       	subi	r16, 0xFC	; 252
 232:	1f 4f       	sbci	r17, 0xFF	; 255
 234:	7c 01       	movw	r14, r24
 236:	8c ef       	ldi	r24, 0xFC	; 252
 238:	e8 1a       	sub	r14, r24
 23a:	8e ef       	ldi	r24, 0xFE	; 254
 23c:	f8 0a       	sbc	r15, r24
 23e:	f8 01       	movw	r30, r16
 240:	60 e0       	ldi	r22, 0x00	; 0
 242:	70 e0       	ldi	r23, 0x00	; 0
 244:	cb 01       	movw	r24, r22
 246:	81 90       	ld	r8, Z+
 248:	91 90       	ld	r9, Z+
 24a:	09 2c       	mov	r0, r9
 24c:	00 0c       	add	r0, r0
 24e:	aa 08       	sbc	r10, r10
 250:	bb 08       	sbc	r11, r11
 252:	68 0d       	add	r22, r8
 254:	79 1d       	adc	r23, r9
 256:	8a 1d       	adc	r24, r10
 258:	9b 1d       	adc	r25, r11
 25a:	ee 15       	cp	r30, r14
 25c:	ff 05       	cpc	r31, r15
 25e:	99 f7       	brne	.-26     	; 0x246 <_ZN10LineCamera7processEv+0x2e>
 260:	20 e8       	ldi	r18, 0x80	; 128
 262:	30 e0       	ldi	r19, 0x00	; 0
 264:	40 e0       	ldi	r20, 0x00	; 0
 266:	50 e0       	ldi	r21, 0x00	; 0
 268:	0e 94 72 03 	call	0x6e4	; 0x6e4 <__divmodsi4>
 26c:	f8 01       	movw	r30, r16
 26e:	80 81       	ld	r24, Z
 270:	91 81       	ldd	r25, Z+1	; 0x01
 272:	82 1b       	sub	r24, r18
 274:	93 0b       	sbc	r25, r19
 276:	81 93       	st	Z+, r24
 278:	91 93       	st	Z+, r25
 27a:	8f 01       	movw	r16, r30
 27c:	ee 15       	cp	r30, r14
 27e:	ff 05       	cpc	r31, r15
 280:	a9 f7       	brne	.-22     	; 0x26c <_ZN10LineCamera7processEv+0x54>
 282:	fe 01       	movw	r30, r28
 284:	ce 01       	movw	r24, r28
 286:	93 95       	inc	r25
 288:	2f ef       	ldi	r18, 0xFF	; 255
 28a:	3f ef       	ldi	r19, 0xFF	; 255
 28c:	41 e0       	ldi	r20, 0x01	; 1
 28e:	50 e0       	ldi	r21, 0x00	; 0
 290:	64 81       	ldd	r22, Z+4	; 0x04
 292:	75 81       	ldd	r23, Z+5	; 0x05
 294:	16 16       	cp	r1, r22
 296:	17 06       	cpc	r1, r23
 298:	1c f4       	brge	.+6      	; 0x2a0 <_ZN10LineCamera7processEv+0x88>
 29a:	55 83       	std	Z+5, r21	; 0x05
 29c:	44 83       	std	Z+4, r20	; 0x04
 29e:	02 c0       	rjmp	.+4      	; 0x2a4 <_ZN10LineCamera7processEv+0x8c>
 2a0:	35 83       	std	Z+5, r19	; 0x05
 2a2:	24 83       	std	Z+4, r18	; 0x04
 2a4:	32 96       	adiw	r30, 0x02	; 2
 2a6:	8e 17       	cp	r24, r30
 2a8:	9f 07       	cpc	r25, r31
 2aa:	91 f7       	brne	.-28     	; 0x290 <_ZN10LineCamera7processEv+0x78>
 2ac:	df 91       	pop	r29
 2ae:	cf 91       	pop	r28
 2b0:	1f 91       	pop	r17
 2b2:	0f 91       	pop	r16
 2b4:	ff 90       	pop	r15
 2b6:	ef 90       	pop	r14
 2b8:	bf 90       	pop	r11
 2ba:	af 90       	pop	r10
 2bc:	9f 90       	pop	r9
 2be:	8f 90       	pop	r8
 2c0:	08 95       	ret

000002c2 <_ZN10LineCamera8adc_initEh>:
 2c2:	ec e7       	ldi	r30, 0x7C	; 124
 2c4:	f0 e0       	ldi	r31, 0x00	; 0
 2c6:	80 e4       	ldi	r24, 0x40	; 64
 2c8:	80 83       	st	Z, r24
 2ca:	83 e8       	ldi	r24, 0x83	; 131
 2cc:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2d0:	80 81       	ld	r24, Z
 2d2:	67 70       	andi	r22, 0x07	; 7
 2d4:	68 2b       	or	r22, r24
 2d6:	60 83       	st	Z, r22
 2d8:	08 95       	ret

000002da <_ZN10LineCamera8adc_readEv>:
 2da:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2de:	80 64       	ori	r24, 0x40	; 64
 2e0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2e4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 2e8:	86 ff       	sbrs	r24, 6
 2ea:	02 c0       	rjmp	.+4      	; 0x2f0 <_ZN10LineCamera8adc_readEv+0x16>
 2ec:	00 00       	nop
 2ee:	fa cf       	rjmp	.-12     	; 0x2e4 <_ZN10LineCamera8adc_readEv+0xa>
 2f0:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 2f4:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 2f8:	08 95       	ret

000002fa <_ZN10LineCamera11delay_microEv>:
	...
 31a:	08 95       	ret

0000031c <_ZN10LineCamera4readEv>:
 31c:	ef 92       	push	r14
 31e:	ff 92       	push	r15
 320:	0f 93       	push	r16
 322:	1f 93       	push	r17
 324:	cf 93       	push	r28
 326:	df 93       	push	r29
 328:	ec 01       	movw	r28, r24
 32a:	60 e0       	ldi	r22, 0x00	; 0
 32c:	0e 94 61 01 	call	0x2c2	; 0x2c2 <_ZN10LineCamera8adc_initEh>
 330:	ce 01       	movw	r24, r28
 332:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 336:	41 98       	cbi	0x08, 1	; 8
 338:	42 9a       	sbi	0x08, 2	; 8
 33a:	41 9a       	sbi	0x08, 1	; 8
 33c:	42 98       	cbi	0x08, 2	; 8
 33e:	ce 01       	movw	r24, r28
 340:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 344:	8e 01       	movw	r16, r28
 346:	0c 5f       	subi	r16, 0xFC	; 252
 348:	1f 4f       	sbci	r17, 0xFF	; 255
 34a:	7e 01       	movw	r14, r28
 34c:	8c ef       	ldi	r24, 0xFC	; 252
 34e:	e8 1a       	sub	r14, r24
 350:	8e ef       	ldi	r24, 0xFE	; 254
 352:	f8 0a       	sbc	r15, r24
 354:	ce 01       	movw	r24, r28
 356:	0e 94 6d 01 	call	0x2da	; 0x2da <_ZN10LineCamera8adc_readEv>
 35a:	95 95       	asr	r25
 35c:	87 95       	ror	r24
 35e:	95 95       	asr	r25
 360:	87 95       	ror	r24
 362:	f8 01       	movw	r30, r16
 364:	81 93       	st	Z+, r24
 366:	91 93       	st	Z+, r25
 368:	8f 01       	movw	r16, r30
 36a:	41 98       	cbi	0x08, 1	; 8
 36c:	ce 01       	movw	r24, r28
 36e:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 372:	41 9a       	sbi	0x08, 1	; 8
 374:	0e 15       	cp	r16, r14
 376:	1f 05       	cpc	r17, r15
 378:	69 f7       	brne	.-38     	; 0x354 <_ZN10LineCamera4readEv+0x38>
 37a:	41 98       	cbi	0x08, 1	; 8
 37c:	ce 01       	movw	r24, r28
 37e:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 382:	41 9a       	sbi	0x08, 1	; 8
 384:	ce 01       	movw	r24, r28
 386:	df 91       	pop	r29
 388:	cf 91       	pop	r28
 38a:	1f 91       	pop	r17
 38c:	0f 91       	pop	r16
 38e:	ff 90       	pop	r15
 390:	ef 90       	pop	r14
 392:	0c 94 7d 01 	jmp	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>

00000396 <_ZN5ArrayIiLj40EED1Ev>:
 396:	08 95       	ret

00000398 <_ZN5ArrayIiLj40EE4sizeEv>:
 398:	88 e2       	ldi	r24, 0x28	; 40
 39a:	90 e0       	ldi	r25, 0x00	; 0
 39c:	08 95       	ret

0000039e <_ZN5ArrayIiLj40EEixEj>:
 39e:	6e 5f       	subi	r22, 0xFE	; 254
 3a0:	7f 4f       	sbci	r23, 0xFF	; 255
 3a2:	66 0f       	add	r22, r22
 3a4:	77 1f       	adc	r23, r23
 3a6:	86 0f       	add	r24, r22
 3a8:	97 1f       	adc	r25, r23
 3aa:	08 95       	ret

000003ac <_ZN5ArrayIiLj40EED0Ev>:
 3ac:	0c 94 c5 02 	jmp	0x58a	; 0x58a <_ZdlPv>

000003b0 <_ZN11LinePostionC1Ev>:
 3b0:	cf 93       	push	r28
 3b2:	df 93       	push	r29
 3b4:	ec 01       	movw	r28, r24
 3b6:	0e 94 00 01 	call	0x200	; 0x200 <_ZN10LineCameraC1Ev>
 3ba:	fe 01       	movw	r30, r28
 3bc:	e3 5f       	subi	r30, 0xF3	; 243
 3be:	fe 4f       	sbci	r31, 0xFE	; 254
 3c0:	86 e3       	ldi	r24, 0x36	; 54
 3c2:	91 e0       	ldi	r25, 0x01	; 1
 3c4:	91 83       	std	Z+1, r25	; 0x01
 3c6:	80 83       	st	Z, r24
 3c8:	34 96       	adiw	r30, 0x04	; 4
 3ca:	ce 01       	movw	r24, r28
 3cc:	8f 59       	subi	r24, 0x9F	; 159
 3ce:	9e 4f       	sbci	r25, 0xFE	; 254
 3d0:	21 e0       	ldi	r18, 0x01	; 1
 3d2:	30 e0       	ldi	r19, 0x00	; 0
 3d4:	21 93       	st	Z+, r18
 3d6:	31 93       	st	Z+, r19
 3d8:	e8 17       	cp	r30, r24
 3da:	f9 07       	cpc	r31, r25
 3dc:	d9 f7       	brne	.-10     	; 0x3d4 <_ZN11LinePostionC1Ev+0x24>
 3de:	fe 01       	movw	r30, r28
 3e0:	e7 5f       	subi	r30, 0xF7	; 247
 3e2:	fe 4f       	sbci	r31, 0xFE	; 254
 3e4:	10 82       	st	Z, r1
 3e6:	11 82       	std	Z+1, r1	; 0x01
 3e8:	12 82       	std	Z+2, r1	; 0x02
 3ea:	13 82       	std	Z+3, r1	; 0x03
 3ec:	c9 5f       	subi	r28, 0xF9	; 249
 3ee:	de 4f       	sbci	r29, 0xFE	; 254
 3f0:	19 82       	std	Y+1, r1	; 0x01
 3f2:	18 82       	st	Y, r1
 3f4:	df 91       	pop	r29
 3f6:	cf 91       	pop	r28
 3f8:	08 95       	ret

000003fa <_ZN11LinePostionD1Ev>:
 3fa:	0c 94 0b 01 	jmp	0x216	; 0x216 <_ZN10LineCameraD1Ev>

000003fe <_ZN11LinePostion3getEv>:
 3fe:	89 5f       	subi	r24, 0xF9	; 249
 400:	9e 4f       	sbci	r25, 0xFE	; 254
 402:	fc 01       	movw	r30, r24
 404:	80 81       	ld	r24, Z
 406:	91 81       	ldd	r25, Z+1	; 0x01
 408:	08 95       	ret

0000040a <_ZN11LinePostion14get_confidenceEv>:
 40a:	87 5f       	subi	r24, 0xF7	; 247
 40c:	9e 4f       	sbci	r25, 0xFE	; 254
 40e:	fc 01       	movw	r30, r24
 410:	60 81       	ld	r22, Z
 412:	71 81       	ldd	r23, Z+1	; 0x01
 414:	82 81       	ldd	r24, Z+2	; 0x02
 416:	93 81       	ldd	r25, Z+3	; 0x03
 418:	08 95       	ret

0000041a <_ZN11LinePostion19process_convolutionEj>:
 41a:	cf 92       	push	r12
 41c:	df 92       	push	r13
 41e:	ef 92       	push	r14
 420:	ff 92       	push	r15
 422:	0f 93       	push	r16
 424:	1f 93       	push	r17
 426:	cf 93       	push	r28
 428:	df 93       	push	r29
 42a:	db 01       	movw	r26, r22
 42c:	ac 01       	movw	r20, r24
 42e:	4f 5e       	subi	r20, 0xEF	; 239
 430:	5e 4f       	sbci	r21, 0xFE	; 254
 432:	fb 01       	movw	r30, r22
 434:	ee 0f       	add	r30, r30
 436:	ff 1f       	adc	r31, r31
 438:	20 e0       	ldi	r18, 0x00	; 0
 43a:	30 e0       	ldi	r19, 0x00	; 0
 43c:	60 e0       	ldi	r22, 0x00	; 0
 43e:	70 e0       	ldi	r23, 0x00	; 0
 440:	cb 01       	movw	r24, r22
 442:	8f 01       	movw	r16, r30
 444:	0d 50       	subi	r16, 0x0D	; 13
 446:	11 40       	sbci	r17, 0x01	; 1
 448:	ed 01       	movw	r28, r26
 44a:	c2 0f       	add	r28, r18
 44c:	d3 1f       	adc	r29, r19
 44e:	c0 38       	cpi	r28, 0x80	; 128
 450:	d1 05       	cpc	r29, r1
 452:	c0 f4       	brcc	.+48     	; 0x484 <_ZN11LinePostion19process_convolutionEj+0x6a>
 454:	ea 01       	movw	r28, r20
 456:	c0 0f       	add	r28, r16
 458:	d1 1f       	adc	r29, r17
 45a:	09 90       	ld	r0, Y+
 45c:	d8 81       	ld	r29, Y
 45e:	c0 2d       	mov	r28, r0
 460:	fa 01       	movw	r30, r20
 462:	e0 80       	ld	r14, Z
 464:	f1 80       	ldd	r15, Z+1	; 0x01
 466:	ce 9d       	mul	r28, r14
 468:	60 01       	movw	r12, r0
 46a:	cf 9d       	mul	r28, r15
 46c:	d0 0c       	add	r13, r0
 46e:	de 9d       	mul	r29, r14
 470:	d0 0c       	add	r13, r0
 472:	11 24       	eor	r1, r1
 474:	0d 2c       	mov	r0, r13
 476:	00 0c       	add	r0, r0
 478:	ee 08       	sbc	r14, r14
 47a:	ff 08       	sbc	r15, r15
 47c:	6c 0d       	add	r22, r12
 47e:	7d 1d       	adc	r23, r13
 480:	8e 1d       	adc	r24, r14
 482:	9f 1d       	adc	r25, r15
 484:	2f 5f       	subi	r18, 0xFF	; 255
 486:	3f 4f       	sbci	r19, 0xFF	; 255
 488:	4e 5f       	subi	r20, 0xFE	; 254
 48a:	5f 4f       	sbci	r21, 0xFF	; 255
 48c:	28 32       	cpi	r18, 0x28	; 40
 48e:	31 05       	cpc	r19, r1
 490:	d9 f6       	brne	.-74     	; 0x448 <_ZN11LinePostion19process_convolutionEj+0x2e>
 492:	df 91       	pop	r29
 494:	cf 91       	pop	r28
 496:	1f 91       	pop	r17
 498:	0f 91       	pop	r16
 49a:	ff 90       	pop	r15
 49c:	ef 90       	pop	r14
 49e:	df 90       	pop	r13
 4a0:	cf 90       	pop	r12
 4a2:	08 95       	ret

000004a4 <_ZN11LinePostion21compute_line_positionEv>:
 4a4:	af 92       	push	r10
 4a6:	bf 92       	push	r11
 4a8:	cf 92       	push	r12
 4aa:	df 92       	push	r13
 4ac:	ef 92       	push	r14
 4ae:	ff 92       	push	r15
 4b0:	0f 93       	push	r16
 4b2:	1f 93       	push	r17
 4b4:	cf 93       	push	r28
 4b6:	df 93       	push	r29
 4b8:	ec 01       	movw	r28, r24
 4ba:	00 e0       	ldi	r16, 0x00	; 0
 4bc:	10 e0       	ldi	r17, 0x00	; 0
 4be:	c1 2c       	mov	r12, r1
 4c0:	8f e1       	ldi	r24, 0x1F	; 31
 4c2:	d8 2e       	mov	r13, r24
 4c4:	8a e0       	ldi	r24, 0x0A	; 10
 4c6:	e8 2e       	mov	r14, r24
 4c8:	8a ef       	ldi	r24, 0xFA	; 250
 4ca:	f8 2e       	mov	r15, r24
 4cc:	5e 01       	movw	r10, r28
 4ce:	89 ef       	ldi	r24, 0xF9	; 249
 4d0:	a8 1a       	sub	r10, r24
 4d2:	8e ef       	ldi	r24, 0xFE	; 254
 4d4:	b8 0a       	sbc	r11, r24
 4d6:	b8 01       	movw	r22, r16
 4d8:	ce 01       	movw	r24, r28
 4da:	0e 94 0d 02 	call	0x41a	; 0x41a <_ZN11LinePostion19process_convolutionEj>
 4de:	c6 16       	cp	r12, r22
 4e0:	d7 06       	cpc	r13, r23
 4e2:	e8 06       	cpc	r14, r24
 4e4:	f9 06       	cpc	r15, r25
 4e6:	2c f4       	brge	.+10     	; 0x4f2 <_ZN11LinePostion21compute_line_positionEv+0x4e>
 4e8:	f5 01       	movw	r30, r10
 4ea:	11 83       	std	Z+1, r17	; 0x01
 4ec:	00 83       	st	Z, r16
 4ee:	6b 01       	movw	r12, r22
 4f0:	7c 01       	movw	r14, r24
 4f2:	0f 5f       	subi	r16, 0xFF	; 255
 4f4:	1f 4f       	sbci	r17, 0xFF	; 255
 4f6:	00 38       	cpi	r16, 0x80	; 128
 4f8:	11 05       	cpc	r17, r1
 4fa:	69 f7       	brne	.-38     	; 0x4d6 <_ZN11LinePostion21compute_line_positionEv+0x32>
 4fc:	c7 5f       	subi	r28, 0xF7	; 247
 4fe:	de 4f       	sbci	r29, 0xFE	; 254
 500:	c8 82       	st	Y, r12
 502:	d9 82       	std	Y+1, r13	; 0x01
 504:	ea 82       	std	Y+2, r14	; 0x02
 506:	fb 82       	std	Y+3, r15	; 0x03
 508:	df 91       	pop	r29
 50a:	cf 91       	pop	r28
 50c:	1f 91       	pop	r17
 50e:	0f 91       	pop	r16
 510:	ff 90       	pop	r15
 512:	ef 90       	pop	r14
 514:	df 90       	pop	r13
 516:	cf 90       	pop	r12
 518:	bf 90       	pop	r11
 51a:	af 90       	pop	r10
 51c:	08 95       	ret

0000051e <_ZN11SampleTimerC1Ej>:
 51e:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <g_sample_timer_flag>
 522:	84 b5       	in	r24, 0x24	; 36
 524:	82 60       	ori	r24, 0x02	; 2
 526:	84 bd       	out	0x24, r24	; 36
 528:	9b 01       	movw	r18, r22
 52a:	86 e0       	ldi	r24, 0x06	; 6
 52c:	22 0f       	add	r18, r18
 52e:	33 1f       	adc	r19, r19
 530:	8a 95       	dec	r24
 532:	e1 f7       	brne	.-8      	; 0x52c <_ZN11SampleTimerC1Ej+0xe>
 534:	40 e0       	ldi	r20, 0x00	; 0
 536:	50 e0       	ldi	r21, 0x00	; 0
 538:	60 e0       	ldi	r22, 0x00	; 0
 53a:	74 e2       	ldi	r23, 0x24	; 36
 53c:	84 ef       	ldi	r24, 0xF4	; 244
 53e:	90 e0       	ldi	r25, 0x00	; 0
 540:	0e 94 50 03 	call	0x6a0	; 0x6a0 <__udivmodsi4>
 544:	21 50       	subi	r18, 0x01	; 1
 546:	27 bd       	out	0x27, r18	; 39
 548:	83 e0       	ldi	r24, 0x03	; 3
 54a:	85 bd       	out	0x25, r24	; 37
 54c:	ee e6       	ldi	r30, 0x6E	; 110
 54e:	f0 e0       	ldi	r31, 0x00	; 0
 550:	80 81       	ld	r24, Z
 552:	82 60       	ori	r24, 0x02	; 2
 554:	80 83       	st	Z, r24
 556:	78 94       	sei
 558:	08 95       	ret

0000055a <_ZN11SampleTimer4waitEv>:
 55a:	80 91 9f 02 	lds	r24, 0x029F	; 0x80029f <g_sample_timer_flag>
 55e:	88 23       	and	r24, r24
 560:	19 f0       	breq	.+6      	; 0x568 <_ZN11SampleTimer4waitEv+0xe>
 562:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <g_sample_timer_flag>
 566:	08 95       	ret
 568:	00 00       	nop
 56a:	f7 cf       	rjmp	.-18     	; 0x55a <_ZN11SampleTimer4waitEv>

0000056c <__vector_14>:
 56c:	1f 92       	push	r1
 56e:	0f 92       	push	r0
 570:	0f b6       	in	r0, 0x3f	; 63
 572:	0f 92       	push	r0
 574:	11 24       	eor	r1, r1
 576:	8f 93       	push	r24
 578:	81 e0       	ldi	r24, 0x01	; 1
 57a:	80 93 9f 02 	sts	0x029F, r24	; 0x80029f <g_sample_timer_flag>
 57e:	8f 91       	pop	r24
 580:	0f 90       	pop	r0
 582:	0f be       	out	0x3f, r0	; 63
 584:	0f 90       	pop	r0
 586:	1f 90       	pop	r1
 588:	18 95       	reti

0000058a <_ZdlPv>:
 58a:	0c 94 2f 04 	jmp	0x85e	; 0x85e <free>

0000058e <_ZN8Terminal4putsEPc>:
 58e:	0f 93       	push	r16
 590:	1f 93       	push	r17
 592:	cf 93       	push	r28
 594:	df 93       	push	r29
 596:	8c 01       	movw	r16, r24
 598:	eb 01       	movw	r28, r22
 59a:	69 91       	ld	r22, Y+
 59c:	66 23       	and	r22, r22
 59e:	21 f0       	breq	.+8      	; 0x5a8 <_ZN8Terminal4putsEPc+0x1a>
 5a0:	c8 01       	movw	r24, r16
 5a2:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN5USART8put_charEc>
 5a6:	f9 cf       	rjmp	.-14     	; 0x59a <_ZN8Terminal4putsEPc+0xc>
 5a8:	df 91       	pop	r29
 5aa:	cf 91       	pop	r28
 5ac:	1f 91       	pop	r17
 5ae:	0f 91       	pop	r16
 5b0:	08 95       	ret

000005b2 <_ZN8Terminal4putsEPKc>:
 5b2:	0c 94 c7 02 	jmp	0x58e	; 0x58e <_ZN8Terminal4putsEPc>

000005b6 <_ZN8Terminal4putiEl>:
 5b6:	8f 92       	push	r8
 5b8:	9f 92       	push	r9
 5ba:	af 92       	push	r10
 5bc:	bf 92       	push	r11
 5be:	cf 92       	push	r12
 5c0:	df 92       	push	r13
 5c2:	ef 92       	push	r14
 5c4:	ff 92       	push	r15
 5c6:	0f 93       	push	r16
 5c8:	1f 93       	push	r17
 5ca:	cf 93       	push	r28
 5cc:	df 93       	push	r29
 5ce:	cd b7       	in	r28, 0x3d	; 61
 5d0:	de b7       	in	r29, 0x3e	; 62
 5d2:	2c 97       	sbiw	r28, 0x0c	; 12
 5d4:	0f b6       	in	r0, 0x3f	; 63
 5d6:	f8 94       	cli
 5d8:	de bf       	out	0x3e, r29	; 62
 5da:	0f be       	out	0x3f, r0	; 63
 5dc:	cd bf       	out	0x3d, r28	; 61
 5de:	7c 01       	movw	r14, r24
 5e0:	77 ff       	sbrs	r23, 7
 5e2:	09 c0       	rjmp	.+18     	; 0x5f6 <_ZN8Terminal4putiEl+0x40>
 5e4:	70 95       	com	r23
 5e6:	60 95       	com	r22
 5e8:	50 95       	com	r21
 5ea:	41 95       	neg	r20
 5ec:	5f 4f       	sbci	r21, 0xFF	; 255
 5ee:	6f 4f       	sbci	r22, 0xFF	; 255
 5f0:	7f 4f       	sbci	r23, 0xFF	; 255
 5f2:	01 e0       	ldi	r16, 0x01	; 1
 5f4:	01 c0       	rjmp	.+2      	; 0x5f8 <_ZN8Terminal4putiEl+0x42>
 5f6:	00 e0       	ldi	r16, 0x00	; 0
 5f8:	1c 86       	std	Y+12, r1	; 0x0c
 5fa:	1a e0       	ldi	r17, 0x0A	; 10
 5fc:	9a e0       	ldi	r25, 0x0A	; 10
 5fe:	89 2e       	mov	r8, r25
 600:	91 2c       	mov	r9, r1
 602:	a1 2c       	mov	r10, r1
 604:	b1 2c       	mov	r11, r1
 606:	cc 24       	eor	r12, r12
 608:	c3 94       	inc	r12
 60a:	d1 2c       	mov	r13, r1
 60c:	cc 0e       	add	r12, r28
 60e:	dd 1e       	adc	r13, r29
 610:	c1 0e       	add	r12, r17
 612:	d1 1c       	adc	r13, r1
 614:	cb 01       	movw	r24, r22
 616:	ba 01       	movw	r22, r20
 618:	a5 01       	movw	r20, r10
 61a:	94 01       	movw	r18, r8
 61c:	0e 94 72 03 	call	0x6e4	; 0x6e4 <__divmodsi4>
 620:	94 2f       	mov	r25, r20
 622:	85 2f       	mov	r24, r21
 624:	60 5d       	subi	r22, 0xD0	; 208
 626:	f6 01       	movw	r30, r12
 628:	60 83       	st	Z, r22
 62a:	a9 01       	movw	r20, r18
 62c:	69 2f       	mov	r22, r25
 62e:	78 2f       	mov	r23, r24
 630:	8f ef       	ldi	r24, 0xFF	; 255
 632:	81 0f       	add	r24, r17
 634:	41 15       	cp	r20, r1
 636:	51 05       	cpc	r21, r1
 638:	61 05       	cpc	r22, r1
 63a:	71 05       	cpc	r23, r1
 63c:	11 f0       	breq	.+4      	; 0x642 <_ZN8Terminal4putiEl+0x8c>
 63e:	18 2f       	mov	r17, r24
 640:	e2 cf       	rjmp	.-60     	; 0x606 <_ZN8Terminal4putiEl+0x50>
 642:	00 23       	and	r16, r16
 644:	49 f0       	breq	.+18     	; 0x658 <_ZN8Terminal4putiEl+0xa2>
 646:	e1 e0       	ldi	r30, 0x01	; 1
 648:	f0 e0       	ldi	r31, 0x00	; 0
 64a:	ec 0f       	add	r30, r28
 64c:	fd 1f       	adc	r31, r29
 64e:	e8 0f       	add	r30, r24
 650:	f1 1d       	adc	r31, r1
 652:	9d e2       	ldi	r25, 0x2D	; 45
 654:	90 83       	st	Z, r25
 656:	18 2f       	mov	r17, r24
 658:	61 e0       	ldi	r22, 0x01	; 1
 65a:	70 e0       	ldi	r23, 0x00	; 0
 65c:	6c 0f       	add	r22, r28
 65e:	7d 1f       	adc	r23, r29
 660:	61 0f       	add	r22, r17
 662:	71 1d       	adc	r23, r1
 664:	c7 01       	movw	r24, r14
 666:	0e 94 c7 02 	call	0x58e	; 0x58e <_ZN8Terminal4putsEPc>
 66a:	2c 96       	adiw	r28, 0x0c	; 12
 66c:	0f b6       	in	r0, 0x3f	; 63
 66e:	f8 94       	cli
 670:	de bf       	out	0x3e, r29	; 62
 672:	0f be       	out	0x3f, r0	; 63
 674:	cd bf       	out	0x3d, r28	; 61
 676:	df 91       	pop	r29
 678:	cf 91       	pop	r28
 67a:	1f 91       	pop	r17
 67c:	0f 91       	pop	r16
 67e:	ff 90       	pop	r15
 680:	ef 90       	pop	r14
 682:	df 90       	pop	r13
 684:	cf 90       	pop	r12
 686:	bf 90       	pop	r11
 688:	af 90       	pop	r10
 68a:	9f 90       	pop	r9
 68c:	8f 90       	pop	r8
 68e:	08 95       	ret

00000690 <_GLOBAL__sub_I_terminal>:
 690:	80 ea       	ldi	r24, 0xA0	; 160
 692:	92 e0       	ldi	r25, 0x02	; 2
 694:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <_ZN5USARTC1Ev>

00000698 <_GLOBAL__sub_D_terminal>:
 698:	80 ea       	ldi	r24, 0xA0	; 160
 69a:	92 e0       	ldi	r25, 0x02	; 2
 69c:	0c 94 e9 00 	jmp	0x1d2	; 0x1d2 <_ZN5USARTD1Ev>

000006a0 <__udivmodsi4>:
 6a0:	a1 e2       	ldi	r26, 0x21	; 33
 6a2:	1a 2e       	mov	r1, r26
 6a4:	aa 1b       	sub	r26, r26
 6a6:	bb 1b       	sub	r27, r27
 6a8:	fd 01       	movw	r30, r26
 6aa:	0d c0       	rjmp	.+26     	; 0x6c6 <__udivmodsi4_ep>

000006ac <__udivmodsi4_loop>:
 6ac:	aa 1f       	adc	r26, r26
 6ae:	bb 1f       	adc	r27, r27
 6b0:	ee 1f       	adc	r30, r30
 6b2:	ff 1f       	adc	r31, r31
 6b4:	a2 17       	cp	r26, r18
 6b6:	b3 07       	cpc	r27, r19
 6b8:	e4 07       	cpc	r30, r20
 6ba:	f5 07       	cpc	r31, r21
 6bc:	20 f0       	brcs	.+8      	; 0x6c6 <__udivmodsi4_ep>
 6be:	a2 1b       	sub	r26, r18
 6c0:	b3 0b       	sbc	r27, r19
 6c2:	e4 0b       	sbc	r30, r20
 6c4:	f5 0b       	sbc	r31, r21

000006c6 <__udivmodsi4_ep>:
 6c6:	66 1f       	adc	r22, r22
 6c8:	77 1f       	adc	r23, r23
 6ca:	88 1f       	adc	r24, r24
 6cc:	99 1f       	adc	r25, r25
 6ce:	1a 94       	dec	r1
 6d0:	69 f7       	brne	.-38     	; 0x6ac <__udivmodsi4_loop>
 6d2:	60 95       	com	r22
 6d4:	70 95       	com	r23
 6d6:	80 95       	com	r24
 6d8:	90 95       	com	r25
 6da:	9b 01       	movw	r18, r22
 6dc:	ac 01       	movw	r20, r24
 6de:	bd 01       	movw	r22, r26
 6e0:	cf 01       	movw	r24, r30
 6e2:	08 95       	ret

000006e4 <__divmodsi4>:
 6e4:	05 2e       	mov	r0, r21
 6e6:	97 fb       	bst	r25, 7
 6e8:	1e f4       	brtc	.+6      	; 0x6f0 <__divmodsi4+0xc>
 6ea:	00 94       	com	r0
 6ec:	0e 94 89 03 	call	0x712	; 0x712 <__negsi2>
 6f0:	57 fd       	sbrc	r21, 7
 6f2:	07 d0       	rcall	.+14     	; 0x702 <__divmodsi4_neg2>
 6f4:	0e 94 50 03 	call	0x6a0	; 0x6a0 <__udivmodsi4>
 6f8:	07 fc       	sbrc	r0, 7
 6fa:	03 d0       	rcall	.+6      	; 0x702 <__divmodsi4_neg2>
 6fc:	4e f4       	brtc	.+18     	; 0x710 <__divmodsi4_exit>
 6fe:	0c 94 89 03 	jmp	0x712	; 0x712 <__negsi2>

00000702 <__divmodsi4_neg2>:
 702:	50 95       	com	r21
 704:	40 95       	com	r20
 706:	30 95       	com	r19
 708:	21 95       	neg	r18
 70a:	3f 4f       	sbci	r19, 0xFF	; 255
 70c:	4f 4f       	sbci	r20, 0xFF	; 255
 70e:	5f 4f       	sbci	r21, 0xFF	; 255

00000710 <__divmodsi4_exit>:
 710:	08 95       	ret

00000712 <__negsi2>:
 712:	90 95       	com	r25
 714:	80 95       	com	r24
 716:	70 95       	com	r23
 718:	61 95       	neg	r22
 71a:	7f 4f       	sbci	r23, 0xFF	; 255
 71c:	8f 4f       	sbci	r24, 0xFF	; 255
 71e:	9f 4f       	sbci	r25, 0xFF	; 255
 720:	08 95       	ret

00000722 <__tablejump2__>:
 722:	ee 0f       	add	r30, r30
 724:	ff 1f       	adc	r31, r31
 726:	05 90       	lpm	r0, Z+
 728:	f4 91       	lpm	r31, Z
 72a:	e0 2d       	mov	r30, r0
 72c:	09 94       	ijmp

0000072e <malloc>:
 72e:	0f 93       	push	r16
 730:	1f 93       	push	r17
 732:	cf 93       	push	r28
 734:	df 93       	push	r29
 736:	82 30       	cpi	r24, 0x02	; 2
 738:	91 05       	cpc	r25, r1
 73a:	10 f4       	brcc	.+4      	; 0x740 <malloc+0x12>
 73c:	82 e0       	ldi	r24, 0x02	; 2
 73e:	90 e0       	ldi	r25, 0x00	; 0
 740:	e0 91 a3 02 	lds	r30, 0x02A3	; 0x8002a3 <__flp>
 744:	f0 91 a4 02 	lds	r31, 0x02A4	; 0x8002a4 <__flp+0x1>
 748:	20 e0       	ldi	r18, 0x00	; 0
 74a:	30 e0       	ldi	r19, 0x00	; 0
 74c:	a0 e0       	ldi	r26, 0x00	; 0
 74e:	b0 e0       	ldi	r27, 0x00	; 0
 750:	30 97       	sbiw	r30, 0x00	; 0
 752:	19 f1       	breq	.+70     	; 0x79a <malloc+0x6c>
 754:	40 81       	ld	r20, Z
 756:	51 81       	ldd	r21, Z+1	; 0x01
 758:	02 81       	ldd	r16, Z+2	; 0x02
 75a:	13 81       	ldd	r17, Z+3	; 0x03
 75c:	48 17       	cp	r20, r24
 75e:	59 07       	cpc	r21, r25
 760:	c8 f0       	brcs	.+50     	; 0x794 <malloc+0x66>
 762:	84 17       	cp	r24, r20
 764:	95 07       	cpc	r25, r21
 766:	69 f4       	brne	.+26     	; 0x782 <malloc+0x54>
 768:	10 97       	sbiw	r26, 0x00	; 0
 76a:	31 f0       	breq	.+12     	; 0x778 <malloc+0x4a>
 76c:	12 96       	adiw	r26, 0x02	; 2
 76e:	0c 93       	st	X, r16
 770:	12 97       	sbiw	r26, 0x02	; 2
 772:	13 96       	adiw	r26, 0x03	; 3
 774:	1c 93       	st	X, r17
 776:	27 c0       	rjmp	.+78     	; 0x7c6 <malloc+0x98>
 778:	00 93 a3 02 	sts	0x02A3, r16	; 0x8002a3 <__flp>
 77c:	10 93 a4 02 	sts	0x02A4, r17	; 0x8002a4 <__flp+0x1>
 780:	22 c0       	rjmp	.+68     	; 0x7c6 <malloc+0x98>
 782:	21 15       	cp	r18, r1
 784:	31 05       	cpc	r19, r1
 786:	19 f0       	breq	.+6      	; 0x78e <malloc+0x60>
 788:	42 17       	cp	r20, r18
 78a:	53 07       	cpc	r21, r19
 78c:	18 f4       	brcc	.+6      	; 0x794 <malloc+0x66>
 78e:	9a 01       	movw	r18, r20
 790:	bd 01       	movw	r22, r26
 792:	ef 01       	movw	r28, r30
 794:	df 01       	movw	r26, r30
 796:	f8 01       	movw	r30, r16
 798:	db cf       	rjmp	.-74     	; 0x750 <malloc+0x22>
 79a:	21 15       	cp	r18, r1
 79c:	31 05       	cpc	r19, r1
 79e:	f9 f0       	breq	.+62     	; 0x7de <malloc+0xb0>
 7a0:	28 1b       	sub	r18, r24
 7a2:	39 0b       	sbc	r19, r25
 7a4:	24 30       	cpi	r18, 0x04	; 4
 7a6:	31 05       	cpc	r19, r1
 7a8:	80 f4       	brcc	.+32     	; 0x7ca <malloc+0x9c>
 7aa:	8a 81       	ldd	r24, Y+2	; 0x02
 7ac:	9b 81       	ldd	r25, Y+3	; 0x03
 7ae:	61 15       	cp	r22, r1
 7b0:	71 05       	cpc	r23, r1
 7b2:	21 f0       	breq	.+8      	; 0x7bc <malloc+0x8e>
 7b4:	fb 01       	movw	r30, r22
 7b6:	93 83       	std	Z+3, r25	; 0x03
 7b8:	82 83       	std	Z+2, r24	; 0x02
 7ba:	04 c0       	rjmp	.+8      	; 0x7c4 <malloc+0x96>
 7bc:	90 93 a4 02 	sts	0x02A4, r25	; 0x8002a4 <__flp+0x1>
 7c0:	80 93 a3 02 	sts	0x02A3, r24	; 0x8002a3 <__flp>
 7c4:	fe 01       	movw	r30, r28
 7c6:	32 96       	adiw	r30, 0x02	; 2
 7c8:	44 c0       	rjmp	.+136    	; 0x852 <malloc+0x124>
 7ca:	fe 01       	movw	r30, r28
 7cc:	e2 0f       	add	r30, r18
 7ce:	f3 1f       	adc	r31, r19
 7d0:	81 93       	st	Z+, r24
 7d2:	91 93       	st	Z+, r25
 7d4:	22 50       	subi	r18, 0x02	; 2
 7d6:	31 09       	sbc	r19, r1
 7d8:	39 83       	std	Y+1, r19	; 0x01
 7da:	28 83       	st	Y, r18
 7dc:	3a c0       	rjmp	.+116    	; 0x852 <malloc+0x124>
 7de:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 7e2:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 7e6:	23 2b       	or	r18, r19
 7e8:	41 f4       	brne	.+16     	; 0x7fa <malloc+0xcc>
 7ea:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 7ee:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 7f2:	30 93 a2 02 	sts	0x02A2, r19	; 0x8002a2 <__brkval+0x1>
 7f6:	20 93 a1 02 	sts	0x02A1, r18	; 0x8002a1 <__brkval>
 7fa:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 7fe:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 802:	21 15       	cp	r18, r1
 804:	31 05       	cpc	r19, r1
 806:	41 f4       	brne	.+16     	; 0x818 <malloc+0xea>
 808:	2d b7       	in	r18, 0x3d	; 61
 80a:	3e b7       	in	r19, 0x3e	; 62
 80c:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 810:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 814:	24 1b       	sub	r18, r20
 816:	35 0b       	sbc	r19, r21
 818:	e0 91 a1 02 	lds	r30, 0x02A1	; 0x8002a1 <__brkval>
 81c:	f0 91 a2 02 	lds	r31, 0x02A2	; 0x8002a2 <__brkval+0x1>
 820:	e2 17       	cp	r30, r18
 822:	f3 07       	cpc	r31, r19
 824:	a0 f4       	brcc	.+40     	; 0x84e <malloc+0x120>
 826:	2e 1b       	sub	r18, r30
 828:	3f 0b       	sbc	r19, r31
 82a:	28 17       	cp	r18, r24
 82c:	39 07       	cpc	r19, r25
 82e:	78 f0       	brcs	.+30     	; 0x84e <malloc+0x120>
 830:	ac 01       	movw	r20, r24
 832:	4e 5f       	subi	r20, 0xFE	; 254
 834:	5f 4f       	sbci	r21, 0xFF	; 255
 836:	24 17       	cp	r18, r20
 838:	35 07       	cpc	r19, r21
 83a:	48 f0       	brcs	.+18     	; 0x84e <malloc+0x120>
 83c:	4e 0f       	add	r20, r30
 83e:	5f 1f       	adc	r21, r31
 840:	50 93 a2 02 	sts	0x02A2, r21	; 0x8002a2 <__brkval+0x1>
 844:	40 93 a1 02 	sts	0x02A1, r20	; 0x8002a1 <__brkval>
 848:	81 93       	st	Z+, r24
 84a:	91 93       	st	Z+, r25
 84c:	02 c0       	rjmp	.+4      	; 0x852 <malloc+0x124>
 84e:	e0 e0       	ldi	r30, 0x00	; 0
 850:	f0 e0       	ldi	r31, 0x00	; 0
 852:	cf 01       	movw	r24, r30
 854:	df 91       	pop	r29
 856:	cf 91       	pop	r28
 858:	1f 91       	pop	r17
 85a:	0f 91       	pop	r16
 85c:	08 95       	ret

0000085e <free>:
 85e:	cf 93       	push	r28
 860:	df 93       	push	r29
 862:	00 97       	sbiw	r24, 0x00	; 0
 864:	09 f4       	brne	.+2      	; 0x868 <free+0xa>
 866:	81 c0       	rjmp	.+258    	; 0x96a <__stack+0x6b>
 868:	fc 01       	movw	r30, r24
 86a:	32 97       	sbiw	r30, 0x02	; 2
 86c:	13 82       	std	Z+3, r1	; 0x03
 86e:	12 82       	std	Z+2, r1	; 0x02
 870:	a0 91 a3 02 	lds	r26, 0x02A3	; 0x8002a3 <__flp>
 874:	b0 91 a4 02 	lds	r27, 0x02A4	; 0x8002a4 <__flp+0x1>
 878:	10 97       	sbiw	r26, 0x00	; 0
 87a:	81 f4       	brne	.+32     	; 0x89c <free+0x3e>
 87c:	20 81       	ld	r18, Z
 87e:	31 81       	ldd	r19, Z+1	; 0x01
 880:	82 0f       	add	r24, r18
 882:	93 1f       	adc	r25, r19
 884:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 888:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 88c:	28 17       	cp	r18, r24
 88e:	39 07       	cpc	r19, r25
 890:	51 f5       	brne	.+84     	; 0x8e6 <free+0x88>
 892:	f0 93 a2 02 	sts	0x02A2, r31	; 0x8002a2 <__brkval+0x1>
 896:	e0 93 a1 02 	sts	0x02A1, r30	; 0x8002a1 <__brkval>
 89a:	67 c0       	rjmp	.+206    	; 0x96a <__stack+0x6b>
 89c:	ed 01       	movw	r28, r26
 89e:	20 e0       	ldi	r18, 0x00	; 0
 8a0:	30 e0       	ldi	r19, 0x00	; 0
 8a2:	ce 17       	cp	r28, r30
 8a4:	df 07       	cpc	r29, r31
 8a6:	40 f4       	brcc	.+16     	; 0x8b8 <free+0x5a>
 8a8:	4a 81       	ldd	r20, Y+2	; 0x02
 8aa:	5b 81       	ldd	r21, Y+3	; 0x03
 8ac:	9e 01       	movw	r18, r28
 8ae:	41 15       	cp	r20, r1
 8b0:	51 05       	cpc	r21, r1
 8b2:	f1 f0       	breq	.+60     	; 0x8f0 <free+0x92>
 8b4:	ea 01       	movw	r28, r20
 8b6:	f5 cf       	rjmp	.-22     	; 0x8a2 <free+0x44>
 8b8:	d3 83       	std	Z+3, r29	; 0x03
 8ba:	c2 83       	std	Z+2, r28	; 0x02
 8bc:	40 81       	ld	r20, Z
 8be:	51 81       	ldd	r21, Z+1	; 0x01
 8c0:	84 0f       	add	r24, r20
 8c2:	95 1f       	adc	r25, r21
 8c4:	c8 17       	cp	r28, r24
 8c6:	d9 07       	cpc	r29, r25
 8c8:	59 f4       	brne	.+22     	; 0x8e0 <free+0x82>
 8ca:	88 81       	ld	r24, Y
 8cc:	99 81       	ldd	r25, Y+1	; 0x01
 8ce:	84 0f       	add	r24, r20
 8d0:	95 1f       	adc	r25, r21
 8d2:	02 96       	adiw	r24, 0x02	; 2
 8d4:	91 83       	std	Z+1, r25	; 0x01
 8d6:	80 83       	st	Z, r24
 8d8:	8a 81       	ldd	r24, Y+2	; 0x02
 8da:	9b 81       	ldd	r25, Y+3	; 0x03
 8dc:	93 83       	std	Z+3, r25	; 0x03
 8de:	82 83       	std	Z+2, r24	; 0x02
 8e0:	21 15       	cp	r18, r1
 8e2:	31 05       	cpc	r19, r1
 8e4:	29 f4       	brne	.+10     	; 0x8f0 <free+0x92>
 8e6:	f0 93 a4 02 	sts	0x02A4, r31	; 0x8002a4 <__flp+0x1>
 8ea:	e0 93 a3 02 	sts	0x02A3, r30	; 0x8002a3 <__flp>
 8ee:	3d c0       	rjmp	.+122    	; 0x96a <__stack+0x6b>
 8f0:	e9 01       	movw	r28, r18
 8f2:	fb 83       	std	Y+3, r31	; 0x03
 8f4:	ea 83       	std	Y+2, r30	; 0x02
 8f6:	49 91       	ld	r20, Y+
 8f8:	59 91       	ld	r21, Y+
 8fa:	c4 0f       	add	r28, r20
 8fc:	d5 1f       	adc	r29, r21
 8fe:	ec 17       	cp	r30, r28
 900:	fd 07       	cpc	r31, r29
 902:	61 f4       	brne	.+24     	; 0x91c <__stack+0x1d>
 904:	80 81       	ld	r24, Z
 906:	91 81       	ldd	r25, Z+1	; 0x01
 908:	84 0f       	add	r24, r20
 90a:	95 1f       	adc	r25, r21
 90c:	02 96       	adiw	r24, 0x02	; 2
 90e:	e9 01       	movw	r28, r18
 910:	99 83       	std	Y+1, r25	; 0x01
 912:	88 83       	st	Y, r24
 914:	82 81       	ldd	r24, Z+2	; 0x02
 916:	93 81       	ldd	r25, Z+3	; 0x03
 918:	9b 83       	std	Y+3, r25	; 0x03
 91a:	8a 83       	std	Y+2, r24	; 0x02
 91c:	e0 e0       	ldi	r30, 0x00	; 0
 91e:	f0 e0       	ldi	r31, 0x00	; 0
 920:	12 96       	adiw	r26, 0x02	; 2
 922:	8d 91       	ld	r24, X+
 924:	9c 91       	ld	r25, X
 926:	13 97       	sbiw	r26, 0x03	; 3
 928:	00 97       	sbiw	r24, 0x00	; 0
 92a:	19 f0       	breq	.+6      	; 0x932 <__stack+0x33>
 92c:	fd 01       	movw	r30, r26
 92e:	dc 01       	movw	r26, r24
 930:	f7 cf       	rjmp	.-18     	; 0x920 <__stack+0x21>
 932:	8d 91       	ld	r24, X+
 934:	9c 91       	ld	r25, X
 936:	11 97       	sbiw	r26, 0x01	; 1
 938:	9d 01       	movw	r18, r26
 93a:	2e 5f       	subi	r18, 0xFE	; 254
 93c:	3f 4f       	sbci	r19, 0xFF	; 255
 93e:	82 0f       	add	r24, r18
 940:	93 1f       	adc	r25, r19
 942:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 946:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 94a:	28 17       	cp	r18, r24
 94c:	39 07       	cpc	r19, r25
 94e:	69 f4       	brne	.+26     	; 0x96a <__stack+0x6b>
 950:	30 97       	sbiw	r30, 0x00	; 0
 952:	29 f4       	brne	.+10     	; 0x95e <__stack+0x5f>
 954:	10 92 a4 02 	sts	0x02A4, r1	; 0x8002a4 <__flp+0x1>
 958:	10 92 a3 02 	sts	0x02A3, r1	; 0x8002a3 <__flp>
 95c:	02 c0       	rjmp	.+4      	; 0x962 <__stack+0x63>
 95e:	13 82       	std	Z+3, r1	; 0x03
 960:	12 82       	std	Z+2, r1	; 0x02
 962:	b0 93 a2 02 	sts	0x02A2, r27	; 0x8002a2 <__brkval+0x1>
 966:	a0 93 a1 02 	sts	0x02A1, r26	; 0x8002a1 <__brkval>
 96a:	df 91       	pop	r29
 96c:	cf 91       	pop	r28
 96e:	08 95       	ret

00000970 <__do_global_dtors>:
 970:	10 e0       	ldi	r17, 0x00	; 0
 972:	c6 e3       	ldi	r28, 0x36	; 54
 974:	d0 e0       	ldi	r29, 0x00	; 0
 976:	04 c0       	rjmp	.+8      	; 0x980 <__do_global_dtors+0x10>
 978:	fe 01       	movw	r30, r28
 97a:	0e 94 91 03 	call	0x722	; 0x722 <__tablejump2__>
 97e:	21 96       	adiw	r28, 0x01	; 1
 980:	c8 33       	cpi	r28, 0x38	; 56
 982:	d1 07       	cpc	r29, r17
 984:	c9 f7       	brne	.-14     	; 0x978 <__do_global_dtors+0x8>
 986:	f8 94       	cli

00000988 <__stop_program>:
 988:	ff cf       	rjmp	.-2      	; 0x988 <__stop_program>
