
updater.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00000000 l    d  .text	00000000 .text
00000000 l    d  .stab	00000000 .stab
00000000 l    d  .stabstr	00000000 .stabstr
00000000 l    d  .comment	00000000 .comment
00000000 l    df *ABS*	00000000 updater.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
000000b0 l       .text	00000000 loop10
000000de l       .text	00000000 loop27
00000000 l    df *ABS*	00000000 _exit.o
00000cb4 l       .text	00000000 __stop_program
00000000 l    df *ABS*	00000000 
0000008e  w      .text	00000000 __vector_22
0000008e  w      .text	00000000 __vector_1
00800100 g     O .data	00000002 new_firmware
00000090 g     F .text	0000002e do_spm
00000acc g     F .text	00000012 memcpy_PF
00000068 g       .text	00000000 __trampolines_start
00000cb6 g       .text	00000000 _etext
0000008e  w      .text	00000000 __vector_24
0000008e  w      .text	00000000 __vector_12
0000008e g       .text	00000000 __bad_interrupt
00000214 g       .text	00000000 usbasploader
00000cb8 g       *ABS*	00000000 __data_load_end
0000008e  w      .text	00000000 __vector_6
00000068 g       .text	00000000 __trampolines_end
0000008e  w      .text	00000000 __vector_3
0000008e  w      .text	00000000 __vector_23
00000cb6 g       *ABS*	00000000 __data_load_start
00000068 g       .text	00000000 __dtors_end
0000008e  w      .text	00000000 __vector_25
0000008e  w      .text	00000000 __vector_11
00000068  w      .text	00000000 __init
00000acc g       .text	00000000 _binary_usbasploader_raw_end
0000008e  w      .text	00000000 __vector_13
0000008e  w      .text	00000000 __vector_17
0000008e  w      .text	00000000 __vector_19
0000008e  w      .text	00000000 __vector_7
00810000 g       .text	00000000 __eeprom_end
00000000 g       .text	00000000 __vectors
00800102 g       .data	00000000 __data_end
000008b8 g       *ABS*	00000000 _binary_usbasploader_raw_size
00000000  w      .text	00000000 __vector_default
0000008e  w      .text	00000000 __vector_5
00000112 g     F .text	00000102 mypgm_WRITEpage
000000ec g     F .text	00000028 mypgm_readpage
00000068 g       .text	00000000 __ctors_start
00000074 g       .text	00000016 .hidden __do_copy_data
00000ca4 g     F .text	0000000e memset
00000ade g     F .text	000001d6 main
0000008e  w      .text	00000000 __vector_4
00000000  w      *ABS*	00000000 __heap_end
0000008e  w      .text	00000000 __vector_9
0000008e  w      .text	00000000 __vector_2
0000008e  w      .text	00000000 __vector_21
0000008e  w      .text	00000000 __vector_15
00000068 g       .text	00000000 __dtors_start
00000068 g       .text	00000000 __ctors_end
000008ff  w      *ABS*	00000000 __stack
00800102 g       .data	00000000 _edata
00800102 g       .text	00000000 _end
0000008e  w      .text	00000000 __vector_8
00000cb2  w      .text	00000000 .hidden exit
00000cb2 g       .text	00000000 .hidden _exit
0000008e  w      .text	00000000 __vector_14
000000be g     F .text	0000002e temp_do_spm
0000008e  w      .text	00000000 __vector_10
0000008e  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
0000008e  w      .text	00000000 __vector_18
0000008e  w      .text	00000000 __vector_20



Disassembly of section .text:

00000000 <__vectors>:
   0:	33 c0       	rjmp	.+102    	; 0x68 <__ctors_end>
   2:	00 00       	nop
   4:	44 c0       	rjmp	.+136    	; 0x8e <__bad_interrupt>
   6:	00 00       	nop
   8:	42 c0       	rjmp	.+132    	; 0x8e <__bad_interrupt>
   a:	00 00       	nop
   c:	40 c0       	rjmp	.+128    	; 0x8e <__bad_interrupt>
   e:	00 00       	nop
  10:	3e c0       	rjmp	.+124    	; 0x8e <__bad_interrupt>
  12:	00 00       	nop
  14:	3c c0       	rjmp	.+120    	; 0x8e <__bad_interrupt>
  16:	00 00       	nop
  18:	3a c0       	rjmp	.+116    	; 0x8e <__bad_interrupt>
  1a:	00 00       	nop
  1c:	38 c0       	rjmp	.+112    	; 0x8e <__bad_interrupt>
  1e:	00 00       	nop
  20:	36 c0       	rjmp	.+108    	; 0x8e <__bad_interrupt>
  22:	00 00       	nop
  24:	34 c0       	rjmp	.+104    	; 0x8e <__bad_interrupt>
  26:	00 00       	nop
  28:	32 c0       	rjmp	.+100    	; 0x8e <__bad_interrupt>
  2a:	00 00       	nop
  2c:	30 c0       	rjmp	.+96     	; 0x8e <__bad_interrupt>
  2e:	00 00       	nop
  30:	2e c0       	rjmp	.+92     	; 0x8e <__bad_interrupt>
  32:	00 00       	nop
  34:	2c c0       	rjmp	.+88     	; 0x8e <__bad_interrupt>
  36:	00 00       	nop
  38:	2a c0       	rjmp	.+84     	; 0x8e <__bad_interrupt>
  3a:	00 00       	nop
  3c:	28 c0       	rjmp	.+80     	; 0x8e <__bad_interrupt>
  3e:	00 00       	nop
  40:	26 c0       	rjmp	.+76     	; 0x8e <__bad_interrupt>
  42:	00 00       	nop
  44:	24 c0       	rjmp	.+72     	; 0x8e <__bad_interrupt>
  46:	00 00       	nop
  48:	22 c0       	rjmp	.+68     	; 0x8e <__bad_interrupt>
  4a:	00 00       	nop
  4c:	20 c0       	rjmp	.+64     	; 0x8e <__bad_interrupt>
  4e:	00 00       	nop
  50:	1e c0       	rjmp	.+60     	; 0x8e <__bad_interrupt>
  52:	00 00       	nop
  54:	1c c0       	rjmp	.+56     	; 0x8e <__bad_interrupt>
  56:	00 00       	nop
  58:	1a c0       	rjmp	.+52     	; 0x8e <__bad_interrupt>
  5a:	00 00       	nop
  5c:	18 c0       	rjmp	.+48     	; 0x8e <__bad_interrupt>
  5e:	00 00       	nop
  60:	16 c0       	rjmp	.+44     	; 0x8e <__bad_interrupt>
  62:	00 00       	nop
  64:	14 c0       	rjmp	.+40     	; 0x8e <__bad_interrupt>
	...

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
  7a:	e6 eb       	ldi	r30, 0xB6	; 182
  7c:	fc e0       	ldi	r31, 0x0C	; 12
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a2 30       	cpi	r26, 0x02	; 2
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>
  8a:	29 d5       	rcall	.+2642   	; 0xade <main>
  8c:	12 c6       	rjmp	.+3108   	; 0xcb2 <_exit>

0000008e <__bad_interrupt>:
  8e:	b8 cf       	rjmp	.-144    	; 0x0 <__vectors>

00000090 <do_spm>:
      );												\
  })
#endif

#if (!(defined(BOOTLOADER_ADDRESS))) || (defined(NEW_BOOTLOADER_ADDRESS))
void do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
  90:	bf 92       	push	r11
  92:	cf 92       	push	r12
  94:	df 92       	push	r13
  96:	d9 01       	movw	r26, r18
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, funcaddr___bootloader__do_spm >> 1);
  98:	e4 e3       	ldi	r30, 0x34	; 52
  9a:	f8 e3       	ldi	r31, 0x38	; 56
  9c:	0f 92       	push	r0
  9e:	1f 92       	push	r1
  a0:	d7 2e       	mov	r13, r23
  a2:	c6 2e       	mov	r12, r22
  a4:	b8 2e       	mov	r11, r24
  a6:	24 2f       	mov	r18, r20
  a8:	1b 2e       	mov	r1, r27
  aa:	0a 2e       	mov	r0, r26
  ac:	09 95       	icall
  ae:	21 31       	cpi	r18, 0x11	; 17

000000b0 <loop10>:
  b0:	f9 f7       	brne	.-2      	; 0xb0 <loop10>
  b2:	1f 90       	pop	r1
  b4:	0f 90       	pop	r0
}
  b6:	df 90       	pop	r13
  b8:	cf 90       	pop	r12
  ba:	bf 90       	pop	r11
  bc:	08 95       	ret

000000be <temp_do_spm>:
void new_do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, NEW_SPM_ADDRESS >> 1);
}
#endif

void temp_do_spm(const uint32_t flash_byteaddress, const uint8_t spmcrval, const uint16_t dataword) {
  be:	bf 92       	push	r11
  c0:	cf 92       	push	r12
  c2:	df 92       	push	r13
  c4:	d9 01       	movw	r26, r18
    __do_spm_Ex(flash_byteaddress, spmcrval, dataword, TEMP_SPM_ADDRESS >> 1);
  c6:	e4 e3       	ldi	r30, 0x34	; 52
  c8:	ff e3       	ldi	r31, 0x3F	; 63
  ca:	0f 92       	push	r0
  cc:	1f 92       	push	r1
  ce:	d7 2e       	mov	r13, r23
  d0:	c6 2e       	mov	r12, r22
  d2:	b8 2e       	mov	r11, r24
  d4:	24 2f       	mov	r18, r20
  d6:	1b 2e       	mov	r1, r27
  d8:	0a 2e       	mov	r0, r26
  da:	09 95       	icall
  dc:	21 31       	cpi	r18, 0x11	; 17

000000de <loop27>:
  de:	f9 f7       	brne	.-2      	; 0xde <loop27>
  e0:	1f 90       	pop	r1
  e2:	0f 90       	pop	r0
}
  e4:	df 90       	pop	r13
  e6:	cf 90       	pop	r12
  e8:	bf 90       	pop	r11
  ea:	08 95       	ret

000000ec <mypgm_readpage>:
  
  return result;
}
#else
// replace it somehow with "memcpy_PF" in order to save some ops...
size_t mypgm_readpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize) {
  ec:	cf 93       	push	r28
  ee:	df 93       	push	r29
  f0:	fa 01       	movw	r30, r20
  f2:	e9 01       	movw	r28, r18
  size_t	result		= (bufferbytesize < SPM_PAGESIZE)?bufferbytesize:SPM_PAGESIZE;
  f4:	21 38       	cpi	r18, 0x81	; 129
  f6:	31 05       	cpc	r19, r1
  f8:	10 f0       	brcs	.+4      	; 0xfe <mypgm_readpage+0x12>
  fa:	c0 e8       	ldi	r28, 0x80	; 128
  fc:	d0 e0       	ldi	r29, 0x00	; 0
  mypgm_addr_t	pageaddr	= byteaddress - (byteaddress % SPM_PAGESIZE);
  fe:	ab 01       	movw	r20, r22
 100:	bc 01       	movw	r22, r24
 102:	40 78       	andi	r20, 0x80	; 128
  
  mymemcpy_PF((void*)buffer, (uint_farptr_t)pageaddr, result);
 104:	9e 01       	movw	r18, r28
 106:	cf 01       	movw	r24, r30
 108:	e1 d4       	rcall	.+2498   	; 0xacc <memcpy_PF>
 10a:	ce 01       	movw	r24, r28
  
  return result;
}
 10c:	df 91       	pop	r29
 10e:	cf 91       	pop	r28
 110:	08 95       	ret

00000112 <mypgm_WRITEpage>:
#endif

#ifdef CONFIG_UPDATER_REDUCEWRITES
size_t mypgm_WRITEpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize, mypgm_spminterface spmfunc) {
 112:	2f 92       	push	r2
 114:	3f 92       	push	r3
 116:	4f 92       	push	r4
 118:	5f 92       	push	r5
 11a:	6f 92       	push	r6
 11c:	7f 92       	push	r7
 11e:	8f 92       	push	r8
 120:	9f 92       	push	r9
 122:	af 92       	push	r10
 124:	bf 92       	push	r11
 126:	cf 92       	push	r12
 128:	df 92       	push	r13
 12a:	ef 92       	push	r14
 12c:	ff 92       	push	r15
 12e:	0f 93       	push	r16
 130:	1f 93       	push	r17
 132:	cf 93       	push	r28
 134:	df 93       	push	r29
 136:	4a 01       	movw	r8, r20
  size_t	result		= (bufferbytesize < SPM_PAGESIZE)?bufferbytesize:SPM_PAGESIZE;
 138:	e9 01       	movw	r28, r18
 13a:	21 38       	cpi	r18, 0x81	; 129
 13c:	31 05       	cpc	r19, r1
 13e:	10 f0       	brcs	.+4      	; 0x144 <mypgm_WRITEpage+0x32>
 140:	c0 e8       	ldi	r28, 0x80	; 128
 142:	d0 e0       	ldi	r29, 0x00	; 0
  size_t	pagesize	= result >> 1;
 144:	1e 01       	movw	r2, r28
 146:	36 94       	lsr	r3
 148:	27 94       	ror	r2
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
 14a:	6b 01       	movw	r12, r22
 14c:	7c 01       	movw	r14, r24
 14e:	20 e8       	ldi	r18, 0x80	; 128
 150:	c2 22       	and	r12, r18
  uint8_t	changed=0, needs_erase=0;
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 152:	d4 01       	movw	r26, r8
 154:	80 e0       	ldi	r24, 0x00	; 0
 156:	90 e0       	ldi	r25, 0x00	; 0
  size_t	pagesize	= result >> 1;
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
  mypgm_addr_t	pageaddr	= pageaddr_bakup;
  
  uint8_t	changed=0, needs_erase=0;
 158:	60 e0       	ldi	r22, 0x00	; 0
 15a:	70 e0       	ldi	r23, 0x00	; 0
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 15c:	82 15       	cp	r24, r2
 15e:	93 05       	cpc	r25, r3
 160:	b9 f0       	breq	.+46     	; 0x190 <mypgm_WRITEpage+0x7e>
 162:	f6 01       	movw	r30, r12
 164:	e8 19       	sub	r30, r8
 166:	f9 09       	sbc	r31, r9
 168:	ea 0f       	add	r30, r26
 16a:	fb 1f       	adc	r31, r27
#if (FLASHEND > 65535)
    deeword=pgm_read_word_far(pageaddr);
#else
    deeword=pgm_read_word(pageaddr);
 16c:	25 91       	lpm	r18, Z+
 16e:	34 91       	lpm	r19, Z
#endif

    if (deeword != pagedata[i]) changed=1;
 170:	4d 91       	ld	r20, X+
 172:	5d 91       	ld	r21, X+
 174:	24 17       	cp	r18, r20
 176:	35 07       	cpc	r19, r21
 178:	09 f0       	breq	.+2      	; 0x17c <mypgm_WRITEpage+0x6a>
 17a:	71 e0       	ldi	r23, 0x01	; 1
     *  0 ? 1 ==> 0
     *  0 ? 0 ==> 1
     * 
     * ==> /(/x * y) ==> x + /y
     */
    deeword |= ~pagedata[i];
 17c:	40 95       	com	r20
 17e:	50 95       	com	r21
 180:	42 2b       	or	r20, r18
 182:	53 2b       	or	r21, r19
    if ((~deeword) != 0) needs_erase=1;
 184:	4f 3f       	cpi	r20, 0xFF	; 255
 186:	5f 4f       	sbci	r21, 0xFF	; 255
 188:	09 f0       	breq	.+2      	; 0x18c <mypgm_WRITEpage+0x7a>
 18a:	61 e0       	ldi	r22, 0x01	; 1
  uint8_t	changed=0, needs_erase=0;
  uint16_t	deeword;
  size_t	i;
  
  // just check, if page needs a rewrite or an erase...
  for (i=0;i<pagesize;i+=1) {
 18c:	01 96       	adiw	r24, 0x01	; 1
 18e:	e6 cf       	rjmp	.-52     	; 0x15c <mypgm_WRITEpage+0x4a>
    if ((~deeword) != 0) needs_erase=1;
      
    pageaddr+=2;
  }

  if (changed) {
 190:	77 23       	and	r23, r23
 192:	51 f1       	breq	.+84     	; 0x1e8 <mypgm_WRITEpage+0xd6>
    
    if (needs_erase) {
 194:	66 23       	and	r22, r22
 196:	39 f0       	breq	.+14     	; 0x1a6 <mypgm_WRITEpage+0x94>
      //do a page-erase, ATTANTION: flash only can be erased a limited number of times !
      spmfunc(pageaddr_bakup, updater_pageerasecode, 0);
 198:	20 e0       	ldi	r18, 0x00	; 0
 19a:	30 e0       	ldi	r19, 0x00	; 0
 19c:	43 e0       	ldi	r20, 0x03	; 3
 19e:	c7 01       	movw	r24, r14
 1a0:	b6 01       	movw	r22, r12
 1a2:	f8 01       	movw	r30, r16
 1a4:	09 95       	icall
  size_t	pagesize	= result >> 1;
  uint16_t	*pagedata	= (void*)buffer;
  mypgm_addr_t	pageaddr_bakup	= byteaddress - (byteaddress % SPM_PAGESIZE);
  mypgm_addr_t	pageaddr	= pageaddr_bakup;
  
  uint8_t	changed=0, needs_erase=0;
 1a6:	26 01       	movw	r4, r12
 1a8:	37 01       	movw	r6, r14
 1aa:	a1 2c       	mov	r10, r1
 1ac:	b1 2c       	mov	r11, r1
    
    // from now on, the page is assumed empty !! (hopefully our code is located somewhere else!)
    // now, fill the tempoary buffer
    // ATTANTION: see comment on "do_spm" !
    pageaddr	= pageaddr_bakup;
    for (i=0;i<pagesize;i+=1) {
 1ae:	a2 14       	cp	r10, r2
 1b0:	b3 04       	cpc	r11, r3
 1b2:	91 f0       	breq	.+36     	; 0x1d8 <mypgm_WRITEpage+0xc6>
      spmfunc(pageaddr, updater_pagefillcode, pagedata[i]);
 1b4:	f4 01       	movw	r30, r8
 1b6:	21 91       	ld	r18, Z+
 1b8:	31 91       	ld	r19, Z+
 1ba:	4f 01       	movw	r8, r30
 1bc:	41 e0       	ldi	r20, 0x01	; 1
 1be:	c3 01       	movw	r24, r6
 1c0:	b2 01       	movw	r22, r4
 1c2:	f8 01       	movw	r30, r16
 1c4:	09 95       	icall
      pageaddr+=2;
 1c6:	f2 e0       	ldi	r31, 0x02	; 2
 1c8:	4f 0e       	add	r4, r31
 1ca:	51 1c       	adc	r5, r1
 1cc:	61 1c       	adc	r6, r1
 1ce:	71 1c       	adc	r7, r1
    
    // from now on, the page is assumed empty !! (hopefully our code is located somewhere else!)
    // now, fill the tempoary buffer
    // ATTANTION: see comment on "do_spm" !
    pageaddr	= pageaddr_bakup;
    for (i=0;i<pagesize;i+=1) {
 1d0:	2f ef       	ldi	r18, 0xFF	; 255
 1d2:	a2 1a       	sub	r10, r18
 1d4:	b2 0a       	sbc	r11, r18
 1d6:	eb cf       	rjmp	.-42     	; 0x1ae <mypgm_WRITEpage+0x9c>
      spmfunc(pageaddr, updater_pagefillcode, pagedata[i]);
      pageaddr+=2;
    }
    
    // so, now finally write the page to the FLASH
    spmfunc(pageaddr_bakup, updater_pagewritecode, 0);
 1d8:	20 e0       	ldi	r18, 0x00	; 0
 1da:	30 e0       	ldi	r19, 0x00	; 0
 1dc:	45 e0       	ldi	r20, 0x05	; 5
 1de:	c7 01       	movw	r24, r14
 1e0:	b6 01       	movw	r22, r12
 1e2:	f8 01       	movw	r30, r16
 1e4:	09 95       	icall
 1e6:	02 c0       	rjmp	.+4      	; 0x1ec <mypgm_WRITEpage+0xda>
  } else {
    // no change - no write...
    result = 0;
 1e8:	c0 e0       	ldi	r28, 0x00	; 0
 1ea:	d0 e0       	ldi	r29, 0x00	; 0
  }
  
  
  return result;
}
 1ec:	ce 01       	movw	r24, r28
 1ee:	df 91       	pop	r29
 1f0:	cf 91       	pop	r28
 1f2:	1f 91       	pop	r17
 1f4:	0f 91       	pop	r16
 1f6:	ff 90       	pop	r15
 1f8:	ef 90       	pop	r14
 1fa:	df 90       	pop	r13
 1fc:	cf 90       	pop	r12
 1fe:	bf 90       	pop	r11
 200:	af 90       	pop	r10
 202:	9f 90       	pop	r9
 204:	8f 90       	pop	r8
 206:	7f 90       	pop	r7
 208:	6f 90       	pop	r6
 20a:	5f 90       	pop	r5
 20c:	4f 90       	pop	r4
 20e:	3f 90       	pop	r3
 210:	2f 90       	pop	r2
 212:	08 95       	ret

00000214 <usbasploader>:
 214:	6b c0       	rjmp	.+214    	; 0x2ec <usbasploader+0xd8>
 216:	00 00       	nop
 218:	aa c0       	rjmp	.+340    	; 0x36e <usbasploader+0x15a>
 21a:	00 00       	nop
 21c:	8e c0       	rjmp	.+284    	; 0x33a <usbasploader+0x126>
 21e:	00 00       	nop
 220:	8c c0       	rjmp	.+280    	; 0x33a <usbasploader+0x126>
 222:	00 00       	nop
 224:	8a c0       	rjmp	.+276    	; 0x33a <usbasploader+0x126>
 226:	00 00       	nop
 228:	88 c0       	rjmp	.+272    	; 0x33a <usbasploader+0x126>
 22a:	00 00       	nop
 22c:	86 c0       	rjmp	.+268    	; 0x33a <usbasploader+0x126>
 22e:	00 00       	nop
 230:	84 c0       	rjmp	.+264    	; 0x33a <usbasploader+0x126>
 232:	00 00       	nop
 234:	82 c0       	rjmp	.+260    	; 0x33a <usbasploader+0x126>
 236:	00 00       	nop
 238:	80 c0       	rjmp	.+256    	; 0x33a <usbasploader+0x126>
 23a:	00 00       	nop
 23c:	7e c0       	rjmp	.+252    	; 0x33a <usbasploader+0x126>
 23e:	00 00       	nop
 240:	7c c0       	rjmp	.+248    	; 0x33a <usbasploader+0x126>
 242:	00 00       	nop
 244:	7a c0       	rjmp	.+244    	; 0x33a <usbasploader+0x126>
 246:	00 00       	nop
 248:	78 c0       	rjmp	.+240    	; 0x33a <usbasploader+0x126>
 24a:	00 00       	nop
 24c:	76 c0       	rjmp	.+236    	; 0x33a <usbasploader+0x126>
 24e:	00 00       	nop
 250:	74 c0       	rjmp	.+232    	; 0x33a <usbasploader+0x126>
 252:	00 00       	nop
 254:	72 c0       	rjmp	.+228    	; 0x33a <usbasploader+0x126>
 256:	00 00       	nop
 258:	70 c0       	rjmp	.+224    	; 0x33a <usbasploader+0x126>
 25a:	00 00       	nop
 25c:	6e c0       	rjmp	.+220    	; 0x33a <usbasploader+0x126>
 25e:	00 00       	nop
 260:	6c c0       	rjmp	.+216    	; 0x33a <usbasploader+0x126>
 262:	00 00       	nop
 264:	6a c0       	rjmp	.+212    	; 0x33a <usbasploader+0x126>
 266:	00 00       	nop
 268:	68 c0       	rjmp	.+208    	; 0x33a <usbasploader+0x126>
 26a:	00 00       	nop
 26c:	66 c0       	rjmp	.+204    	; 0x33a <usbasploader+0x126>
 26e:	00 00       	nop
 270:	64 c0       	rjmp	.+200    	; 0x33a <usbasploader+0x126>
 272:	00 00       	nop
 274:	62 c0       	rjmp	.+196    	; 0x33a <usbasploader+0x126>
 276:	00 00       	nop
 278:	60 c0       	rjmp	.+192    	; 0x33a <usbasploader+0x126>
 27a:	00 00       	nop
 27c:	ec 2d       	mov	r30, r12
 27e:	fd 2d       	mov	r31, r13
 280:	b7 b6       	in	r11, 0x37	; 55
 282:	b0 fc       	sbrc	r11, 0
 284:	fd cf       	rjmp	.-6      	; 0x280 <usbasploader+0x6c>
 286:	27 bf       	out	0x37, r18	; 55
 288:	e8 95       	spm
 28a:	b7 b6       	in	r11, 0x37	; 55
 28c:	b0 fc       	sbrc	r11, 0
 28e:	fd cf       	rjmp	.-6      	; 0x28a <usbasploader+0x76>
 290:	21 e1       	ldi	r18, 0x11	; 17
 292:	b7 b6       	in	r11, 0x37	; 55
 294:	b6 fc       	sbrc	r11, 6
 296:	f4 cf       	rjmp	.-24     	; 0x280 <usbasploader+0x6c>
 298:	08 95       	ret
 29a:	09 02       	muls	r16, r25
 29c:	12 00       	.word	0x0012	; ????
 29e:	01 01       	movw	r0, r2
 2a0:	00 80       	ld	r0, Z
 2a2:	32 09       	sbc	r19, r2
 2a4:	04 00       	.word	0x0004	; ????
 2a6:	00 00       	nop
 2a8:	00 00       	nop
 2aa:	00 00       	nop
 2ac:	12 01       	movw	r2, r4
 2ae:	10 01       	movw	r2, r0
 2b0:	ff 00       	.word	0x00ff	; ????
 2b2:	00 08       	sbc	r0, r0
 2b4:	c0 16       	cp	r12, r16
 2b6:	dc 05       	cpc	r29, r12
 2b8:	02 01       	movw	r0, r4
 2ba:	01 02       	muls	r16, r17
 2bc:	00 01       	movw	r0, r0
 2be:	0e 03       	fmul	r16, r22
 2c0:	55 00       	.word	0x0055	; ????
 2c2:	53 00       	.word	0x0053	; ????
 2c4:	42 00       	.word	0x0042	; ????
 2c6:	61 00       	.word	0x0061	; ????
 2c8:	73 00       	.word	0x0073	; ????
 2ca:	70 00       	.word	0x0070	; ????
 2cc:	1c 03       	fmul	r17, r20
 2ce:	77 00       	.word	0x0077	; ????
 2d0:	77 00       	.word	0x0077	; ????
 2d2:	77 00       	.word	0x0077	; ????
 2d4:	2e 00       	.word	0x002e	; ????
 2d6:	66 00       	.word	0x0066	; ????
 2d8:	69 00       	.word	0x0069	; ????
 2da:	73 00       	.word	0x0073	; ????
 2dc:	63 00       	.word	0x0063	; ????
 2de:	68 00       	.word	0x0068	; ????
 2e0:	6c 00       	.word	0x006c	; ????
 2e2:	2e 00       	.word	0x002e	; ????
 2e4:	64 00       	.word	0x0064	; ????
 2e6:	65 00       	.word	0x0065	; ????
 2e8:	04 03       	mulsu	r16, r20
 2ea:	09 04       	cpc	r0, r9
 2ec:	11 24       	eor	r1, r1
 2ee:	1f be       	out	0x3f, r1	; 63
 2f0:	cf ef       	ldi	r28, 0xFF	; 255
 2f2:	d8 e0       	ldi	r29, 0x08	; 8
 2f4:	de bf       	out	0x3e, r29	; 62
 2f6:	cd bf       	out	0x3d, r28	; 61
 2f8:	24 b7       	in	r18, 0x34	; 52
 2fa:	d8 e0       	ldi	r29, 0x08	; 8
 2fc:	ce ef       	ldi	r28, 0xFE	; 254
 2fe:	39 91       	ld	r19, Y+
 300:	38 33       	cpi	r19, 0x38	; 56
 302:	39 91       	ld	r19, Y+
 304:	09 f0       	breq	.+2      	; 0x308 <usbasploader+0xf4>
 306:	3f ef       	ldi	r19, 0xFF	; 255
 308:	30 93 3f 01 	sts	0x013F, r19
 30c:	20 93 3e 01 	sts	0x013E, r18
 310:	11 e0       	ldi	r17, 0x01	; 1
 312:	a0 e0       	ldi	r26, 0x00	; 0
 314:	b1 e0       	ldi	r27, 0x01	; 1
 316:	e2 eb       	ldi	r30, 0xB2	; 178
 318:	f8 e7       	ldi	r31, 0x78	; 120
 31a:	02 c0       	rjmp	.+4      	; 0x320 <usbasploader+0x10c>
 31c:	05 90       	lpm	r0, Z+
 31e:	0d 92       	st	X+, r0
 320:	a6 30       	cpi	r26, 0x06	; 6
 322:	b1 07       	cpc	r27, r17
 324:	d9 f7       	brne	.-10     	; 0x31c <usbasploader+0x108>
 326:	11 e0       	ldi	r17, 0x01	; 1
 328:	a6 e0       	ldi	r26, 0x06	; 6
 32a:	b1 e0       	ldi	r27, 0x01	; 1
 32c:	01 c0       	rjmp	.+2      	; 0x330 <usbasploader+0x11c>
 32e:	1d 92       	st	X+, r1
 330:	ae 33       	cpi	r26, 0x3E	; 62
 332:	b1 07       	cpc	r27, r17
 334:	e1 f7       	brne	.-8      	; 0x32e <usbasploader+0x11a>
 336:	77 d1       	rcall	.+750    	; 0x626 <usbasploader+0x412>
 338:	c4 c3       	rjmp	.+1928   	; 0xac2 <__stack+0x1c3>
 33a:	6c cf       	rjmp	.-296    	; 0x214 <usbasploader>
 33c:	a8 2f       	mov	r26, r24
 33e:	b9 2f       	mov	r27, r25
 340:	80 e0       	ldi	r24, 0x00	; 0
 342:	90 e0       	ldi	r25, 0x00	; 0
 344:	41 e0       	ldi	r20, 0x01	; 1
 346:	50 ea       	ldi	r21, 0xA0	; 160
 348:	60 95       	com	r22
 34a:	30 e0       	ldi	r19, 0x00	; 0
 34c:	09 c0       	rjmp	.+18     	; 0x360 <usbasploader+0x14c>
 34e:	2d 91       	ld	r18, X+
 350:	82 27       	eor	r24, r18
 352:	97 95       	ror	r25
 354:	87 95       	ror	r24
 356:	10 f0       	brcs	.+4      	; 0x35c <usbasploader+0x148>
 358:	84 27       	eor	r24, r20
 35a:	95 27       	eor	r25, r21
 35c:	30 5e       	subi	r19, 0xE0	; 224
 35e:	c8 f3       	brcs	.-14     	; 0x352 <usbasploader+0x13e>
 360:	6f 5f       	subi	r22, 0xFF	; 255
 362:	a8 f3       	brcs	.-22     	; 0x34e <usbasploader+0x13a>
 364:	08 95       	ret
 366:	ea df       	rcall	.-44     	; 0x33c <usbasploader+0x128>
 368:	8d 93       	st	X+, r24
 36a:	9d 93       	st	X+, r25
 36c:	08 95       	ret
 36e:	cf 93       	push	r28
 370:	cf b7       	in	r28, 0x3f	; 63
 372:	cf 93       	push	r28
 374:	df 93       	push	r29
 376:	c3 95       	inc	r28
 378:	4c 9b       	sbis	0x09, 4	; 9
 37a:	e9 f7       	brne	.-6      	; 0x376 <usbasploader+0x162>
 37c:	4c 9b       	sbis	0x09, 4	; 9
 37e:	0b c0       	rjmp	.+22     	; 0x396 <usbasploader+0x182>
 380:	4c 9b       	sbis	0x09, 4	; 9
 382:	09 c0       	rjmp	.+18     	; 0x396 <usbasploader+0x182>
 384:	4c 9b       	sbis	0x09, 4	; 9
 386:	07 c0       	rjmp	.+14     	; 0x396 <usbasploader+0x182>
 388:	4c 9b       	sbis	0x09, 4	; 9
 38a:	05 c0       	rjmp	.+10     	; 0x396 <usbasploader+0x182>
 38c:	4c 9b       	sbis	0x09, 4	; 9
 38e:	03 c0       	rjmp	.+6      	; 0x396 <usbasploader+0x182>
 390:	4c 9b       	sbis	0x09, 4	; 9
 392:	01 c0       	rjmp	.+2      	; 0x396 <usbasploader+0x182>
 394:	89 c0       	rjmp	.+274    	; 0x4a8 <usbasploader+0x294>
 396:	6f 93       	push	r22
 398:	c0 91 21 01 	lds	r28, 0x0121
 39c:	dd 27       	eor	r29, r29
 39e:	c8 5d       	subi	r28, 0xD8	; 216
 3a0:	de 4f       	sbci	r29, 0xFE	; 254
 3a2:	2f 93       	push	r18
 3a4:	65 e5       	ldi	r22, 0x55	; 85
 3a6:	4c 9b       	sbis	0x09, 4	; 9
 3a8:	03 c0       	rjmp	.+6      	; 0x3b0 <usbasploader+0x19c>
 3aa:	2f 91       	pop	r18
 3ac:	6f 91       	pop	r22
 3ae:	e6 cf       	rjmp	.-52     	; 0x37c <usbasploader+0x168>
 3b0:	0f 93       	push	r16
 3b2:	1f 93       	push	r17
 3b4:	4f 93       	push	r20
 3b6:	20 e0       	ldi	r18, 0x00	; 0
 3b8:	40 e1       	ldi	r20, 0x10	; 16
 3ba:	5f 93       	push	r21
 3bc:	09 b1       	in	r16, 0x09	; 9
 3be:	04 71       	andi	r16, 0x14	; 20
 3c0:	04 fb       	bst	r16, 4
 3c2:	27 f9       	bld	r18, 7
 3c4:	3f 93       	push	r19
 3c6:	50 e0       	ldi	r21, 0x00	; 0
 3c8:	3b e0       	ldi	r19, 0x0B	; 11
 3ca:	39 c0       	rjmp	.+114    	; 0x43e <usbasploader+0x22a>
 3cc:	14 71       	andi	r17, 0x14	; 20
 3ce:	40 64       	ori	r20, 0x40	; 64
 3d0:	2f 77       	andi	r18, 0x7F	; 127
 3d2:	01 2f       	mov	r16, r17
 3d4:	5f 5f       	subi	r21, 0xFF	; 255
 3d6:	1e c0       	rjmp	.+60     	; 0x414 <usbasploader+0x200>
 3d8:	40 68       	ori	r20, 0x80	; 128
 3da:	19 b1       	in	r17, 0x09	; 9
 3dc:	14 71       	andi	r17, 0x14	; 20
 3de:	2f 77       	andi	r18, 0x7F	; 127
 3e0:	52 50       	subi	r21, 0x02	; 2
 3e2:	1f c0       	rjmp	.+62     	; 0x422 <usbasploader+0x20e>
 3e4:	40 64       	ori	r20, 0x40	; 64
 3e6:	09 b1       	in	r16, 0x09	; 9
 3e8:	2f 77       	andi	r18, 0x7F	; 127
 3ea:	04 71       	andi	r16, 0x14	; 20
 3ec:	d1 f1       	breq	.+116    	; 0x462 <usbasploader+0x24e>
 3ee:	5f 5f       	subi	r21, 0xFF	; 255
 3f0:	00 c0       	rjmp	.+0      	; 0x3f2 <usbasploader+0x1de>
 3f2:	23 c0       	rjmp	.+70     	; 0x43a <usbasploader+0x226>
 3f4:	40 62       	ori	r20, 0x20	; 32
 3f6:	19 b1       	in	r17, 0x09	; 9
 3f8:	2f 77       	andi	r18, 0x7F	; 127
 3fa:	14 71       	andi	r17, 0x14	; 20
 3fc:	91 f1       	breq	.+100    	; 0x462 <usbasploader+0x24e>
 3fe:	5f 5f       	subi	r21, 0xFF	; 255
 400:	00 c0       	rjmp	.+0      	; 0x402 <usbasploader+0x1ee>
 402:	25 c0       	rjmp	.+74     	; 0x44e <usbasploader+0x23a>
 404:	04 71       	andi	r16, 0x14	; 20
 406:	10 27       	eor	r17, r16
 408:	51 50       	subi	r21, 0x01	; 1
 40a:	12 f4       	brpl	.+4      	; 0x410 <usbasploader+0x1fc>
 40c:	5d 5f       	subi	r21, 0xFD	; 253
 40e:	00 00       	nop
 410:	11 50       	subi	r17, 0x01	; 1
 412:	27 95       	ror	r18
 414:	2c 3f       	cpi	r18, 0xFC	; 252
 416:	19 b1       	in	r17, 0x09	; 9
 418:	c8 f6       	brcc	.-78     	; 0x3cc <usbasploader+0x1b8>
 41a:	14 71       	andi	r17, 0x14	; 20
 41c:	01 27       	eor	r16, r17
 41e:	01 50       	subi	r16, 0x01	; 1
 420:	27 95       	ror	r18
 422:	2c 3f       	cpi	r18, 0xFC	; 252
 424:	c8 f6       	brcc	.-78     	; 0x3d8 <usbasploader+0x1c4>
 426:	42 27       	eor	r20, r18
 428:	49 93       	st	Y+, r20
 42a:	09 b1       	in	r16, 0x09	; 9
 42c:	04 71       	andi	r16, 0x14	; 20
 42e:	10 27       	eor	r17, r16
 430:	4f 73       	andi	r20, 0x3F	; 63
 432:	11 50       	subi	r17, 0x01	; 1
 434:	27 95       	ror	r18
 436:	2c 3f       	cpi	r18, 0xFC	; 252
 438:	a8 f6       	brcc	.-86     	; 0x3e4 <usbasploader+0x1d0>
 43a:	46 95       	lsr	r20
 43c:	46 95       	lsr	r20
 43e:	19 b1       	in	r17, 0x09	; 9
 440:	14 71       	andi	r17, 0x14	; 20
 442:	79 f0       	breq	.+30     	; 0x462 <usbasploader+0x24e>
 444:	01 27       	eor	r16, r17
 446:	01 50       	subi	r16, 0x01	; 1
 448:	27 95       	ror	r18
 44a:	2c 3f       	cpi	r18, 0xFC	; 252
 44c:	98 f6       	brcc	.-90     	; 0x3f4 <usbasploader+0x1e0>
 44e:	6b 5a       	subi	r22, 0xAB	; 171
 450:	60 f3       	brcs	.-40     	; 0x42a <usbasploader+0x216>
 452:	31 50       	subi	r19, 0x01	; 1
 454:	09 b1       	in	r16, 0x09	; 9
 456:	b0 f6       	brcc	.-84     	; 0x404 <usbasploader+0x1f0>
 458:	00 c0       	rjmp	.+0      	; 0x45a <usbasploader+0x246>
 45a:	11 e0       	ldi	r17, 0x01	; 1
 45c:	1c bb       	out	0x1c, r17	; 28
 45e:	00 27       	eor	r16, r16
 460:	17 c0       	rjmp	.+46     	; 0x490 <usbasploader+0x27c>
 462:	3b 50       	subi	r19, 0x0B	; 11
 464:	31 95       	neg	r19
 466:	c3 1b       	sub	r28, r19
 468:	d0 40       	sbci	r29, 0x00	; 0
 46a:	11 e0       	ldi	r17, 0x01	; 1
 46c:	1c bb       	out	0x1c, r17	; 28
 46e:	08 81       	ld	r16, Y
 470:	03 3c       	cpi	r16, 0xC3	; 195
 472:	f9 f0       	breq	.+62     	; 0x4b2 <usbasploader+0x29e>
 474:	0b 34       	cpi	r16, 0x4B	; 75
 476:	e9 f0       	breq	.+58     	; 0x4b2 <usbasploader+0x29e>
 478:	20 91 1f 01 	lds	r18, 0x011F
 47c:	19 81       	ldd	r17, Y+1	; 0x01
 47e:	11 0f       	add	r17, r17
 480:	12 13       	cpse	r17, r18
 482:	ed cf       	rjmp	.-38     	; 0x45e <usbasploader+0x24a>
 484:	09 36       	cpi	r16, 0x69	; 105
 486:	51 f1       	breq	.+84     	; 0x4dc <usbasploader+0x2c8>
 488:	0d 32       	cpi	r16, 0x2D	; 45
 48a:	11 f0       	breq	.+4      	; 0x490 <usbasploader+0x27c>
 48c:	01 3e       	cpi	r16, 0xE1	; 225
 48e:	39 f7       	brne	.-50     	; 0x45e <usbasploader+0x24a>
 490:	00 93 26 01 	sts	0x0126, r16
 494:	3f 91       	pop	r19
 496:	5f 91       	pop	r21
 498:	4f 91       	pop	r20
 49a:	1f 91       	pop	r17
 49c:	0f 91       	pop	r16
 49e:	2f 91       	pop	r18
 4a0:	6f 91       	pop	r22
 4a2:	cc b3       	in	r28, 0x1c	; 28
 4a4:	c0 fd       	sbrc	r28, 0
 4a6:	67 cf       	rjmp	.-306    	; 0x376 <usbasploader+0x162>
 4a8:	df 91       	pop	r29
 4aa:	cf 91       	pop	r28
 4ac:	cf bf       	out	0x3f, r28	; 63
 4ae:	cf 91       	pop	r28
 4b0:	18 95       	reti
 4b2:	20 91 26 01 	lds	r18, 0x0126
 4b6:	22 23       	and	r18, r18
 4b8:	69 f3       	breq	.-38     	; 0x494 <usbasploader+0x280>
 4ba:	10 91 24 01 	lds	r17, 0x0124
 4be:	11 23       	and	r17, r17
 4c0:	39 f5       	brne	.+78     	; 0x510 <usbasploader+0x2fc>
 4c2:	34 30       	cpi	r19, 0x04	; 4
 4c4:	3a f1       	brmi	.+78     	; 0x514 <usbasploader+0x300>
 4c6:	30 93 24 01 	sts	0x0124, r19
 4ca:	20 93 20 01 	sts	0x0120, r18
 4ce:	10 91 21 01 	lds	r17, 0x0121
 4d2:	3b e0       	ldi	r19, 0x0B	; 11
 4d4:	31 1b       	sub	r19, r17
 4d6:	30 93 21 01 	sts	0x0121, r19
 4da:	1c c0       	rjmp	.+56     	; 0x514 <usbasploader+0x300>
 4dc:	00 91 24 01 	lds	r16, 0x0124
 4e0:	01 30       	cpi	r16, 0x01	; 1
 4e2:	b4 f4       	brge	.+44     	; 0x510 <usbasploader+0x2fc>
 4e4:	0a e5       	ldi	r16, 0x5A	; 90
 4e6:	30 91 01 01 	lds	r19, 0x0101
 4ea:	34 fd       	sbrc	r19, 4
 4ec:	14 c0       	rjmp	.+40     	; 0x516 <usbasploader+0x302>
 4ee:	00 93 01 01 	sts	0x0101, r16
 4f2:	c4 e1       	ldi	r28, 0x14	; 20
 4f4:	d1 e0       	ldi	r29, 0x01	; 1
 4f6:	13 c0       	rjmp	.+38     	; 0x51e <usbasploader+0x30a>
 4f8:	05 27       	eor	r16, r21
 4fa:	10 e0       	ldi	r17, 0x00	; 0
 4fc:	00 c0       	rjmp	.+0      	; 0x4fe <usbasploader+0x2ea>
 4fe:	00 00       	nop
 500:	0b b9       	out	0x0b, r16	; 11
 502:	1a c0       	rjmp	.+52     	; 0x538 <usbasploader+0x324>
 504:	05 27       	eor	r16, r21
 506:	10 e0       	ldi	r17, 0x00	; 0
 508:	22 1f       	adc	r18, r18
 50a:	1d c0       	rjmp	.+58     	; 0x546 <usbasploader+0x332>
 50c:	10 e0       	ldi	r17, 0x00	; 0
 50e:	21 c0       	rjmp	.+66     	; 0x552 <usbasploader+0x33e>
 510:	4a e5       	ldi	r20, 0x5A	; 90
 512:	02 c0       	rjmp	.+4      	; 0x518 <usbasploader+0x304>
 514:	32 ed       	ldi	r19, 0xD2	; 210
 516:	43 2f       	mov	r20, r19
 518:	c4 e1       	ldi	r28, 0x14	; 20
 51a:	d0 e0       	ldi	r29, 0x00	; 0
 51c:	32 e0       	ldi	r19, 0x02	; 2
 51e:	1a b1       	in	r17, 0x0a	; 10
 520:	14 61       	ori	r17, 0x14	; 20
 522:	5c 9a       	sbi	0x0b, 4	; 11
 524:	0b b1       	in	r16, 0x0b	; 11
 526:	1a b9       	out	0x0a, r17	; 10
 528:	54 e1       	ldi	r21, 0x14	; 20
 52a:	20 e8       	ldi	r18, 0x80	; 128
 52c:	65 e3       	ldi	r22, 0x35	; 53
 52e:	20 ff       	sbrs	r18, 0
 530:	05 27       	eor	r16, r21
 532:	0b b9       	out	0x0b, r16	; 11
 534:	27 95       	ror	r18
 536:	17 95       	ror	r17
 538:	1c 3f       	cpi	r17, 0xFC	; 252
 53a:	f0 f6       	brcc	.-68     	; 0x4f8 <usbasploader+0x2e4>
 53c:	66 95       	lsr	r22
 53e:	b8 f7       	brcc	.-18     	; 0x52e <usbasploader+0x31a>
 540:	b1 f7       	brne	.-20     	; 0x52e <usbasploader+0x31a>
 542:	20 ff       	sbrs	r18, 0
 544:	05 27       	eor	r16, r21
 546:	0b b9       	out	0x0b, r16	; 11
 548:	27 95       	ror	r18
 54a:	17 95       	ror	r17
 54c:	1c 3f       	cpi	r17, 0xFC	; 252
 54e:	d0 f6       	brcc	.-76     	; 0x504 <usbasploader+0x2f0>
 550:	27 95       	ror	r18
 552:	17 95       	ror	r17
 554:	17 ff       	sbrs	r17, 7
 556:	05 27       	eor	r16, r21
 558:	00 00       	nop
 55a:	1c 3f       	cpi	r17, 0xFC	; 252
 55c:	0b b9       	out	0x0b, r16	; 11
 55e:	b0 f6       	brcc	.-84     	; 0x50c <usbasploader+0x2f8>
 560:	29 91       	ld	r18, Y+
 562:	3a 95       	dec	r19
 564:	19 f7       	brne	.-58     	; 0x52c <usbasploader+0x318>
 566:	0b 7e       	andi	r16, 0xEB	; 235
 568:	10 91 25 01 	lds	r17, 0x0125
 56c:	11 0f       	add	r17, r17
 56e:	c6 51       	subi	r28, 0x16	; 22
 570:	d0 40       	sbci	r29, 0x00	; 0
 572:	0b b9       	out	0x0b, r16	; 11
 574:	11 f0       	breq	.+4      	; 0x57a <usbasploader+0x366>
 576:	10 93 1f 01 	sts	0x011F, r17
 57a:	11 e0       	ldi	r17, 0x01	; 1
 57c:	1c bb       	out	0x1c, r17	; 28
 57e:	00 61       	ori	r16, 0x10	; 16
 580:	1a b1       	in	r17, 0x0a	; 10
 582:	1b 7e       	andi	r17, 0xEB	; 235
 584:	40 2f       	mov	r20, r16
 586:	4b 7e       	andi	r20, 0xEB	; 235
 588:	54 e0       	ldi	r21, 0x04	; 4
 58a:	5a 95       	dec	r21
 58c:	f1 f7       	brne	.-4      	; 0x58a <usbasploader+0x376>
 58e:	0b b9       	out	0x0b, r16	; 11
 590:	1a b9       	out	0x0a, r17	; 10
 592:	4b b9       	out	0x0b, r20	; 11
 594:	7f cf       	rjmp	.-258    	; 0x494 <usbasploader+0x280>
 596:	fc 01       	movw	r30, r24
 598:	33 81       	ldd	r19, Z+3	; 0x03
 59a:	93 2f       	mov	r25, r19
 59c:	44 81       	ldd	r20, Z+4	; 0x04
 59e:	84 2f       	mov	r24, r20
 5a0:	22 81       	ldd	r18, Z+2	; 0x02
 5a2:	20 33       	cpi	r18, 0x30	; 48
 5a4:	39 f4       	brne	.+14     	; 0x5b4 <usbasploader+0x3a0>
 5a6:	43 70       	andi	r20, 0x03	; 3
 5a8:	e4 2f       	mov	r30, r20
 5aa:	f0 e0       	ldi	r31, 0x00	; 0
 5ac:	ee 5f       	subi	r30, 0xFE	; 254
 5ae:	fe 4f       	sbci	r31, 0xFE	; 254
 5b0:	80 81       	ld	r24, Z
 5b2:	08 95       	ret
 5b4:	28 35       	cpi	r18, 0x58	; 88
 5b6:	29 f4       	brne	.+10     	; 0x5c2 <usbasploader+0x3ae>
 5b8:	31 11       	cpse	r19, r1
 5ba:	0e c0       	rjmp	.+28     	; 0x5d8 <usbasploader+0x3c4>
 5bc:	e1 e0       	ldi	r30, 0x01	; 1
 5be:	f0 e0       	ldi	r31, 0x00	; 0
 5c0:	06 c0       	rjmp	.+12     	; 0x5ce <usbasploader+0x3ba>
 5c2:	20 35       	cpi	r18, 0x50	; 80
 5c4:	99 f4       	brne	.+38     	; 0x5ec <usbasploader+0x3d8>
 5c6:	31 11       	cpse	r19, r1
 5c8:	0c c0       	rjmp	.+24     	; 0x5e2 <usbasploader+0x3ce>
 5ca:	e0 e0       	ldi	r30, 0x00	; 0
 5cc:	f0 e0       	ldi	r31, 0x00	; 0
 5ce:	89 e0       	ldi	r24, 0x09	; 9
 5d0:	80 93 57 00 	sts	0x0057, r24
 5d4:	84 91       	lpm	r24, Z
 5d6:	08 95       	ret
 5d8:	38 30       	cpi	r19, 0x08	; 8
 5da:	19 f5       	brne	.+70     	; 0x622 <usbasploader+0x40e>
 5dc:	e3 e0       	ldi	r30, 0x03	; 3
 5de:	f0 e0       	ldi	r31, 0x00	; 0
 5e0:	f6 cf       	rjmp	.-20     	; 0x5ce <usbasploader+0x3ba>
 5e2:	38 30       	cpi	r19, 0x08	; 8
 5e4:	f1 f4       	brne	.+60     	; 0x622 <usbasploader+0x40e>
 5e6:	e2 e0       	ldi	r30, 0x02	; 2
 5e8:	f0 e0       	ldi	r31, 0x00	; 0
 5ea:	f1 cf       	rjmp	.-30     	; 0x5ce <usbasploader+0x3ba>
 5ec:	20 32       	cpi	r18, 0x20	; 32
 5ee:	21 f4       	brne	.+8      	; 0x5f8 <usbasploader+0x3e4>
 5f0:	fc 01       	movw	r30, r24
 5f2:	ee 0f       	add	r30, r30
 5f4:	ff 1f       	adc	r31, r31
 5f6:	06 c0       	rjmp	.+12     	; 0x604 <usbasploader+0x3f0>
 5f8:	28 32       	cpi	r18, 0x28	; 40
 5fa:	31 f4       	brne	.+12     	; 0x608 <usbasploader+0x3f4>
 5fc:	fc 01       	movw	r30, r24
 5fe:	ee 0f       	add	r30, r30
 600:	ff 1f       	adc	r31, r31
 602:	31 96       	adiw	r30, 0x01	; 1
 604:	84 91       	lpm	r24, Z
 606:	08 95       	ret
 608:	20 3a       	cpi	r18, 0xA0	; 160
 60a:	09 f4       	brne	.+2      	; 0x60e <usbasploader+0x3fa>
 60c:	44 c2       	rjmp	.+1160   	; 0xa96 <__stack+0x197>
 60e:	20 3c       	cpi	r18, 0xC0	; 192
 610:	19 f4       	brne	.+6      	; 0x618 <usbasploader+0x404>
 612:	65 81       	ldd	r22, Z+5	; 0x05
 614:	48 d2       	rcall	.+1168   	; 0xaa6 <__stack+0x1a7>
 616:	05 c0       	rjmp	.+10     	; 0x622 <usbasploader+0x40e>
 618:	2f 3f       	cpi	r18, 0xFF	; 255
 61a:	19 f4       	brne	.+6      	; 0x622 <usbasploader+0x40e>
 61c:	81 ef       	ldi	r24, 0xF1	; 241
 61e:	80 93 11 01 	sts	0x0111, r24
 622:	80 e0       	ldi	r24, 0x00	; 0
 624:	08 95       	ret
 626:	80 e1       	ldi	r24, 0x10	; 16
 628:	80 93 12 01 	sts	0x0112, r24
 62c:	1a b8       	out	0x0a, r1	; 10
 62e:	80 e8       	ldi	r24, 0x80	; 128
 630:	8b b9       	out	0x0b, r24	; 11
 632:	81 e0       	ldi	r24, 0x01	; 1
 634:	85 bf       	out	0x35, r24	; 53
 636:	82 e0       	ldi	r24, 0x02	; 2
 638:	85 bf       	out	0x35, r24	; 53
 63a:	e0 e0       	ldi	r30, 0x00	; 0
 63c:	f1 e7       	ldi	r31, 0x71	; 113
 63e:	a8 95       	wdr
 640:	31 97       	sbiw	r30, 0x01	; 1
 642:	80 40       	sbci	r24, 0x00	; 0
 644:	e1 f7       	brne	.-8      	; 0x63e <usbasploader+0x42a>
 646:	4f 99       	sbic	0x09, 7	; 9
 648:	02 c0       	rjmp	.+4      	; 0x64e <usbasploader+0x43a>
 64a:	8c ef       	ldi	r24, 0xFC	; 252
 64c:	01 c0       	rjmp	.+2      	; 0x650 <usbasploader+0x43c>
 64e:	8e ef       	ldi	r24, 0xFE	; 254
 650:	80 93 11 01 	sts	0x0111, r24
 654:	14 be       	out	0x34, r1	; 52
 656:	88 e1       	ldi	r24, 0x18	; 24
 658:	0f b6       	in	r0, 0x3f	; 63
 65a:	f8 94       	cli
 65c:	80 93 60 00 	sts	0x0060, r24
 660:	10 92 60 00 	sts	0x0060, r1
 664:	0f be       	out	0x3f, r0	; 63
 666:	80 91 69 00 	lds	r24, 0x0069
 66a:	82 60       	ori	r24, 0x02	; 2
 66c:	80 93 69 00 	sts	0x0069, r24
 670:	e8 9a       	sbi	0x1d, 0	; 29
 672:	54 9a       	sbi	0x0a, 4	; 10
 674:	8c e0       	ldi	r24, 0x0C	; 12
 676:	e0 e0       	ldi	r30, 0x00	; 0
 678:	f5 e3       	ldi	r31, 0x35	; 53
 67a:	a8 95       	wdr
 67c:	31 97       	sbiw	r30, 0x01	; 1
 67e:	80 40       	sbci	r24, 0x00	; 0
 680:	e1 f7       	brne	.-8      	; 0x67a <usbasploader+0x466>
 682:	54 98       	cbi	0x0a, 4	; 10
 684:	78 94       	sei
 686:	80 91 11 01 	lds	r24, 0x0111
 68a:	8e 30       	cpi	r24, 0x0E	; 14
 68c:	11 f0       	breq	.+4      	; 0x692 <usbasploader+0x47e>
 68e:	80 e1       	ldi	r24, 0x10	; 16
 690:	0c c0       	rjmp	.+24     	; 0x6aa <usbasploader+0x496>
 692:	0f 5f       	subi	r16, 0xFF	; 255
 694:	1f 4f       	sbci	r17, 0xFF	; 255
 696:	01 15       	cp	r16, r1
 698:	11 05       	cpc	r17, r1
 69a:	79 f4       	brne	.+30     	; 0x6ba <usbasploader+0x4a6>
 69c:	80 91 12 01 	lds	r24, 0x0112
 6a0:	88 23       	and	r24, r24
 6a2:	31 f0       	breq	.+12     	; 0x6b0 <usbasploader+0x49c>
 6a4:	80 91 12 01 	lds	r24, 0x0112
 6a8:	81 50       	subi	r24, 0x01	; 1
 6aa:	80 93 12 01 	sts	0x0112, r24
 6ae:	05 c0       	rjmp	.+10     	; 0x6ba <usbasploader+0x4a6>
 6b0:	80 91 11 01 	lds	r24, 0x0111
 6b4:	81 7f       	andi	r24, 0xF1	; 241
 6b6:	80 93 11 01 	sts	0x0111, r24
 6ba:	80 91 24 01 	lds	r24, 0x0124
 6be:	83 50       	subi	r24, 0x03	; 3
 6c0:	87 fd       	sbrc	r24, 7
 6c2:	47 c1       	rjmp	.+654    	; 0x952 <__stack+0x53>
 6c4:	90 91 21 01 	lds	r25, 0x0121
 6c8:	cc e0       	ldi	r28, 0x0C	; 12
 6ca:	d0 e0       	ldi	r29, 0x00	; 0
 6cc:	c9 1b       	sub	r28, r25
 6ce:	d1 09       	sbc	r29, r1
 6d0:	c8 5d       	subi	r28, 0xD8	; 216
 6d2:	de 4f       	sbci	r29, 0xFE	; 254
 6d4:	90 91 20 01 	lds	r25, 0x0120
 6d8:	9d 32       	cpi	r25, 0x2D	; 45
 6da:	09 f0       	breq	.+2      	; 0x6de <usbasploader+0x4ca>
 6dc:	b9 c0       	rjmp	.+370    	; 0x850 <usbasploader+0x63c>
 6de:	88 30       	cpi	r24, 0x08	; 8
 6e0:	09 f0       	breq	.+2      	; 0x6e4 <usbasploader+0x4d0>
 6e2:	35 c1       	rjmp	.+618    	; 0x94e <__stack+0x4f>
 6e4:	83 ec       	ldi	r24, 0xC3	; 195
 6e6:	80 93 14 01 	sts	0x0114, r24
 6ea:	8a e5       	ldi	r24, 0x5A	; 90
 6ec:	80 93 01 01 	sts	0x0101, r24
 6f0:	10 92 13 01 	sts	0x0113, r1
 6f4:	48 81       	ld	r20, Y
 6f6:	84 2f       	mov	r24, r20
 6f8:	80 76       	andi	r24, 0x60	; 96
 6fa:	39 81       	ldd	r19, Y+1	; 0x01
 6fc:	88 23       	and	r24, r24
 6fe:	b9 f1       	breq	.+110    	; 0x76e <usbasploader+0x55a>
 700:	86 e0       	ldi	r24, 0x06	; 6
 702:	91 e0       	ldi	r25, 0x01	; 1
 704:	90 93 23 01 	sts	0x0123, r25
 708:	80 93 22 01 	sts	0x0122, r24
 70c:	33 30       	cpi	r19, 0x03	; 3
 70e:	31 f4       	brne	.+12     	; 0x71c <usbasploader+0x508>
 710:	ce 01       	movw	r24, r28
 712:	41 df       	rcall	.-382    	; 0x596 <usbasploader+0x382>
 714:	80 93 09 01 	sts	0x0109, r24
 718:	24 e0       	ldi	r18, 0x04	; 4
 71a:	90 c0       	rjmp	.+288    	; 0x83c <usbasploader+0x628>
 71c:	35 30       	cpi	r19, 0x05	; 5
 71e:	19 f1       	breq	.+70     	; 0x766 <usbasploader+0x552>
 720:	3a 30       	cpi	r19, 0x0A	; 10
 722:	09 f1       	breq	.+66     	; 0x766 <usbasploader+0x552>
 724:	8c ef       	ldi	r24, 0xFC	; 252
 726:	83 0f       	add	r24, r19
 728:	86 30       	cpi	r24, 0x06	; 6
 72a:	98 f4       	brcc	.+38     	; 0x752 <usbasploader+0x53e>
 72c:	8a 81       	ldd	r24, Y+2	; 0x02
 72e:	9b 81       	ldd	r25, Y+3	; 0x03
 730:	90 93 10 01 	sts	0x0110, r25
 734:	80 93 0f 01 	sts	0x010F, r24
 738:	39 30       	cpi	r19, 0x09	; 9
 73a:	b9 f0       	breq	.+46     	; 0x76a <usbasploader+0x556>
 73c:	8e 81       	ldd	r24, Y+6	; 0x06
 73e:	80 93 0e 01 	sts	0x010E, r24
 742:	8d 81       	ldd	r24, Y+5	; 0x05
 744:	82 70       	andi	r24, 0x02	; 2
 746:	80 93 0d 01 	sts	0x010D, r24
 74a:	30 93 0c 01 	sts	0x010C, r19
 74e:	2f ef       	ldi	r18, 0xFF	; 255
 750:	6f c0       	rjmp	.+222    	; 0x830 <usbasploader+0x61c>
 752:	80 91 11 01 	lds	r24, 0x0111
 756:	32 30       	cpi	r19, 0x02	; 2
 758:	11 f4       	brne	.+4      	; 0x75e <usbasploader+0x54a>
 75a:	8c 7f       	andi	r24, 0xFC	; 252
 75c:	01 c0       	rjmp	.+2      	; 0x760 <usbasploader+0x54c>
 75e:	81 60       	ori	r24, 0x01	; 1
 760:	80 93 11 01 	sts	0x0111, r24
 764:	02 c0       	rjmp	.+4      	; 0x76a <usbasploader+0x556>
 766:	21 e0       	ldi	r18, 0x01	; 1
 768:	69 c0       	rjmp	.+210    	; 0x83c <usbasploader+0x628>
 76a:	20 e0       	ldi	r18, 0x00	; 0
 76c:	67 c0       	rjmp	.+206    	; 0x83c <usbasploader+0x628>
 76e:	8a 81       	ldd	r24, Y+2	; 0x02
 770:	10 92 1d 01 	sts	0x011D, r1
 774:	31 11       	cpse	r19, r1
 776:	06 c0       	rjmp	.+12     	; 0x784 <usbasploader+0x570>
 778:	10 92 1e 01 	sts	0x011E, r1
 77c:	8d e1       	ldi	r24, 0x1D	; 29
 77e:	91 e0       	ldi	r25, 0x01	; 1
 780:	22 e0       	ldi	r18, 0x02	; 2
 782:	50 c0       	rjmp	.+160    	; 0x824 <usbasploader+0x610>
 784:	35 30       	cpi	r19, 0x05	; 5
 786:	19 f4       	brne	.+6      	; 0x78e <usbasploader+0x57a>
 788:	80 93 25 01 	sts	0x0125, r24
 78c:	3d c0       	rjmp	.+122    	; 0x808 <usbasploader+0x5f4>
 78e:	36 30       	cpi	r19, 0x06	; 6
 790:	a9 f5       	brne	.+106    	; 0x7fc <usbasploader+0x5e8>
 792:	9b 81       	ldd	r25, Y+3	; 0x03
 794:	91 30       	cpi	r25, 0x01	; 1
 796:	19 f4       	brne	.+6      	; 0x79e <usbasploader+0x58a>
 798:	88 e9       	ldi	r24, 0x98	; 152
 79a:	90 e7       	ldi	r25, 0x70	; 112
 79c:	04 c0       	rjmp	.+8      	; 0x7a6 <usbasploader+0x592>
 79e:	92 30       	cpi	r25, 0x02	; 2
 7a0:	41 f4       	brne	.+16     	; 0x7b2 <usbasploader+0x59e>
 7a2:	86 e8       	ldi	r24, 0x86	; 134
 7a4:	90 e7       	ldi	r25, 0x70	; 112
 7a6:	90 93 23 01 	sts	0x0123, r25
 7aa:	80 93 22 01 	sts	0x0122, r24
 7ae:	22 e1       	ldi	r18, 0x12	; 18
 7b0:	21 c0       	rjmp	.+66     	; 0x7f4 <usbasploader+0x5e0>
 7b2:	93 30       	cpi	r25, 0x03	; 3
 7b4:	f1 f4       	brne	.+60     	; 0x7f2 <usbasploader+0x5de>
 7b6:	81 11       	cpse	r24, r1
 7b8:	08 c0       	rjmp	.+16     	; 0x7ca <usbasploader+0x5b6>
 7ba:	84 ed       	ldi	r24, 0xD4	; 212
 7bc:	90 e7       	ldi	r25, 0x70	; 112
 7be:	90 93 23 01 	sts	0x0123, r25
 7c2:	80 93 22 01 	sts	0x0122, r24
 7c6:	24 e0       	ldi	r18, 0x04	; 4
 7c8:	15 c0       	rjmp	.+42     	; 0x7f4 <usbasploader+0x5e0>
 7ca:	81 30       	cpi	r24, 0x01	; 1
 7cc:	41 f4       	brne	.+16     	; 0x7de <usbasploader+0x5ca>
 7ce:	88 eb       	ldi	r24, 0xB8	; 184
 7d0:	90 e7       	ldi	r25, 0x70	; 112
 7d2:	90 93 23 01 	sts	0x0123, r25
 7d6:	80 93 22 01 	sts	0x0122, r24
 7da:	2c e1       	ldi	r18, 0x1C	; 28
 7dc:	0b c0       	rjmp	.+22     	; 0x7f4 <usbasploader+0x5e0>
 7de:	82 30       	cpi	r24, 0x02	; 2
 7e0:	41 f4       	brne	.+16     	; 0x7f2 <usbasploader+0x5de>
 7e2:	8a ea       	ldi	r24, 0xAA	; 170
 7e4:	90 e7       	ldi	r25, 0x70	; 112
 7e6:	90 93 23 01 	sts	0x0123, r25
 7ea:	80 93 22 01 	sts	0x0122, r24
 7ee:	2e e0       	ldi	r18, 0x0E	; 14
 7f0:	01 c0       	rjmp	.+2      	; 0x7f4 <usbasploader+0x5e0>
 7f2:	20 e0       	ldi	r18, 0x00	; 0
 7f4:	80 e4       	ldi	r24, 0x40	; 64
 7f6:	80 93 13 01 	sts	0x0113, r24
 7fa:	18 c0       	rjmp	.+48     	; 0x82c <usbasploader+0x618>
 7fc:	38 30       	cpi	r19, 0x08	; 8
 7fe:	79 f0       	breq	.+30     	; 0x81e <usbasploader+0x60a>
 800:	39 30       	cpi	r19, 0x09	; 9
 802:	31 f4       	brne	.+12     	; 0x810 <usbasploader+0x5fc>
 804:	80 93 27 01 	sts	0x0127, r24
 808:	8d e1       	ldi	r24, 0x1D	; 29
 80a:	91 e0       	ldi	r25, 0x01	; 1
 80c:	20 e0       	ldi	r18, 0x00	; 0
 80e:	0a c0       	rjmp	.+20     	; 0x824 <usbasploader+0x610>
 810:	21 e0       	ldi	r18, 0x01	; 1
 812:	3a 30       	cpi	r19, 0x0A	; 10
 814:	09 f0       	breq	.+2      	; 0x818 <usbasploader+0x604>
 816:	20 e0       	ldi	r18, 0x00	; 0
 818:	8d e1       	ldi	r24, 0x1D	; 29
 81a:	91 e0       	ldi	r25, 0x01	; 1
 81c:	03 c0       	rjmp	.+6      	; 0x824 <usbasploader+0x610>
 81e:	87 e2       	ldi	r24, 0x27	; 39
 820:	91 e0       	ldi	r25, 0x01	; 1
 822:	21 e0       	ldi	r18, 0x01	; 1
 824:	90 93 23 01 	sts	0x0123, r25
 828:	80 93 22 01 	sts	0x0122, r24
 82c:	2f 3f       	cpi	r18, 0xFF	; 255
 82e:	31 f4       	brne	.+12     	; 0x83c <usbasploader+0x628>
 830:	47 fd       	sbrc	r20, 7
 832:	2e 81       	ldd	r18, Y+6	; 0x06
 834:	80 e8       	ldi	r24, 0x80	; 128
 836:	80 93 13 01 	sts	0x0113, r24
 83a:	07 c0       	rjmp	.+14     	; 0x84a <usbasploader+0x636>
 83c:	8f 81       	ldd	r24, Y+7	; 0x07
 83e:	81 11       	cpse	r24, r1
 840:	04 c0       	rjmp	.+8      	; 0x84a <usbasploader+0x636>
 842:	8e 81       	ldd	r24, Y+6	; 0x06
 844:	82 17       	cp	r24, r18
 846:	08 f4       	brcc	.+2      	; 0x84a <usbasploader+0x636>
 848:	28 2f       	mov	r18, r24
 84a:	20 93 00 01 	sts	0x0100, r18
 84e:	7f c0       	rjmp	.+254    	; 0x94e <__stack+0x4f>
 850:	90 91 13 01 	lds	r25, 0x0113
 854:	97 ff       	sbrs	r25, 7
 856:	7b c0       	rjmp	.+246    	; 0x94e <__stack+0x4f>
 858:	90 91 0e 01 	lds	r25, 0x010E
 85c:	c8 2e       	mov	r12, r24
 85e:	98 17       	cp	r25, r24
 860:	08 f4       	brcc	.+2      	; 0x864 <usbasploader+0x650>
 862:	c9 2e       	mov	r12, r25
 864:	9c 19       	sub	r25, r12
 866:	90 93 0e 01 	sts	0x010E, r25
 86a:	bb 24       	eor	r11, r11
 86c:	b3 94       	inc	r11
 86e:	91 11       	cpse	r25, r1
 870:	b1 2c       	mov	r11, r1
 872:	d1 2c       	mov	r13, r1
 874:	dc 14       	cp	r13, r12
 876:	08 f0       	brcs	.+2      	; 0x87a <usbasploader+0x666>
 878:	67 c0       	rjmp	.+206    	; 0x948 <__stack+0x49>
 87a:	20 91 0c 01 	lds	r18, 0x010C
 87e:	80 91 0f 01 	lds	r24, 0x010F
 882:	90 91 10 01 	lds	r25, 0x0110
 886:	27 30       	cpi	r18, 0x07	; 7
 888:	80 f0       	brcs	.+32     	; 0x8aa <usbasploader+0x696>
 88a:	7e 01       	movw	r14, r28
 88c:	2f ef       	ldi	r18, 0xFF	; 255
 88e:	e2 1a       	sub	r14, r18
 890:	f2 0a       	sbc	r15, r18
 892:	68 81       	ld	r22, Y
 894:	9c 01       	movw	r18, r24
 896:	2f 5f       	subi	r18, 0xFF	; 255
 898:	3f 4f       	sbci	r19, 0xFF	; 255
 89a:	30 93 10 01 	sts	0x0110, r19
 89e:	20 93 0f 01 	sts	0x010F, r18
 8a2:	01 d1       	rcall	.+514    	; 0xaa6 <__stack+0x1a7>
 8a4:	d3 94       	inc	r13
 8a6:	e7 01       	movw	r28, r14
 8a8:	e5 cf       	rjmp	.-54     	; 0x874 <usbasploader+0x660>
 8aa:	81 15       	cp	r24, r1
 8ac:	90 47       	sbci	r25, 0x70	; 112
 8ae:	08 f0       	brcs	.+2      	; 0x8b2 <usbasploader+0x69e>
 8b0:	4c c0       	rjmp	.+152    	; 0x94a <__stack+0x4b>
 8b2:	d3 94       	inc	r13
 8b4:	d3 94       	inc	r13
 8b6:	f8 94       	cli
 8b8:	e0 91 0f 01 	lds	r30, 0x010F
 8bc:	f0 91 10 01 	lds	r31, 0x0110
 8c0:	89 91       	ld	r24, Y+
 8c2:	99 91       	ld	r25, Y+
 8c4:	21 e0       	ldi	r18, 0x01	; 1
 8c6:	0c 01       	movw	r0, r24
 8c8:	20 93 57 00 	sts	0x0057, r18
 8cc:	e8 95       	spm
 8ce:	11 24       	eor	r1, r1
 8d0:	78 94       	sei
 8d2:	80 91 0f 01 	lds	r24, 0x010F
 8d6:	90 91 10 01 	lds	r25, 0x0110
 8da:	02 96       	adiw	r24, 0x02	; 2
 8dc:	90 93 10 01 	sts	0x0110, r25
 8e0:	80 93 0f 01 	sts	0x010F, r24
 8e4:	8f 77       	andi	r24, 0x7F	; 127
 8e6:	99 27       	eor	r25, r25
 8e8:	89 2b       	or	r24, r25
 8ea:	59 f0       	breq	.+22     	; 0x902 <__stack+0x3>
 8ec:	bb 20       	and	r11, r11
 8ee:	09 f4       	brne	.+2      	; 0x8f2 <_binary_usbasploader_raw_size+0x3a>
 8f0:	c1 cf       	rjmp	.-126    	; 0x874 <usbasploader+0x660>
 8f2:	dc 14       	cp	r13, r12
 8f4:	08 f4       	brcc	.+2      	; 0x8f8 <_binary_usbasploader_raw_size+0x40>
 8f6:	be cf       	rjmp	.-132    	; 0x874 <usbasploader+0x660>
 8f8:	80 91 0d 01 	lds	r24, 0x010D
 8fc:	88 23       	and	r24, r24
 8fe:	09 f4       	brne	.+2      	; 0x902 <__stack+0x3>
 900:	b9 cf       	rjmp	.-142    	; 0x874 <usbasploader+0x660>
 902:	f8 94       	cli
 904:	e0 91 0f 01 	lds	r30, 0x010F
 908:	f0 91 10 01 	lds	r31, 0x0110
 90c:	32 97       	sbiw	r30, 0x02	; 2
 90e:	83 e0       	ldi	r24, 0x03	; 3
 910:	80 93 57 00 	sts	0x0057, r24
 914:	e8 95       	spm
 916:	78 94       	sei
 918:	07 b6       	in	r0, 0x37	; 55
 91a:	00 fc       	sbrc	r0, 0
 91c:	fd cf       	rjmp	.-6      	; 0x918 <__stack+0x19>
 91e:	f8 94       	cli
 920:	e0 91 0f 01 	lds	r30, 0x010F
 924:	f0 91 10 01 	lds	r31, 0x0110
 928:	32 97       	sbiw	r30, 0x02	; 2
 92a:	85 e0       	ldi	r24, 0x05	; 5
 92c:	80 93 57 00 	sts	0x0057, r24
 930:	e8 95       	spm
 932:	78 94       	sei
 934:	07 b6       	in	r0, 0x37	; 55
 936:	00 fc       	sbrc	r0, 0
 938:	fd cf       	rjmp	.-6      	; 0x934 <__stack+0x35>
 93a:	f8 94       	cli
 93c:	81 e1       	ldi	r24, 0x11	; 17
 93e:	80 93 57 00 	sts	0x0057, r24
 942:	e8 95       	spm
 944:	78 94       	sei
 946:	96 cf       	rjmp	.-212    	; 0x874 <usbasploader+0x660>
 948:	b1 10       	cpse	r11, r1
 94a:	10 92 00 01 	sts	0x0100, r1
 94e:	10 92 24 01 	sts	0x0124, r1
 952:	80 91 01 01 	lds	r24, 0x0101
 956:	84 ff       	sbrs	r24, 4
 958:	6d c0       	rjmp	.+218    	; 0xa34 <__stack+0x135>
 95a:	80 91 00 01 	lds	r24, 0x0100
 95e:	8f 3f       	cpi	r24, 0xFF	; 255
 960:	09 f4       	brne	.+2      	; 0x964 <__stack+0x65>
 962:	68 c0       	rjmp	.+208    	; 0xa34 <__stack+0x135>
 964:	d8 2e       	mov	r13, r24
 966:	89 30       	cpi	r24, 0x09	; 9
 968:	10 f0       	brcs	.+4      	; 0x96e <__stack+0x6f>
 96a:	28 e0       	ldi	r18, 0x08	; 8
 96c:	d2 2e       	mov	r13, r18
 96e:	8d 19       	sub	r24, r13
 970:	80 93 00 01 	sts	0x0100, r24
 974:	80 91 14 01 	lds	r24, 0x0114
 978:	98 e8       	ldi	r25, 0x88	; 136
 97a:	89 27       	eor	r24, r25
 97c:	80 93 14 01 	sts	0x0114, r24
 980:	dd 20       	and	r13, r13
 982:	09 f4       	brne	.+2      	; 0x986 <__stack+0x87>
 984:	4a c0       	rjmp	.+148    	; 0xa1a <__stack+0x11b>
 986:	80 91 13 01 	lds	r24, 0x0113
 98a:	87 ff       	sbrs	r24, 7
 98c:	28 c0       	rjmp	.+80     	; 0x9de <__stack+0xdf>
 98e:	80 91 0e 01 	lds	r24, 0x010E
 992:	8d 15       	cp	r24, r13
 994:	08 f4       	brcc	.+2      	; 0x998 <__stack+0x99>
 996:	d8 2e       	mov	r13, r24
 998:	8d 19       	sub	r24, r13
 99a:	80 93 0e 01 	sts	0x010E, r24
 99e:	c0 90 0c 01 	lds	r12, 0x010C
 9a2:	c5 e1       	ldi	r28, 0x15	; 21
 9a4:	d1 e0       	ldi	r29, 0x01	; 1
 9a6:	85 e1       	ldi	r24, 0x15	; 21
 9a8:	91 e0       	ldi	r25, 0x01	; 1
 9aa:	2c 2f       	mov	r18, r28
 9ac:	28 1b       	sub	r18, r24
 9ae:	2d 15       	cp	r18, r13
 9b0:	a0 f5       	brcc	.+104    	; 0xa1a <__stack+0x11b>
 9b2:	e0 90 0f 01 	lds	r14, 0x010F
 9b6:	f0 90 10 01 	lds	r15, 0x0110
 9ba:	f6 e0       	ldi	r31, 0x06	; 6
 9bc:	fc 15       	cp	r31, r12
 9be:	18 f4       	brcc	.+6      	; 0x9c6 <__stack+0xc7>
 9c0:	c7 01       	movw	r24, r14
 9c2:	69 d0       	rcall	.+210    	; 0xa96 <__stack+0x197>
 9c4:	02 c0       	rjmp	.+4      	; 0x9ca <__stack+0xcb>
 9c6:	f7 01       	movw	r30, r14
 9c8:	84 91       	lpm	r24, Z
 9ca:	88 83       	st	Y, r24
 9cc:	21 96       	adiw	r28, 0x01	; 1
 9ce:	ff ef       	ldi	r31, 0xFF	; 255
 9d0:	ef 1a       	sub	r14, r31
 9d2:	ff 0a       	sbc	r15, r31
 9d4:	f0 92 10 01 	sts	0x0110, r15
 9d8:	e0 92 0f 01 	sts	0x010F, r14
 9dc:	e4 cf       	rjmp	.-56     	; 0x9a6 <__stack+0xa7>
 9de:	e0 91 22 01 	lds	r30, 0x0122
 9e2:	f0 91 23 01 	lds	r31, 0x0123
 9e6:	86 ff       	sbrs	r24, 6
 9e8:	0b c0       	rjmp	.+22     	; 0xa00 <__stack+0x101>
 9ea:	85 e1       	ldi	r24, 0x15	; 21
 9ec:	91 e0       	ldi	r25, 0x01	; 1
 9ee:	dc 01       	movw	r26, r24
 9f0:	24 91       	lpm	r18, Z
 9f2:	2d 93       	st	X+, r18
 9f4:	31 96       	adiw	r30, 0x01	; 1
 9f6:	2d 2d       	mov	r18, r13
 9f8:	28 0f       	add	r18, r24
 9fa:	2a 13       	cpse	r18, r26
 9fc:	f9 cf       	rjmp	.-14     	; 0x9f0 <__stack+0xf1>
 9fe:	09 c0       	rjmp	.+18     	; 0xa12 <__stack+0x113>
 a00:	85 e1       	ldi	r24, 0x15	; 21
 a02:	91 e0       	ldi	r25, 0x01	; 1
 a04:	dc 01       	movw	r26, r24
 a06:	21 91       	ld	r18, Z+
 a08:	2d 93       	st	X+, r18
 a0a:	2d 2d       	mov	r18, r13
 a0c:	28 0f       	add	r18, r24
 a0e:	2a 13       	cpse	r18, r26
 a10:	fa cf       	rjmp	.-12     	; 0xa06 <__stack+0x107>
 a12:	f0 93 23 01 	sts	0x0123, r31
 a16:	e0 93 22 01 	sts	0x0122, r30
 a1a:	6d 2d       	mov	r22, r13
 a1c:	85 e1       	ldi	r24, 0x15	; 21
 a1e:	91 e0       	ldi	r25, 0x01	; 1
 a20:	a2 dc       	rcall	.-1724   	; 0x366 <usbasploader+0x152>
 a22:	84 e0       	ldi	r24, 0x04	; 4
 a24:	8d 0d       	add	r24, r13
 a26:	8c 30       	cpi	r24, 0x0C	; 12
 a28:	19 f0       	breq	.+6      	; 0xa30 <__stack+0x131>
 a2a:	9f ef       	ldi	r25, 0xFF	; 255
 a2c:	90 93 00 01 	sts	0x0100, r25
 a30:	80 93 01 01 	sts	0x0101, r24
 a34:	84 e1       	ldi	r24, 0x14	; 20
 a36:	99 b1       	in	r25, 0x09	; 9
 a38:	94 71       	andi	r25, 0x14	; 20
 a3a:	31 f4       	brne	.+12     	; 0xa48 <__stack+0x149>
 a3c:	81 50       	subi	r24, 0x01	; 1
 a3e:	d9 f7       	brne	.-10     	; 0xa36 <__stack+0x137>
 a40:	10 92 25 01 	sts	0x0125, r1
 a44:	10 92 1f 01 	sts	0x011F, r1
 a48:	80 91 11 01 	lds	r24, 0x0111
 a4c:	80 31       	cpi	r24, 0x10	; 16
 a4e:	30 f0       	brcs	.+12     	; 0xa5c <__stack+0x15d>
 a50:	4f 9b       	sbis	0x09, 7	; 9
 a52:	0f c0       	rjmp	.+30     	; 0xa72 <__stack+0x173>
 a54:	80 91 11 01 	lds	r24, 0x0111
 a58:	80 51       	subi	r24, 0x10	; 16
 a5a:	09 c0       	rjmp	.+18     	; 0xa6e <__stack+0x16f>
 a5c:	4f 99       	sbic	0x09, 7	; 9
 a5e:	09 c0       	rjmp	.+18     	; 0xa72 <__stack+0x173>
 a60:	80 91 11 01 	lds	r24, 0x0111
 a64:	82 30       	cpi	r24, 0x02	; 2
 a66:	28 f0       	brcs	.+10     	; 0xa72 <__stack+0x173>
 a68:	80 91 11 01 	lds	r24, 0x0111
 a6c:	82 50       	subi	r24, 0x02	; 2
 a6e:	80 93 11 01 	sts	0x0111, r24
 a72:	80 91 11 01 	lds	r24, 0x0111
 a76:	81 11       	cpse	r24, r1
 a78:	06 ce       	rjmp	.-1012   	; 0x686 <usbasploader+0x472>
 a7a:	f8 94       	cli
 a7c:	54 9a       	sbi	0x0a, 4	; 10
 a7e:	1b b8       	out	0x0b, r1	; 11
 a80:	1d ba       	out	0x1d, r1	; 29
 a82:	10 92 69 00 	sts	0x0069, r1
 a86:	81 e0       	ldi	r24, 0x01	; 1
 a88:	85 bf       	out	0x35, r24	; 53
 a8a:	15 be       	out	0x35, r1	; 53
 a8c:	e0 91 0a 01 	lds	r30, 0x010A
 a90:	f0 91 0b 01 	lds	r31, 0x010B
 a94:	09 95       	icall
 a96:	f9 99       	sbic	0x1f, 1	; 31
 a98:	fe cf       	rjmp	.-4      	; 0xa96 <__stack+0x197>
 a9a:	92 bd       	out	0x22, r25	; 34
 a9c:	81 bd       	out	0x21, r24	; 33
 a9e:	f8 9a       	sbi	0x1f, 0	; 31
 aa0:	99 27       	eor	r25, r25
 aa2:	80 b5       	in	r24, 0x20	; 32
 aa4:	08 95       	ret
 aa6:	26 2f       	mov	r18, r22
 aa8:	f9 99       	sbic	0x1f, 1	; 31
 aaa:	fe cf       	rjmp	.-4      	; 0xaa8 <__stack+0x1a9>
 aac:	1f ba       	out	0x1f, r1	; 31
 aae:	92 bd       	out	0x22, r25	; 34
 ab0:	81 bd       	out	0x21, r24	; 33
 ab2:	20 bd       	out	0x20, r18	; 32
 ab4:	0f b6       	in	r0, 0x3f	; 63
 ab6:	f8 94       	cli
 ab8:	fa 9a       	sbi	0x1f, 2	; 31
 aba:	f9 9a       	sbi	0x1f, 1	; 31
 abc:	0f be       	out	0x3f, r0	; 63
 abe:	01 96       	adiw	r24, 0x01	; 1
 ac0:	08 95       	ret
 ac2:	f8 94       	cli
 ac4:	ff cf       	rjmp	.-2      	; 0xac4 <__stack+0x1c5>
 ac6:	ff 5a       	subi	r31, 0xAF	; 175
 ac8:	1e 95 0f 00 	call	0x44001e	; 0x44001e <__data_load_end+0x43f366>

00000acc <memcpy_PF>:
 acc:	fa 01       	movw	r30, r20
 ace:	dc 01       	movw	r26, r24
 ad0:	02 c0       	rjmp	.+4      	; 0xad6 <memcpy_PF+0xa>
 ad2:	05 90       	lpm	r0, Z+
 ad4:	0d 92       	st	X+, r0
 ad6:	21 50       	subi	r18, 0x01	; 1
 ad8:	30 40       	sbci	r19, 0x00	; 0
 ada:	d8 f7       	brcc	.-10     	; 0xad2 <memcpy_PF+0x6>
 adc:	08 95       	ret

00000ade <main>:
#include "crccheck.c"
#endif

// #pragma GCC diagnostic ignored "-Wno-pointer-to-int-cast"
int main(void)
{
 ade:	af 92       	push	r10
 ae0:	bf 92       	push	r11
 ae2:	cf 92       	push	r12
 ae4:	df 92       	push	r13
 ae6:	ef 92       	push	r14
 ae8:	ff 92       	push	r15
 aea:	0f 93       	push	r16
 aec:	1f 93       	push	r17
 aee:	cf 93       	push	r28
 af0:	df 93       	push	r29
 af2:	cd b7       	in	r28, 0x3d	; 61
 af4:	de b7       	in	r29, 0x3e	; 62
 af6:	c0 58       	subi	r28, 0x80	; 128
 af8:	d1 09       	sbc	r29, r1
 afa:	0f b6       	in	r0, 0x3f	; 63
 afc:	f8 94       	cli
 afe:	de bf       	out	0x3e, r29	; 62
 b00:	0f be       	out	0x3f, r0	; 63
 b02:	cd bf       	out	0x3d, r28	; 61
    uint32_t crcval;
#endif
    size_t  i;
    uint8_t buffer[SPM_PAGESIZE];
    
    MCUCSR = 0; /* do not care about previous reset - just disable the wdt */
 b04:	14 be       	out	0x34, r1	; 52
    wdt_disable();
 b06:	88 e1       	ldi	r24, 0x18	; 24
 b08:	0f b6       	in	r0, 0x3f	; 63
 b0a:	f8 94       	cli
 b0c:	80 93 60 00 	sts	0x0060, r24
 b10:	10 92 60 00 	sts	0x0060, r1
 b14:	0f be       	out	0x3f, r0	; 63
    cli();
 b16:	f8 94       	cli
    // allow to change the firmware
    if (crcval == ((uint32_t)UPDATECRC32)) {
#endif

    // check if firmware would change...
    buffer[0]=0;
 b18:	19 82       	std	Y+1, r1	; 0x01
      uint16_t a, b;
#if (FLASHEND > 65535)
      a=pgm_read_word_far(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word_far(NEW_BOOTLOADER_ADDRESS+i);
#else
      a=pgm_read_word(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
 b1a:	20 91 00 01 	lds	r18, 0x0100
 b1e:	30 91 01 01 	lds	r19, 0x0101
    if (crcval == ((uint32_t)UPDATECRC32)) {
#endif

    // check if firmware would change...
    buffer[0]=0;
    for (i=0;i<SIZEOF_new_firmware;i+=2) {
 b22:	80 e0       	ldi	r24, 0x00	; 0
 b24:	90 e0       	ldi	r25, 0x00	; 0
 b26:	f9 01       	movw	r30, r18
 b28:	e8 0f       	add	r30, r24
 b2a:	f9 1f       	adc	r31, r25
      uint16_t a, b;
#if (FLASHEND > 65535)
      a=pgm_read_word_far(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
      b=pgm_read_word_far(NEW_BOOTLOADER_ADDRESS+i);
#else
      a=pgm_read_word(FULLCORRECTFLASHADDRESS(&new_firmware[i]));
 b2c:	65 91       	lpm	r22, Z+
 b2e:	74 91       	lpm	r23, Z
 b30:	fc 01       	movw	r30, r24
 b32:	f0 59       	subi	r31, 0x90	; 144
      b=pgm_read_word(NEW_BOOTLOADER_ADDRESS+i);
 b34:	45 91       	lpm	r20, Z+
 b36:	54 91       	lpm	r21, Z
#endif
      if (a!=b) {
 b38:	64 17       	cp	r22, r20
 b3a:	75 07       	cpc	r23, r21
 b3c:	19 f0       	breq	.+6      	; 0xb44 <main+0x66>
	buffer[0]=1;
 b3e:	81 e0       	ldi	r24, 0x01	; 1
 b40:	89 83       	std	Y+1, r24	; 0x01
	break;
 b42:	05 c0       	rjmp	.+10     	; 0xb4e <main+0x70>
    if (crcval == ((uint32_t)UPDATECRC32)) {
#endif

    // check if firmware would change...
    buffer[0]=0;
    for (i=0;i<SIZEOF_new_firmware;i+=2) {
 b44:	02 96       	adiw	r24, 0x02	; 2
 b46:	88 3b       	cpi	r24, 0xB8	; 184
 b48:	48 e0       	ldi	r20, 0x08	; 8
 b4a:	94 07       	cpc	r25, r20
 b4c:	61 f7       	brne	.-40     	; 0xb26 <main+0x48>
    }



    // need to change the firmware...
    if (buffer[0]) {
 b4e:	89 81       	ldd	r24, Y+1	; 0x01
 b50:	88 23       	and	r24, r24
 b52:	09 f4       	brne	.+2      	; 0xb56 <main+0x78>
 b54:	93 c0       	rjmp	.+294    	; 0xc7c <main+0x19e>
 b56:	58 e6       	ldi	r21, 0x68	; 104
 b58:	c5 2e       	mov	r12, r21
 b5a:	50 e7       	ldi	r21, 0x70	; 112
 b5c:	d5 2e       	mov	r13, r21
 b5e:	e1 2c       	mov	r14, r1
 b60:	f1 2c       	mov	r15, r1
}
#else
// replace it somehow with "memcpy_PF" in order to save some ops...
size_t mypgm_readpage(const mypgm_addr_t byteaddress,const void* buffer, const size_t bufferbytesize) {
  size_t	result		= (bufferbytesize < SPM_PAGESIZE)?bufferbytesize:SPM_PAGESIZE;
  mypgm_addr_t	pageaddr	= byteaddress - (byteaddress % SPM_PAGESIZE);
 b62:	b7 01       	movw	r22, r14
 b64:	a6 01       	movw	r20, r12
 b66:	40 78       	andi	r20, 0x80	; 128
  
  mymemcpy_PF((void*)buffer, (uint_farptr_t)pageaddr, result);
 b68:	20 e8       	ldi	r18, 0x80	; 128
 b6a:	30 e0       	ldi	r19, 0x00	; 0
 b6c:	ce 01       	movw	r24, r28
 b6e:	01 96       	adiw	r24, 0x01	; 1
 b70:	ad df       	rcall	.-166    	; 0xacc <memcpy_PF>
 b72:	c7 01       	movw	r24, r14
 b74:	b6 01       	movw	r22, r12
 b76:	68 56       	subi	r22, 0x68	; 104
 b78:	72 4f       	sbci	r23, 0xF2	; 242
 b7a:	8f 4f       	sbci	r24, 0xFF	; 255
 b7c:	9f 4f       	sbci	r25, 0xFF	; 255
 b7e:	08 e4       	ldi	r16, 0x48	; 72
    if (buffer[0]) {

      // A
      // copy the current "bootloader__do_spm" to tempoary position via std. "bootloader__do_spm"
      for (i=0;i<TEMP_SPM_BLKSIZE;i+=SPM_PAGESIZE) {
	mypgm_WRITEpage(TEMP_SPM_PAGEADR+i, buffer, mypgm_readpage(funcaddr___bootloader__do_spm+i, buffer, sizeof(buffer)), do_spm);
 b80:	10 e0       	ldi	r17, 0x00	; 0
 b82:	20 e8       	ldi	r18, 0x80	; 128
 b84:	30 e0       	ldi	r19, 0x00	; 0
 b86:	ae 01       	movw	r20, r28
 b88:	4f 5f       	subi	r20, 0xFF	; 255
 b8a:	5f 4f       	sbci	r21, 0xFF	; 255
 b8c:	c2 da       	rcall	.-2684   	; 0x112 <mypgm_WRITEpage>
 b8e:	80 e8       	ldi	r24, 0x80	; 128
 b90:	c8 0e       	add	r12, r24
 b92:	d1 1c       	adc	r13, r1
 b94:	e1 1c       	adc	r14, r1
 b96:	f1 1c       	adc	r15, r1
 b98:	48 e6       	ldi	r20, 0x68	; 104
 b9a:	c4 16       	cp	r12, r20
    // need to change the firmware...
    if (buffer[0]) {

      // A
      // copy the current "bootloader__do_spm" to tempoary position via std. "bootloader__do_spm"
      for (i=0;i<TEMP_SPM_BLKSIZE;i+=SPM_PAGESIZE) {
 b9c:	42 e7       	ldi	r20, 0x72	; 114
 b9e:	d4 06       	cpc	r13, r20
 ba0:	e1 04       	cpc	r14, r1
 ba2:	f1 04       	cpc	r15, r1
 ba4:	f1 f6       	brne	.-68     	; 0xb62 <main+0x84>
 ba6:	c1 2c       	mov	r12, r1
 ba8:	40 e7       	ldi	r20, 0x70	; 112
 baa:	d4 2e       	mov	r13, r20
 bac:	e1 2c       	mov	r14, r1
 bae:	f1 2c       	mov	r15, r1
 bb0:	56 01       	movw	r10, r12
 bb2:	80 e7       	ldi	r24, 0x70	; 112
 bb4:	b8 1a       	sub	r11, r24
 bb6:	40 e8       	ldi	r20, 0x80	; 128
 bb8:	50 e0       	ldi	r21, 0x00	; 0
      // B
      // start updating the firmware to "NEW_BOOTLOADER_ADDRESS" until at least "TEMP_SPM_BLKSIZE"-bytes after "NEW_SPM_ADDRESS" were written
      // therefore use the tempoary "bootloader__do_spm" (since we most probably will overwrite the default do_spm)
      for (i=0;;i+=SPM_PAGESIZE) {
#ifdef CONFIG_UPDATER_CLEANMEMCLEAR
	memset((void*)buffer, 0xff, sizeof(buffer));
 bba:	6f ef       	ldi	r22, 0xFF	; 255
 bbc:	70 e0       	ldi	r23, 0x00	; 0
 bbe:	ce 01       	movw	r24, r28
 bc0:	01 96       	adiw	r24, 0x01	; 1
 bc2:	70 d0       	rcall	.+224    	; 0xca4 <memset>
 bc4:	40 91 00 01 	lds	r20, 0x0100
 bc8:	50 91 01 01 	lds	r21, 0x0101
#endif
	mymemcpy_PF((void*)buffer, (uint_farptr_t)(FULLCORRECTFLASHADDRESS(&new_firmware[i])), ((SIZEOF_new_firmware-i)>sizeof(buffer))?sizeof(buffer):(SIZEOF_new_firmware-i));
 bcc:	4a 0d       	add	r20, r10
 bce:	5b 1d       	adc	r21, r11
 bd0:	66 27       	eor	r22, r22
 bd2:	57 fd       	sbrc	r21, 7
 bd4:	60 95       	com	r22
 bd6:	76 2f       	mov	r23, r22
 bd8:	20 e8       	ldi	r18, 0x80	; 128
 bda:	30 e0       	ldi	r19, 0x00	; 0
 bdc:	ce 01       	movw	r24, r28
 bde:	01 96       	adiw	r24, 0x01	; 1
 be0:	75 df       	rcall	.-278    	; 0xacc <memcpy_PF>
 be2:	0f e5       	ldi	r16, 0x5F	; 95
 be4:	10 e0       	ldi	r17, 0x00	; 0
 be6:	20 e8       	ldi	r18, 0x80	; 128
 be8:	30 e0       	ldi	r19, 0x00	; 0
	
	mypgm_WRITEpage(NEW_BOOTLOADER_ADDRESS+i, buffer, sizeof(buffer), temp_do_spm);
 bea:	ae 01       	movw	r20, r28
 bec:	4f 5f       	subi	r20, 0xFF	; 255
 bee:	5f 4f       	sbci	r21, 0xFF	; 255
 bf0:	c7 01       	movw	r24, r14
 bf2:	b6 01       	movw	r22, r12
 bf4:	8e da       	rcall	.-2788   	; 0x112 <mypgm_WRITEpage>
 bf6:	40 e8       	ldi	r20, 0x80	; 128
 bf8:	c4 0e       	add	r12, r20
 bfa:	d1 1c       	adc	r13, r1
 bfc:	e1 1c       	adc	r14, r1
 bfe:	f1 1c       	adc	r15, r1
 c00:	c1 14       	cp	r12, r1
 c02:	83 e7       	ldi	r24, 0x73	; 115
 c04:	d8 06       	cpc	r13, r24
 c06:	e1 04       	cpc	r14, r1
 c08:	f1 04       	cpc	r15, r1
	
	if ((NEW_BOOTLOADER_ADDRESS+i) > (NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE)) break;
 c0a:	91 f6       	brne	.-92     	; 0xbb0 <main+0xd2>
 c0c:	38 eb       	ldi	r19, 0xB8	; 184
 c0e:	e3 2e       	mov	r14, r19
 c10:	38 e0       	ldi	r19, 0x08	; 8
 c12:	f3 2e       	mov	r15, r19
 c14:	ea 18       	sub	r14, r10
 c16:	fb 08       	sbc	r15, r11
 c18:	40 e8       	ldi	r20, 0x80	; 128
 c1a:	50 e0       	ldi	r21, 0x00	; 0
 c1c:	6f ef       	ldi	r22, 0xFF	; 255
 c1e:	70 e0       	ldi	r23, 0x00	; 0
 c20:	ce 01       	movw	r24, r28

      // C
      // continue writeing the new_firmware after "NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE" this time use the "new_do_spm"
      for (;i<SIZEOF_new_firmware;i+=SPM_PAGESIZE) {
#ifdef CONFIG_UPDATER_CLEANMEMCLEAR
	memset((void*)buffer, 0xff, sizeof(buffer));
 c22:	01 96       	adiw	r24, 0x01	; 1
 c24:	3f d0       	rcall	.+126    	; 0xca4 <memset>
 c26:	97 01       	movw	r18, r14
 c28:	41 e8       	ldi	r20, 0x81	; 129
 c2a:	e4 16       	cp	r14, r20
 c2c:	f1 04       	cpc	r15, r1
 c2e:	10 f0       	brcs	.+4      	; 0xc34 <main+0x156>
 c30:	20 e8       	ldi	r18, 0x80	; 128
#endif
	mymemcpy_PF((void*)buffer, (uint_farptr_t)(FULLCORRECTFLASHADDRESS(&new_firmware[i])), ((SIZEOF_new_firmware-i)>sizeof(buffer))?sizeof(buffer):(SIZEOF_new_firmware-i));
 c32:	30 e0       	ldi	r19, 0x00	; 0
 c34:	40 91 00 01 	lds	r20, 0x0100
 c38:	50 91 01 01 	lds	r21, 0x0101
 c3c:	4a 0d       	add	r20, r10
 c3e:	5b 1d       	adc	r21, r11
 c40:	66 27       	eor	r22, r22
 c42:	57 fd       	sbrc	r21, 7
 c44:	60 95       	com	r22
 c46:	76 2f       	mov	r23, r22
 c48:	ce 01       	movw	r24, r28
 c4a:	01 96       	adiw	r24, 0x01	; 1
 c4c:	3f df       	rcall	.-386    	; 0xacc <memcpy_PF>
 c4e:	b5 01       	movw	r22, r10
 c50:	70 59       	subi	r23, 0x90	; 144
 c52:	80 e0       	ldi	r24, 0x00	; 0
 c54:	90 e0       	ldi	r25, 0x00	; 0
 c56:	08 e4       	ldi	r16, 0x48	; 72
 c58:	10 e0       	ldi	r17, 0x00	; 0
 c5a:	20 e8       	ldi	r18, 0x80	; 128
 c5c:	30 e0       	ldi	r19, 0x00	; 0
 c5e:	ae 01       	movw	r20, r28

	mypgm_WRITEpage(NEW_BOOTLOADER_ADDRESS+i, buffer, sizeof(buffer), new_do_spm);
 c60:	4f 5f       	subi	r20, 0xFF	; 255
 c62:	5f 4f       	sbci	r21, 0xFF	; 255
 c64:	56 da       	rcall	.-2900   	; 0x112 <mypgm_WRITEpage>
 c66:	80 e8       	ldi	r24, 0x80	; 128
 c68:	a8 0e       	add	r10, r24
 c6a:	b1 1c       	adc	r11, r1
 c6c:	40 e8       	ldi	r20, 0x80	; 128
 c6e:	e4 1a       	sub	r14, r20
 c70:	f1 08       	sbc	r15, r1
 c72:	88 eb       	ldi	r24, 0xB8	; 184
 c74:	a8 16       	cp	r10, r24
	if ((NEW_BOOTLOADER_ADDRESS+i) > (NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE)) break;
      }

      // C
      // continue writeing the new_firmware after "NEW_SPM_ADDRESS+TEMP_SPM_BLKSIZE" this time use the "new_do_spm"
      for (;i<SIZEOF_new_firmware;i+=SPM_PAGESIZE) {
 c76:	88 e0       	ldi	r24, 0x08	; 8
 c78:	b8 06       	cpc	r11, r24
 c7a:	70 f2       	brcs	.-100    	; 0xc18 <main+0x13a>
 c7c:	80 e0       	ldi	r24, 0x00	; 0
 c7e:	90 e0       	ldi	r25, 0x00	; 0
 c80:	c0 58       	subi	r28, 0x80	; 128
 c82:	df 4f       	sbci	r29, 0xFF	; 255
 c84:	0f b6       	in	r0, 0x3f	; 63
 c86:	f8 94       	cli
 c88:	de bf       	out	0x3e, r29	; 62
 c8a:	0f be       	out	0x3f, r0	; 63
#if defined(UPDATECRC32)
    }
#endif

    return 0;
}
 c8c:	cd bf       	out	0x3d, r28	; 61
 c8e:	df 91       	pop	r29
 c90:	cf 91       	pop	r28
 c92:	1f 91       	pop	r17
 c94:	0f 91       	pop	r16
 c96:	ff 90       	pop	r15
 c98:	ef 90       	pop	r14
 c9a:	df 90       	pop	r13
 c9c:	cf 90       	pop	r12
 c9e:	bf 90       	pop	r11
 ca0:	af 90       	pop	r10
 ca2:	08 95       	ret

00000ca4 <memset>:
 ca4:	dc 01       	movw	r26, r24
 ca6:	01 c0       	rjmp	.+2      	; 0xcaa <memset+0x6>
 ca8:	6d 93       	st	X+, r22
 caa:	41 50       	subi	r20, 0x01	; 1
 cac:	50 40       	sbci	r21, 0x00	; 0
 cae:	e0 f7       	brcc	.-8      	; 0xca8 <memset+0x4>
 cb0:	08 95       	ret

00000cb2 <_exit>:
 cb2:	f8 94       	cli

00000cb4 <__stop_program>:
 cb4:	ff cf       	rjmp	.-2      	; 0xcb4 <__stop_program>
