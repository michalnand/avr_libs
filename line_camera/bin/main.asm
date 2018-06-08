
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
  38:	0c 94 4a 03 	jmp	0x694	; 0x694 <__vector_14>
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
  68:	d0 00       	.word	0x00d0	; ????
  6a:	1b 03       	fmul	r17, r19

0000006c <__ctors_end>:
  6c:	d4 00       	.word	0x00d4	; ????
  6e:	1f 03       	fmul	r17, r23

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
  82:	e8 ed       	ldi	r30, 0xD8	; 216
  84:	f9 e0       	ldi	r31, 0x09	; 9
  86:	02 c0       	rjmp	.+4      	; 0x8c <__do_copy_data+0x10>
  88:	05 90       	lpm	r0, Z+
  8a:	0d 92       	st	X+, r0
  8c:	ae 33       	cpi	r26, 0x3E	; 62
  8e:	b1 07       	cpc	r27, r17
  90:	d9 f7       	brne	.-10     	; 0x88 <__do_copy_data+0xc>

00000092 <__do_clear_bss>:
  92:	21 e0       	ldi	r18, 0x01	; 1
  94:	ae e3       	ldi	r26, 0x3E	; 62
  96:	b1 e0       	ldi	r27, 0x01	; 1
  98:	01 c0       	rjmp	.+2      	; 0x9c <.do_clear_bss_start>

0000009a <.do_clear_bss_loop>:
  9a:	1d 92       	st	X+, r1

0000009c <.do_clear_bss_start>:
  9c:	a6 3f       	cpi	r26, 0xF6	; 246
  9e:	b2 07       	cpc	r27, r18
  a0:	e1 f7       	brne	.-8      	; 0x9a <.do_clear_bss_loop>

000000a2 <__do_global_ctors>:
  a2:	10 e0       	ldi	r17, 0x00	; 0
  a4:	c6 e3       	ldi	r28, 0x36	; 54
  a6:	d0 e0       	ldi	r29, 0x00	; 0
  a8:	04 c0       	rjmp	.+8      	; 0xb2 <__do_global_ctors+0x10>
  aa:	21 97       	sbiw	r28, 0x01	; 1
  ac:	fe 01       	movw	r30, r28
  ae:	0e 94 b8 03 	call	0x770	; 0x770 <__tablejump2__>
  b2:	c4 33       	cpi	r28, 0x34	; 52
  b4:	d1 07       	cpc	r29, r17
  b6:	c9 f7       	brne	.-14     	; 0xaa <__do_global_ctors+0x8>
  b8:	0e 94 62 00 	call	0xc4	; 0xc4 <main>
  bc:	0c 94 df 04 	jmp	0x9be	; 0x9be <__do_global_dtors>

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
  d2:	80 ef       	ldi	r24, 0xF0	; 240
  d4:	91 e0       	ldi	r25, 0x01	; 1
  d6:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
  da:	62 e3       	ldi	r22, 0x32	; 50
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	ce 01       	movw	r24, r28
  e0:	01 96       	adiw	r24, 0x01	; 1
  e2:	0e 94 23 03 	call	0x646	; 0x646 <_ZN11SampleTimerC1Ej>
  e6:	ce 01       	movw	r24, r28
  e8:	01 96       	adiw	r24, 0x01	; 1
  ea:	0e 94 41 03 	call	0x682	; 0x682 <_ZN11SampleTimer4waitEv>
  ee:	8e e3       	ldi	r24, 0x3E	; 62
  f0:	91 e0       	ldi	r25, 0x01	; 1
  f2:	0e 94 68 01 	call	0x2d0	; 0x2d0 <_ZN10LineCamera4readEv>
  f6:	8e e3       	ldi	r24, 0x3E	; 62
  f8:	91 e0       	ldi	r25, 0x01	; 1
  fa:	0e 94 ef 00 	call	0x1de	; 0x1de <_ZN10LineCamera7processEv>
  fe:	8e e3       	ldi	r24, 0x3E	; 62
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	0e 94 45 02 	call	0x48a	; 0x48a <_ZN11LinePostion21compute_line_positionEv>
 106:	0e e3       	ldi	r16, 0x3E	; 62
 108:	11 e0       	ldi	r17, 0x01	; 1
 10a:	f8 01       	movw	r30, r16
 10c:	83 81       	ldd	r24, Z+3	; 0x03
 10e:	87 ff       	sbrs	r24, 7
 110:	03 c0       	rjmp	.+6      	; 0x118 <main+0x54>
 112:	63 e1       	ldi	r22, 0x13	; 19
 114:	71 e0       	ldi	r23, 0x01	; 1
 116:	02 c0       	rjmp	.+4      	; 0x11c <main+0x58>
 118:	65 e1       	ldi	r22, 0x15	; 21
 11a:	71 e0       	ldi	r23, 0x01	; 1
 11c:	80 ef       	ldi	r24, 0xF0	; 240
 11e:	91 e0       	ldi	r25, 0x01	; 1
 120:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 124:	0e 5f       	subi	r16, 0xFE	; 254
 126:	1f 4f       	sbci	r17, 0xFF	; 255
 128:	f1 e0       	ldi	r31, 0x01	; 1
 12a:	0e 3b       	cpi	r16, 0xBE	; 190
 12c:	1f 07       	cpc	r17, r31
 12e:	69 f7       	brne	.-38     	; 0x10a <main+0x46>
 130:	61 e1       	ldi	r22, 0x11	; 17
 132:	71 e0       	ldi	r23, 0x01	; 1
 134:	80 ef       	ldi	r24, 0xF0	; 240
 136:	91 e0       	ldi	r25, 0x01	; 1
 138:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 13c:	8e e3       	ldi	r24, 0x3E	; 62
 13e:	91 e0       	ldi	r25, 0x01	; 1
 140:	0e 94 fe 01 	call	0x3fc	; 0x3fc <_ZN11LinePostion3getEv>
 144:	8c 01       	movw	r16, r24
 146:	67 e1       	ldi	r22, 0x17	; 23
 148:	71 e0       	ldi	r23, 0x01	; 1
 14a:	80 ef       	ldi	r24, 0xF0	; 240
 14c:	91 e0       	ldi	r25, 0x01	; 1
 14e:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 152:	a8 01       	movw	r20, r16
 154:	11 0f       	add	r17, r17
 156:	66 0b       	sbc	r22, r22
 158:	77 0b       	sbc	r23, r23
 15a:	80 ef       	ldi	r24, 0xF0	; 240
 15c:	91 e0       	ldi	r25, 0x01	; 1
 15e:	0e 94 ae 02 	call	0x55c	; 0x55c <_ZN8Terminal4putiEl>
 162:	64 e2       	ldi	r22, 0x24	; 36
 164:	71 e0       	ldi	r23, 0x01	; 1
 166:	80 ef       	ldi	r24, 0xF0	; 240
 168:	91 e0       	ldi	r25, 0x01	; 1
 16a:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 16e:	8e e3       	ldi	r24, 0x3E	; 62
 170:	91 e0       	ldi	r25, 0x01	; 1
 172:	0e 94 04 02 	call	0x408	; 0x408 <_ZN11LinePostion14get_confidenceEv>
 176:	6b 01       	movw	r12, r22
 178:	7c 01       	movw	r14, r24
 17a:	6e e1       	ldi	r22, 0x1E	; 30
 17c:	71 e0       	ldi	r23, 0x01	; 1
 17e:	80 ef       	ldi	r24, 0xF0	; 240
 180:	91 e0       	ldi	r25, 0x01	; 1
 182:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 186:	b7 01       	movw	r22, r14
 188:	a6 01       	movw	r20, r12
 18a:	80 ef       	ldi	r24, 0xF0	; 240
 18c:	91 e0       	ldi	r25, 0x01	; 1
 18e:	0e 94 ae 02 	call	0x55c	; 0x55c <_ZN8Terminal4putiEl>
 192:	61 e1       	ldi	r22, 0x11	; 17
 194:	71 e0       	ldi	r23, 0x01	; 1
 196:	80 ef       	ldi	r24, 0xF0	; 240
 198:	91 e0       	ldi	r25, 0x01	; 1
 19a:	0e 94 ac 02 	call	0x558	; 0x558 <_ZN8Terminal4putsEPKc>
 19e:	a3 cf       	rjmp	.-186    	; 0xe6 <main+0x22>

000001a0 <_GLOBAL__sub_I_line_position>:
 1a0:	8e e3       	ldi	r24, 0x3E	; 62
 1a2:	91 e0       	ldi	r25, 0x01	; 1
 1a4:	0c 94 ce 01 	jmp	0x39c	; 0x39c <_ZN11LinePostionC1Ev>

000001a8 <_GLOBAL__sub_D_line_position>:
 1a8:	8e e3       	ldi	r24, 0x3E	; 62
 1aa:	91 e0       	ldi	r25, 0x01	; 1
 1ac:	0c 94 fc 01 	jmp	0x3f8	; 0x3f8 <_ZN11LinePostionD1Ev>

000001b0 <_ZN5ArrayIaLj128EED1Ev>:
 1b0:	08 95       	ret

000001b2 <_ZN5ArrayIaLj128EE4sizeEv>:
 1b2:	80 e8       	ldi	r24, 0x80	; 128
 1b4:	90 e0       	ldi	r25, 0x00	; 0
 1b6:	08 95       	ret

000001b8 <_ZN5ArrayIaLj128EEixEj>:
 1b8:	6d 5f       	subi	r22, 0xFD	; 253
 1ba:	7f 4f       	sbci	r23, 0xFF	; 255
 1bc:	86 0f       	add	r24, r22
 1be:	97 1f       	adc	r25, r23
 1c0:	08 95       	ret

000001c2 <_ZN5ArrayIaLj128EED0Ev>:
 1c2:	0c 94 98 02 	jmp	0x530	; 0x530 <_ZdlPv>

000001c6 <_ZN10LineCameraC1Ev>:
 1c6:	2a e2       	ldi	r18, 0x2A	; 42
 1c8:	31 e0       	ldi	r19, 0x01	; 1
 1ca:	fc 01       	movw	r30, r24
 1cc:	31 83       	std	Z+1, r19	; 0x01
 1ce:	20 83       	st	Z, r18
 1d0:	38 98       	cbi	0x07, 0	; 7
 1d2:	39 9a       	sbi	0x07, 1	; 7
 1d4:	3a 9a       	sbi	0x07, 2	; 7
 1d6:	42 98       	cbi	0x08, 2	; 8
 1d8:	41 98       	cbi	0x08, 1	; 8
 1da:	08 95       	ret

000001dc <_ZN10LineCameraD1Ev>:
 1dc:	08 95       	ret

000001de <_ZN10LineCamera7processEv>:
 1de:	8f 92       	push	r8
 1e0:	9f 92       	push	r9
 1e2:	af 92       	push	r10
 1e4:	bf 92       	push	r11
 1e6:	ef 92       	push	r14
 1e8:	ff 92       	push	r15
 1ea:	0f 93       	push	r16
 1ec:	1f 93       	push	r17
 1ee:	cf 93       	push	r28
 1f0:	df 93       	push	r29
 1f2:	ec 01       	movw	r28, r24
 1f4:	8c 01       	movw	r16, r24
 1f6:	0d 5f       	subi	r16, 0xFD	; 253
 1f8:	1f 4f       	sbci	r17, 0xFF	; 255
 1fa:	7c 01       	movw	r14, r24
 1fc:	83 e8       	ldi	r24, 0x83	; 131
 1fe:	e8 0e       	add	r14, r24
 200:	f1 1c       	adc	r15, r1
 202:	f8 01       	movw	r30, r16
 204:	60 e0       	ldi	r22, 0x00	; 0
 206:	70 e0       	ldi	r23, 0x00	; 0
 208:	cb 01       	movw	r24, r22
 20a:	81 90       	ld	r8, Z+
 20c:	08 2c       	mov	r0, r8
 20e:	00 0c       	add	r0, r0
 210:	99 08       	sbc	r9, r9
 212:	aa 08       	sbc	r10, r10
 214:	bb 08       	sbc	r11, r11
 216:	68 0d       	add	r22, r8
 218:	79 1d       	adc	r23, r9
 21a:	8a 1d       	adc	r24, r10
 21c:	9b 1d       	adc	r25, r11
 21e:	ee 15       	cp	r30, r14
 220:	ff 05       	cpc	r31, r15
 222:	99 f7       	brne	.-26     	; 0x20a <_ZN10LineCamera7processEv+0x2c>
 224:	20 e8       	ldi	r18, 0x80	; 128
 226:	30 e0       	ldi	r19, 0x00	; 0
 228:	40 e0       	ldi	r20, 0x00	; 0
 22a:	50 e0       	ldi	r21, 0x00	; 0
 22c:	0e 94 7b 03 	call	0x6f6	; 0x6f6 <__divmodsi4>
 230:	f8 01       	movw	r30, r16
 232:	80 81       	ld	r24, Z
 234:	82 1b       	sub	r24, r18
 236:	81 93       	st	Z+, r24
 238:	8f 01       	movw	r16, r30
 23a:	ee 15       	cp	r30, r14
 23c:	ff 05       	cpc	r31, r15
 23e:	c1 f7       	brne	.-16     	; 0x230 <_ZN10LineCamera7processEv+0x52>
 240:	fe 01       	movw	r30, r28
 242:	ce 01       	movw	r24, r28
 244:	80 58       	subi	r24, 0x80	; 128
 246:	9f 4f       	sbci	r25, 0xFF	; 255
 248:	2f ef       	ldi	r18, 0xFF	; 255
 24a:	31 e0       	ldi	r19, 0x01	; 1
 24c:	43 81       	ldd	r20, Z+3	; 0x03
 24e:	14 16       	cp	r1, r20
 250:	14 f4       	brge	.+4      	; 0x256 <_ZN10LineCamera7processEv+0x78>
 252:	33 83       	std	Z+3, r19	; 0x03
 254:	01 c0       	rjmp	.+2      	; 0x258 <_ZN10LineCamera7processEv+0x7a>
 256:	23 83       	std	Z+3, r18	; 0x03
 258:	31 96       	adiw	r30, 0x01	; 1
 25a:	8e 17       	cp	r24, r30
 25c:	9f 07       	cpc	r25, r31
 25e:	b1 f7       	brne	.-20     	; 0x24c <_ZN10LineCamera7processEv+0x6e>
 260:	df 91       	pop	r29
 262:	cf 91       	pop	r28
 264:	1f 91       	pop	r17
 266:	0f 91       	pop	r16
 268:	ff 90       	pop	r15
 26a:	ef 90       	pop	r14
 26c:	bf 90       	pop	r11
 26e:	af 90       	pop	r10
 270:	9f 90       	pop	r9
 272:	8f 90       	pop	r8
 274:	08 95       	ret

00000276 <_ZN10LineCamera8adc_initEh>:
 276:	ec e7       	ldi	r30, 0x7C	; 124
 278:	f0 e0       	ldi	r31, 0x00	; 0
 27a:	80 e4       	ldi	r24, 0x40	; 64
 27c:	80 83       	st	Z, r24
 27e:	83 e8       	ldi	r24, 0x83	; 131
 280:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 284:	80 81       	ld	r24, Z
 286:	67 70       	andi	r22, 0x07	; 7
 288:	68 2b       	or	r22, r24
 28a:	60 83       	st	Z, r22
 28c:	08 95       	ret

0000028e <_ZN10LineCamera8adc_readEv>:
 28e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 292:	80 64       	ori	r24, 0x40	; 64
 294:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 298:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 29c:	86 ff       	sbrs	r24, 6
 29e:	02 c0       	rjmp	.+4      	; 0x2a4 <_ZN10LineCamera8adc_readEv+0x16>
 2a0:	00 00       	nop
 2a2:	fa cf       	rjmp	.-12     	; 0x298 <_ZN10LineCamera8adc_readEv+0xa>
 2a4:	80 91 78 00 	lds	r24, 0x0078	; 0x800078 <__TEXT_REGION_LENGTH__+0x7e0078>
 2a8:	90 91 79 00 	lds	r25, 0x0079	; 0x800079 <__TEXT_REGION_LENGTH__+0x7e0079>
 2ac:	08 95       	ret

000002ae <_ZN10LineCamera11delay_microEv>:
	...
 2ce:	08 95       	ret

000002d0 <_ZN10LineCamera4readEv>:
 2d0:	ef 92       	push	r14
 2d2:	ff 92       	push	r15
 2d4:	0f 93       	push	r16
 2d6:	1f 93       	push	r17
 2d8:	cf 93       	push	r28
 2da:	df 93       	push	r29
 2dc:	ec 01       	movw	r28, r24
 2de:	60 e0       	ldi	r22, 0x00	; 0
 2e0:	0e 94 3b 01 	call	0x276	; 0x276 <_ZN10LineCamera8adc_initEh>
 2e4:	ce 01       	movw	r24, r28
 2e6:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 2ea:	42 9a       	sbi	0x08, 2	; 8
 2ec:	ce 01       	movw	r24, r28
 2ee:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 2f2:	41 9a       	sbi	0x08, 1	; 8
 2f4:	ce 01       	movw	r24, r28
 2f6:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 2fa:	42 98       	cbi	0x08, 2	; 8
 2fc:	ce 01       	movw	r24, r28
 2fe:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 302:	41 98       	cbi	0x08, 1	; 8
 304:	ce 01       	movw	r24, r28
 306:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 30a:	8e 01       	movw	r16, r28
 30c:	0d 5f       	subi	r16, 0xFD	; 253
 30e:	1f 4f       	sbci	r17, 0xFF	; 255
 310:	7e 01       	movw	r14, r28
 312:	83 e8       	ldi	r24, 0x83	; 131
 314:	e8 0e       	add	r14, r24
 316:	f1 1c       	adc	r15, r1
 318:	41 9a       	sbi	0x08, 1	; 8
 31a:	ce 01       	movw	r24, r28
 31c:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 320:	ce 01       	movw	r24, r28
 322:	0e 94 47 01 	call	0x28e	; 0x28e <_ZN10LineCamera8adc_readEv>
 326:	23 e0       	ldi	r18, 0x03	; 3
 328:	95 95       	asr	r25
 32a:	87 95       	ror	r24
 32c:	2a 95       	dec	r18
 32e:	e1 f7       	brne	.-8      	; 0x328 <_ZN10LineCamera4readEv+0x58>
 330:	f8 01       	movw	r30, r16
 332:	81 93       	st	Z+, r24
 334:	8f 01       	movw	r16, r30
 336:	41 98       	cbi	0x08, 1	; 8
 338:	ce 01       	movw	r24, r28
 33a:	0e 94 57 01 	call	0x2ae	; 0x2ae <_ZN10LineCamera11delay_microEv>
 33e:	0e 15       	cp	r16, r14
 340:	1f 05       	cpc	r17, r15
 342:	51 f7       	brne	.-44     	; 0x318 <_ZN10LineCamera4readEv+0x48>
 344:	df 91       	pop	r29
 346:	cf 91       	pop	r28
 348:	1f 91       	pop	r17
 34a:	0f 91       	pop	r16
 34c:	ff 90       	pop	r15
 34e:	ef 90       	pop	r14
 350:	08 95       	ret

00000352 <_ZN5USARTC1Ev>:
 352:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 356:	80 e1       	ldi	r24, 0x10	; 16
 358:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 35c:	e2 ec       	ldi	r30, 0xC2	; 194
 35e:	f0 e0       	ldi	r31, 0x00	; 0
 360:	80 81       	ld	r24, Z
 362:	86 60       	ori	r24, 0x06	; 6
 364:	80 83       	st	Z, r24
 366:	e1 ec       	ldi	r30, 0xC1	; 193
 368:	f0 e0       	ldi	r31, 0x00	; 0
 36a:	80 81       	ld	r24, Z
 36c:	88 61       	ori	r24, 0x18	; 24
 36e:	80 83       	st	Z, r24
 370:	08 95       	ret

00000372 <_ZN5USARTD1Ev>:
 372:	08 95       	ret

00000374 <_ZN5USART8put_charEc>:
 374:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 378:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 37c:	85 fd       	sbrc	r24, 5
 37e:	02 c0       	rjmp	.+4      	; 0x384 <_ZN5USART8put_charEc+0x10>
 380:	00 00       	nop
 382:	fa cf       	rjmp	.-12     	; 0x378 <_ZN5USART8put_charEc+0x4>
 384:	08 95       	ret

00000386 <_ZN5ArrayIaLj35EED1Ev>:
 386:	08 95       	ret

00000388 <_ZN5ArrayIaLj35EE4sizeEv>:
 388:	83 e2       	ldi	r24, 0x23	; 35
 38a:	90 e0       	ldi	r25, 0x00	; 0
 38c:	08 95       	ret

0000038e <_ZN5ArrayIaLj35EEixEj>:
 38e:	6d 5f       	subi	r22, 0xFD	; 253
 390:	7f 4f       	sbci	r23, 0xFF	; 255
 392:	86 0f       	add	r24, r22
 394:	97 1f       	adc	r25, r23
 396:	08 95       	ret

00000398 <_ZN5ArrayIaLj35EED0Ev>:
 398:	0c 94 98 02 	jmp	0x530	; 0x530 <_ZdlPv>

0000039c <_ZN11LinePostionC1Ev>:
 39c:	cf 93       	push	r28
 39e:	df 93       	push	r29
 3a0:	ec 01       	movw	r28, r24
 3a2:	0e 94 e3 00 	call	0x1c6	; 0x1c6 <_ZN10LineCameraC1Ev>
 3a6:	fe 01       	movw	r30, r28
 3a8:	e4 57       	subi	r30, 0x74	; 116
 3aa:	ff 4f       	sbci	r31, 0xFF	; 255
 3ac:	86 e3       	ldi	r24, 0x36	; 54
 3ae:	91 e0       	ldi	r25, 0x01	; 1
 3b0:	91 83       	std	Z+1, r25	; 0x01
 3b2:	80 83       	st	Z, r24
 3b4:	33 96       	adiw	r30, 0x03	; 3
 3b6:	ce 01       	movw	r24, r28
 3b8:	8e 54       	subi	r24, 0x4E	; 78
 3ba:	9f 4f       	sbci	r25, 0xFF	; 255
 3bc:	21 e0       	ldi	r18, 0x01	; 1
 3be:	21 93       	st	Z+, r18
 3c0:	e8 17       	cp	r30, r24
 3c2:	f9 07       	cpc	r31, r25
 3c4:	e1 f7       	brne	.-8      	; 0x3be <_ZN11LinePostionC1Ev+0x22>
 3c6:	fe 01       	movw	r30, r28
 3c8:	e6 56       	subi	r30, 0x66	; 102
 3ca:	ff 4f       	sbci	r31, 0xFF	; 255
 3cc:	ce 01       	movw	r24, r28
 3ce:	89 55       	subi	r24, 0x59	; 89
 3d0:	9f 4f       	sbci	r25, 0xFF	; 255
 3d2:	2f ef       	ldi	r18, 0xFF	; 255
 3d4:	21 93       	st	Z+, r18
 3d6:	8e 17       	cp	r24, r30
 3d8:	9f 07       	cpc	r25, r31
 3da:	e1 f7       	brne	.-8      	; 0x3d4 <_ZN11LinePostionC1Ev+0x38>
 3dc:	fe 01       	movw	r30, r28
 3de:	e8 57       	subi	r30, 0x78	; 120
 3e0:	ff 4f       	sbci	r31, 0xFF	; 255
 3e2:	10 82       	st	Z, r1
 3e4:	11 82       	std	Z+1, r1	; 0x01
 3e6:	12 82       	std	Z+2, r1	; 0x02
 3e8:	13 82       	std	Z+3, r1	; 0x03
 3ea:	ca 57       	subi	r28, 0x7A	; 122
 3ec:	df 4f       	sbci	r29, 0xFF	; 255
 3ee:	19 82       	std	Y+1, r1	; 0x01
 3f0:	18 82       	st	Y, r1
 3f2:	df 91       	pop	r29
 3f4:	cf 91       	pop	r28
 3f6:	08 95       	ret

000003f8 <_ZN11LinePostionD1Ev>:
 3f8:	0c 94 ee 00 	jmp	0x1dc	; 0x1dc <_ZN10LineCameraD1Ev>

000003fc <_ZN11LinePostion3getEv>:
 3fc:	8a 57       	subi	r24, 0x7A	; 122
 3fe:	9f 4f       	sbci	r25, 0xFF	; 255
 400:	fc 01       	movw	r30, r24
 402:	80 81       	ld	r24, Z
 404:	91 81       	ldd	r25, Z+1	; 0x01
 406:	08 95       	ret

00000408 <_ZN11LinePostion14get_confidenceEv>:
 408:	88 57       	subi	r24, 0x78	; 120
 40a:	9f 4f       	sbci	r25, 0xFF	; 255
 40c:	fc 01       	movw	r30, r24
 40e:	60 81       	ld	r22, Z
 410:	71 81       	ldd	r23, Z+1	; 0x01
 412:	82 81       	ldd	r24, Z+2	; 0x02
 414:	93 81       	ldd	r25, Z+3	; 0x03
 416:	08 95       	ret

00000418 <_ZN11LinePostion19process_convolutionEj>:
 418:	cf 92       	push	r12
 41a:	df 92       	push	r13
 41c:	ef 92       	push	r14
 41e:	ff 92       	push	r15
 420:	0f 93       	push	r16
 422:	1f 93       	push	r17
 424:	cf 93       	push	r28
 426:	df 93       	push	r29
 428:	ac 01       	movw	r20, r24
 42a:	ec 01       	movw	r28, r24
 42c:	c1 57       	subi	r28, 0x71	; 113
 42e:	df 4f       	sbci	r29, 0xFF	; 255
 430:	fc 01       	movw	r30, r24
 432:	e6 0f       	add	r30, r22
 434:	f7 1f       	adc	r31, r23
 436:	8c 01       	movw	r16, r24
 438:	0e 54       	subi	r16, 0x4E	; 78
 43a:	1f 4f       	sbci	r17, 0xFF	; 255
 43c:	c1 2c       	mov	r12, r1
 43e:	d1 2c       	mov	r13, r1
 440:	76 01       	movw	r14, r12
 442:	cf 01       	movw	r24, r30
 444:	84 1b       	sub	r24, r20
 446:	95 0b       	sbc	r25, r21
 448:	80 38       	cpi	r24, 0x80	; 128
 44a:	91 05       	cpc	r25, r1
 44c:	70 f4       	brcc	.+28     	; 0x46a <_ZN11LinePostion19process_convolutionEj+0x52>
 44e:	28 81       	ld	r18, Y
 450:	a3 81       	ldd	r26, Z+3	; 0x03
 452:	02 2e       	mov	r0, r18
 454:	00 0c       	add	r0, r0
 456:	33 0b       	sbc	r19, r19
 458:	0a 2e       	mov	r0, r26
 45a:	00 0c       	add	r0, r0
 45c:	bb 0b       	sbc	r27, r27
 45e:	0e 94 9a 03 	call	0x734	; 0x734 <__mulhisi3>
 462:	c6 0e       	add	r12, r22
 464:	d7 1e       	adc	r13, r23
 466:	e8 1e       	adc	r14, r24
 468:	f9 1e       	adc	r15, r25
 46a:	21 96       	adiw	r28, 0x01	; 1
 46c:	31 96       	adiw	r30, 0x01	; 1
 46e:	c0 17       	cp	r28, r16
 470:	d1 07       	cpc	r29, r17
 472:	39 f7       	brne	.-50     	; 0x442 <_ZN11LinePostion19process_convolutionEj+0x2a>
 474:	c7 01       	movw	r24, r14
 476:	b6 01       	movw	r22, r12
 478:	df 91       	pop	r29
 47a:	cf 91       	pop	r28
 47c:	1f 91       	pop	r17
 47e:	0f 91       	pop	r16
 480:	ff 90       	pop	r15
 482:	ef 90       	pop	r14
 484:	df 90       	pop	r13
 486:	cf 90       	pop	r12
 488:	08 95       	ret

0000048a <_ZN11LinePostion21compute_line_positionEv>:
 48a:	af 92       	push	r10
 48c:	bf 92       	push	r11
 48e:	cf 92       	push	r12
 490:	df 92       	push	r13
 492:	ef 92       	push	r14
 494:	ff 92       	push	r15
 496:	0f 93       	push	r16
 498:	1f 93       	push	r17
 49a:	cf 93       	push	r28
 49c:	df 93       	push	r29
 49e:	ec 01       	movw	r28, r24
 4a0:	00 e0       	ldi	r16, 0x00	; 0
 4a2:	10 e0       	ldi	r17, 0x00	; 0
 4a4:	c1 2c       	mov	r12, r1
 4a6:	8f e1       	ldi	r24, 0x1F	; 31
 4a8:	d8 2e       	mov	r13, r24
 4aa:	8a e0       	ldi	r24, 0x0A	; 10
 4ac:	e8 2e       	mov	r14, r24
 4ae:	8a ef       	ldi	r24, 0xFA	; 250
 4b0:	f8 2e       	mov	r15, r24
 4b2:	5e 01       	movw	r10, r28
 4b4:	86 e8       	ldi	r24, 0x86	; 134
 4b6:	a8 0e       	add	r10, r24
 4b8:	b1 1c       	adc	r11, r1
 4ba:	b8 01       	movw	r22, r16
 4bc:	ce 01       	movw	r24, r28
 4be:	0e 94 0c 02 	call	0x418	; 0x418 <_ZN11LinePostion19process_convolutionEj>
 4c2:	c6 16       	cp	r12, r22
 4c4:	d7 06       	cpc	r13, r23
 4c6:	e8 06       	cpc	r14, r24
 4c8:	f9 06       	cpc	r15, r25
 4ca:	2c f4       	brge	.+10     	; 0x4d6 <_ZN11LinePostion21compute_line_positionEv+0x4c>
 4cc:	f5 01       	movw	r30, r10
 4ce:	11 83       	std	Z+1, r17	; 0x01
 4d0:	00 83       	st	Z, r16
 4d2:	6b 01       	movw	r12, r22
 4d4:	7c 01       	movw	r14, r24
 4d6:	0f 5f       	subi	r16, 0xFF	; 255
 4d8:	1f 4f       	sbci	r17, 0xFF	; 255
 4da:	00 38       	cpi	r16, 0x80	; 128
 4dc:	11 05       	cpc	r17, r1
 4de:	69 f7       	brne	.-38     	; 0x4ba <_ZN11LinePostion21compute_line_positionEv+0x30>
 4e0:	fe 01       	movw	r30, r28
 4e2:	e8 57       	subi	r30, 0x78	; 120
 4e4:	ff 4f       	sbci	r31, 0xFF	; 255
 4e6:	c0 82       	st	Z, r12
 4e8:	d1 82       	std	Z+1, r13	; 0x01
 4ea:	e2 82       	std	Z+2, r14	; 0x02
 4ec:	f3 82       	std	Z+3, r15	; 0x03
 4ee:	32 97       	sbiw	r30, 0x02	; 2
 4f0:	80 81       	ld	r24, Z
 4f2:	91 81       	ldd	r25, Z+1	; 0x01
 4f4:	85 36       	cpi	r24, 0x65	; 101
 4f6:	91 05       	cpc	r25, r1
 4f8:	14 f0       	brlt	.+4      	; 0x4fe <_ZN11LinePostion21compute_line_positionEv+0x74>
 4fa:	11 82       	std	Z+1, r1	; 0x01
 4fc:	10 82       	st	Z, r1
 4fe:	80 81       	ld	r24, Z
 500:	91 81       	ldd	r25, Z+1	; 0x01
 502:	81 35       	cpi	r24, 0x51	; 81
 504:	91 05       	cpc	r25, r1
 506:	24 f0       	brlt	.+8      	; 0x510 <_ZN11LinePostion21compute_line_positionEv+0x86>
 508:	80 e5       	ldi	r24, 0x50	; 80
 50a:	90 e0       	ldi	r25, 0x00	; 0
 50c:	91 83       	std	Z+1, r25	; 0x01
 50e:	80 83       	st	Z, r24
 510:	80 81       	ld	r24, Z
 512:	91 81       	ldd	r25, Z+1	; 0x01
 514:	88 97       	sbiw	r24, 0x28	; 40
 516:	91 83       	std	Z+1, r25	; 0x01
 518:	80 83       	st	Z, r24
 51a:	df 91       	pop	r29
 51c:	cf 91       	pop	r28
 51e:	1f 91       	pop	r17
 520:	0f 91       	pop	r16
 522:	ff 90       	pop	r15
 524:	ef 90       	pop	r14
 526:	df 90       	pop	r13
 528:	cf 90       	pop	r12
 52a:	bf 90       	pop	r11
 52c:	af 90       	pop	r10
 52e:	08 95       	ret

00000530 <_ZdlPv>:
 530:	0c 94 56 04 	jmp	0x8ac	; 0x8ac <free>

00000534 <_ZN8Terminal4putsEPc>:
 534:	0f 93       	push	r16
 536:	1f 93       	push	r17
 538:	cf 93       	push	r28
 53a:	df 93       	push	r29
 53c:	8c 01       	movw	r16, r24
 53e:	eb 01       	movw	r28, r22
 540:	69 91       	ld	r22, Y+
 542:	66 23       	and	r22, r22
 544:	21 f0       	breq	.+8      	; 0x54e <_ZN8Terminal4putsEPc+0x1a>
 546:	c8 01       	movw	r24, r16
 548:	0e 94 ba 01 	call	0x374	; 0x374 <_ZN5USART8put_charEc>
 54c:	f9 cf       	rjmp	.-14     	; 0x540 <_ZN8Terminal4putsEPc+0xc>
 54e:	df 91       	pop	r29
 550:	cf 91       	pop	r28
 552:	1f 91       	pop	r17
 554:	0f 91       	pop	r16
 556:	08 95       	ret

00000558 <_ZN8Terminal4putsEPKc>:
 558:	0c 94 9a 02 	jmp	0x534	; 0x534 <_ZN8Terminal4putsEPc>

0000055c <_ZN8Terminal4putiEl>:
 55c:	8f 92       	push	r8
 55e:	9f 92       	push	r9
 560:	af 92       	push	r10
 562:	bf 92       	push	r11
 564:	cf 92       	push	r12
 566:	df 92       	push	r13
 568:	ef 92       	push	r14
 56a:	ff 92       	push	r15
 56c:	0f 93       	push	r16
 56e:	1f 93       	push	r17
 570:	cf 93       	push	r28
 572:	df 93       	push	r29
 574:	cd b7       	in	r28, 0x3d	; 61
 576:	de b7       	in	r29, 0x3e	; 62
 578:	2c 97       	sbiw	r28, 0x0c	; 12
 57a:	0f b6       	in	r0, 0x3f	; 63
 57c:	f8 94       	cli
 57e:	de bf       	out	0x3e, r29	; 62
 580:	0f be       	out	0x3f, r0	; 63
 582:	cd bf       	out	0x3d, r28	; 61
 584:	7c 01       	movw	r14, r24
 586:	77 ff       	sbrs	r23, 7
 588:	09 c0       	rjmp	.+18     	; 0x59c <_ZN8Terminal4putiEl+0x40>
 58a:	70 95       	com	r23
 58c:	60 95       	com	r22
 58e:	50 95       	com	r21
 590:	41 95       	neg	r20
 592:	5f 4f       	sbci	r21, 0xFF	; 255
 594:	6f 4f       	sbci	r22, 0xFF	; 255
 596:	7f 4f       	sbci	r23, 0xFF	; 255
 598:	01 e0       	ldi	r16, 0x01	; 1
 59a:	01 c0       	rjmp	.+2      	; 0x59e <_ZN8Terminal4putiEl+0x42>
 59c:	00 e0       	ldi	r16, 0x00	; 0
 59e:	1c 86       	std	Y+12, r1	; 0x0c
 5a0:	1a e0       	ldi	r17, 0x0A	; 10
 5a2:	9a e0       	ldi	r25, 0x0A	; 10
 5a4:	89 2e       	mov	r8, r25
 5a6:	91 2c       	mov	r9, r1
 5a8:	a1 2c       	mov	r10, r1
 5aa:	b1 2c       	mov	r11, r1
 5ac:	cc 24       	eor	r12, r12
 5ae:	c3 94       	inc	r12
 5b0:	d1 2c       	mov	r13, r1
 5b2:	cc 0e       	add	r12, r28
 5b4:	dd 1e       	adc	r13, r29
 5b6:	c1 0e       	add	r12, r17
 5b8:	d1 1c       	adc	r13, r1
 5ba:	cb 01       	movw	r24, r22
 5bc:	ba 01       	movw	r22, r20
 5be:	a5 01       	movw	r20, r10
 5c0:	94 01       	movw	r18, r8
 5c2:	0e 94 7b 03 	call	0x6f6	; 0x6f6 <__divmodsi4>
 5c6:	94 2f       	mov	r25, r20
 5c8:	85 2f       	mov	r24, r21
 5ca:	60 5d       	subi	r22, 0xD0	; 208
 5cc:	f6 01       	movw	r30, r12
 5ce:	60 83       	st	Z, r22
 5d0:	a9 01       	movw	r20, r18
 5d2:	69 2f       	mov	r22, r25
 5d4:	78 2f       	mov	r23, r24
 5d6:	8f ef       	ldi	r24, 0xFF	; 255
 5d8:	81 0f       	add	r24, r17
 5da:	41 15       	cp	r20, r1
 5dc:	51 05       	cpc	r21, r1
 5de:	61 05       	cpc	r22, r1
 5e0:	71 05       	cpc	r23, r1
 5e2:	11 f0       	breq	.+4      	; 0x5e8 <_ZN8Terminal4putiEl+0x8c>
 5e4:	18 2f       	mov	r17, r24
 5e6:	e2 cf       	rjmp	.-60     	; 0x5ac <_ZN8Terminal4putiEl+0x50>
 5e8:	00 23       	and	r16, r16
 5ea:	49 f0       	breq	.+18     	; 0x5fe <_ZN8Terminal4putiEl+0xa2>
 5ec:	e1 e0       	ldi	r30, 0x01	; 1
 5ee:	f0 e0       	ldi	r31, 0x00	; 0
 5f0:	ec 0f       	add	r30, r28
 5f2:	fd 1f       	adc	r31, r29
 5f4:	e8 0f       	add	r30, r24
 5f6:	f1 1d       	adc	r31, r1
 5f8:	9d e2       	ldi	r25, 0x2D	; 45
 5fa:	90 83       	st	Z, r25
 5fc:	18 2f       	mov	r17, r24
 5fe:	61 e0       	ldi	r22, 0x01	; 1
 600:	70 e0       	ldi	r23, 0x00	; 0
 602:	6c 0f       	add	r22, r28
 604:	7d 1f       	adc	r23, r29
 606:	61 0f       	add	r22, r17
 608:	71 1d       	adc	r23, r1
 60a:	c7 01       	movw	r24, r14
 60c:	0e 94 9a 02 	call	0x534	; 0x534 <_ZN8Terminal4putsEPc>
 610:	2c 96       	adiw	r28, 0x0c	; 12
 612:	0f b6       	in	r0, 0x3f	; 63
 614:	f8 94       	cli
 616:	de bf       	out	0x3e, r29	; 62
 618:	0f be       	out	0x3f, r0	; 63
 61a:	cd bf       	out	0x3d, r28	; 61
 61c:	df 91       	pop	r29
 61e:	cf 91       	pop	r28
 620:	1f 91       	pop	r17
 622:	0f 91       	pop	r16
 624:	ff 90       	pop	r15
 626:	ef 90       	pop	r14
 628:	df 90       	pop	r13
 62a:	cf 90       	pop	r12
 62c:	bf 90       	pop	r11
 62e:	af 90       	pop	r10
 630:	9f 90       	pop	r9
 632:	8f 90       	pop	r8
 634:	08 95       	ret

00000636 <_GLOBAL__sub_I_terminal>:
 636:	80 ef       	ldi	r24, 0xF0	; 240
 638:	91 e0       	ldi	r25, 0x01	; 1
 63a:	0c 94 a9 01 	jmp	0x352	; 0x352 <_ZN5USARTC1Ev>

0000063e <_GLOBAL__sub_D_terminal>:
 63e:	80 ef       	ldi	r24, 0xF0	; 240
 640:	91 e0       	ldi	r25, 0x01	; 1
 642:	0c 94 b9 01 	jmp	0x372	; 0x372 <_ZN5USARTD1Ev>

00000646 <_ZN11SampleTimerC1Ej>:
 646:	10 92 f1 01 	sts	0x01F1, r1	; 0x8001f1 <g_sample_timer_flag>
 64a:	84 b5       	in	r24, 0x24	; 36
 64c:	82 60       	ori	r24, 0x02	; 2
 64e:	84 bd       	out	0x24, r24	; 36
 650:	9b 01       	movw	r18, r22
 652:	86 e0       	ldi	r24, 0x06	; 6
 654:	22 0f       	add	r18, r18
 656:	33 1f       	adc	r19, r19
 658:	8a 95       	dec	r24
 65a:	e1 f7       	brne	.-8      	; 0x654 <_ZN11SampleTimerC1Ej+0xe>
 65c:	40 e0       	ldi	r20, 0x00	; 0
 65e:	50 e0       	ldi	r21, 0x00	; 0
 660:	60 e0       	ldi	r22, 0x00	; 0
 662:	74 e2       	ldi	r23, 0x24	; 36
 664:	84 ef       	ldi	r24, 0xF4	; 244
 666:	90 e0       	ldi	r25, 0x00	; 0
 668:	0e 94 59 03 	call	0x6b2	; 0x6b2 <__udivmodsi4>
 66c:	21 50       	subi	r18, 0x01	; 1
 66e:	27 bd       	out	0x27, r18	; 39
 670:	83 e0       	ldi	r24, 0x03	; 3
 672:	85 bd       	out	0x25, r24	; 37
 674:	ee e6       	ldi	r30, 0x6E	; 110
 676:	f0 e0       	ldi	r31, 0x00	; 0
 678:	80 81       	ld	r24, Z
 67a:	82 60       	ori	r24, 0x02	; 2
 67c:	80 83       	st	Z, r24
 67e:	78 94       	sei
 680:	08 95       	ret

00000682 <_ZN11SampleTimer4waitEv>:
 682:	80 91 f1 01 	lds	r24, 0x01F1	; 0x8001f1 <g_sample_timer_flag>
 686:	88 23       	and	r24, r24
 688:	19 f0       	breq	.+6      	; 0x690 <_ZN11SampleTimer4waitEv+0xe>
 68a:	10 92 f1 01 	sts	0x01F1, r1	; 0x8001f1 <g_sample_timer_flag>
 68e:	08 95       	ret
 690:	00 00       	nop
 692:	f7 cf       	rjmp	.-18     	; 0x682 <_ZN11SampleTimer4waitEv>

00000694 <__vector_14>:
 694:	1f 92       	push	r1
 696:	0f 92       	push	r0
 698:	0f b6       	in	r0, 0x3f	; 63
 69a:	0f 92       	push	r0
 69c:	11 24       	eor	r1, r1
 69e:	8f 93       	push	r24
 6a0:	81 e0       	ldi	r24, 0x01	; 1
 6a2:	80 93 f1 01 	sts	0x01F1, r24	; 0x8001f1 <g_sample_timer_flag>
 6a6:	8f 91       	pop	r24
 6a8:	0f 90       	pop	r0
 6aa:	0f be       	out	0x3f, r0	; 63
 6ac:	0f 90       	pop	r0
 6ae:	1f 90       	pop	r1
 6b0:	18 95       	reti

000006b2 <__udivmodsi4>:
 6b2:	a1 e2       	ldi	r26, 0x21	; 33
 6b4:	1a 2e       	mov	r1, r26
 6b6:	aa 1b       	sub	r26, r26
 6b8:	bb 1b       	sub	r27, r27
 6ba:	fd 01       	movw	r30, r26
 6bc:	0d c0       	rjmp	.+26     	; 0x6d8 <__udivmodsi4_ep>

000006be <__udivmodsi4_loop>:
 6be:	aa 1f       	adc	r26, r26
 6c0:	bb 1f       	adc	r27, r27
 6c2:	ee 1f       	adc	r30, r30
 6c4:	ff 1f       	adc	r31, r31
 6c6:	a2 17       	cp	r26, r18
 6c8:	b3 07       	cpc	r27, r19
 6ca:	e4 07       	cpc	r30, r20
 6cc:	f5 07       	cpc	r31, r21
 6ce:	20 f0       	brcs	.+8      	; 0x6d8 <__udivmodsi4_ep>
 6d0:	a2 1b       	sub	r26, r18
 6d2:	b3 0b       	sbc	r27, r19
 6d4:	e4 0b       	sbc	r30, r20
 6d6:	f5 0b       	sbc	r31, r21

000006d8 <__udivmodsi4_ep>:
 6d8:	66 1f       	adc	r22, r22
 6da:	77 1f       	adc	r23, r23
 6dc:	88 1f       	adc	r24, r24
 6de:	99 1f       	adc	r25, r25
 6e0:	1a 94       	dec	r1
 6e2:	69 f7       	brne	.-38     	; 0x6be <__udivmodsi4_loop>
 6e4:	60 95       	com	r22
 6e6:	70 95       	com	r23
 6e8:	80 95       	com	r24
 6ea:	90 95       	com	r25
 6ec:	9b 01       	movw	r18, r22
 6ee:	ac 01       	movw	r20, r24
 6f0:	bd 01       	movw	r22, r26
 6f2:	cf 01       	movw	r24, r30
 6f4:	08 95       	ret

000006f6 <__divmodsi4>:
 6f6:	05 2e       	mov	r0, r21
 6f8:	97 fb       	bst	r25, 7
 6fa:	1e f4       	brtc	.+6      	; 0x702 <__divmodsi4+0xc>
 6fc:	00 94       	com	r0
 6fe:	0e 94 92 03 	call	0x724	; 0x724 <__negsi2>
 702:	57 fd       	sbrc	r21, 7
 704:	07 d0       	rcall	.+14     	; 0x714 <__divmodsi4_neg2>
 706:	0e 94 59 03 	call	0x6b2	; 0x6b2 <__udivmodsi4>
 70a:	07 fc       	sbrc	r0, 7
 70c:	03 d0       	rcall	.+6      	; 0x714 <__divmodsi4_neg2>
 70e:	4e f4       	brtc	.+18     	; 0x722 <__divmodsi4_exit>
 710:	0c 94 92 03 	jmp	0x724	; 0x724 <__negsi2>

00000714 <__divmodsi4_neg2>:
 714:	50 95       	com	r21
 716:	40 95       	com	r20
 718:	30 95       	com	r19
 71a:	21 95       	neg	r18
 71c:	3f 4f       	sbci	r19, 0xFF	; 255
 71e:	4f 4f       	sbci	r20, 0xFF	; 255
 720:	5f 4f       	sbci	r21, 0xFF	; 255

00000722 <__divmodsi4_exit>:
 722:	08 95       	ret

00000724 <__negsi2>:
 724:	90 95       	com	r25
 726:	80 95       	com	r24
 728:	70 95       	com	r23
 72a:	61 95       	neg	r22
 72c:	7f 4f       	sbci	r23, 0xFF	; 255
 72e:	8f 4f       	sbci	r24, 0xFF	; 255
 730:	9f 4f       	sbci	r25, 0xFF	; 255
 732:	08 95       	ret

00000734 <__mulhisi3>:
 734:	0e 94 a2 03 	call	0x744	; 0x744 <__umulhisi3>
 738:	33 23       	and	r19, r19
 73a:	12 f4       	brpl	.+4      	; 0x740 <__mulhisi3+0xc>
 73c:	8a 1b       	sub	r24, r26
 73e:	9b 0b       	sbc	r25, r27
 740:	0c 94 b3 03 	jmp	0x766	; 0x766 <__usmulhisi3_tail>

00000744 <__umulhisi3>:
 744:	a2 9f       	mul	r26, r18
 746:	b0 01       	movw	r22, r0
 748:	b3 9f       	mul	r27, r19
 74a:	c0 01       	movw	r24, r0
 74c:	a3 9f       	mul	r26, r19
 74e:	70 0d       	add	r23, r0
 750:	81 1d       	adc	r24, r1
 752:	11 24       	eor	r1, r1
 754:	91 1d       	adc	r25, r1
 756:	b2 9f       	mul	r27, r18
 758:	70 0d       	add	r23, r0
 75a:	81 1d       	adc	r24, r1
 75c:	11 24       	eor	r1, r1
 75e:	91 1d       	adc	r25, r1
 760:	08 95       	ret

00000762 <__usmulhisi3>:
 762:	0e 94 a2 03 	call	0x744	; 0x744 <__umulhisi3>

00000766 <__usmulhisi3_tail>:
 766:	b7 ff       	sbrs	r27, 7
 768:	08 95       	ret
 76a:	82 1b       	sub	r24, r18
 76c:	93 0b       	sbc	r25, r19
 76e:	08 95       	ret

00000770 <__tablejump2__>:
 770:	ee 0f       	add	r30, r30
 772:	ff 1f       	adc	r31, r31
 774:	05 90       	lpm	r0, Z+
 776:	f4 91       	lpm	r31, Z
 778:	e0 2d       	mov	r30, r0
 77a:	09 94       	ijmp

0000077c <malloc>:
 77c:	0f 93       	push	r16
 77e:	1f 93       	push	r17
 780:	cf 93       	push	r28
 782:	df 93       	push	r29
 784:	82 30       	cpi	r24, 0x02	; 2
 786:	91 05       	cpc	r25, r1
 788:	10 f4       	brcc	.+4      	; 0x78e <malloc+0x12>
 78a:	82 e0       	ldi	r24, 0x02	; 2
 78c:	90 e0       	ldi	r25, 0x00	; 0
 78e:	e0 91 f4 01 	lds	r30, 0x01F4	; 0x8001f4 <__flp>
 792:	f0 91 f5 01 	lds	r31, 0x01F5	; 0x8001f5 <__flp+0x1>
 796:	20 e0       	ldi	r18, 0x00	; 0
 798:	30 e0       	ldi	r19, 0x00	; 0
 79a:	a0 e0       	ldi	r26, 0x00	; 0
 79c:	b0 e0       	ldi	r27, 0x00	; 0
 79e:	30 97       	sbiw	r30, 0x00	; 0
 7a0:	19 f1       	breq	.+70     	; 0x7e8 <malloc+0x6c>
 7a2:	40 81       	ld	r20, Z
 7a4:	51 81       	ldd	r21, Z+1	; 0x01
 7a6:	02 81       	ldd	r16, Z+2	; 0x02
 7a8:	13 81       	ldd	r17, Z+3	; 0x03
 7aa:	48 17       	cp	r20, r24
 7ac:	59 07       	cpc	r21, r25
 7ae:	c8 f0       	brcs	.+50     	; 0x7e2 <malloc+0x66>
 7b0:	84 17       	cp	r24, r20
 7b2:	95 07       	cpc	r25, r21
 7b4:	69 f4       	brne	.+26     	; 0x7d0 <malloc+0x54>
 7b6:	10 97       	sbiw	r26, 0x00	; 0
 7b8:	31 f0       	breq	.+12     	; 0x7c6 <malloc+0x4a>
 7ba:	12 96       	adiw	r26, 0x02	; 2
 7bc:	0c 93       	st	X, r16
 7be:	12 97       	sbiw	r26, 0x02	; 2
 7c0:	13 96       	adiw	r26, 0x03	; 3
 7c2:	1c 93       	st	X, r17
 7c4:	27 c0       	rjmp	.+78     	; 0x814 <malloc+0x98>
 7c6:	00 93 f4 01 	sts	0x01F4, r16	; 0x8001f4 <__flp>
 7ca:	10 93 f5 01 	sts	0x01F5, r17	; 0x8001f5 <__flp+0x1>
 7ce:	22 c0       	rjmp	.+68     	; 0x814 <malloc+0x98>
 7d0:	21 15       	cp	r18, r1
 7d2:	31 05       	cpc	r19, r1
 7d4:	19 f0       	breq	.+6      	; 0x7dc <malloc+0x60>
 7d6:	42 17       	cp	r20, r18
 7d8:	53 07       	cpc	r21, r19
 7da:	18 f4       	brcc	.+6      	; 0x7e2 <malloc+0x66>
 7dc:	9a 01       	movw	r18, r20
 7de:	bd 01       	movw	r22, r26
 7e0:	ef 01       	movw	r28, r30
 7e2:	df 01       	movw	r26, r30
 7e4:	f8 01       	movw	r30, r16
 7e6:	db cf       	rjmp	.-74     	; 0x79e <malloc+0x22>
 7e8:	21 15       	cp	r18, r1
 7ea:	31 05       	cpc	r19, r1
 7ec:	f9 f0       	breq	.+62     	; 0x82c <malloc+0xb0>
 7ee:	28 1b       	sub	r18, r24
 7f0:	39 0b       	sbc	r19, r25
 7f2:	24 30       	cpi	r18, 0x04	; 4
 7f4:	31 05       	cpc	r19, r1
 7f6:	80 f4       	brcc	.+32     	; 0x818 <malloc+0x9c>
 7f8:	8a 81       	ldd	r24, Y+2	; 0x02
 7fa:	9b 81       	ldd	r25, Y+3	; 0x03
 7fc:	61 15       	cp	r22, r1
 7fe:	71 05       	cpc	r23, r1
 800:	21 f0       	breq	.+8      	; 0x80a <malloc+0x8e>
 802:	fb 01       	movw	r30, r22
 804:	93 83       	std	Z+3, r25	; 0x03
 806:	82 83       	std	Z+2, r24	; 0x02
 808:	04 c0       	rjmp	.+8      	; 0x812 <malloc+0x96>
 80a:	90 93 f5 01 	sts	0x01F5, r25	; 0x8001f5 <__flp+0x1>
 80e:	80 93 f4 01 	sts	0x01F4, r24	; 0x8001f4 <__flp>
 812:	fe 01       	movw	r30, r28
 814:	32 96       	adiw	r30, 0x02	; 2
 816:	44 c0       	rjmp	.+136    	; 0x8a0 <malloc+0x124>
 818:	fe 01       	movw	r30, r28
 81a:	e2 0f       	add	r30, r18
 81c:	f3 1f       	adc	r31, r19
 81e:	81 93       	st	Z+, r24
 820:	91 93       	st	Z+, r25
 822:	22 50       	subi	r18, 0x02	; 2
 824:	31 09       	sbc	r19, r1
 826:	39 83       	std	Y+1, r19	; 0x01
 828:	28 83       	st	Y, r18
 82a:	3a c0       	rjmp	.+116    	; 0x8a0 <malloc+0x124>
 82c:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
 830:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
 834:	23 2b       	or	r18, r19
 836:	41 f4       	brne	.+16     	; 0x848 <malloc+0xcc>
 838:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 83c:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 840:	30 93 f3 01 	sts	0x01F3, r19	; 0x8001f3 <__brkval+0x1>
 844:	20 93 f2 01 	sts	0x01F2, r18	; 0x8001f2 <__brkval>
 848:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
 84c:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
 850:	21 15       	cp	r18, r1
 852:	31 05       	cpc	r19, r1
 854:	41 f4       	brne	.+16     	; 0x866 <malloc+0xea>
 856:	2d b7       	in	r18, 0x3d	; 61
 858:	3e b7       	in	r19, 0x3e	; 62
 85a:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 85e:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 862:	24 1b       	sub	r18, r20
 864:	35 0b       	sbc	r19, r21
 866:	e0 91 f2 01 	lds	r30, 0x01F2	; 0x8001f2 <__brkval>
 86a:	f0 91 f3 01 	lds	r31, 0x01F3	; 0x8001f3 <__brkval+0x1>
 86e:	e2 17       	cp	r30, r18
 870:	f3 07       	cpc	r31, r19
 872:	a0 f4       	brcc	.+40     	; 0x89c <malloc+0x120>
 874:	2e 1b       	sub	r18, r30
 876:	3f 0b       	sbc	r19, r31
 878:	28 17       	cp	r18, r24
 87a:	39 07       	cpc	r19, r25
 87c:	78 f0       	brcs	.+30     	; 0x89c <malloc+0x120>
 87e:	ac 01       	movw	r20, r24
 880:	4e 5f       	subi	r20, 0xFE	; 254
 882:	5f 4f       	sbci	r21, 0xFF	; 255
 884:	24 17       	cp	r18, r20
 886:	35 07       	cpc	r19, r21
 888:	48 f0       	brcs	.+18     	; 0x89c <malloc+0x120>
 88a:	4e 0f       	add	r20, r30
 88c:	5f 1f       	adc	r21, r31
 88e:	50 93 f3 01 	sts	0x01F3, r21	; 0x8001f3 <__brkval+0x1>
 892:	40 93 f2 01 	sts	0x01F2, r20	; 0x8001f2 <__brkval>
 896:	81 93       	st	Z+, r24
 898:	91 93       	st	Z+, r25
 89a:	02 c0       	rjmp	.+4      	; 0x8a0 <malloc+0x124>
 89c:	e0 e0       	ldi	r30, 0x00	; 0
 89e:	f0 e0       	ldi	r31, 0x00	; 0
 8a0:	cf 01       	movw	r24, r30
 8a2:	df 91       	pop	r29
 8a4:	cf 91       	pop	r28
 8a6:	1f 91       	pop	r17
 8a8:	0f 91       	pop	r16
 8aa:	08 95       	ret

000008ac <free>:
 8ac:	cf 93       	push	r28
 8ae:	df 93       	push	r29
 8b0:	00 97       	sbiw	r24, 0x00	; 0
 8b2:	09 f4       	brne	.+2      	; 0x8b6 <free+0xa>
 8b4:	81 c0       	rjmp	.+258    	; 0x9b8 <__stack+0xb9>
 8b6:	fc 01       	movw	r30, r24
 8b8:	32 97       	sbiw	r30, 0x02	; 2
 8ba:	13 82       	std	Z+3, r1	; 0x03
 8bc:	12 82       	std	Z+2, r1	; 0x02
 8be:	a0 91 f4 01 	lds	r26, 0x01F4	; 0x8001f4 <__flp>
 8c2:	b0 91 f5 01 	lds	r27, 0x01F5	; 0x8001f5 <__flp+0x1>
 8c6:	10 97       	sbiw	r26, 0x00	; 0
 8c8:	81 f4       	brne	.+32     	; 0x8ea <free+0x3e>
 8ca:	20 81       	ld	r18, Z
 8cc:	31 81       	ldd	r19, Z+1	; 0x01
 8ce:	82 0f       	add	r24, r18
 8d0:	93 1f       	adc	r25, r19
 8d2:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
 8d6:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
 8da:	28 17       	cp	r18, r24
 8dc:	39 07       	cpc	r19, r25
 8de:	51 f5       	brne	.+84     	; 0x934 <__stack+0x35>
 8e0:	f0 93 f3 01 	sts	0x01F3, r31	; 0x8001f3 <__brkval+0x1>
 8e4:	e0 93 f2 01 	sts	0x01F2, r30	; 0x8001f2 <__brkval>
 8e8:	67 c0       	rjmp	.+206    	; 0x9b8 <__stack+0xb9>
 8ea:	ed 01       	movw	r28, r26
 8ec:	20 e0       	ldi	r18, 0x00	; 0
 8ee:	30 e0       	ldi	r19, 0x00	; 0
 8f0:	ce 17       	cp	r28, r30
 8f2:	df 07       	cpc	r29, r31
 8f4:	40 f4       	brcc	.+16     	; 0x906 <__stack+0x7>
 8f6:	4a 81       	ldd	r20, Y+2	; 0x02
 8f8:	5b 81       	ldd	r21, Y+3	; 0x03
 8fa:	9e 01       	movw	r18, r28
 8fc:	41 15       	cp	r20, r1
 8fe:	51 05       	cpc	r21, r1
 900:	f1 f0       	breq	.+60     	; 0x93e <__stack+0x3f>
 902:	ea 01       	movw	r28, r20
 904:	f5 cf       	rjmp	.-22     	; 0x8f0 <free+0x44>
 906:	d3 83       	std	Z+3, r29	; 0x03
 908:	c2 83       	std	Z+2, r28	; 0x02
 90a:	40 81       	ld	r20, Z
 90c:	51 81       	ldd	r21, Z+1	; 0x01
 90e:	84 0f       	add	r24, r20
 910:	95 1f       	adc	r25, r21
 912:	c8 17       	cp	r28, r24
 914:	d9 07       	cpc	r29, r25
 916:	59 f4       	brne	.+22     	; 0x92e <__stack+0x2f>
 918:	88 81       	ld	r24, Y
 91a:	99 81       	ldd	r25, Y+1	; 0x01
 91c:	84 0f       	add	r24, r20
 91e:	95 1f       	adc	r25, r21
 920:	02 96       	adiw	r24, 0x02	; 2
 922:	91 83       	std	Z+1, r25	; 0x01
 924:	80 83       	st	Z, r24
 926:	8a 81       	ldd	r24, Y+2	; 0x02
 928:	9b 81       	ldd	r25, Y+3	; 0x03
 92a:	93 83       	std	Z+3, r25	; 0x03
 92c:	82 83       	std	Z+2, r24	; 0x02
 92e:	21 15       	cp	r18, r1
 930:	31 05       	cpc	r19, r1
 932:	29 f4       	brne	.+10     	; 0x93e <__stack+0x3f>
 934:	f0 93 f5 01 	sts	0x01F5, r31	; 0x8001f5 <__flp+0x1>
 938:	e0 93 f4 01 	sts	0x01F4, r30	; 0x8001f4 <__flp>
 93c:	3d c0       	rjmp	.+122    	; 0x9b8 <__stack+0xb9>
 93e:	e9 01       	movw	r28, r18
 940:	fb 83       	std	Y+3, r31	; 0x03
 942:	ea 83       	std	Y+2, r30	; 0x02
 944:	49 91       	ld	r20, Y+
 946:	59 91       	ld	r21, Y+
 948:	c4 0f       	add	r28, r20
 94a:	d5 1f       	adc	r29, r21
 94c:	ec 17       	cp	r30, r28
 94e:	fd 07       	cpc	r31, r29
 950:	61 f4       	brne	.+24     	; 0x96a <__stack+0x6b>
 952:	80 81       	ld	r24, Z
 954:	91 81       	ldd	r25, Z+1	; 0x01
 956:	84 0f       	add	r24, r20
 958:	95 1f       	adc	r25, r21
 95a:	02 96       	adiw	r24, 0x02	; 2
 95c:	e9 01       	movw	r28, r18
 95e:	99 83       	std	Y+1, r25	; 0x01
 960:	88 83       	st	Y, r24
 962:	82 81       	ldd	r24, Z+2	; 0x02
 964:	93 81       	ldd	r25, Z+3	; 0x03
 966:	9b 83       	std	Y+3, r25	; 0x03
 968:	8a 83       	std	Y+2, r24	; 0x02
 96a:	e0 e0       	ldi	r30, 0x00	; 0
 96c:	f0 e0       	ldi	r31, 0x00	; 0
 96e:	12 96       	adiw	r26, 0x02	; 2
 970:	8d 91       	ld	r24, X+
 972:	9c 91       	ld	r25, X
 974:	13 97       	sbiw	r26, 0x03	; 3
 976:	00 97       	sbiw	r24, 0x00	; 0
 978:	19 f0       	breq	.+6      	; 0x980 <__stack+0x81>
 97a:	fd 01       	movw	r30, r26
 97c:	dc 01       	movw	r26, r24
 97e:	f7 cf       	rjmp	.-18     	; 0x96e <__stack+0x6f>
 980:	8d 91       	ld	r24, X+
 982:	9c 91       	ld	r25, X
 984:	11 97       	sbiw	r26, 0x01	; 1
 986:	9d 01       	movw	r18, r26
 988:	2e 5f       	subi	r18, 0xFE	; 254
 98a:	3f 4f       	sbci	r19, 0xFF	; 255
 98c:	82 0f       	add	r24, r18
 98e:	93 1f       	adc	r25, r19
 990:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
 994:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
 998:	28 17       	cp	r18, r24
 99a:	39 07       	cpc	r19, r25
 99c:	69 f4       	brne	.+26     	; 0x9b8 <__stack+0xb9>
 99e:	30 97       	sbiw	r30, 0x00	; 0
 9a0:	29 f4       	brne	.+10     	; 0x9ac <__stack+0xad>
 9a2:	10 92 f5 01 	sts	0x01F5, r1	; 0x8001f5 <__flp+0x1>
 9a6:	10 92 f4 01 	sts	0x01F4, r1	; 0x8001f4 <__flp>
 9aa:	02 c0       	rjmp	.+4      	; 0x9b0 <__stack+0xb1>
 9ac:	13 82       	std	Z+3, r1	; 0x03
 9ae:	12 82       	std	Z+2, r1	; 0x02
 9b0:	b0 93 f3 01 	sts	0x01F3, r27	; 0x8001f3 <__brkval+0x1>
 9b4:	a0 93 f2 01 	sts	0x01F2, r26	; 0x8001f2 <__brkval>
 9b8:	df 91       	pop	r29
 9ba:	cf 91       	pop	r28
 9bc:	08 95       	ret

000009be <__do_global_dtors>:
 9be:	10 e0       	ldi	r17, 0x00	; 0
 9c0:	c6 e3       	ldi	r28, 0x36	; 54
 9c2:	d0 e0       	ldi	r29, 0x00	; 0
 9c4:	04 c0       	rjmp	.+8      	; 0x9ce <__do_global_dtors+0x10>
 9c6:	fe 01       	movw	r30, r28
 9c8:	0e 94 b8 03 	call	0x770	; 0x770 <__tablejump2__>
 9cc:	21 96       	adiw	r28, 0x01	; 1
 9ce:	c8 33       	cpi	r28, 0x38	; 56
 9d0:	d1 07       	cpc	r29, r17
 9d2:	c9 f7       	brne	.-14     	; 0x9c6 <__do_global_dtors+0x8>
 9d4:	f8 94       	cli

000009d6 <__stop_program>:
 9d6:	ff cf       	rjmp	.-2      	; 0x9d6 <__stop_program>
