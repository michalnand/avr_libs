
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
  38:	0c 94 b8 02 	jmp	0x570	; 0x570 <__vector_14>
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
  6a:	4a 03       	fmul	r20, r18

0000006c <__ctors_end>:
  6c:	d5 00       	.word	0x00d5	; ????
  6e:	4e 03       	fmul	r20, r22

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
  82:	ee e8       	ldi	r30, 0x8E	; 142
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
  ae:	0e 94 93 03 	call	0x726	; 0x726 <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 ba 04 	jmp	0x974	; 0x974 <__do_global_dtors>

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
  d6:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 91 02 	call	0x522	; 0x522 <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN11SampleTimer4waitEv>
  ee:	8e e3       	ldi	r24, 0x3E	; 62
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN10LineCamera4readEv>
  f6:	8e e3       	ldi	r24, 0x3E	; 62
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 0c 01 	call	0x218	; 0x218 <_ZN10LineCamera7processEv>
  fe:	8e e3       	ldi	r24, 0x3E	; 62
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 54 02 	call	0x4a8	; 0x4a8 <_ZN11LinePostion21compute_line_positionEv>
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
 122:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
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
 13a:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
 13e:	8e e3       	ldi	r24, 0x3E	; 62
 140:	91 e0       	ldi	r25, 0x01	; 1
 142:	0e 94 01 02 	call	0x402	; 0x402 <_ZN11LinePostion3getEv>
 146:	8c 01       	movw	r16, r24
 148:	67 e1       	ldi	r22, 0x17	; 23
 14a:	71 e0       	ldi	r23, 0x01	; 1
 14c:	80 ea       	ldi	r24, 0xA0	; 160
 14e:	92 e0       	ldi	r25, 0x02	; 2
 150:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
 154:	a8 01       	movw	r20, r16
 156:	11 0f       	add	r17, r17
 158:	66 0b       	sbc	r22, r22
 15a:	77 0b       	sbc	r23, r23
 15c:	80 ea       	ldi	r24, 0xA0	; 160
 15e:	92 e0       	ldi	r25, 0x02	; 2
 160:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN8Terminal4putiEl>
 164:	64 e2       	ldi	r22, 0x24	; 36
 166:	71 e0       	ldi	r23, 0x01	; 1
 168:	80 ea       	ldi	r24, 0xA0	; 160
 16a:	92 e0       	ldi	r25, 0x02	; 2
 16c:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
 170:	8e e3       	ldi	r24, 0x3E	; 62
 172:	91 e0       	ldi	r25, 0x01	; 1
 174:	0e 94 07 02 	call	0x40e	; 0x40e <_ZN11LinePostion14get_confidenceEv>
 178:	6b 01       	movw	r12, r22
 17a:	7c 01       	movw	r14, r24
 17c:	6e e1       	ldi	r22, 0x1E	; 30
 17e:	71 e0       	ldi	r23, 0x01	; 1
 180:	80 ea       	ldi	r24, 0xA0	; 160
 182:	92 e0       	ldi	r25, 0x02	; 2
 184:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
 188:	b7 01       	movw	r22, r14
 18a:	a6 01       	movw	r20, r12
 18c:	80 ea       	ldi	r24, 0xA0	; 160
 18e:	92 e0       	ldi	r25, 0x02	; 2
 190:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN8Terminal4putiEl>
 194:	61 e1       	ldi	r22, 0x11	; 17
 196:	71 e0       	ldi	r23, 0x01	; 1
 198:	80 ea       	ldi	r24, 0xA0	; 160
 19a:	92 e0       	ldi	r25, 0x02	; 2
 19c:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN8Terminal4putsEPKc>
 1a0:	a2 cf       	rjmp	.-188    	; 0xe6 <main+0x22>

000001a2 <_GLOBAL__sub_I_line_position>:
 1a2:	8e e3       	ldi	r24, 0x3E	; 62
 1a4:	91 e0       	ldi	r25, 0x01	; 1
 1a6:	0c 94 da 01 	jmp	0x3b4	; 0x3b4 <_ZN11LinePostionC1Ev>

000001aa <_GLOBAL__sub_D_line_position>:
 1aa:	8e e3       	ldi	r24, 0x3E	; 62
 1ac:	91 e0       	ldi	r25, 0x01	; 1
 1ae:	0c 94 ff 01 	jmp	0x3fe	; 0x3fe <_ZN11LinePostionD1Ev>

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
 1fc:	0c 94 c7 02 	jmp	0x58e	; 0x58e <_ZdlPv>

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
 268:	0e 94 74 03 	call	0x6e8	; 0x6e8 <__divmodsi4>
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
 330:	42 9a       	sbi	0x08, 2	; 8
 332:	00 00       	nop
 334:	00 00       	nop
 336:	41 9a       	sbi	0x08, 1	; 8
 338:	00 00       	nop
 33a:	00 00       	nop
 33c:	42 98       	cbi	0x08, 2	; 8
 33e:	00 00       	nop
 340:	00 00       	nop
 342:	41 98       	cbi	0x08, 1	; 8
 344:	00 00       	nop
 346:	00 00       	nop
 348:	8e 01       	movw	r16, r28
 34a:	0c 5f       	subi	r16, 0xFC	; 252
 34c:	1f 4f       	sbci	r17, 0xFF	; 255
 34e:	7e 01       	movw	r14, r28
 350:	8c ef       	ldi	r24, 0xFC	; 252
 352:	e8 1a       	sub	r14, r24
 354:	8e ef       	ldi	r24, 0xFE	; 254
 356:	f8 0a       	sbc	r15, r24
 358:	ce 01       	movw	r24, r28
 35a:	0e 94 6d 01 	call	0x2da	; 0x2da <_ZN10LineCamera8adc_readEv>
 35e:	95 95       	asr	r25
 360:	87 95       	ror	r24
 362:	95 95       	asr	r25
 364:	87 95       	ror	r24
 366:	f8 01       	movw	r30, r16
 368:	81 93       	st	Z+, r24
 36a:	91 93       	st	Z+, r25
 36c:	8f 01       	movw	r16, r30
 36e:	41 98       	cbi	0x08, 1	; 8
 370:	ce 01       	movw	r24, r28
 372:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 376:	41 9a       	sbi	0x08, 1	; 8
 378:	0e 15       	cp	r16, r14
 37a:	1f 05       	cpc	r17, r15
 37c:	69 f7       	brne	.-38     	; 0x358 <_ZN10LineCamera4readEv+0x3c>
 37e:	41 98       	cbi	0x08, 1	; 8
 380:	ce 01       	movw	r24, r28
 382:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>
 386:	41 9a       	sbi	0x08, 1	; 8
 388:	ce 01       	movw	r24, r28
 38a:	df 91       	pop	r29
 38c:	cf 91       	pop	r28
 38e:	1f 91       	pop	r17
 390:	0f 91       	pop	r16
 392:	ff 90       	pop	r15
 394:	ef 90       	pop	r14
 396:	0c 94 7d 01 	jmp	0x2fa	; 0x2fa <_ZN10LineCamera11delay_microEv>

0000039a <_ZN5ArrayIiLj40EED1Ev>:
 39a:	08 95       	ret

0000039c <_ZN5ArrayIiLj40EE4sizeEv>:
 39c:	88 e2       	ldi	r24, 0x28	; 40
 39e:	90 e0       	ldi	r25, 0x00	; 0
 3a0:	08 95       	ret

000003a2 <_ZN5ArrayIiLj40EEixEj>:
 3a2:	6e 5f       	subi	r22, 0xFE	; 254
 3a4:	7f 4f       	sbci	r23, 0xFF	; 255
 3a6:	66 0f       	add	r22, r22
 3a8:	77 1f       	adc	r23, r23
 3aa:	86 0f       	add	r24, r22
 3ac:	97 1f       	adc	r25, r23
 3ae:	08 95       	ret

000003b0 <_ZN5ArrayIiLj40EED0Ev>:
 3b0:	0c 94 c7 02 	jmp	0x58e	; 0x58e <_ZdlPv>

000003b4 <_ZN11LinePostionC1Ev>:
 3b4:	cf 93       	push	r28
 3b6:	df 93       	push	r29
 3b8:	ec 01       	movw	r28, r24
 3ba:	0e 94 00 01 	call	0x200	; 0x200 <_ZN10LineCameraC1Ev>
 3be:	fe 01       	movw	r30, r28
 3c0:	e3 5f       	subi	r30, 0xF3	; 243
 3c2:	fe 4f       	sbci	r31, 0xFE	; 254
 3c4:	86 e3       	ldi	r24, 0x36	; 54
 3c6:	91 e0       	ldi	r25, 0x01	; 1
 3c8:	91 83       	std	Z+1, r25	; 0x01
 3ca:	80 83       	st	Z, r24
 3cc:	34 96       	adiw	r30, 0x04	; 4
 3ce:	ce 01       	movw	r24, r28
 3d0:	8f 59       	subi	r24, 0x9F	; 159
 3d2:	9e 4f       	sbci	r25, 0xFE	; 254
 3d4:	21 e0       	ldi	r18, 0x01	; 1
 3d6:	30 e0       	ldi	r19, 0x00	; 0
 3d8:	21 93       	st	Z+, r18
 3da:	31 93       	st	Z+, r19
 3dc:	e8 17       	cp	r30, r24
 3de:	f9 07       	cpc	r31, r25
 3e0:	d9 f7       	brne	.-10     	; 0x3d8 <_ZN11LinePostionC1Ev+0x24>
 3e2:	fe 01       	movw	r30, r28
 3e4:	e7 5f       	subi	r30, 0xF7	; 247
 3e6:	fe 4f       	sbci	r31, 0xFE	; 254
 3e8:	10 82       	st	Z, r1
 3ea:	11 82       	std	Z+1, r1	; 0x01
 3ec:	12 82       	std	Z+2, r1	; 0x02
 3ee:	13 82       	std	Z+3, r1	; 0x03
 3f0:	c9 5f       	subi	r28, 0xF9	; 249
 3f2:	de 4f       	sbci	r29, 0xFE	; 254
 3f4:	19 82       	std	Y+1, r1	; 0x01
 3f6:	18 82       	st	Y, r1
 3f8:	df 91       	pop	r29
 3fa:	cf 91       	pop	r28
 3fc:	08 95       	ret

000003fe <_ZN11LinePostionD1Ev>:
 3fe:	0c 94 0b 01 	jmp	0x216	; 0x216 <_ZN10LineCameraD1Ev>

00000402 <_ZN11LinePostion3getEv>:
 402:	89 5f       	subi	r24, 0xF9	; 249
 404:	9e 4f       	sbci	r25, 0xFE	; 254
 406:	fc 01       	movw	r30, r24
 408:	80 81       	ld	r24, Z
 40a:	91 81       	ldd	r25, Z+1	; 0x01
 40c:	08 95       	ret

0000040e <_ZN11LinePostion14get_confidenceEv>:
 40e:	87 5f       	subi	r24, 0xF7	; 247
 410:	9e 4f       	sbci	r25, 0xFE	; 254
 412:	fc 01       	movw	r30, r24
 414:	60 81       	ld	r22, Z
 416:	71 81       	ldd	r23, Z+1	; 0x01
 418:	82 81       	ldd	r24, Z+2	; 0x02
 41a:	93 81       	ldd	r25, Z+3	; 0x03
 41c:	08 95       	ret

0000041e <_ZN11LinePostion19process_convolutionEj>:
 41e:	cf 92       	push	r12
 420:	df 92       	push	r13
 422:	ef 92       	push	r14
 424:	ff 92       	push	r15
 426:	0f 93       	push	r16
 428:	1f 93       	push	r17
 42a:	cf 93       	push	r28
 42c:	df 93       	push	r29
 42e:	db 01       	movw	r26, r22
 430:	ac 01       	movw	r20, r24
 432:	4f 5e       	subi	r20, 0xEF	; 239
 434:	5e 4f       	sbci	r21, 0xFE	; 254
 436:	fb 01       	movw	r30, r22
 438:	ee 0f       	add	r30, r30
 43a:	ff 1f       	adc	r31, r31
 43c:	20 e0       	ldi	r18, 0x00	; 0
 43e:	30 e0       	ldi	r19, 0x00	; 0
 440:	60 e0       	ldi	r22, 0x00	; 0
 442:	70 e0       	ldi	r23, 0x00	; 0
 444:	cb 01       	movw	r24, r22
 446:	8f 01       	movw	r16, r30
 448:	0d 50       	subi	r16, 0x0D	; 13
 44a:	11 40       	sbci	r17, 0x01	; 1
 44c:	ed 01       	movw	r28, r26
 44e:	c2 0f       	add	r28, r18
 450:	d3 1f       	adc	r29, r19
 452:	c0 38       	cpi	r28, 0x80	; 128
 454:	d1 05       	cpc	r29, r1
 456:	c0 f4       	brcc	.+48     	; 0x488 <_ZN11LinePostion19process_convolutionEj+0x6a>
 458:	ea 01       	movw	r28, r20
 45a:	c0 0f       	add	r28, r16
 45c:	d1 1f       	adc	r29, r17
 45e:	09 90       	ld	r0, Y+
 460:	d8 81       	ld	r29, Y
 462:	c0 2d       	mov	r28, r0
 464:	fa 01       	movw	r30, r20
 466:	e0 80       	ld	r14, Z
 468:	f1 80       	ldd	r15, Z+1	; 0x01
 46a:	ce 9d       	mul	r28, r14
 46c:	60 01       	movw	r12, r0
 46e:	cf 9d       	mul	r28, r15
 470:	d0 0c       	add	r13, r0
 472:	de 9d       	mul	r29, r14
 474:	d0 0c       	add	r13, r0
 476:	11 24       	eor	r1, r1
 478:	0d 2c       	mov	r0, r13
 47a:	00 0c       	add	r0, r0
 47c:	ee 08       	sbc	r14, r14
 47e:	ff 08       	sbc	r15, r15
 480:	6c 0d       	add	r22, r12
 482:	7d 1d       	adc	r23, r13
 484:	8e 1d       	adc	r24, r14
 486:	9f 1d       	adc	r25, r15
 488:	2f 5f       	subi	r18, 0xFF	; 255
 48a:	3f 4f       	sbci	r19, 0xFF	; 255
 48c:	4e 5f       	subi	r20, 0xFE	; 254
 48e:	5f 4f       	sbci	r21, 0xFF	; 255
 490:	28 32       	cpi	r18, 0x28	; 40
 492:	31 05       	cpc	r19, r1
 494:	d9 f6       	brne	.-74     	; 0x44c <_ZN11LinePostion19process_convolutionEj+0x2e>
 496:	df 91       	pop	r29
 498:	cf 91       	pop	r28
 49a:	1f 91       	pop	r17
 49c:	0f 91       	pop	r16
 49e:	ff 90       	pop	r15
 4a0:	ef 90       	pop	r14
 4a2:	df 90       	pop	r13
 4a4:	cf 90       	pop	r12
 4a6:	08 95       	ret

000004a8 <_ZN11LinePostion21compute_line_positionEv>:
 4a8:	af 92       	push	r10
 4aa:	bf 92       	push	r11
 4ac:	cf 92       	push	r12
 4ae:	df 92       	push	r13
 4b0:	ef 92       	push	r14
 4b2:	ff 92       	push	r15
 4b4:	0f 93       	push	r16
 4b6:	1f 93       	push	r17
 4b8:	cf 93       	push	r28
 4ba:	df 93       	push	r29
 4bc:	ec 01       	movw	r28, r24
 4be:	00 e0       	ldi	r16, 0x00	; 0
 4c0:	10 e0       	ldi	r17, 0x00	; 0
 4c2:	c1 2c       	mov	r12, r1
 4c4:	8f e1       	ldi	r24, 0x1F	; 31
 4c6:	d8 2e       	mov	r13, r24
 4c8:	8a e0       	ldi	r24, 0x0A	; 10
 4ca:	e8 2e       	mov	r14, r24
 4cc:	8a ef       	ldi	r24, 0xFA	; 250
 4ce:	f8 2e       	mov	r15, r24
 4d0:	5e 01       	movw	r10, r28
 4d2:	89 ef       	ldi	r24, 0xF9	; 249
 4d4:	a8 1a       	sub	r10, r24
 4d6:	8e ef       	ldi	r24, 0xFE	; 254
 4d8:	b8 0a       	sbc	r11, r24
 4da:	b8 01       	movw	r22, r16
 4dc:	ce 01       	movw	r24, r28
 4de:	0e 94 0f 02 	call	0x41e	; 0x41e <_ZN11LinePostion19process_convolutionEj>
 4e2:	c6 16       	cp	r12, r22
 4e4:	d7 06       	cpc	r13, r23
 4e6:	e8 06       	cpc	r14, r24
 4e8:	f9 06       	cpc	r15, r25
 4ea:	2c f4       	brge	.+10     	; 0x4f6 <_ZN11LinePostion21compute_line_positionEv+0x4e>
 4ec:	f5 01       	movw	r30, r10
 4ee:	11 83       	std	Z+1, r17	; 0x01
 4f0:	00 83       	st	Z, r16
 4f2:	6b 01       	movw	r12, r22
 4f4:	7c 01       	movw	r14, r24
 4f6:	0f 5f       	subi	r16, 0xFF	; 255
 4f8:	1f 4f       	sbci	r17, 0xFF	; 255
 4fa:	00 38       	cpi	r16, 0x80	; 128
 4fc:	11 05       	cpc	r17, r1
 4fe:	69 f7       	brne	.-38     	; 0x4da <_ZN11LinePostion21compute_line_positionEv+0x32>
 500:	c7 5f       	subi	r28, 0xF7	; 247
 502:	de 4f       	sbci	r29, 0xFE	; 254
 504:	c8 82       	st	Y, r12
 506:	d9 82       	std	Y+1, r13	; 0x01
 508:	ea 82       	std	Y+2, r14	; 0x02
 50a:	fb 82       	std	Y+3, r15	; 0x03
 50c:	df 91       	pop	r29
 50e:	cf 91       	pop	r28
 510:	1f 91       	pop	r17
 512:	0f 91       	pop	r16
 514:	ff 90       	pop	r15
 516:	ef 90       	pop	r14
 518:	df 90       	pop	r13
 51a:	cf 90       	pop	r12
 51c:	bf 90       	pop	r11
 51e:	af 90       	pop	r10
 520:	08 95       	ret

00000522 <_ZN11SampleTimerC1Ej>:
 522:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <g_sample_timer_flag>
 526:	84 b5       	in	r24, 0x24	; 36
 528:	82 60       	ori	r24, 0x02	; 2
 52a:	84 bd       	out	0x24, r24	; 36
 52c:	9b 01       	movw	r18, r22
 52e:	86 e0       	ldi	r24, 0x06	; 6
 530:	22 0f       	add	r18, r18
 532:	33 1f       	adc	r19, r19
 534:	8a 95       	dec	r24
 536:	e1 f7       	brne	.-8      	; 0x530 <_ZN11SampleTimerC1Ej+0xe>
 538:	40 e0       	ldi	r20, 0x00	; 0
 53a:	50 e0       	ldi	r21, 0x00	; 0
 53c:	60 e0       	ldi	r22, 0x00	; 0
 53e:	74 e2       	ldi	r23, 0x24	; 36
 540:	84 ef       	ldi	r24, 0xF4	; 244
 542:	90 e0       	ldi	r25, 0x00	; 0
 544:	0e 94 52 03 	call	0x6a4	; 0x6a4 <__udivmodsi4>
 548:	21 50       	subi	r18, 0x01	; 1
 54a:	27 bd       	out	0x27, r18	; 39
 54c:	83 e0       	ldi	r24, 0x03	; 3
 54e:	85 bd       	out	0x25, r24	; 37
 550:	ee e6       	ldi	r30, 0x6E	; 110
 552:	f0 e0       	ldi	r31, 0x00	; 0
 554:	80 81       	ld	r24, Z
 556:	82 60       	ori	r24, 0x02	; 2
 558:	80 83       	st	Z, r24
 55a:	78 94       	sei
 55c:	08 95       	ret

0000055e <_ZN11SampleTimer4waitEv>:
 55e:	80 91 9f 02 	lds	r24, 0x029F	; 0x80029f <g_sample_timer_flag>
 562:	88 23       	and	r24, r24
 564:	19 f0       	breq	.+6      	; 0x56c <_ZN11SampleTimer4waitEv+0xe>
 566:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <g_sample_timer_flag>
 56a:	08 95       	ret
 56c:	00 00       	nop
 56e:	f7 cf       	rjmp	.-18     	; 0x55e <_ZN11SampleTimer4waitEv>

00000570 <__vector_14>:
 570:	1f 92       	push	r1
 572:	0f 92       	push	r0
 574:	0f b6       	in	r0, 0x3f	; 63
 576:	0f 92       	push	r0
 578:	11 24       	eor	r1, r1
 57a:	8f 93       	push	r24
 57c:	81 e0       	ldi	r24, 0x01	; 1
 57e:	80 93 9f 02 	sts	0x029F, r24	; 0x80029f <g_sample_timer_flag>
 582:	8f 91       	pop	r24
 584:	0f 90       	pop	r0
 586:	0f be       	out	0x3f, r0	; 63
 588:	0f 90       	pop	r0
 58a:	1f 90       	pop	r1
 58c:	18 95       	reti

0000058e <_ZdlPv>:
 58e:	0c 94 31 04 	jmp	0x862	; 0x862 <free>

00000592 <_ZN8Terminal4putsEPc>:
 592:	0f 93       	push	r16
 594:	1f 93       	push	r17
 596:	cf 93       	push	r28
 598:	df 93       	push	r29
 59a:	8c 01       	movw	r16, r24
 59c:	eb 01       	movw	r28, r22
 59e:	69 91       	ld	r22, Y+
 5a0:	66 23       	and	r22, r22
 5a2:	21 f0       	breq	.+8      	; 0x5ac <_ZN8Terminal4putsEPc+0x1a>
 5a4:	c8 01       	movw	r24, r16
 5a6:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN5USART8put_charEc>
 5aa:	f9 cf       	rjmp	.-14     	; 0x59e <_ZN8Terminal4putsEPc+0xc>
 5ac:	df 91       	pop	r29
 5ae:	cf 91       	pop	r28
 5b0:	1f 91       	pop	r17
 5b2:	0f 91       	pop	r16
 5b4:	08 95       	ret

000005b6 <_ZN8Terminal4putsEPKc>:
 5b6:	0c 94 c9 02 	jmp	0x592	; 0x592 <_ZN8Terminal4putsEPc>

000005ba <_ZN8Terminal4putiEl>:
 5ba:	8f 92       	push	r8
 5bc:	9f 92       	push	r9
 5be:	af 92       	push	r10
 5c0:	bf 92       	push	r11
 5c2:	cf 92       	push	r12
 5c4:	df 92       	push	r13
 5c6:	ef 92       	push	r14
 5c8:	ff 92       	push	r15
 5ca:	0f 93       	push	r16
 5cc:	1f 93       	push	r17
 5ce:	cf 93       	push	r28
 5d0:	df 93       	push	r29
 5d2:	cd b7       	in	r28, 0x3d	; 61
 5d4:	de b7       	in	r29, 0x3e	; 62
 5d6:	2c 97       	sbiw	r28, 0x0c	; 12
 5d8:	0f b6       	in	r0, 0x3f	; 63
 5da:	f8 94       	cli
 5dc:	de bf       	out	0x3e, r29	; 62
 5de:	0f be       	out	0x3f, r0	; 63
 5e0:	cd bf       	out	0x3d, r28	; 61
 5e2:	7c 01       	movw	r14, r24
 5e4:	77 ff       	sbrs	r23, 7
 5e6:	09 c0       	rjmp	.+18     	; 0x5fa <_ZN8Terminal4putiEl+0x40>
 5e8:	70 95       	com	r23
 5ea:	60 95       	com	r22
 5ec:	50 95       	com	r21
 5ee:	41 95       	neg	r20
 5f0:	5f 4f       	sbci	r21, 0xFF	; 255
 5f2:	6f 4f       	sbci	r22, 0xFF	; 255
 5f4:	7f 4f       	sbci	r23, 0xFF	; 255
 5f6:	01 e0       	ldi	r16, 0x01	; 1
 5f8:	01 c0       	rjmp	.+2      	; 0x5fc <_ZN8Terminal4putiEl+0x42>
 5fa:	00 e0       	ldi	r16, 0x00	; 0
 5fc:	1c 86       	std	Y+12, r1	; 0x0c
 5fe:	1a e0       	ldi	r17, 0x0A	; 10
 600:	9a e0       	ldi	r25, 0x0A	; 10
 602:	89 2e       	mov	r8, r25
 604:	91 2c       	mov	r9, r1
 606:	a1 2c       	mov	r10, r1
 608:	b1 2c       	mov	r11, r1
 60a:	cc 24       	eor	r12, r12
 60c:	c3 94       	inc	r12
 60e:	d1 2c       	mov	r13, r1
 610:	cc 0e       	add	r12, r28
 612:	dd 1e       	adc	r13, r29
 614:	c1 0e       	add	r12, r17
 616:	d1 1c       	adc	r13, r1
 618:	cb 01       	movw	r24, r22
 61a:	ba 01       	movw	r22, r20
 61c:	a5 01       	movw	r20, r10
 61e:	94 01       	movw	r18, r8
 620:	0e 94 74 03 	call	0x6e8	; 0x6e8 <__divmodsi4>
 624:	94 2f       	mov	r25, r20
 626:	85 2f       	mov	r24, r21
 628:	60 5d       	subi	r22, 0xD0	; 208
 62a:	f6 01       	movw	r30, r12
 62c:	60 83       	st	Z, r22
 62e:	a9 01       	movw	r20, r18
 630:	69 2f       	mov	r22, r25
 632:	78 2f       	mov	r23, r24
 634:	8f ef       	ldi	r24, 0xFF	; 255
 636:	81 0f       	add	r24, r17
 638:	41 15       	cp	r20, r1
 63a:	51 05       	cpc	r21, r1
 63c:	61 05       	cpc	r22, r1
 63e:	71 05       	cpc	r23, r1
 640:	11 f0       	breq	.+4      	; 0x646 <_ZN8Terminal4putiEl+0x8c>
 642:	18 2f       	mov	r17, r24
 644:	e2 cf       	rjmp	.-60     	; 0x60a <_ZN8Terminal4putiEl+0x50>
 646:	00 23       	and	r16, r16
 648:	49 f0       	breq	.+18     	; 0x65c <_ZN8Terminal4putiEl+0xa2>
 64a:	e1 e0       	ldi	r30, 0x01	; 1
 64c:	f0 e0       	ldi	r31, 0x00	; 0
 64e:	ec 0f       	add	r30, r28
 650:	fd 1f       	adc	r31, r29
 652:	e8 0f       	add	r30, r24
 654:	f1 1d       	adc	r31, r1
 656:	9d e2       	ldi	r25, 0x2D	; 45
 658:	90 83       	st	Z, r25
 65a:	18 2f       	mov	r17, r24
 65c:	61 e0       	ldi	r22, 0x01	; 1
 65e:	70 e0       	ldi	r23, 0x00	; 0
 660:	6c 0f       	add	r22, r28
 662:	7d 1f       	adc	r23, r29
 664:	61 0f       	add	r22, r17
 666:	71 1d       	adc	r23, r1
 668:	c7 01       	movw	r24, r14
 66a:	0e 94 c9 02 	call	0x592	; 0x592 <_ZN8Terminal4putsEPc>
 66e:	2c 96       	adiw	r28, 0x0c	; 12
 670:	0f b6       	in	r0, 0x3f	; 63
 672:	f8 94       	cli
 674:	de bf       	out	0x3e, r29	; 62
 676:	0f be       	out	0x3f, r0	; 63
 678:	cd bf       	out	0x3d, r28	; 61
 67a:	df 91       	pop	r29
 67c:	cf 91       	pop	r28
 67e:	1f 91       	pop	r17
 680:	0f 91       	pop	r16
 682:	ff 90       	pop	r15
 684:	ef 90       	pop	r14
 686:	df 90       	pop	r13
 688:	cf 90       	pop	r12
 68a:	bf 90       	pop	r11
 68c:	af 90       	pop	r10
 68e:	9f 90       	pop	r9
 690:	8f 90       	pop	r8
 692:	08 95       	ret

00000694 <_GLOBAL__sub_I_terminal>:
 694:	80 ea       	ldi	r24, 0xA0	; 160
 696:	92 e0       	ldi	r25, 0x02	; 2
 698:	0c 94 d9 00 	jmp	0x1b2	; 0x1b2 <_ZN5USARTC1Ev>

0000069c <_GLOBAL__sub_D_terminal>:
 69c:	80 ea       	ldi	r24, 0xA0	; 160
 69e:	92 e0       	ldi	r25, 0x02	; 2
 6a0:	0c 94 e9 00 	jmp	0x1d2	; 0x1d2 <_ZN5USARTD1Ev>

000006a4 <__udivmodsi4>:
 6a4:	a1 e2       	ldi	r26, 0x21	; 33
 6a6:	1a 2e       	mov	r1, r26
 6a8:	aa 1b       	sub	r26, r26
 6aa:	bb 1b       	sub	r27, r27
 6ac:	fd 01       	movw	r30, r26
 6ae:	0d c0       	rjmp	.+26     	; 0x6ca <__udivmodsi4_ep>

000006b0 <__udivmodsi4_loop>:
 6b0:	aa 1f       	adc	r26, r26
 6b2:	bb 1f       	adc	r27, r27
 6b4:	ee 1f       	adc	r30, r30
 6b6:	ff 1f       	adc	r31, r31
 6b8:	a2 17       	cp	r26, r18
 6ba:	b3 07       	cpc	r27, r19
 6bc:	e4 07       	cpc	r30, r20
 6be:	f5 07       	cpc	r31, r21
 6c0:	20 f0       	brcs	.+8      	; 0x6ca <__udivmodsi4_ep>
 6c2:	a2 1b       	sub	r26, r18
 6c4:	b3 0b       	sbc	r27, r19
 6c6:	e4 0b       	sbc	r30, r20
 6c8:	f5 0b       	sbc	r31, r21

000006ca <__udivmodsi4_ep>:
 6ca:	66 1f       	adc	r22, r22
 6cc:	77 1f       	adc	r23, r23
 6ce:	88 1f       	adc	r24, r24
 6d0:	99 1f       	adc	r25, r25
 6d2:	1a 94       	dec	r1
 6d4:	69 f7       	brne	.-38     	; 0x6b0 <__udivmodsi4_loop>
 6d6:	60 95       	com	r22
 6d8:	70 95       	com	r23
 6da:	80 95       	com	r24
 6dc:	90 95       	com	r25
 6de:	9b 01       	movw	r18, r22
 6e0:	ac 01       	movw	r20, r24
 6e2:	bd 01       	movw	r22, r26
 6e4:	cf 01       	movw	r24, r30
 6e6:	08 95       	ret

000006e8 <__divmodsi4>:
 6e8:	05 2e       	mov	r0, r21
 6ea:	97 fb       	bst	r25, 7
 6ec:	1e f4       	brtc	.+6      	; 0x6f4 <__divmodsi4+0xc>
 6ee:	00 94       	com	r0
 6f0:	0e 94 8b 03 	call	0x716	; 0x716 <__negsi2>
 6f4:	57 fd       	sbrc	r21, 7
 6f6:	07 d0       	rcall	.+14     	; 0x706 <__divmodsi4_neg2>
 6f8:	0e 94 52 03 	call	0x6a4	; 0x6a4 <__udivmodsi4>
 6fc:	07 fc       	sbrc	r0, 7
 6fe:	03 d0       	rcall	.+6      	; 0x706 <__divmodsi4_neg2>
 700:	4e f4       	brtc	.+18     	; 0x714 <__divmodsi4_exit>
 702:	0c 94 8b 03 	jmp	0x716	; 0x716 <__negsi2>

00000706 <__divmodsi4_neg2>:
 706:	50 95       	com	r21
 708:	40 95       	com	r20
 70a:	30 95       	com	r19
 70c:	21 95       	neg	r18
 70e:	3f 4f       	sbci	r19, 0xFF	; 255
 710:	4f 4f       	sbci	r20, 0xFF	; 255
 712:	5f 4f       	sbci	r21, 0xFF	; 255

00000714 <__divmodsi4_exit>:
 714:	08 95       	ret

00000716 <__negsi2>:
 716:	90 95       	com	r25
 718:	80 95       	com	r24
 71a:	70 95       	com	r23
 71c:	61 95       	neg	r22
 71e:	7f 4f       	sbci	r23, 0xFF	; 255
 720:	8f 4f       	sbci	r24, 0xFF	; 255
 722:	9f 4f       	sbci	r25, 0xFF	; 255
 724:	08 95       	ret

00000726 <__tablejump2__>:
 726:	ee 0f       	add	r30, r30
 728:	ff 1f       	adc	r31, r31
 72a:	05 90       	lpm	r0, Z+
 72c:	f4 91       	lpm	r31, Z
 72e:	e0 2d       	mov	r30, r0
 730:	09 94       	ijmp

00000732 <malloc>:
 732:	0f 93       	push	r16
 734:	1f 93       	push	r17
 736:	cf 93       	push	r28
 738:	df 93       	push	r29
 73a:	82 30       	cpi	r24, 0x02	; 2
 73c:	91 05       	cpc	r25, r1
 73e:	10 f4       	brcc	.+4      	; 0x744 <malloc+0x12>
 740:	82 e0       	ldi	r24, 0x02	; 2
 742:	90 e0       	ldi	r25, 0x00	; 0
 744:	e0 91 a3 02 	lds	r30, 0x02A3	; 0x8002a3 <__flp>
 748:	f0 91 a4 02 	lds	r31, 0x02A4	; 0x8002a4 <__flp+0x1>
 74c:	20 e0       	ldi	r18, 0x00	; 0
 74e:	30 e0       	ldi	r19, 0x00	; 0
 750:	a0 e0       	ldi	r26, 0x00	; 0
 752:	b0 e0       	ldi	r27, 0x00	; 0
 754:	30 97       	sbiw	r30, 0x00	; 0
 756:	19 f1       	breq	.+70     	; 0x79e <malloc+0x6c>
 758:	40 81       	ld	r20, Z
 75a:	51 81       	ldd	r21, Z+1	; 0x01
 75c:	02 81       	ldd	r16, Z+2	; 0x02
 75e:	13 81       	ldd	r17, Z+3	; 0x03
 760:	48 17       	cp	r20, r24
 762:	59 07       	cpc	r21, r25
 764:	c8 f0       	brcs	.+50     	; 0x798 <malloc+0x66>
 766:	84 17       	cp	r24, r20
 768:	95 07       	cpc	r25, r21
 76a:	69 f4       	brne	.+26     	; 0x786 <malloc+0x54>
 76c:	10 97       	sbiw	r26, 0x00	; 0
 76e:	31 f0       	breq	.+12     	; 0x77c <malloc+0x4a>
 770:	12 96       	adiw	r26, 0x02	; 2
 772:	0c 93       	st	X, r16
 774:	12 97       	sbiw	r26, 0x02	; 2
 776:	13 96       	adiw	r26, 0x03	; 3
 778:	1c 93       	st	X, r17
 77a:	27 c0       	rjmp	.+78     	; 0x7ca <malloc+0x98>
 77c:	00 93 a3 02 	sts	0x02A3, r16	; 0x8002a3 <__flp>
 780:	10 93 a4 02 	sts	0x02A4, r17	; 0x8002a4 <__flp+0x1>
 784:	22 c0       	rjmp	.+68     	; 0x7ca <malloc+0x98>
 786:	21 15       	cp	r18, r1
 788:	31 05       	cpc	r19, r1
 78a:	19 f0       	breq	.+6      	; 0x792 <malloc+0x60>
 78c:	42 17       	cp	r20, r18
 78e:	53 07       	cpc	r21, r19
 790:	18 f4       	brcc	.+6      	; 0x798 <malloc+0x66>
 792:	9a 01       	movw	r18, r20
 794:	bd 01       	movw	r22, r26
 796:	ef 01       	movw	r28, r30
 798:	df 01       	movw	r26, r30
 79a:	f8 01       	movw	r30, r16
 79c:	db cf       	rjmp	.-74     	; 0x754 <malloc+0x22>
 79e:	21 15       	cp	r18, r1
 7a0:	31 05       	cpc	r19, r1
 7a2:	f9 f0       	breq	.+62     	; 0x7e2 <malloc+0xb0>
 7a4:	28 1b       	sub	r18, r24
 7a6:	39 0b       	sbc	r19, r25
 7a8:	24 30       	cpi	r18, 0x04	; 4
 7aa:	31 05       	cpc	r19, r1
 7ac:	80 f4       	brcc	.+32     	; 0x7ce <malloc+0x9c>
 7ae:	8a 81       	ldd	r24, Y+2	; 0x02
 7b0:	9b 81       	ldd	r25, Y+3	; 0x03
 7b2:	61 15       	cp	r22, r1
 7b4:	71 05       	cpc	r23, r1
 7b6:	21 f0       	breq	.+8      	; 0x7c0 <malloc+0x8e>
 7b8:	fb 01       	movw	r30, r22
 7ba:	93 83       	std	Z+3, r25	; 0x03
 7bc:	82 83       	std	Z+2, r24	; 0x02
 7be:	04 c0       	rjmp	.+8      	; 0x7c8 <malloc+0x96>
 7c0:	90 93 a4 02 	sts	0x02A4, r25	; 0x8002a4 <__flp+0x1>
 7c4:	80 93 a3 02 	sts	0x02A3, r24	; 0x8002a3 <__flp>
 7c8:	fe 01       	movw	r30, r28
 7ca:	32 96       	adiw	r30, 0x02	; 2
 7cc:	44 c0       	rjmp	.+136    	; 0x856 <malloc+0x124>
 7ce:	fe 01       	movw	r30, r28
 7d0:	e2 0f       	add	r30, r18
 7d2:	f3 1f       	adc	r31, r19
 7d4:	81 93       	st	Z+, r24
 7d6:	91 93       	st	Z+, r25
 7d8:	22 50       	subi	r18, 0x02	; 2
 7da:	31 09       	sbc	r19, r1
 7dc:	39 83       	std	Y+1, r19	; 0x01
 7de:	28 83       	st	Y, r18
 7e0:	3a c0       	rjmp	.+116    	; 0x856 <malloc+0x124>
 7e2:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 7e6:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 7ea:	23 2b       	or	r18, r19
 7ec:	41 f4       	brne	.+16     	; 0x7fe <malloc+0xcc>
 7ee:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 7f2:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 7f6:	30 93 a2 02 	sts	0x02A2, r19	; 0x8002a2 <__brkval+0x1>
 7fa:	20 93 a1 02 	sts	0x02A1, r18	; 0x8002a1 <__brkval>
 7fe:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 802:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 806:	21 15       	cp	r18, r1
 808:	31 05       	cpc	r19, r1
 80a:	41 f4       	brne	.+16     	; 0x81c <malloc+0xea>
 80c:	2d b7       	in	r18, 0x3d	; 61
 80e:	3e b7       	in	r19, 0x3e	; 62
 810:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 814:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 818:	24 1b       	sub	r18, r20
 81a:	35 0b       	sbc	r19, r21
 81c:	e0 91 a1 02 	lds	r30, 0x02A1	; 0x8002a1 <__brkval>
 820:	f0 91 a2 02 	lds	r31, 0x02A2	; 0x8002a2 <__brkval+0x1>
 824:	e2 17       	cp	r30, r18
 826:	f3 07       	cpc	r31, r19
 828:	a0 f4       	brcc	.+40     	; 0x852 <malloc+0x120>
 82a:	2e 1b       	sub	r18, r30
 82c:	3f 0b       	sbc	r19, r31
 82e:	28 17       	cp	r18, r24
 830:	39 07       	cpc	r19, r25
 832:	78 f0       	brcs	.+30     	; 0x852 <malloc+0x120>
 834:	ac 01       	movw	r20, r24
 836:	4e 5f       	subi	r20, 0xFE	; 254
 838:	5f 4f       	sbci	r21, 0xFF	; 255
 83a:	24 17       	cp	r18, r20
 83c:	35 07       	cpc	r19, r21
 83e:	48 f0       	brcs	.+18     	; 0x852 <malloc+0x120>
 840:	4e 0f       	add	r20, r30
 842:	5f 1f       	adc	r21, r31
 844:	50 93 a2 02 	sts	0x02A2, r21	; 0x8002a2 <__brkval+0x1>
 848:	40 93 a1 02 	sts	0x02A1, r20	; 0x8002a1 <__brkval>
 84c:	81 93       	st	Z+, r24
 84e:	91 93       	st	Z+, r25
 850:	02 c0       	rjmp	.+4      	; 0x856 <malloc+0x124>
 852:	e0 e0       	ldi	r30, 0x00	; 0
 854:	f0 e0       	ldi	r31, 0x00	; 0
 856:	cf 01       	movw	r24, r30
 858:	df 91       	pop	r29
 85a:	cf 91       	pop	r28
 85c:	1f 91       	pop	r17
 85e:	0f 91       	pop	r16
 860:	08 95       	ret

00000862 <free>:
 862:	cf 93       	push	r28
 864:	df 93       	push	r29
 866:	00 97       	sbiw	r24, 0x00	; 0
 868:	09 f4       	brne	.+2      	; 0x86c <free+0xa>
 86a:	81 c0       	rjmp	.+258    	; 0x96e <__stack+0x6f>
 86c:	fc 01       	movw	r30, r24
 86e:	32 97       	sbiw	r30, 0x02	; 2
 870:	13 82       	std	Z+3, r1	; 0x03
 872:	12 82       	std	Z+2, r1	; 0x02
 874:	a0 91 a3 02 	lds	r26, 0x02A3	; 0x8002a3 <__flp>
 878:	b0 91 a4 02 	lds	r27, 0x02A4	; 0x8002a4 <__flp+0x1>
 87c:	10 97       	sbiw	r26, 0x00	; 0
 87e:	81 f4       	brne	.+32     	; 0x8a0 <free+0x3e>
 880:	20 81       	ld	r18, Z
 882:	31 81       	ldd	r19, Z+1	; 0x01
 884:	82 0f       	add	r24, r18
 886:	93 1f       	adc	r25, r19
 888:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 88c:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 890:	28 17       	cp	r18, r24
 892:	39 07       	cpc	r19, r25
 894:	51 f5       	brne	.+84     	; 0x8ea <free+0x88>
 896:	f0 93 a2 02 	sts	0x02A2, r31	; 0x8002a2 <__brkval+0x1>
 89a:	e0 93 a1 02 	sts	0x02A1, r30	; 0x8002a1 <__brkval>
 89e:	67 c0       	rjmp	.+206    	; 0x96e <__stack+0x6f>
 8a0:	ed 01       	movw	r28, r26
 8a2:	20 e0       	ldi	r18, 0x00	; 0
 8a4:	30 e0       	ldi	r19, 0x00	; 0
 8a6:	ce 17       	cp	r28, r30
 8a8:	df 07       	cpc	r29, r31
 8aa:	40 f4       	brcc	.+16     	; 0x8bc <free+0x5a>
 8ac:	4a 81       	ldd	r20, Y+2	; 0x02
 8ae:	5b 81       	ldd	r21, Y+3	; 0x03
 8b0:	9e 01       	movw	r18, r28
 8b2:	41 15       	cp	r20, r1
 8b4:	51 05       	cpc	r21, r1
 8b6:	f1 f0       	breq	.+60     	; 0x8f4 <free+0x92>
 8b8:	ea 01       	movw	r28, r20
 8ba:	f5 cf       	rjmp	.-22     	; 0x8a6 <free+0x44>
 8bc:	d3 83       	std	Z+3, r29	; 0x03
 8be:	c2 83       	std	Z+2, r28	; 0x02
 8c0:	40 81       	ld	r20, Z
 8c2:	51 81       	ldd	r21, Z+1	; 0x01
 8c4:	84 0f       	add	r24, r20
 8c6:	95 1f       	adc	r25, r21
 8c8:	c8 17       	cp	r28, r24
 8ca:	d9 07       	cpc	r29, r25
 8cc:	59 f4       	brne	.+22     	; 0x8e4 <free+0x82>
 8ce:	88 81       	ld	r24, Y
 8d0:	99 81       	ldd	r25, Y+1	; 0x01
 8d2:	84 0f       	add	r24, r20
 8d4:	95 1f       	adc	r25, r21
 8d6:	02 96       	adiw	r24, 0x02	; 2
 8d8:	91 83       	std	Z+1, r25	; 0x01
 8da:	80 83       	st	Z, r24
 8dc:	8a 81       	ldd	r24, Y+2	; 0x02
 8de:	9b 81       	ldd	r25, Y+3	; 0x03
 8e0:	93 83       	std	Z+3, r25	; 0x03
 8e2:	82 83       	std	Z+2, r24	; 0x02
 8e4:	21 15       	cp	r18, r1
 8e6:	31 05       	cpc	r19, r1
 8e8:	29 f4       	brne	.+10     	; 0x8f4 <free+0x92>
 8ea:	f0 93 a4 02 	sts	0x02A4, r31	; 0x8002a4 <__flp+0x1>
 8ee:	e0 93 a3 02 	sts	0x02A3, r30	; 0x8002a3 <__flp>
 8f2:	3d c0       	rjmp	.+122    	; 0x96e <__stack+0x6f>
 8f4:	e9 01       	movw	r28, r18
 8f6:	fb 83       	std	Y+3, r31	; 0x03
 8f8:	ea 83       	std	Y+2, r30	; 0x02
 8fa:	49 91       	ld	r20, Y+
 8fc:	59 91       	ld	r21, Y+
 8fe:	c4 0f       	add	r28, r20
 900:	d5 1f       	adc	r29, r21
 902:	ec 17       	cp	r30, r28
 904:	fd 07       	cpc	r31, r29
 906:	61 f4       	brne	.+24     	; 0x920 <__stack+0x21>
 908:	80 81       	ld	r24, Z
 90a:	91 81       	ldd	r25, Z+1	; 0x01
 90c:	84 0f       	add	r24, r20
 90e:	95 1f       	adc	r25, r21
 910:	02 96       	adiw	r24, 0x02	; 2
 912:	e9 01       	movw	r28, r18
 914:	99 83       	std	Y+1, r25	; 0x01
 916:	88 83       	st	Y, r24
 918:	82 81       	ldd	r24, Z+2	; 0x02
 91a:	93 81       	ldd	r25, Z+3	; 0x03
 91c:	9b 83       	std	Y+3, r25	; 0x03
 91e:	8a 83       	std	Y+2, r24	; 0x02
 920:	e0 e0       	ldi	r30, 0x00	; 0
 922:	f0 e0       	ldi	r31, 0x00	; 0
 924:	12 96       	adiw	r26, 0x02	; 2
 926:	8d 91       	ld	r24, X+
 928:	9c 91       	ld	r25, X
 92a:	13 97       	sbiw	r26, 0x03	; 3
 92c:	00 97       	sbiw	r24, 0x00	; 0
 92e:	19 f0       	breq	.+6      	; 0x936 <__stack+0x37>
 930:	fd 01       	movw	r30, r26
 932:	dc 01       	movw	r26, r24
 934:	f7 cf       	rjmp	.-18     	; 0x924 <__stack+0x25>
 936:	8d 91       	ld	r24, X+
 938:	9c 91       	ld	r25, X
 93a:	11 97       	sbiw	r26, 0x01	; 1
 93c:	9d 01       	movw	r18, r26
 93e:	2e 5f       	subi	r18, 0xFE	; 254
 940:	3f 4f       	sbci	r19, 0xFF	; 255
 942:	82 0f       	add	r24, r18
 944:	93 1f       	adc	r25, r19
 946:	20 91 a1 02 	lds	r18, 0x02A1	; 0x8002a1 <__brkval>
 94a:	30 91 a2 02 	lds	r19, 0x02A2	; 0x8002a2 <__brkval+0x1>
 94e:	28 17       	cp	r18, r24
 950:	39 07       	cpc	r19, r25
 952:	69 f4       	brne	.+26     	; 0x96e <__stack+0x6f>
 954:	30 97       	sbiw	r30, 0x00	; 0
 956:	29 f4       	brne	.+10     	; 0x962 <__stack+0x63>
 958:	10 92 a4 02 	sts	0x02A4, r1	; 0x8002a4 <__flp+0x1>
 95c:	10 92 a3 02 	sts	0x02A3, r1	; 0x8002a3 <__flp>
 960:	02 c0       	rjmp	.+4      	; 0x966 <__stack+0x67>
 962:	13 82       	std	Z+3, r1	; 0x03
 964:	12 82       	std	Z+2, r1	; 0x02
 966:	b0 93 a2 02 	sts	0x02A2, r27	; 0x8002a2 <__brkval+0x1>
 96a:	a0 93 a1 02 	sts	0x02A1, r26	; 0x8002a1 <__brkval>
 96e:	df 91       	pop	r29
 970:	cf 91       	pop	r28
 972:	08 95       	ret

00000974 <__do_global_dtors>:
 974:	10 e0       	ldi	r17, 0x00	; 0
 976:	c6 e3       	ldi	r28, 0x36	; 54
 978:	d0 e0       	ldi	r29, 0x00	; 0
 97a:	04 c0       	rjmp	.+8      	; 0x984 <__do_global_dtors+0x10>
 97c:	fe 01       	movw	r30, r28
 97e:	0e 94 93 03 	call	0x726	; 0x726 <__tablejump2__>
 982:	21 96       	adiw	r28, 0x01	; 1
 984:	c8 33       	cpi	r28, 0x38	; 56
 986:	d1 07       	cpc	r29, r17
 988:	c9 f7       	brne	.-14     	; 0x97c <__do_global_dtors+0x8>
 98a:	f8 94       	cli

0000098c <__stop_program>:
 98c:	ff cf       	rjmp	.-2      	; 0x98c <__stop_program>
