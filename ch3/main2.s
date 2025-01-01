
main2.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e4 ef       	ldi	r30, 0xF4	; 244
  7c:	f6 e0       	ldi	r31, 0x06	; 6
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a4 31       	cpi	r26, 0x14	; 20
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1
  8c:	a4 e1       	ldi	r26, 0x14	; 20
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	ac 31       	cpi	r26, 0x1C	; 28
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 6a 00 	call	0xd4	; 0xd4 <main>
  9e:	0c 94 78 03 	jmp	0x6f0	; 0x6f0 <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <func>:
  a6:	cf 93       	push	r28
  a8:	df 93       	push	r29
  aa:	00 d0       	rcall	.+0      	; 0xac <func+0x6>
  ac:	00 d0       	rcall	.+0      	; 0xae <func+0x8>
  ae:	cd b7       	in	r28, 0x3d	; 61
  b0:	de b7       	in	r29, 0x3e	; 62
  b2:	9a 83       	std	Y+2, r25	; 0x02
  b4:	89 83       	std	Y+1, r24	; 0x01
  b6:	7c 83       	std	Y+4, r23	; 0x04
  b8:	6b 83       	std	Y+3, r22	; 0x03
  ba:	29 81       	ldd	r18, Y+1	; 0x01
  bc:	3a 81       	ldd	r19, Y+2	; 0x02
  be:	8b 81       	ldd	r24, Y+3	; 0x03
  c0:	9c 81       	ldd	r25, Y+4	; 0x04
  c2:	82 0f       	add	r24, r18
  c4:	93 1f       	adc	r25, r19
  c6:	0f 90       	pop	r0
  c8:	0f 90       	pop	r0
  ca:	0f 90       	pop	r0
  cc:	0f 90       	pop	r0
  ce:	df 91       	pop	r29
  d0:	cf 91       	pop	r28
  d2:	08 95       	ret

000000d4 <main>:
  d4:	cf 93       	push	r28
  d6:	df 93       	push	r29
  d8:	cd b7       	in	r28, 0x3d	; 61
  da:	de b7       	in	r29, 0x3e	; 62
  dc:	63 ee       	ldi	r22, 0xE3	; 227
  de:	77 e0       	ldi	r23, 0x07	; 7
  e0:	82 ee       	ldi	r24, 0xE2	; 226
  e2:	97 e0       	ldi	r25, 0x07	; 7
  e4:	0e 94 53 00 	call	0xa6	; 0xa6 <func>
  e8:	90 93 15 01 	sts	0x0115, r25	; 0x800115 <__data_end+0x1>
  ec:	80 93 14 01 	sts	0x0114, r24	; 0x800114 <__data_end>
  f0:	80 91 14 01 	lds	r24, 0x0114	; 0x800114 <__data_end>
  f4:	90 91 15 01 	lds	r25, 0x0115	; 0x800115 <__data_end+0x1>
  f8:	29 2f       	mov	r18, r25
  fa:	2f 93       	push	r18
  fc:	8f 93       	push	r24
  fe:	80 e0       	ldi	r24, 0x00	; 0
 100:	91 e0       	ldi	r25, 0x01	; 1
 102:	89 2f       	mov	r24, r25
 104:	8f 93       	push	r24
 106:	80 e0       	ldi	r24, 0x00	; 0
 108:	91 e0       	ldi	r25, 0x01	; 1
 10a:	8f 93       	push	r24
 10c:	8c e0       	ldi	r24, 0x0C	; 12
 10e:	91 e0       	ldi	r25, 0x01	; 1
 110:	89 2f       	mov	r24, r25
 112:	8f 93       	push	r24
 114:	8c e0       	ldi	r24, 0x0C	; 12
 116:	91 e0       	ldi	r25, 0x01	; 1
 118:	8f 93       	push	r24
 11a:	0e 94 9a 00 	call	0x134	; 0x134 <printf>
 11e:	0f 90       	pop	r0
 120:	0f 90       	pop	r0
 122:	0f 90       	pop	r0
 124:	0f 90       	pop	r0
 126:	0f 90       	pop	r0
 128:	0f 90       	pop	r0
 12a:	80 e0       	ldi	r24, 0x00	; 0
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	df 91       	pop	r29
 130:	cf 91       	pop	r28
 132:	08 95       	ret

00000134 <printf>:
 134:	a0 e0       	ldi	r26, 0x00	; 0
 136:	b0 e0       	ldi	r27, 0x00	; 0
 138:	e0 ea       	ldi	r30, 0xA0	; 160
 13a:	f0 e0       	ldi	r31, 0x00	; 0
 13c:	0c 94 51 03 	jmp	0x6a2	; 0x6a2 <__prologue_saves__+0x20>
 140:	ae 01       	movw	r20, r28
 142:	4b 5f       	subi	r20, 0xFB	; 251
 144:	5f 4f       	sbci	r21, 0xFF	; 255
 146:	fa 01       	movw	r30, r20
 148:	61 91       	ld	r22, Z+
 14a:	71 91       	ld	r23, Z+
 14c:	af 01       	movw	r20, r30
 14e:	80 91 18 01 	lds	r24, 0x0118	; 0x800118 <__iob+0x2>
 152:	90 91 19 01 	lds	r25, 0x0119	; 0x800119 <__iob+0x3>
 156:	0e 94 b0 00 	call	0x160	; 0x160 <vfprintf>
 15a:	e2 e0       	ldi	r30, 0x02	; 2
 15c:	0c 94 6d 03 	jmp	0x6da	; 0x6da <__epilogue_restores__+0x20>

00000160 <vfprintf>:
 160:	ab e0       	ldi	r26, 0x0B	; 11
 162:	b0 e0       	ldi	r27, 0x00	; 0
 164:	e6 eb       	ldi	r30, 0xB6	; 182
 166:	f0 e0       	ldi	r31, 0x00	; 0
 168:	0c 94 41 03 	jmp	0x682	; 0x682 <__prologue_saves__>
 16c:	6c 01       	movw	r12, r24
 16e:	7b 01       	movw	r14, r22
 170:	8a 01       	movw	r16, r20
 172:	fc 01       	movw	r30, r24
 174:	17 82       	std	Z+7, r1	; 0x07
 176:	16 82       	std	Z+6, r1	; 0x06
 178:	83 81       	ldd	r24, Z+3	; 0x03
 17a:	81 ff       	sbrs	r24, 1
 17c:	cc c1       	rjmp	.+920    	; 0x516 <__EEPROM_REGION_LENGTH__+0x116>
 17e:	ce 01       	movw	r24, r28
 180:	01 96       	adiw	r24, 0x01	; 1
 182:	3c 01       	movw	r6, r24
 184:	f6 01       	movw	r30, r12
 186:	93 81       	ldd	r25, Z+3	; 0x03
 188:	f7 01       	movw	r30, r14
 18a:	93 fd       	sbrc	r25, 3
 18c:	85 91       	lpm	r24, Z+
 18e:	93 ff       	sbrs	r25, 3
 190:	81 91       	ld	r24, Z+
 192:	7f 01       	movw	r14, r30
 194:	88 23       	and	r24, r24
 196:	09 f4       	brne	.+2      	; 0x19a <vfprintf+0x3a>
 198:	ba c1       	rjmp	.+884    	; 0x50e <__EEPROM_REGION_LENGTH__+0x10e>
 19a:	85 32       	cpi	r24, 0x25	; 37
 19c:	39 f4       	brne	.+14     	; 0x1ac <vfprintf+0x4c>
 19e:	93 fd       	sbrc	r25, 3
 1a0:	85 91       	lpm	r24, Z+
 1a2:	93 ff       	sbrs	r25, 3
 1a4:	81 91       	ld	r24, Z+
 1a6:	7f 01       	movw	r14, r30
 1a8:	85 32       	cpi	r24, 0x25	; 37
 1aa:	29 f4       	brne	.+10     	; 0x1b6 <vfprintf+0x56>
 1ac:	b6 01       	movw	r22, r12
 1ae:	90 e0       	ldi	r25, 0x00	; 0
 1b0:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 1b4:	e7 cf       	rjmp	.-50     	; 0x184 <vfprintf+0x24>
 1b6:	91 2c       	mov	r9, r1
 1b8:	21 2c       	mov	r2, r1
 1ba:	31 2c       	mov	r3, r1
 1bc:	ff e1       	ldi	r31, 0x1F	; 31
 1be:	f3 15       	cp	r31, r3
 1c0:	d8 f0       	brcs	.+54     	; 0x1f8 <vfprintf+0x98>
 1c2:	8b 32       	cpi	r24, 0x2B	; 43
 1c4:	79 f0       	breq	.+30     	; 0x1e4 <vfprintf+0x84>
 1c6:	38 f4       	brcc	.+14     	; 0x1d6 <vfprintf+0x76>
 1c8:	80 32       	cpi	r24, 0x20	; 32
 1ca:	79 f0       	breq	.+30     	; 0x1ea <vfprintf+0x8a>
 1cc:	83 32       	cpi	r24, 0x23	; 35
 1ce:	a1 f4       	brne	.+40     	; 0x1f8 <vfprintf+0x98>
 1d0:	23 2d       	mov	r18, r3
 1d2:	20 61       	ori	r18, 0x10	; 16
 1d4:	1d c0       	rjmp	.+58     	; 0x210 <vfprintf+0xb0>
 1d6:	8d 32       	cpi	r24, 0x2D	; 45
 1d8:	61 f0       	breq	.+24     	; 0x1f2 <vfprintf+0x92>
 1da:	80 33       	cpi	r24, 0x30	; 48
 1dc:	69 f4       	brne	.+26     	; 0x1f8 <vfprintf+0x98>
 1de:	23 2d       	mov	r18, r3
 1e0:	21 60       	ori	r18, 0x01	; 1
 1e2:	16 c0       	rjmp	.+44     	; 0x210 <vfprintf+0xb0>
 1e4:	83 2d       	mov	r24, r3
 1e6:	82 60       	ori	r24, 0x02	; 2
 1e8:	38 2e       	mov	r3, r24
 1ea:	e3 2d       	mov	r30, r3
 1ec:	e4 60       	ori	r30, 0x04	; 4
 1ee:	3e 2e       	mov	r3, r30
 1f0:	2a c0       	rjmp	.+84     	; 0x246 <vfprintf+0xe6>
 1f2:	f3 2d       	mov	r31, r3
 1f4:	f8 60       	ori	r31, 0x08	; 8
 1f6:	1d c0       	rjmp	.+58     	; 0x232 <vfprintf+0xd2>
 1f8:	37 fc       	sbrc	r3, 7
 1fa:	2d c0       	rjmp	.+90     	; 0x256 <vfprintf+0xf6>
 1fc:	20 ed       	ldi	r18, 0xD0	; 208
 1fe:	28 0f       	add	r18, r24
 200:	2a 30       	cpi	r18, 0x0A	; 10
 202:	40 f0       	brcs	.+16     	; 0x214 <vfprintf+0xb4>
 204:	8e 32       	cpi	r24, 0x2E	; 46
 206:	b9 f4       	brne	.+46     	; 0x236 <vfprintf+0xd6>
 208:	36 fc       	sbrc	r3, 6
 20a:	81 c1       	rjmp	.+770    	; 0x50e <__EEPROM_REGION_LENGTH__+0x10e>
 20c:	23 2d       	mov	r18, r3
 20e:	20 64       	ori	r18, 0x40	; 64
 210:	32 2e       	mov	r3, r18
 212:	19 c0       	rjmp	.+50     	; 0x246 <vfprintf+0xe6>
 214:	36 fe       	sbrs	r3, 6
 216:	06 c0       	rjmp	.+12     	; 0x224 <vfprintf+0xc4>
 218:	8a e0       	ldi	r24, 0x0A	; 10
 21a:	98 9e       	mul	r9, r24
 21c:	20 0d       	add	r18, r0
 21e:	11 24       	eor	r1, r1
 220:	92 2e       	mov	r9, r18
 222:	11 c0       	rjmp	.+34     	; 0x246 <vfprintf+0xe6>
 224:	ea e0       	ldi	r30, 0x0A	; 10
 226:	2e 9e       	mul	r2, r30
 228:	20 0d       	add	r18, r0
 22a:	11 24       	eor	r1, r1
 22c:	22 2e       	mov	r2, r18
 22e:	f3 2d       	mov	r31, r3
 230:	f0 62       	ori	r31, 0x20	; 32
 232:	3f 2e       	mov	r3, r31
 234:	08 c0       	rjmp	.+16     	; 0x246 <vfprintf+0xe6>
 236:	8c 36       	cpi	r24, 0x6C	; 108
 238:	21 f4       	brne	.+8      	; 0x242 <vfprintf+0xe2>
 23a:	83 2d       	mov	r24, r3
 23c:	80 68       	ori	r24, 0x80	; 128
 23e:	38 2e       	mov	r3, r24
 240:	02 c0       	rjmp	.+4      	; 0x246 <vfprintf+0xe6>
 242:	88 36       	cpi	r24, 0x68	; 104
 244:	41 f4       	brne	.+16     	; 0x256 <vfprintf+0xf6>
 246:	f7 01       	movw	r30, r14
 248:	93 fd       	sbrc	r25, 3
 24a:	85 91       	lpm	r24, Z+
 24c:	93 ff       	sbrs	r25, 3
 24e:	81 91       	ld	r24, Z+
 250:	7f 01       	movw	r14, r30
 252:	81 11       	cpse	r24, r1
 254:	b3 cf       	rjmp	.-154    	; 0x1bc <vfprintf+0x5c>
 256:	98 2f       	mov	r25, r24
 258:	9f 7d       	andi	r25, 0xDF	; 223
 25a:	95 54       	subi	r25, 0x45	; 69
 25c:	93 30       	cpi	r25, 0x03	; 3
 25e:	28 f4       	brcc	.+10     	; 0x26a <vfprintf+0x10a>
 260:	0c 5f       	subi	r16, 0xFC	; 252
 262:	1f 4f       	sbci	r17, 0xFF	; 255
 264:	9f e3       	ldi	r25, 0x3F	; 63
 266:	99 83       	std	Y+1, r25	; 0x01
 268:	0d c0       	rjmp	.+26     	; 0x284 <vfprintf+0x124>
 26a:	83 36       	cpi	r24, 0x63	; 99
 26c:	31 f0       	breq	.+12     	; 0x27a <vfprintf+0x11a>
 26e:	83 37       	cpi	r24, 0x73	; 115
 270:	71 f0       	breq	.+28     	; 0x28e <vfprintf+0x12e>
 272:	83 35       	cpi	r24, 0x53	; 83
 274:	09 f0       	breq	.+2      	; 0x278 <vfprintf+0x118>
 276:	59 c0       	rjmp	.+178    	; 0x32a <vfprintf+0x1ca>
 278:	21 c0       	rjmp	.+66     	; 0x2bc <vfprintf+0x15c>
 27a:	f8 01       	movw	r30, r16
 27c:	80 81       	ld	r24, Z
 27e:	89 83       	std	Y+1, r24	; 0x01
 280:	0e 5f       	subi	r16, 0xFE	; 254
 282:	1f 4f       	sbci	r17, 0xFF	; 255
 284:	88 24       	eor	r8, r8
 286:	83 94       	inc	r8
 288:	91 2c       	mov	r9, r1
 28a:	53 01       	movw	r10, r6
 28c:	13 c0       	rjmp	.+38     	; 0x2b4 <vfprintf+0x154>
 28e:	28 01       	movw	r4, r16
 290:	f2 e0       	ldi	r31, 0x02	; 2
 292:	4f 0e       	add	r4, r31
 294:	51 1c       	adc	r5, r1
 296:	f8 01       	movw	r30, r16
 298:	a0 80       	ld	r10, Z
 29a:	b1 80       	ldd	r11, Z+1	; 0x01
 29c:	36 fe       	sbrs	r3, 6
 29e:	03 c0       	rjmp	.+6      	; 0x2a6 <vfprintf+0x146>
 2a0:	69 2d       	mov	r22, r9
 2a2:	70 e0       	ldi	r23, 0x00	; 0
 2a4:	02 c0       	rjmp	.+4      	; 0x2aa <vfprintf+0x14a>
 2a6:	6f ef       	ldi	r22, 0xFF	; 255
 2a8:	7f ef       	ldi	r23, 0xFF	; 255
 2aa:	c5 01       	movw	r24, r10
 2ac:	0e 94 9c 02 	call	0x538	; 0x538 <strnlen>
 2b0:	4c 01       	movw	r8, r24
 2b2:	82 01       	movw	r16, r4
 2b4:	f3 2d       	mov	r31, r3
 2b6:	ff 77       	andi	r31, 0x7F	; 127
 2b8:	3f 2e       	mov	r3, r31
 2ba:	16 c0       	rjmp	.+44     	; 0x2e8 <vfprintf+0x188>
 2bc:	28 01       	movw	r4, r16
 2be:	22 e0       	ldi	r18, 0x02	; 2
 2c0:	42 0e       	add	r4, r18
 2c2:	51 1c       	adc	r5, r1
 2c4:	f8 01       	movw	r30, r16
 2c6:	a0 80       	ld	r10, Z
 2c8:	b1 80       	ldd	r11, Z+1	; 0x01
 2ca:	36 fe       	sbrs	r3, 6
 2cc:	03 c0       	rjmp	.+6      	; 0x2d4 <vfprintf+0x174>
 2ce:	69 2d       	mov	r22, r9
 2d0:	70 e0       	ldi	r23, 0x00	; 0
 2d2:	02 c0       	rjmp	.+4      	; 0x2d8 <vfprintf+0x178>
 2d4:	6f ef       	ldi	r22, 0xFF	; 255
 2d6:	7f ef       	ldi	r23, 0xFF	; 255
 2d8:	c5 01       	movw	r24, r10
 2da:	0e 94 91 02 	call	0x522	; 0x522 <strnlen_P>
 2de:	4c 01       	movw	r8, r24
 2e0:	f3 2d       	mov	r31, r3
 2e2:	f0 68       	ori	r31, 0x80	; 128
 2e4:	3f 2e       	mov	r3, r31
 2e6:	82 01       	movw	r16, r4
 2e8:	33 fc       	sbrc	r3, 3
 2ea:	1b c0       	rjmp	.+54     	; 0x322 <vfprintf+0x1c2>
 2ec:	82 2d       	mov	r24, r2
 2ee:	90 e0       	ldi	r25, 0x00	; 0
 2f0:	88 16       	cp	r8, r24
 2f2:	99 06       	cpc	r9, r25
 2f4:	b0 f4       	brcc	.+44     	; 0x322 <vfprintf+0x1c2>
 2f6:	b6 01       	movw	r22, r12
 2f8:	80 e2       	ldi	r24, 0x20	; 32
 2fa:	90 e0       	ldi	r25, 0x00	; 0
 2fc:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 300:	2a 94       	dec	r2
 302:	f4 cf       	rjmp	.-24     	; 0x2ec <vfprintf+0x18c>
 304:	f5 01       	movw	r30, r10
 306:	37 fc       	sbrc	r3, 7
 308:	85 91       	lpm	r24, Z+
 30a:	37 fe       	sbrs	r3, 7
 30c:	81 91       	ld	r24, Z+
 30e:	5f 01       	movw	r10, r30
 310:	b6 01       	movw	r22, r12
 312:	90 e0       	ldi	r25, 0x00	; 0
 314:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 318:	21 10       	cpse	r2, r1
 31a:	2a 94       	dec	r2
 31c:	21 e0       	ldi	r18, 0x01	; 1
 31e:	82 1a       	sub	r8, r18
 320:	91 08       	sbc	r9, r1
 322:	81 14       	cp	r8, r1
 324:	91 04       	cpc	r9, r1
 326:	71 f7       	brne	.-36     	; 0x304 <vfprintf+0x1a4>
 328:	e8 c0       	rjmp	.+464    	; 0x4fa <__EEPROM_REGION_LENGTH__+0xfa>
 32a:	84 36       	cpi	r24, 0x64	; 100
 32c:	11 f0       	breq	.+4      	; 0x332 <vfprintf+0x1d2>
 32e:	89 36       	cpi	r24, 0x69	; 105
 330:	41 f5       	brne	.+80     	; 0x382 <vfprintf+0x222>
 332:	f8 01       	movw	r30, r16
 334:	37 fe       	sbrs	r3, 7
 336:	07 c0       	rjmp	.+14     	; 0x346 <vfprintf+0x1e6>
 338:	60 81       	ld	r22, Z
 33a:	71 81       	ldd	r23, Z+1	; 0x01
 33c:	82 81       	ldd	r24, Z+2	; 0x02
 33e:	93 81       	ldd	r25, Z+3	; 0x03
 340:	0c 5f       	subi	r16, 0xFC	; 252
 342:	1f 4f       	sbci	r17, 0xFF	; 255
 344:	08 c0       	rjmp	.+16     	; 0x356 <vfprintf+0x1f6>
 346:	60 81       	ld	r22, Z
 348:	71 81       	ldd	r23, Z+1	; 0x01
 34a:	07 2e       	mov	r0, r23
 34c:	00 0c       	add	r0, r0
 34e:	88 0b       	sbc	r24, r24
 350:	99 0b       	sbc	r25, r25
 352:	0e 5f       	subi	r16, 0xFE	; 254
 354:	1f 4f       	sbci	r17, 0xFF	; 255
 356:	f3 2d       	mov	r31, r3
 358:	ff 76       	andi	r31, 0x6F	; 111
 35a:	3f 2e       	mov	r3, r31
 35c:	97 ff       	sbrs	r25, 7
 35e:	09 c0       	rjmp	.+18     	; 0x372 <vfprintf+0x212>
 360:	90 95       	com	r25
 362:	80 95       	com	r24
 364:	70 95       	com	r23
 366:	61 95       	neg	r22
 368:	7f 4f       	sbci	r23, 0xFF	; 255
 36a:	8f 4f       	sbci	r24, 0xFF	; 255
 36c:	9f 4f       	sbci	r25, 0xFF	; 255
 36e:	f0 68       	ori	r31, 0x80	; 128
 370:	3f 2e       	mov	r3, r31
 372:	2a e0       	ldi	r18, 0x0A	; 10
 374:	30 e0       	ldi	r19, 0x00	; 0
 376:	a3 01       	movw	r20, r6
 378:	0e 94 e3 02 	call	0x5c6	; 0x5c6 <__ultoa_invert>
 37c:	88 2e       	mov	r8, r24
 37e:	86 18       	sub	r8, r6
 380:	45 c0       	rjmp	.+138    	; 0x40c <__EEPROM_REGION_LENGTH__+0xc>
 382:	85 37       	cpi	r24, 0x75	; 117
 384:	31 f4       	brne	.+12     	; 0x392 <vfprintf+0x232>
 386:	23 2d       	mov	r18, r3
 388:	2f 7e       	andi	r18, 0xEF	; 239
 38a:	b2 2e       	mov	r11, r18
 38c:	2a e0       	ldi	r18, 0x0A	; 10
 38e:	30 e0       	ldi	r19, 0x00	; 0
 390:	25 c0       	rjmp	.+74     	; 0x3dc <vfprintf+0x27c>
 392:	93 2d       	mov	r25, r3
 394:	99 7f       	andi	r25, 0xF9	; 249
 396:	b9 2e       	mov	r11, r25
 398:	8f 36       	cpi	r24, 0x6F	; 111
 39a:	c1 f0       	breq	.+48     	; 0x3cc <vfprintf+0x26c>
 39c:	18 f4       	brcc	.+6      	; 0x3a4 <vfprintf+0x244>
 39e:	88 35       	cpi	r24, 0x58	; 88
 3a0:	79 f0       	breq	.+30     	; 0x3c0 <vfprintf+0x260>
 3a2:	b5 c0       	rjmp	.+362    	; 0x50e <__EEPROM_REGION_LENGTH__+0x10e>
 3a4:	80 37       	cpi	r24, 0x70	; 112
 3a6:	19 f0       	breq	.+6      	; 0x3ae <vfprintf+0x24e>
 3a8:	88 37       	cpi	r24, 0x78	; 120
 3aa:	21 f0       	breq	.+8      	; 0x3b4 <vfprintf+0x254>
 3ac:	b0 c0       	rjmp	.+352    	; 0x50e <__EEPROM_REGION_LENGTH__+0x10e>
 3ae:	e9 2f       	mov	r30, r25
 3b0:	e0 61       	ori	r30, 0x10	; 16
 3b2:	be 2e       	mov	r11, r30
 3b4:	b4 fe       	sbrs	r11, 4
 3b6:	0d c0       	rjmp	.+26     	; 0x3d2 <vfprintf+0x272>
 3b8:	fb 2d       	mov	r31, r11
 3ba:	f4 60       	ori	r31, 0x04	; 4
 3bc:	bf 2e       	mov	r11, r31
 3be:	09 c0       	rjmp	.+18     	; 0x3d2 <vfprintf+0x272>
 3c0:	34 fe       	sbrs	r3, 4
 3c2:	0a c0       	rjmp	.+20     	; 0x3d8 <vfprintf+0x278>
 3c4:	29 2f       	mov	r18, r25
 3c6:	26 60       	ori	r18, 0x06	; 6
 3c8:	b2 2e       	mov	r11, r18
 3ca:	06 c0       	rjmp	.+12     	; 0x3d8 <vfprintf+0x278>
 3cc:	28 e0       	ldi	r18, 0x08	; 8
 3ce:	30 e0       	ldi	r19, 0x00	; 0
 3d0:	05 c0       	rjmp	.+10     	; 0x3dc <vfprintf+0x27c>
 3d2:	20 e1       	ldi	r18, 0x10	; 16
 3d4:	30 e0       	ldi	r19, 0x00	; 0
 3d6:	02 c0       	rjmp	.+4      	; 0x3dc <vfprintf+0x27c>
 3d8:	20 e1       	ldi	r18, 0x10	; 16
 3da:	32 e0       	ldi	r19, 0x02	; 2
 3dc:	f8 01       	movw	r30, r16
 3de:	b7 fe       	sbrs	r11, 7
 3e0:	07 c0       	rjmp	.+14     	; 0x3f0 <vfprintf+0x290>
 3e2:	60 81       	ld	r22, Z
 3e4:	71 81       	ldd	r23, Z+1	; 0x01
 3e6:	82 81       	ldd	r24, Z+2	; 0x02
 3e8:	93 81       	ldd	r25, Z+3	; 0x03
 3ea:	0c 5f       	subi	r16, 0xFC	; 252
 3ec:	1f 4f       	sbci	r17, 0xFF	; 255
 3ee:	06 c0       	rjmp	.+12     	; 0x3fc <vfprintf+0x29c>
 3f0:	60 81       	ld	r22, Z
 3f2:	71 81       	ldd	r23, Z+1	; 0x01
 3f4:	80 e0       	ldi	r24, 0x00	; 0
 3f6:	90 e0       	ldi	r25, 0x00	; 0
 3f8:	0e 5f       	subi	r16, 0xFE	; 254
 3fa:	1f 4f       	sbci	r17, 0xFF	; 255
 3fc:	a3 01       	movw	r20, r6
 3fe:	0e 94 e3 02 	call	0x5c6	; 0x5c6 <__ultoa_invert>
 402:	88 2e       	mov	r8, r24
 404:	86 18       	sub	r8, r6
 406:	fb 2d       	mov	r31, r11
 408:	ff 77       	andi	r31, 0x7F	; 127
 40a:	3f 2e       	mov	r3, r31
 40c:	36 fe       	sbrs	r3, 6
 40e:	0d c0       	rjmp	.+26     	; 0x42a <__EEPROM_REGION_LENGTH__+0x2a>
 410:	23 2d       	mov	r18, r3
 412:	2e 7f       	andi	r18, 0xFE	; 254
 414:	a2 2e       	mov	r10, r18
 416:	89 14       	cp	r8, r9
 418:	58 f4       	brcc	.+22     	; 0x430 <__EEPROM_REGION_LENGTH__+0x30>
 41a:	34 fe       	sbrs	r3, 4
 41c:	0b c0       	rjmp	.+22     	; 0x434 <__EEPROM_REGION_LENGTH__+0x34>
 41e:	32 fc       	sbrc	r3, 2
 420:	09 c0       	rjmp	.+18     	; 0x434 <__EEPROM_REGION_LENGTH__+0x34>
 422:	83 2d       	mov	r24, r3
 424:	8e 7e       	andi	r24, 0xEE	; 238
 426:	a8 2e       	mov	r10, r24
 428:	05 c0       	rjmp	.+10     	; 0x434 <__EEPROM_REGION_LENGTH__+0x34>
 42a:	b8 2c       	mov	r11, r8
 42c:	a3 2c       	mov	r10, r3
 42e:	03 c0       	rjmp	.+6      	; 0x436 <__EEPROM_REGION_LENGTH__+0x36>
 430:	b8 2c       	mov	r11, r8
 432:	01 c0       	rjmp	.+2      	; 0x436 <__EEPROM_REGION_LENGTH__+0x36>
 434:	b9 2c       	mov	r11, r9
 436:	a4 fe       	sbrs	r10, 4
 438:	0f c0       	rjmp	.+30     	; 0x458 <__EEPROM_REGION_LENGTH__+0x58>
 43a:	fe 01       	movw	r30, r28
 43c:	e8 0d       	add	r30, r8
 43e:	f1 1d       	adc	r31, r1
 440:	80 81       	ld	r24, Z
 442:	80 33       	cpi	r24, 0x30	; 48
 444:	21 f4       	brne	.+8      	; 0x44e <__EEPROM_REGION_LENGTH__+0x4e>
 446:	9a 2d       	mov	r25, r10
 448:	99 7e       	andi	r25, 0xE9	; 233
 44a:	a9 2e       	mov	r10, r25
 44c:	09 c0       	rjmp	.+18     	; 0x460 <__EEPROM_REGION_LENGTH__+0x60>
 44e:	a2 fe       	sbrs	r10, 2
 450:	06 c0       	rjmp	.+12     	; 0x45e <__EEPROM_REGION_LENGTH__+0x5e>
 452:	b3 94       	inc	r11
 454:	b3 94       	inc	r11
 456:	04 c0       	rjmp	.+8      	; 0x460 <__EEPROM_REGION_LENGTH__+0x60>
 458:	8a 2d       	mov	r24, r10
 45a:	86 78       	andi	r24, 0x86	; 134
 45c:	09 f0       	breq	.+2      	; 0x460 <__EEPROM_REGION_LENGTH__+0x60>
 45e:	b3 94       	inc	r11
 460:	a3 fc       	sbrc	r10, 3
 462:	11 c0       	rjmp	.+34     	; 0x486 <__EEPROM_REGION_LENGTH__+0x86>
 464:	a0 fe       	sbrs	r10, 0
 466:	06 c0       	rjmp	.+12     	; 0x474 <__EEPROM_REGION_LENGTH__+0x74>
 468:	b2 14       	cp	r11, r2
 46a:	88 f4       	brcc	.+34     	; 0x48e <__EEPROM_REGION_LENGTH__+0x8e>
 46c:	28 0c       	add	r2, r8
 46e:	92 2c       	mov	r9, r2
 470:	9b 18       	sub	r9, r11
 472:	0e c0       	rjmp	.+28     	; 0x490 <__EEPROM_REGION_LENGTH__+0x90>
 474:	b2 14       	cp	r11, r2
 476:	60 f4       	brcc	.+24     	; 0x490 <__EEPROM_REGION_LENGTH__+0x90>
 478:	b6 01       	movw	r22, r12
 47a:	80 e2       	ldi	r24, 0x20	; 32
 47c:	90 e0       	ldi	r25, 0x00	; 0
 47e:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 482:	b3 94       	inc	r11
 484:	f7 cf       	rjmp	.-18     	; 0x474 <__EEPROM_REGION_LENGTH__+0x74>
 486:	b2 14       	cp	r11, r2
 488:	18 f4       	brcc	.+6      	; 0x490 <__EEPROM_REGION_LENGTH__+0x90>
 48a:	2b 18       	sub	r2, r11
 48c:	02 c0       	rjmp	.+4      	; 0x492 <__EEPROM_REGION_LENGTH__+0x92>
 48e:	98 2c       	mov	r9, r8
 490:	21 2c       	mov	r2, r1
 492:	a4 fe       	sbrs	r10, 4
 494:	10 c0       	rjmp	.+32     	; 0x4b6 <__EEPROM_REGION_LENGTH__+0xb6>
 496:	b6 01       	movw	r22, r12
 498:	80 e3       	ldi	r24, 0x30	; 48
 49a:	90 e0       	ldi	r25, 0x00	; 0
 49c:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 4a0:	a2 fe       	sbrs	r10, 2
 4a2:	17 c0       	rjmp	.+46     	; 0x4d2 <__EEPROM_REGION_LENGTH__+0xd2>
 4a4:	a1 fc       	sbrc	r10, 1
 4a6:	03 c0       	rjmp	.+6      	; 0x4ae <__EEPROM_REGION_LENGTH__+0xae>
 4a8:	88 e7       	ldi	r24, 0x78	; 120
 4aa:	90 e0       	ldi	r25, 0x00	; 0
 4ac:	02 c0       	rjmp	.+4      	; 0x4b2 <__EEPROM_REGION_LENGTH__+0xb2>
 4ae:	88 e5       	ldi	r24, 0x58	; 88
 4b0:	90 e0       	ldi	r25, 0x00	; 0
 4b2:	b6 01       	movw	r22, r12
 4b4:	0c c0       	rjmp	.+24     	; 0x4ce <__EEPROM_REGION_LENGTH__+0xce>
 4b6:	8a 2d       	mov	r24, r10
 4b8:	86 78       	andi	r24, 0x86	; 134
 4ba:	59 f0       	breq	.+22     	; 0x4d2 <__EEPROM_REGION_LENGTH__+0xd2>
 4bc:	a1 fe       	sbrs	r10, 1
 4be:	02 c0       	rjmp	.+4      	; 0x4c4 <__EEPROM_REGION_LENGTH__+0xc4>
 4c0:	8b e2       	ldi	r24, 0x2B	; 43
 4c2:	01 c0       	rjmp	.+2      	; 0x4c6 <__EEPROM_REGION_LENGTH__+0xc6>
 4c4:	80 e2       	ldi	r24, 0x20	; 32
 4c6:	a7 fc       	sbrc	r10, 7
 4c8:	8d e2       	ldi	r24, 0x2D	; 45
 4ca:	b6 01       	movw	r22, r12
 4cc:	90 e0       	ldi	r25, 0x00	; 0
 4ce:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 4d2:	89 14       	cp	r8, r9
 4d4:	38 f4       	brcc	.+14     	; 0x4e4 <__EEPROM_REGION_LENGTH__+0xe4>
 4d6:	b6 01       	movw	r22, r12
 4d8:	80 e3       	ldi	r24, 0x30	; 48
 4da:	90 e0       	ldi	r25, 0x00	; 0
 4dc:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 4e0:	9a 94       	dec	r9
 4e2:	f7 cf       	rjmp	.-18     	; 0x4d2 <__EEPROM_REGION_LENGTH__+0xd2>
 4e4:	8a 94       	dec	r8
 4e6:	f3 01       	movw	r30, r6
 4e8:	e8 0d       	add	r30, r8
 4ea:	f1 1d       	adc	r31, r1
 4ec:	80 81       	ld	r24, Z
 4ee:	b6 01       	movw	r22, r12
 4f0:	90 e0       	ldi	r25, 0x00	; 0
 4f2:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 4f6:	81 10       	cpse	r8, r1
 4f8:	f5 cf       	rjmp	.-22     	; 0x4e4 <__EEPROM_REGION_LENGTH__+0xe4>
 4fa:	22 20       	and	r2, r2
 4fc:	09 f4       	brne	.+2      	; 0x500 <__EEPROM_REGION_LENGTH__+0x100>
 4fe:	42 ce       	rjmp	.-892    	; 0x184 <vfprintf+0x24>
 500:	b6 01       	movw	r22, r12
 502:	80 e2       	ldi	r24, 0x20	; 32
 504:	90 e0       	ldi	r25, 0x00	; 0
 506:	0e 94 a7 02 	call	0x54e	; 0x54e <fputc>
 50a:	2a 94       	dec	r2
 50c:	f6 cf       	rjmp	.-20     	; 0x4fa <__EEPROM_REGION_LENGTH__+0xfa>
 50e:	f6 01       	movw	r30, r12
 510:	86 81       	ldd	r24, Z+6	; 0x06
 512:	97 81       	ldd	r25, Z+7	; 0x07
 514:	02 c0       	rjmp	.+4      	; 0x51a <__EEPROM_REGION_LENGTH__+0x11a>
 516:	8f ef       	ldi	r24, 0xFF	; 255
 518:	9f ef       	ldi	r25, 0xFF	; 255
 51a:	2b 96       	adiw	r28, 0x0b	; 11
 51c:	e2 e1       	ldi	r30, 0x12	; 18
 51e:	0c 94 5d 03 	jmp	0x6ba	; 0x6ba <__epilogue_restores__>

00000522 <strnlen_P>:
 522:	fc 01       	movw	r30, r24
 524:	05 90       	lpm	r0, Z+
 526:	61 50       	subi	r22, 0x01	; 1
 528:	70 40       	sbci	r23, 0x00	; 0
 52a:	01 10       	cpse	r0, r1
 52c:	d8 f7       	brcc	.-10     	; 0x524 <strnlen_P+0x2>
 52e:	80 95       	com	r24
 530:	90 95       	com	r25
 532:	8e 0f       	add	r24, r30
 534:	9f 1f       	adc	r25, r31
 536:	08 95       	ret

00000538 <strnlen>:
 538:	fc 01       	movw	r30, r24
 53a:	61 50       	subi	r22, 0x01	; 1
 53c:	70 40       	sbci	r23, 0x00	; 0
 53e:	01 90       	ld	r0, Z+
 540:	01 10       	cpse	r0, r1
 542:	d8 f7       	brcc	.-10     	; 0x53a <strnlen+0x2>
 544:	80 95       	com	r24
 546:	90 95       	com	r25
 548:	8e 0f       	add	r24, r30
 54a:	9f 1f       	adc	r25, r31
 54c:	08 95       	ret

0000054e <fputc>:
 54e:	0f 93       	push	r16
 550:	1f 93       	push	r17
 552:	cf 93       	push	r28
 554:	df 93       	push	r29
 556:	fb 01       	movw	r30, r22
 558:	23 81       	ldd	r18, Z+3	; 0x03
 55a:	21 fd       	sbrc	r18, 1
 55c:	03 c0       	rjmp	.+6      	; 0x564 <fputc+0x16>
 55e:	8f ef       	ldi	r24, 0xFF	; 255
 560:	9f ef       	ldi	r25, 0xFF	; 255
 562:	2c c0       	rjmp	.+88     	; 0x5bc <fputc+0x6e>
 564:	22 ff       	sbrs	r18, 2
 566:	16 c0       	rjmp	.+44     	; 0x594 <fputc+0x46>
 568:	46 81       	ldd	r20, Z+6	; 0x06
 56a:	57 81       	ldd	r21, Z+7	; 0x07
 56c:	24 81       	ldd	r18, Z+4	; 0x04
 56e:	35 81       	ldd	r19, Z+5	; 0x05
 570:	42 17       	cp	r20, r18
 572:	53 07       	cpc	r21, r19
 574:	44 f4       	brge	.+16     	; 0x586 <fputc+0x38>
 576:	a0 81       	ld	r26, Z
 578:	b1 81       	ldd	r27, Z+1	; 0x01
 57a:	9d 01       	movw	r18, r26
 57c:	2f 5f       	subi	r18, 0xFF	; 255
 57e:	3f 4f       	sbci	r19, 0xFF	; 255
 580:	31 83       	std	Z+1, r19	; 0x01
 582:	20 83       	st	Z, r18
 584:	8c 93       	st	X, r24
 586:	26 81       	ldd	r18, Z+6	; 0x06
 588:	37 81       	ldd	r19, Z+7	; 0x07
 58a:	2f 5f       	subi	r18, 0xFF	; 255
 58c:	3f 4f       	sbci	r19, 0xFF	; 255
 58e:	37 83       	std	Z+7, r19	; 0x07
 590:	26 83       	std	Z+6, r18	; 0x06
 592:	14 c0       	rjmp	.+40     	; 0x5bc <fputc+0x6e>
 594:	8b 01       	movw	r16, r22
 596:	ec 01       	movw	r28, r24
 598:	fb 01       	movw	r30, r22
 59a:	00 84       	ldd	r0, Z+8	; 0x08
 59c:	f1 85       	ldd	r31, Z+9	; 0x09
 59e:	e0 2d       	mov	r30, r0
 5a0:	09 95       	icall
 5a2:	89 2b       	or	r24, r25
 5a4:	e1 f6       	brne	.-72     	; 0x55e <fputc+0x10>
 5a6:	d8 01       	movw	r26, r16
 5a8:	16 96       	adiw	r26, 0x06	; 6
 5aa:	8d 91       	ld	r24, X+
 5ac:	9c 91       	ld	r25, X
 5ae:	17 97       	sbiw	r26, 0x07	; 7
 5b0:	01 96       	adiw	r24, 0x01	; 1
 5b2:	17 96       	adiw	r26, 0x07	; 7
 5b4:	9c 93       	st	X, r25
 5b6:	8e 93       	st	-X, r24
 5b8:	16 97       	sbiw	r26, 0x06	; 6
 5ba:	ce 01       	movw	r24, r28
 5bc:	df 91       	pop	r29
 5be:	cf 91       	pop	r28
 5c0:	1f 91       	pop	r17
 5c2:	0f 91       	pop	r16
 5c4:	08 95       	ret

000005c6 <__ultoa_invert>:
 5c6:	fa 01       	movw	r30, r20
 5c8:	aa 27       	eor	r26, r26
 5ca:	28 30       	cpi	r18, 0x08	; 8
 5cc:	51 f1       	breq	.+84     	; 0x622 <__ultoa_invert+0x5c>
 5ce:	20 31       	cpi	r18, 0x10	; 16
 5d0:	81 f1       	breq	.+96     	; 0x632 <__ultoa_invert+0x6c>
 5d2:	e8 94       	clt
 5d4:	6f 93       	push	r22
 5d6:	6e 7f       	andi	r22, 0xFE	; 254
 5d8:	6e 5f       	subi	r22, 0xFE	; 254
 5da:	7f 4f       	sbci	r23, 0xFF	; 255
 5dc:	8f 4f       	sbci	r24, 0xFF	; 255
 5de:	9f 4f       	sbci	r25, 0xFF	; 255
 5e0:	af 4f       	sbci	r26, 0xFF	; 255
 5e2:	b1 e0       	ldi	r27, 0x01	; 1
 5e4:	3e d0       	rcall	.+124    	; 0x662 <__ultoa_invert+0x9c>
 5e6:	b4 e0       	ldi	r27, 0x04	; 4
 5e8:	3c d0       	rcall	.+120    	; 0x662 <__ultoa_invert+0x9c>
 5ea:	67 0f       	add	r22, r23
 5ec:	78 1f       	adc	r23, r24
 5ee:	89 1f       	adc	r24, r25
 5f0:	9a 1f       	adc	r25, r26
 5f2:	a1 1d       	adc	r26, r1
 5f4:	68 0f       	add	r22, r24
 5f6:	79 1f       	adc	r23, r25
 5f8:	8a 1f       	adc	r24, r26
 5fa:	91 1d       	adc	r25, r1
 5fc:	a1 1d       	adc	r26, r1
 5fe:	6a 0f       	add	r22, r26
 600:	71 1d       	adc	r23, r1
 602:	81 1d       	adc	r24, r1
 604:	91 1d       	adc	r25, r1
 606:	a1 1d       	adc	r26, r1
 608:	20 d0       	rcall	.+64     	; 0x64a <__ultoa_invert+0x84>
 60a:	09 f4       	brne	.+2      	; 0x60e <__ultoa_invert+0x48>
 60c:	68 94       	set
 60e:	3f 91       	pop	r19
 610:	2a e0       	ldi	r18, 0x0A	; 10
 612:	26 9f       	mul	r18, r22
 614:	11 24       	eor	r1, r1
 616:	30 19       	sub	r19, r0
 618:	30 5d       	subi	r19, 0xD0	; 208
 61a:	31 93       	st	Z+, r19
 61c:	de f6       	brtc	.-74     	; 0x5d4 <__ultoa_invert+0xe>
 61e:	cf 01       	movw	r24, r30
 620:	08 95       	ret
 622:	46 2f       	mov	r20, r22
 624:	47 70       	andi	r20, 0x07	; 7
 626:	40 5d       	subi	r20, 0xD0	; 208
 628:	41 93       	st	Z+, r20
 62a:	b3 e0       	ldi	r27, 0x03	; 3
 62c:	0f d0       	rcall	.+30     	; 0x64c <__ultoa_invert+0x86>
 62e:	c9 f7       	brne	.-14     	; 0x622 <__ultoa_invert+0x5c>
 630:	f6 cf       	rjmp	.-20     	; 0x61e <__ultoa_invert+0x58>
 632:	46 2f       	mov	r20, r22
 634:	4f 70       	andi	r20, 0x0F	; 15
 636:	40 5d       	subi	r20, 0xD0	; 208
 638:	4a 33       	cpi	r20, 0x3A	; 58
 63a:	18 f0       	brcs	.+6      	; 0x642 <__ultoa_invert+0x7c>
 63c:	49 5d       	subi	r20, 0xD9	; 217
 63e:	31 fd       	sbrc	r19, 1
 640:	40 52       	subi	r20, 0x20	; 32
 642:	41 93       	st	Z+, r20
 644:	02 d0       	rcall	.+4      	; 0x64a <__ultoa_invert+0x84>
 646:	a9 f7       	brne	.-22     	; 0x632 <__ultoa_invert+0x6c>
 648:	ea cf       	rjmp	.-44     	; 0x61e <__ultoa_invert+0x58>
 64a:	b4 e0       	ldi	r27, 0x04	; 4
 64c:	a6 95       	lsr	r26
 64e:	97 95       	ror	r25
 650:	87 95       	ror	r24
 652:	77 95       	ror	r23
 654:	67 95       	ror	r22
 656:	ba 95       	dec	r27
 658:	c9 f7       	brne	.-14     	; 0x64c <__ultoa_invert+0x86>
 65a:	00 97       	sbiw	r24, 0x00	; 0
 65c:	61 05       	cpc	r22, r1
 65e:	71 05       	cpc	r23, r1
 660:	08 95       	ret
 662:	9b 01       	movw	r18, r22
 664:	ac 01       	movw	r20, r24
 666:	0a 2e       	mov	r0, r26
 668:	06 94       	lsr	r0
 66a:	57 95       	ror	r21
 66c:	47 95       	ror	r20
 66e:	37 95       	ror	r19
 670:	27 95       	ror	r18
 672:	ba 95       	dec	r27
 674:	c9 f7       	brne	.-14     	; 0x668 <__ultoa_invert+0xa2>
 676:	62 0f       	add	r22, r18
 678:	73 1f       	adc	r23, r19
 67a:	84 1f       	adc	r24, r20
 67c:	95 1f       	adc	r25, r21
 67e:	a0 1d       	adc	r26, r0
 680:	08 95       	ret

00000682 <__prologue_saves__>:
 682:	2f 92       	push	r2
 684:	3f 92       	push	r3
 686:	4f 92       	push	r4
 688:	5f 92       	push	r5
 68a:	6f 92       	push	r6
 68c:	7f 92       	push	r7
 68e:	8f 92       	push	r8
 690:	9f 92       	push	r9
 692:	af 92       	push	r10
 694:	bf 92       	push	r11
 696:	cf 92       	push	r12
 698:	df 92       	push	r13
 69a:	ef 92       	push	r14
 69c:	ff 92       	push	r15
 69e:	0f 93       	push	r16
 6a0:	1f 93       	push	r17
 6a2:	cf 93       	push	r28
 6a4:	df 93       	push	r29
 6a6:	cd b7       	in	r28, 0x3d	; 61
 6a8:	de b7       	in	r29, 0x3e	; 62
 6aa:	ca 1b       	sub	r28, r26
 6ac:	db 0b       	sbc	r29, r27
 6ae:	0f b6       	in	r0, 0x3f	; 63
 6b0:	f8 94       	cli
 6b2:	de bf       	out	0x3e, r29	; 62
 6b4:	0f be       	out	0x3f, r0	; 63
 6b6:	cd bf       	out	0x3d, r28	; 61
 6b8:	09 94       	ijmp

000006ba <__epilogue_restores__>:
 6ba:	2a 88       	ldd	r2, Y+18	; 0x12
 6bc:	39 88       	ldd	r3, Y+17	; 0x11
 6be:	48 88       	ldd	r4, Y+16	; 0x10
 6c0:	5f 84       	ldd	r5, Y+15	; 0x0f
 6c2:	6e 84       	ldd	r6, Y+14	; 0x0e
 6c4:	7d 84       	ldd	r7, Y+13	; 0x0d
 6c6:	8c 84       	ldd	r8, Y+12	; 0x0c
 6c8:	9b 84       	ldd	r9, Y+11	; 0x0b
 6ca:	aa 84       	ldd	r10, Y+10	; 0x0a
 6cc:	b9 84       	ldd	r11, Y+9	; 0x09
 6ce:	c8 84       	ldd	r12, Y+8	; 0x08
 6d0:	df 80       	ldd	r13, Y+7	; 0x07
 6d2:	ee 80       	ldd	r14, Y+6	; 0x06
 6d4:	fd 80       	ldd	r15, Y+5	; 0x05
 6d6:	0c 81       	ldd	r16, Y+4	; 0x04
 6d8:	1b 81       	ldd	r17, Y+3	; 0x03
 6da:	aa 81       	ldd	r26, Y+2	; 0x02
 6dc:	b9 81       	ldd	r27, Y+1	; 0x01
 6de:	ce 0f       	add	r28, r30
 6e0:	d1 1d       	adc	r29, r1
 6e2:	0f b6       	in	r0, 0x3f	; 63
 6e4:	f8 94       	cli
 6e6:	de bf       	out	0x3e, r29	; 62
 6e8:	0f be       	out	0x3f, r0	; 63
 6ea:	cd bf       	out	0x3d, r28	; 61
 6ec:	ed 01       	movw	r28, r26
 6ee:	08 95       	ret

000006f0 <_exit>:
 6f0:	f8 94       	cli

000006f2 <__stop_program>:
 6f2:	ff cf       	rjmp	.-2      	; 0x6f2 <__stop_program>
