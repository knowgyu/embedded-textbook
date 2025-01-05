
blink.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   8:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  10:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  14:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  18:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  1c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  20:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  24:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  28:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  2c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  30:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  34:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  38:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  3c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  40:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  44:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  48:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  4c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  50:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  54:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  58:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  5c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  60:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  64:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 40 00 	call	0x80	; 0x80 <main>
  78:	0c 94 60 00 	jmp	0xc0	; 0xc0 <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <main>:
#include <avr/io.h>

int main()
{
  80:	cf 93       	push	r28
  82:	df 93       	push	r29
  84:	00 d0       	rcall	.+0      	; 0x86 <main+0x6>
  86:	cd b7       	in	r28, 0x3d	; 61
  88:	de b7       	in	r29, 0x3e	; 62
	int i;
	DDRB |= (1<<PB1);
  8a:	84 e2       	ldi	r24, 0x24	; 36
  8c:	90 e0       	ldi	r25, 0x00	; 0
  8e:	24 e2       	ldi	r18, 0x24	; 36
  90:	30 e0       	ldi	r19, 0x00	; 0
  92:	f9 01       	movw	r30, r18
  94:	20 81       	ld	r18, Z
  96:	22 60       	ori	r18, 0x02	; 2
  98:	fc 01       	movw	r30, r24
  9a:	20 83       	st	Z, r18

	while(1)
	{
		PORTB ^= (1<<PB1);
  9c:	85 e2       	ldi	r24, 0x25	; 37
  9e:	90 e0       	ldi	r25, 0x00	; 0
  a0:	25 e2       	ldi	r18, 0x25	; 37
  a2:	30 e0       	ldi	r19, 0x00	; 0
  a4:	f9 01       	movw	r30, r18
  a6:	30 81       	ld	r19, Z
  a8:	22 e0       	ldi	r18, 0x02	; 2
  aa:	23 27       	eor	r18, r19
  ac:	fc 01       	movw	r30, r24
  ae:	20 83       	st	Z, r18
		for(i=0; i<1000000; i++){}; 
  b0:	1a 82       	std	Y+2, r1	; 0x02
  b2:	19 82       	std	Y+1, r1	; 0x01
  b4:	89 81       	ldd	r24, Y+1	; 0x01
  b6:	9a 81       	ldd	r25, Y+2	; 0x02
  b8:	01 96       	adiw	r24, 0x01	; 1
  ba:	9a 83       	std	Y+2, r25	; 0x02
  bc:	89 83       	std	Y+1, r24	; 0x01
  be:	fa cf       	rjmp	.-12     	; 0xb4 <main+0x34>

000000c0 <_exit>:
  c0:	f8 94       	cli

000000c2 <__stop_program>:
  c2:	ff cf       	rjmp	.-2      	; 0xc2 <__stop_program>
