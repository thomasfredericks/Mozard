
main.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00007000 l    d  .text	00000000 .text
00800106 l    d  .bss	00000000 .bss
0080013d l    d  .noinit	00000000 .noinit
00000000 l    d  .stab	00000000 .stab
00000000 l    d  .stabstr	00000000 .stabstr
00000000 l    d  .comment	00000000 .comment
00000000 l    df *ABS*	00000000 usbdrv/usbdrvasm.o
0000714c l       .text	00000000 usbCrcLoopEntry
0000713a l       .text	00000000 usbCrcByteLoop
0000713e l       .text	00000000 usbCrcBitLoop
00007148 l       .text	00000000 usbCrcNoXor
00007150 l       .text	00000000 usbCrcReady
00007162 l       .text	00000000 waitForJ
00007168 l       .text	00000000 waitForK
00007182 l       .text	00000000 foundK
00007294 l       .text	00000000 sofError
0000719c l       .text	00000000 haveTwoBitsK
0000722a l       .text	00000000 rxbit1
000071b8 l       .text	00000000 unstuff6
00007200 l       .text	00000000 didUnstuff6
000071c4 l       .text	00000000 unstuff7
0000720e l       .text	00000000 didUnstuff7
000071d0 l       .text	00000000 unstuffEven
0000724e l       .text	00000000 se0
00007226 l       .text	00000000 didUnstuffE
000071e0 l       .text	00000000 unstuffOdd
0000723a l       .text	00000000 didUnstuffO
000071f0 l       .text	00000000 rxByteLoop
000071fc l       .text	00000000 skipLeap
00007216 l       .text	00000000 rxBitLoop
00007246 l       .text	00000000 overflow
0000724a l       .text	00000000 ignorePacket
0000727c l       .text	00000000 storeTokenAndReturn
0000729e l       .text	00000000 handleData
000072c8 l       .text	00000000 handleIn
0000727c l       .text	00000000 handleSetupOrOut
00007280 l       .text	00000000 doReturn
000072fc l       .text	00000000 sendNakAndReti
00007300 l       .text	00000000 sendAckAndReti
00007302 l       .text	00000000 sendCntAndReti
0000730a l       .text	00000000 usbSendAndReti
000072e4 l       .text	00000000 bitstuffN
00007324 l       .text	00000000 didStuffN
000072f0 l       .text	00000000 bitstuff6
00007332 l       .text	00000000 didStuff6
000072f8 l       .text	00000000 bitstuff7
0000733e l       .text	00000000 didStuff7
00007304 l       .text	00000000 sendX3AndReti
00007318 l       .text	00000000 txByteLoop
0000731a l       .text	00000000 txBitLoop
00007366 l       .text	00000000 skipAddrAssign
00007376 l       .text	00000000 se0Delay
00000000 l    df *ABS*	00000000 oddebug.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 main.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
000070f4 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5
000070f2 l       .text	00000000 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch5
0080013e l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch
0080013d l     O .noinit	00000001 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR
00800102 l     O .data	00000004 signatureBytes
00800111 l     O .bss	00000001 stayinloader
00007424 l       .text	00000000 _mywait_sleeploop157
0080010a l     O .bss	00000002 nullVector
00007488 l       .text	00000000 _mywait_sleeploop227
00800112 l     O .bss	00000001 usbMsgFlags
00800106 l     O .bss	00000004 replyBuffer.2142
0080010f l     O .bss	00000002 currentAddress
0080010e l     O .bss	00000001 bytesRemaining
0080010d l     O .bss	00000001 isLastPage
0080010c l     O .bss	00000001 currentRequest
00800100 l     O .data	00000001 usbMsgLen
00000000 l    df *ABS*	00000000 _exit.o
00007880 l       .text	00000000 __stop_program
00000000 l    df *ABS*	00000000 _clear_bss.o
0000711c l       .text	00000000 .do_clear_bss_start
0000711a l       .text	00000000 .do_clear_bss_loop
00000000 l    df *ABS*	00000000 
00000000 l       *ABS*	00000000 nullVector
00007098 g     O .text	00000012 usbDescriptorDevice
00007126  w      .text	00000000 __vector_22
0000715a g     F .text	00000000 __vector_1
00800113 g     O .bss	0000000b usbTxBuf
000070d8 g       .text	00000000 __trampolines_start
00007882 g       .text	00000000 _etext
00007852 g     F .text	00000010 __eerd_byte_m328p
000070d4 g     O .text	00000004 usbDescriptorString0
00007126  w      .text	00000000 __vector_24
00007126  w      .text	00000000 __vector_12
00007126 g       .text	00000000 __bad_interrupt
00007888 g       *ABS*	00000000 __data_load_end
00007126  w      .text	00000000 __vector_6
00007128 g       .text	00000000 usbCrc16
000070d8 g       .text	00000000 __trampolines_end
00007126  w      .text	00000000 __vector_3
000070e4 g     F .text	00000018 __BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND
00007126  w      .text	00000000 __vector_23
00007882 g       *ABS*	00000000 __data_load_start
000070d8 g       .text	00000000 __dtors_end
0080013d g       .bss	00000000 __bss_end
00007126  w      .text	00000000 __vector_25
00007068 g     O .text	0000001e bootloader__do_spm
00007126  w      .text	00000000 __vector_11
000070d8  w      .text	00000000 __init
00007126  w      .text	00000000 __vector_13
00007152 g       .text	00000000 usbCrc16Append
00007126  w      .text	00000000 __vector_17
00007126  w      .text	00000000 __vector_19
00007126  w      .text	00000000 __vector_7
00007862 g     F .text	0000001c __eewr_byte_m328p
00007086 g     O .text	00000012 usbDescriptorConfiguration
00007112 g       .text	00000010 .hidden __do_clear_bss
0080011e g     O .bss	00000001 usbDeviceAddr
00810000 g       .stab	00000000 __eeprom_end
0080011f g     O .bss	00000001 usbRxToken
00007000 g       .text	00000000 __vectors
00800106 g       .data	00000000 __data_end
000070b8 g     O .text	0000001c usbDescriptorStringVendor
00800120 g     O .bss	00000001 usbInputBufOffset
00007000  w      .text	00000000 __vector_default
00007126  w      .text	00000000 __vector_5
00007864 g       .text	00000000 __eewr_r18_m328p
000070d8 g       .text	00000000 __ctors_start
000070fc g       .text	00000016 .hidden __do_copy_data
00007382 g     F .text	00000094 usbFunctionSetup_USBASP_FUNC_TRANSMIT
00800106 g       .bss	00000000 __bss_start
00007412 g     F .text	00000448 main
00007126  w      .text	00000000 __vector_4
00800101 g     O .data	00000001 usbTxLen
00000000  w      *ABS*	00000000 __heap_end
00007126  w      .text	00000000 __vector_9
00007126  w      .text	00000000 __vector_2
00800121 g     O .bss	00000002 usbMsgPtr
00007126  w      .text	00000000 __vector_21
00007126  w      .text	00000000 __vector_15
00800123 g     O .bss	00000001 usbRxLen
000070d8 g       .text	00000000 __dtors_start
000070d8 g       .text	00000000 __ctors_end
000008ff  w      *ABS*	00000000 __stack
00800124 g     O .bss	00000001 usbNewDeviceAddr
00800106 g       .data	00000000 _edata
0080013f g       .noinit	00000000 _end
00007126  w      .text	00000000 __vector_8
0000787e  w      .text	00000000 .hidden exit
00800125 g     O .bss	00000001 usbCurrentTok
000070aa g     O .text	0000000e usbDescriptorStringDevice
0000787e g       .text	00000000 .hidden _exit
00800126 g     O .bss	00000001 usbConfiguration
00007126  w      .text	00000000 __vector_14
00007126  w      .text	00000000 __vector_10
00800127 g     O .bss	00000016 usbRxBuf
00007126  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
00007126  w      .text	00000000 __vector_18
00007126  w      .text	00000000 __vector_20



Disassembly of section .text:

00007000 <__vectors>:
    7000:	6b c0       	rjmp	.+214    	; 0x70d8 <__ctors_end>
    7002:	00 00       	nop
    7004:	aa c0       	rjmp	.+340    	; 0x715a <__vector_1>
    7006:	00 00       	nop
    7008:	8e c0       	rjmp	.+284    	; 0x7126 <__bad_interrupt>
    700a:	00 00       	nop
    700c:	8c c0       	rjmp	.+280    	; 0x7126 <__bad_interrupt>
    700e:	00 00       	nop
    7010:	8a c0       	rjmp	.+276    	; 0x7126 <__bad_interrupt>
    7012:	00 00       	nop
    7014:	88 c0       	rjmp	.+272    	; 0x7126 <__bad_interrupt>
    7016:	00 00       	nop
    7018:	86 c0       	rjmp	.+268    	; 0x7126 <__bad_interrupt>
    701a:	00 00       	nop
    701c:	84 c0       	rjmp	.+264    	; 0x7126 <__bad_interrupt>
    701e:	00 00       	nop
    7020:	82 c0       	rjmp	.+260    	; 0x7126 <__bad_interrupt>
    7022:	00 00       	nop
    7024:	80 c0       	rjmp	.+256    	; 0x7126 <__bad_interrupt>
    7026:	00 00       	nop
    7028:	7e c0       	rjmp	.+252    	; 0x7126 <__bad_interrupt>
    702a:	00 00       	nop
    702c:	7c c0       	rjmp	.+248    	; 0x7126 <__bad_interrupt>
    702e:	00 00       	nop
    7030:	7a c0       	rjmp	.+244    	; 0x7126 <__bad_interrupt>
    7032:	00 00       	nop
    7034:	78 c0       	rjmp	.+240    	; 0x7126 <__bad_interrupt>
    7036:	00 00       	nop
    7038:	76 c0       	rjmp	.+236    	; 0x7126 <__bad_interrupt>
    703a:	00 00       	nop
    703c:	74 c0       	rjmp	.+232    	; 0x7126 <__bad_interrupt>
    703e:	00 00       	nop
    7040:	72 c0       	rjmp	.+228    	; 0x7126 <__bad_interrupt>
    7042:	00 00       	nop
    7044:	70 c0       	rjmp	.+224    	; 0x7126 <__bad_interrupt>
    7046:	00 00       	nop
    7048:	6e c0       	rjmp	.+220    	; 0x7126 <__bad_interrupt>
    704a:	00 00       	nop
    704c:	6c c0       	rjmp	.+216    	; 0x7126 <__bad_interrupt>
    704e:	00 00       	nop
    7050:	6a c0       	rjmp	.+212    	; 0x7126 <__bad_interrupt>
    7052:	00 00       	nop
    7054:	68 c0       	rjmp	.+208    	; 0x7126 <__bad_interrupt>
    7056:	00 00       	nop
    7058:	66 c0       	rjmp	.+204    	; 0x7126 <__bad_interrupt>
    705a:	00 00       	nop
    705c:	64 c0       	rjmp	.+200    	; 0x7126 <__bad_interrupt>
    705e:	00 00       	nop
    7060:	62 c0       	rjmp	.+196    	; 0x7126 <__bad_interrupt>
    7062:	00 00       	nop
    7064:	60 c0       	rjmp	.+192    	; 0x7126 <__bad_interrupt>
	...

00007068 <bootloader__do_spm>:
    7068:	ec 2d fd 2d b7 b6 b0 fc fd cf 27 bf e8 95 b7 b6     .-.-......'.....
    7078:	b0 fc fd cf 21 e1 b7 b6 b6 fc f4 cf 08 95           ....!.........

00007086 <usbDescriptorConfiguration>:
    7086:	09 02 12 00 01 01 00 80 32 09 04 00 00 00 00 00     ........2.......
	...

00007098 <usbDescriptorDevice>:
    7098:	12 01 10 01 ff 00 00 08 c0 16 dc 05 02 01 01 02     ................
    70a8:	00 01                                               ..

000070aa <usbDescriptorStringDevice>:
    70aa:	0e 03 55 00 53 00 42 00 61 00 73 00 70 00           ..U.S.B.a.s.p.

000070b8 <usbDescriptorStringVendor>:
    70b8:	1c 03 77 00 77 00 77 00 2e 00 66 00 69 00 73 00     ..w.w.w...f.i.s.
    70c8:	63 00 68 00 6c 00 2e 00 64 00 65 00                 c.h.l...d.e.

000070d4 <usbDescriptorString0>:
    70d4:	04 03 09 04                                         ....

000070d8 <__ctors_end>:
    70d8:	11 24       	eor	r1, r1
    70da:	1f be       	out	0x3f, r1	; 63
    70dc:	cf ef       	ldi	r28, 0xFF	; 255
    70de:	d8 e0       	ldi	r29, 0x08	; 8
    70e0:	de bf       	out	0x3e, r29	; 62
    70e2:	cd bf       	out	0x3d, r28	; 61

000070e4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND>:
    70e4:	24 b7       	in	r18, 0x34	; 52
    70e6:	d8 e0       	ldi	r29, 0x08	; 8
    70e8:	ce ef       	ldi	r28, 0xFE	; 254
    70ea:	39 91       	ld	r19, Y+
    70ec:	38 33       	cpi	r19, 0x38	; 56
    70ee:	39 91       	ld	r19, Y+
    70f0:	09 f0       	breq	.+2      	; 0x70f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5>

000070f2 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_mismatch5>:
    70f2:	3f ef       	ldi	r19, 0xFF	; 255

000070f4 <__BOOTLOADERENTRY_FROMSOFTWARE__bootup_investigate_RAMEND_done5>:
    70f4:	30 93 3e 01 	sts	0x013E, r19
    70f8:	20 93 3d 01 	sts	0x013D, r18

000070fc <__do_copy_data>:
    70fc:	11 e0       	ldi	r17, 0x01	; 1
    70fe:	a0 e0       	ldi	r26, 0x00	; 0
    7100:	b1 e0       	ldi	r27, 0x01	; 1
    7102:	e2 e8       	ldi	r30, 0x82	; 130
    7104:	f8 e7       	ldi	r31, 0x78	; 120
    7106:	02 c0       	rjmp	.+4      	; 0x710c <__do_copy_data+0x10>
    7108:	05 90       	lpm	r0, Z+
    710a:	0d 92       	st	X+, r0
    710c:	a6 30       	cpi	r26, 0x06	; 6
    710e:	b1 07       	cpc	r27, r17
    7110:	d9 f7       	brne	.-10     	; 0x7108 <__do_copy_data+0xc>

00007112 <__do_clear_bss>:
    7112:	11 e0       	ldi	r17, 0x01	; 1
    7114:	a6 e0       	ldi	r26, 0x06	; 6
    7116:	b1 e0       	ldi	r27, 0x01	; 1
    7118:	01 c0       	rjmp	.+2      	; 0x711c <.do_clear_bss_start>

0000711a <.do_clear_bss_loop>:
    711a:	1d 92       	st	X+, r1

0000711c <.do_clear_bss_start>:
    711c:	ad 33       	cpi	r26, 0x3D	; 61
    711e:	b1 07       	cpc	r27, r17
    7120:	e1 f7       	brne	.-8      	; 0x711a <.do_clear_bss_loop>
    7122:	77 d1       	rcall	.+750    	; 0x7412 <main>
    7124:	ac c3       	rjmp	.+1880   	; 0x787e <_exit>

00007126 <__bad_interrupt>:
    7126:	6c cf       	rjmp	.-296    	; 0x7000 <__vectors>

00007128 <usbCrc16>:
;   poly    r20+r21
;   scratch r23
;   resCrc  r24+r25 / r16+r17
;   ptr     X / Z
usbCrc16:
    mov     ptrL, argPtrL
    7128:	a8 2f       	mov	r26, r24
    mov     ptrH, argPtrH
    712a:	b9 2f       	mov	r27, r25
    ldi     resCrcL, 0
    712c:	80 e0       	ldi	r24, 0x00	; 0
    ldi     resCrcH, 0
    712e:	90 e0       	ldi	r25, 0x00	; 0
    ldi     polyL, lo8(0xa001)
    7130:	41 e0       	ldi	r20, 0x01	; 1
    ldi     polyH, hi8(0xa001)
    7132:	50 ea       	ldi	r21, 0xA0	; 160
    com     argLen      ; argLen = -argLen - 1: modified loop to ensure that carry is set
    7134:	60 95       	com	r22
    ldi     bitCnt, 0   ; loop counter with starnd condition = end condition
    7136:	30 e0       	ldi	r19, 0x00	; 0
    rjmp    usbCrcLoopEntry
    7138:	09 c0       	rjmp	.+18     	; 0x714c <usbCrcLoopEntry>

0000713a <usbCrcByteLoop>:
usbCrcByteLoop:
    ld      byte, ptr+
    713a:	2d 91       	ld	r18, X+
    eor     resCrcL, byte
    713c:	82 27       	eor	r24, r18

0000713e <usbCrcBitLoop>:
usbCrcBitLoop:
    ror     resCrcH     ; carry is always set here (see brcs jumps to here)
    713e:	97 95       	ror	r25
    ror     resCrcL
    7140:	87 95       	ror	r24
    brcs    usbCrcNoXor
    7142:	10 f0       	brcs	.+4      	; 0x7148 <usbCrcNoXor>
    eor     resCrcL, polyL
    7144:	84 27       	eor	r24, r20
    eor     resCrcH, polyH
    7146:	95 27       	eor	r25, r21

00007148 <usbCrcNoXor>:
usbCrcNoXor:
    subi    bitCnt, 224 ; (8 * 224) % 256 = 0; this loop iterates 8 times
    7148:	30 5e       	subi	r19, 0xE0	; 224
    brcs    usbCrcBitLoop
    714a:	c8 f3       	brcs	.-14     	; 0x713e <usbCrcBitLoop>

0000714c <usbCrcLoopEntry>:
usbCrcLoopEntry:
    subi    argLen, -1
    714c:	6f 5f       	subi	r22, 0xFF	; 255
    brcs    usbCrcByteLoop
    714e:	a8 f3       	brcs	.-22     	; 0x713a <usbCrcByteLoop>

00007150 <usbCrcReady>:
usbCrcReady:
    ret
    7150:	08 95       	ret

00007152 <usbCrc16Append>:

#endif /* USB_USE_FAST_CRC */

; extern unsigned usbCrc16Append(unsigned char *data, unsigned char len);
usbCrc16Append:
    rcall   usbCrc16
    7152:	ea df       	rcall	.-44     	; 0x7128 <usbCrc16>
    st      ptr+, resCrcL
    7154:	8d 93       	st	X+, r24
    st      ptr+, resCrcH
    7156:	9d 93       	st	X+, r25
    ret
    7158:	08 95       	ret

0000715a <__vector_1>:
; Numbers in brackets are clocks counted from center of last sync bit
; when instruction starts

USB_INTR_VECTOR:
;order of registers pushed: YL, SREG YH, [sofError], bitcnt, shift, x1, x2, x3, x4, cnt
    push    YL                  ;[-25] push only what is necessary to sync with edge ASAP
    715a:	cf 93       	push	r28
    in      YL, SREG            ;[-23]
    715c:	cf b7       	in	r28, 0x3f	; 63
    push    YL                  ;[-22]
    715e:	cf 93       	push	r28
    push    YH                  ;[-20]
    7160:	df 93       	push	r29

00007162 <waitForJ>:
;sync up with J to K edge during sync pattern -- use fastest possible loops
;The first part waits at most 1 bit long since we must be in sync pattern.
;YL is guarenteed to be < 0x80 because I flag is clear. When we jump to
;waitForJ, ensure that this prerequisite is met.
waitForJ:
    inc     YL
    7162:	c3 95       	inc	r28
    sbis    USBIN, USBMINUS
    7164:	4c 9b       	sbis	0x09, 4	; 9
    brne    waitForJ        ; just make sure we have ANY timeout
    7166:	e9 f7       	brne	.-6      	; 0x7162 <waitForJ>

00007168 <waitForK>:
waitForK:
;The following code results in a sampling window of < 1/4 bit which meets the spec.
    sbis    USBIN, USBMINUS     ;[-15]
    7168:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK              ;[-14]
    716a:	0b c0       	rjmp	.+22     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    716c:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    716e:	09 c0       	rjmp	.+18     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7170:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    7172:	07 c0       	rjmp	.+14     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7174:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    7176:	05 c0       	rjmp	.+10     	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    7178:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    717a:	03 c0       	rjmp	.+6      	; 0x7182 <foundK>
    sbis    USBIN, USBMINUS
    717c:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    foundK
    717e:	01 c0       	rjmp	.+2      	; 0x7182 <foundK>
    sts     usbSofCount, YL
#endif  /* USB_COUNT_SOF */
#ifdef USB_SOF_HOOK
    USB_SOF_HOOK
#endif
    rjmp    sofError
    7180:	89 c0       	rjmp	.+274    	; 0x7294 <sofError>

00007182 <foundK>:
foundK:                         ;[-12]
;{3, 5} after falling D- edge, average delay: 4 cycles [we want 5 for center sampling]
;we have 1 bit time for setup purposes, then sample again. Numbers in brackets
;are cycles from center of first sync (double K) bit after the instruction
    push    bitcnt              ;[-12]
    7182:	6f 93       	push	r22
;   [---]                       ;[-11]
    lds     YL, usbInputBufOffset;[-10]
    7184:	c0 91 20 01 	lds	r28, 0x0120
;   [---]                       ;[-9]
    clr     YH                  ;[-8]
    7188:	dd 27       	eor	r29, r29
    subi    YL, lo8(-(usbRxBuf));[-7] [rx loop init]
    718a:	c9 5d       	subi	r28, 0xD9	; 217
    sbci    YH, hi8(-(usbRxBuf));[-6] [rx loop init]
    718c:	de 4f       	sbci	r29, 0xFE	; 254
    push    shift               ;[-5]
    718e:	2f 93       	push	r18
;   [---]                       ;[-4]
    ldi     bitcnt, 0x55        ;[-3] [rx loop init]
    7190:	65 e5       	ldi	r22, 0x55	; 85
    sbis    USBIN, USBMINUS     ;[-2] we want two bits K (sample 2 cycles too early)
    7192:	4c 9b       	sbis	0x09, 4	; 9
    rjmp    haveTwoBitsK        ;[-1]
    7194:	03 c0       	rjmp	.+6      	; 0x719c <haveTwoBitsK>
    pop     shift               ;[0] undo the push from before
    7196:	2f 91       	pop	r18
    pop     bitcnt              ;[2] undo the push from before
    7198:	6f 91       	pop	r22
    rjmp    waitForK            ;[4] this was not the end of sync, retry
    719a:	e6 cf       	rjmp	.-52     	; 0x7168 <waitForK>

0000719c <haveTwoBitsK>:

;----------------------------------------------------------------------------
; push more registers and initialize values while we sample the first bits:
;----------------------------------------------------------------------------
haveTwoBitsK:
    push    x1              ;[1]
    719c:	0f 93       	push	r16
    push    x2              ;[3]
    719e:	1f 93       	push	r17
    push    x3              ;[5]
    71a0:	4f 93       	push	r20
    ldi     shift, 0        ;[7]
    71a2:	20 e0       	ldi	r18, 0x00	; 0
    ldi     x3, 1<<4        ;[8] [rx loop init] first sample is inverse bit, compensate that
    71a4:	40 e1       	ldi	r20, 0x10	; 16
    push    x4              ;[9] == leap
    71a6:	5f 93       	push	r21

    in      x1, USBIN       ;[11] <-- sample bit 0
    71a8:	09 b1       	in	r16, 0x09	; 9
    andi    x1, USBMASK     ;[12]
    71aa:	04 71       	andi	r16, 0x14	; 20
    bst     x1, USBMINUS    ;[13]
    71ac:	04 fb       	bst	r16, 4
    bld     shift, 7        ;[14]
    71ae:	27 f9       	bld	r18, 7
    push    cnt             ;[15]
    71b0:	3f 93       	push	r19
    ldi     leap, 0         ;[17] [rx loop init]
    71b2:	50 e0       	ldi	r21, 0x00	; 0
    ldi     cnt, USB_BUFSIZE;[18] [rx loop init]
    71b4:	3b e0       	ldi	r19, 0x0B	; 11
    rjmp    rxbit1          ;[19] arrives at [21]
    71b6:	39 c0       	rjmp	.+114    	; 0x722a <rxbit1>

000071b8 <unstuff6>:

; duration of unstuffing code should be 10.66666667 cycles. We adjust "leap"
; accordingly to approximate this value in the long run.

unstuff6:
    andi    x2, USBMASK ;[03]
    71b8:	14 71       	andi	r17, 0x14	; 20
    ori     x3, 1<<6    ;[04] will not be shifted any more
    71ba:	40 64       	ori	r20, 0x40	; 64
    andi    shift, ~0x80;[05]
    71bc:	2f 77       	andi	r18, 0x7F	; 127
    mov     x1, x2      ;[06] sampled bit 7 is actually re-sampled bit 6
    71be:	01 2f       	mov	r16, r17
    subi    leap, -1    ;[07] total duration = 11 bits -> subtract 1/3
    71c0:	5f 5f       	subi	r21, 0xFF	; 255
    rjmp    didUnstuff6 ;[08]
    71c2:	1e c0       	rjmp	.+60     	; 0x7200 <didUnstuff6>

000071c4 <unstuff7>:

unstuff7:
    ori     x3, 1<<7    ;[09] will not be shifted any more
    71c4:	40 68       	ori	r20, 0x80	; 128
    in      x2, USBIN   ;[00] [10]  re-sample bit 7
    71c6:	19 b1       	in	r17, 0x09	; 9
    andi    x2, USBMASK ;[01]
    71c8:	14 71       	andi	r17, 0x14	; 20
    andi    shift, ~0x80;[02]
    71ca:	2f 77       	andi	r18, 0x7F	; 127
    subi    leap, 2     ;[03] total duration = 10 bits -> add 1/3
    71cc:	52 50       	subi	r21, 0x02	; 2
    rjmp    didUnstuff7 ;[04]
    71ce:	1f c0       	rjmp	.+62     	; 0x720e <didUnstuff7>

000071d0 <unstuffEven>:

unstuffEven:
    ori     x3, 1<<6    ;[09] will be shifted right 6 times for bit 0
    71d0:	40 64       	ori	r20, 0x40	; 64
    in      x1, USBIN   ;[00] [10]
    71d2:	09 b1       	in	r16, 0x09	; 9
    andi    shift, ~0x80;[01]
    71d4:	2f 77       	andi	r18, 0x7F	; 127
    andi    x1, USBMASK ;[02]
    71d6:	04 71       	andi	r16, 0x14	; 20
    breq    se0         ;[03]
    71d8:	d1 f1       	breq	.+116    	; 0x724e <se0>
    subi    leap, -1    ;[04] total duration = 11 bits -> subtract 1/3
    71da:	5f 5f       	subi	r21, 0xFF	; 255
    nop2                ;[05]
    71dc:	00 c0       	rjmp	.+0      	; 0x71de <unstuffEven+0xe>
    rjmp    didUnstuffE ;[06]
    71de:	23 c0       	rjmp	.+70     	; 0x7226 <didUnstuffE>

000071e0 <unstuffOdd>:

unstuffOdd:
    ori     x3, 1<<5    ;[09] will be shifted right 4 times for bit 1
    71e0:	40 62       	ori	r20, 0x20	; 32
    in      x2, USBIN   ;[00] [10]
    71e2:	19 b1       	in	r17, 0x09	; 9
    andi    shift, ~0x80;[01]
    71e4:	2f 77       	andi	r18, 0x7F	; 127
    andi    x2, USBMASK ;[02]
    71e6:	14 71       	andi	r17, 0x14	; 20
    breq    se0         ;[03]
    71e8:	91 f1       	breq	.+100    	; 0x724e <se0>
    subi    leap, -1    ;[04] total duration = 11 bits -> subtract 1/3
    71ea:	5f 5f       	subi	r21, 0xFF	; 255
    nop2                ;[05]
    71ec:	00 c0       	rjmp	.+0      	; 0x71ee <unstuffOdd+0xe>
    rjmp    didUnstuffO ;[06]
    71ee:	25 c0       	rjmp	.+74     	; 0x723a <didUnstuffO>

000071f0 <rxByteLoop>:

rxByteLoop:
    andi    x1, USBMASK ;[03]
    71f0:	04 71       	andi	r16, 0x14	; 20
    eor     x2, x1      ;[04]
    71f2:	10 27       	eor	r17, r16
    subi    leap, 1     ;[05]
    71f4:	51 50       	subi	r21, 0x01	; 1
    brpl    skipLeap    ;[06]
    71f6:	12 f4       	brpl	.+4      	; 0x71fc <skipLeap>
    subi    leap, -3    ;1 one leap cycle every 3rd byte -> 85 + 1/3 cycles per byte
    71f8:	5d 5f       	subi	r21, 0xFD	; 253
	...

000071fc <skipLeap>:
    nop                 ;1
skipLeap:
    subi    x2, 1       ;[08]
    71fc:	11 50       	subi	r17, 0x01	; 1
    ror     shift       ;[09]
    71fe:	27 95       	ror	r18

00007200 <didUnstuff6>:
didUnstuff6:
    cpi     shift, 0xfc ;[10]
    7200:	2c 3f       	cpi	r18, 0xFC	; 252
    in      x2, USBIN   ;[00] [11] <-- sample bit 7
    7202:	19 b1       	in	r17, 0x09	; 9
    brcc    unstuff6    ;[01]
    7204:	c8 f6       	brcc	.-78     	; 0x71b8 <unstuff6>
    andi    x2, USBMASK ;[02]
    7206:	14 71       	andi	r17, 0x14	; 20
    eor     x1, x2      ;[03]
    7208:	01 27       	eor	r16, r17
    subi    x1, 1       ;[04]
    720a:	01 50       	subi	r16, 0x01	; 1
    ror     shift       ;[05]
    720c:	27 95       	ror	r18

0000720e <didUnstuff7>:
didUnstuff7:
    cpi     shift, 0xfc ;[06]
    720e:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuff7    ;[07]
    7210:	c8 f6       	brcc	.-78     	; 0x71c4 <unstuff7>
    eor     x3, shift   ;[08] reconstruct: x3 is 1 at bit locations we changed, 0 at others
    7212:	42 27       	eor	r20, r18
    st      y+, x3      ;[09] store data
    7214:	49 93       	st	Y+, r20

00007216 <rxBitLoop>:
rxBitLoop:
    in      x1, USBIN   ;[00] [11] <-- sample bit 0/2/4
    7216:	09 b1       	in	r16, 0x09	; 9
    andi    x1, USBMASK ;[01]
    7218:	04 71       	andi	r16, 0x14	; 20
    eor     x2, x1      ;[02]
    721a:	10 27       	eor	r17, r16
    andi    x3, 0x3f    ;[03] topmost two bits reserved for 6 and 7
    721c:	4f 73       	andi	r20, 0x3F	; 63
    subi    x2, 1       ;[04]
    721e:	11 50       	subi	r17, 0x01	; 1
    ror     shift       ;[05]
    7220:	27 95       	ror	r18
    cpi     shift, 0xfc ;[06]
    7222:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuffEven ;[07]
    7224:	a8 f6       	brcc	.-86     	; 0x71d0 <unstuffEven>

00007226 <didUnstuffE>:
didUnstuffE:
    lsr     x3          ;[08]
    7226:	46 95       	lsr	r20
    lsr     x3          ;[09]
    7228:	46 95       	lsr	r20

0000722a <rxbit1>:
rxbit1:
    in      x2, USBIN   ;[00] [10] <-- sample bit 1/3/5
    722a:	19 b1       	in	r17, 0x09	; 9
    andi    x2, USBMASK ;[01]
    722c:	14 71       	andi	r17, 0x14	; 20
    breq    se0         ;[02]
    722e:	79 f0       	breq	.+30     	; 0x724e <se0>
    eor     x1, x2      ;[03]
    7230:	01 27       	eor	r16, r17
    subi    x1, 1       ;[04]
    7232:	01 50       	subi	r16, 0x01	; 1
    ror     shift       ;[05]
    7234:	27 95       	ror	r18
    cpi     shift, 0xfc ;[06]
    7236:	2c 3f       	cpi	r18, 0xFC	; 252
    brcc    unstuffOdd  ;[07]
    7238:	98 f6       	brcc	.-90     	; 0x71e0 <unstuffOdd>

0000723a <didUnstuffO>:
didUnstuffO:
    subi    bitcnt, 0xab;[08] == addi 0x55, 0x55 = 0x100/3
    723a:	6b 5a       	subi	r22, 0xAB	; 171
    brcs    rxBitLoop   ;[09]
    723c:	60 f3       	brcs	.-40     	; 0x7216 <rxBitLoop>

    subi    cnt, 1      ;[10]
    723e:	31 50       	subi	r19, 0x01	; 1
    in      x1, USBIN   ;[00] [11] <-- sample bit 6
    7240:	09 b1       	in	r16, 0x09	; 9
    brcc    rxByteLoop  ;[01]
    7242:	b0 f6       	brcc	.-84     	; 0x71f0 <rxByteLoop>
    rjmp    overflow
    7244:	00 c0       	rjmp	.+0      	; 0x7246 <overflow>

00007246 <overflow>:
*/

#define token   x1

overflow:
    ldi     x2, 1<<USB_INTR_PENDING_BIT
    7246:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ; clear any pending interrupts
    7248:	1c bb       	out	0x1c, r17	; 28

0000724a <ignorePacket>:
ignorePacket:
    clr     token
    724a:	00 27       	eor	r16, r16
    rjmp    storeTokenAndReturn
    724c:	17 c0       	rjmp	.+46     	; 0x727c <handleSetupOrOut>

0000724e <se0>:
; Processing of received packet (numbers in brackets are cycles after center of SE0)
;----------------------------------------------------------------------------
;This is the only non-error exit point for the software receiver loop
;we don't check any CRCs here because there is no time left.
se0:
    subi    cnt, USB_BUFSIZE    ;[5]
    724e:	3b 50       	subi	r19, 0x0B	; 11
    neg     cnt                 ;[6]
    7250:	31 95       	neg	r19
    sub     YL, cnt             ;[7]
    7252:	c3 1b       	sub	r28, r19
    sbci    YH, 0               ;[8]
    7254:	d0 40       	sbci	r29, 0x00	; 0
    ldi     x2, 1<<USB_INTR_PENDING_BIT ;[9]
    7256:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)       ;[10] clear pending intr and check flag later. SE0 should be over.
    7258:	1c bb       	out	0x1c, r17	; 28
    ld      token, y            ;[11]
    725a:	08 81       	ld	r16, Y
    cpi     token, USBPID_DATA0 ;[13]
    725c:	03 3c       	cpi	r16, 0xC3	; 195
    breq    handleData          ;[14]
    725e:	f9 f0       	breq	.+62     	; 0x729e <handleData>
    cpi     token, USBPID_DATA1 ;[15]
    7260:	0b 34       	cpi	r16, 0x4B	; 75
    breq    handleData          ;[16]
    7262:	e9 f0       	breq	.+58     	; 0x729e <handleData>
    lds     shift, usbDeviceAddr;[17]
    7264:	20 91 1e 01 	lds	r18, 0x011E
    ldd     x2, y+1             ;[19] ADDR and 1 bit endpoint number
    7268:	19 81       	ldd	r17, Y+1	; 0x01
    lsl     x2                  ;[21] shift out 1 bit endpoint number
    726a:	11 0f       	add	r17, r17
    cpse    x2, shift           ;[22]
    726c:	12 13       	cpse	r17, r18
    rjmp    ignorePacket        ;[23]
    726e:	ed cf       	rjmp	.-38     	; 0x724a <ignorePacket>
/* only compute endpoint number in x3 if required later */
#if USB_CFG_HAVE_INTRIN_ENDPOINT || USB_CFG_IMPLEMENT_FN_WRITEOUT
    ldd     x3, y+2             ;[24] endpoint number + crc
    rol     x3                  ;[26] shift in LSB of endpoint
#endif
    cpi     token, USBPID_IN    ;[27]
    7270:	09 36       	cpi	r16, 0x69	; 105
    breq    handleIn            ;[28]
    7272:	51 f1       	breq	.+84     	; 0x72c8 <handleIn>
    cpi     token, USBPID_SETUP ;[29]
    7274:	0d 32       	cpi	r16, 0x2D	; 45
    breq    handleSetupOrOut    ;[30]
    7276:	11 f0       	breq	.+4      	; 0x727c <handleSetupOrOut>
    cpi     token, USBPID_OUT   ;[31]
    7278:	01 3e       	cpi	r16, 0xE1	; 225
    brne    ignorePacket        ;[32] must be ack, nak or whatever
    727a:	39 f7       	brne	.-50     	; 0x724a <ignorePacket>

0000727c <handleSetupOrOut>:
    andi    x3, 0xf             ;[32]
    breq    storeTokenAndReturn ;[33]
    mov     token, x3           ;[34] indicate that this is endpoint x OUT
#endif
storeTokenAndReturn:
    sts     usbCurrentTok, token;[35]
    727c:	00 93 25 01 	sts	0x0125, r16

00007280 <doReturn>:
doReturn:
    POP_STANDARD                ;[37] 12...16 cycles
    7280:	3f 91       	pop	r19
    7282:	5f 91       	pop	r21
    7284:	4f 91       	pop	r20
    7286:	1f 91       	pop	r17
    7288:	0f 91       	pop	r16
    728a:	2f 91       	pop	r18
    728c:	6f 91       	pop	r22
    USB_LOAD_PENDING(YL)        ;[49]
    728e:	cc b3       	in	r28, 0x1c	; 28
    sbrc    YL, USB_INTR_PENDING_BIT;[50] check whether data is already arriving
    7290:	c0 fd       	sbrc	r28, 0
    rjmp    waitForJ            ;[51] save the pops and pushes -- a new interrupt is already pending
    7292:	67 cf       	rjmp	.-306    	; 0x7162 <waitForJ>

00007294 <sofError>:
sofError:
    POP_RETI                    ;macro call
    7294:	df 91       	pop	r29
    7296:	cf 91       	pop	r28
    7298:	cf bf       	out	0x3f, r28	; 63
    729a:	cf 91       	pop	r28
    reti
    729c:	18 95       	reti

0000729e <handleData>:

handleData:
#if USB_CFG_CHECK_CRC
    CRC_CLEANUP_AND_CHECK       ; jumps to ignorePacket if CRC error
#endif
    lds     shift, usbCurrentTok;[18]
    729e:	20 91 25 01 	lds	r18, 0x0125
    tst     shift               ;[20]
    72a2:	22 23       	and	r18, r18
    breq    doReturn            ;[21]
    72a4:	69 f3       	breq	.-38     	; 0x7280 <doReturn>
    lds     x2, usbRxLen        ;[22]
    72a6:	10 91 23 01 	lds	r17, 0x0123
    tst     x2                  ;[24]
    72aa:	11 23       	and	r17, r17
    brne    sendNakAndReti      ;[25]
    72ac:	39 f5       	brne	.+78     	; 0x72fc <sendNakAndReti>
; 2006-03-11: The following two lines fix a problem where the device was not
; recognized if usbPoll() was called less frequently than once every 4 ms.
    cpi     cnt, 4              ;[26] zero sized data packets are status phase only -- ignore and ack
    72ae:	34 30       	cpi	r19, 0x04	; 4
    brmi    sendAckAndReti      ;[27] keep rx buffer clean -- we must not NAK next SETUP
    72b0:	3a f1       	brmi	.+78     	; 0x7300 <sendAckAndReti>
#if USB_CFG_CHECK_DATA_TOGGLING
    sts     usbCurrentDataToken, token  ; store for checking by C code
#endif
    sts     usbRxLen, cnt       ;[28] store received data, swap buffers
    72b2:	30 93 23 01 	sts	0x0123, r19
    sts     usbRxToken, shift   ;[30]
    72b6:	20 93 1f 01 	sts	0x011F, r18
    lds     x2, usbInputBufOffset;[32] swap buffers
    72ba:	10 91 20 01 	lds	r17, 0x0120
    ldi     cnt, USB_BUFSIZE    ;[34]
    72be:	3b e0       	ldi	r19, 0x0B	; 11
    sub     cnt, x2             ;[35]
    72c0:	31 1b       	sub	r19, r17
    sts     usbInputBufOffset, cnt;[36] buffers now swapped
    72c2:	30 93 20 01 	sts	0x0120, r19
    rjmp    sendAckAndReti      ;[38] 40 + 17 = 57 until SOP
    72c6:	1c c0       	rjmp	.+56     	; 0x7300 <sendAckAndReti>

000072c8 <handleIn>:

handleIn:
;We don't send any data as long as the C code has not processed the current
;input data and potentially updated the output data. That's more efficient
;in terms of code size than clearing the tx buffers when a packet is received.
    lds     x1, usbRxLen        ;[30]
    72c8:	00 91 23 01 	lds	r16, 0x0123
    cpi     x1, 1               ;[32] negative values are flow control, 0 means "buffer free"
    72cc:	01 30       	cpi	r16, 0x01	; 1
    brge    sendNakAndReti      ;[33] unprocessed input packet?
    72ce:	b4 f4       	brge	.+44     	; 0x72fc <sendNakAndReti>
    ldi     x1, USBPID_NAK      ;[34] prepare value for usbTxLen
    72d0:	0a e5       	ldi	r16, 0x5A	; 90
    brne    sendNakAndReti      ;[36]
#else
    brne    handleIn1           ;[36]
#endif
#endif
    lds     cnt, usbTxLen       ;[37]
    72d2:	30 91 01 01 	lds	r19, 0x0101
    sbrc    cnt, 4              ;[39] all handshake tokens have bit 4 set
    72d6:	34 fd       	sbrc	r19, 4
    rjmp    sendCntAndReti      ;[40] 42 + 16 = 58 until SOP
    72d8:	14 c0       	rjmp	.+40     	; 0x7302 <sendCntAndReti>
    sts     usbTxLen, x1        ;[41] x1 == USBPID_NAK from above
    72da:	00 93 01 01 	sts	0x0101, r16
    ldi     YL, lo8(usbTxBuf)   ;[43]
    72de:	c3 e1       	ldi	r28, 0x13	; 19
    ldi     YH, hi8(usbTxBuf)   ;[44]
    72e0:	d1 e0       	ldi	r29, 0x01	; 1
    rjmp    usbSendAndReti      ;[45] 57 + 12 = 59 until SOP
    72e2:	13 c0       	rjmp	.+38     	; 0x730a <usbSendAndReti>

000072e4 <bitstuffN>:
; J = (D+ = 0), (D- = 1)
; K = (D+ = 1), (D- = 0)
; Spec allows 7.5 bit times from EOP to SOP for replies

bitstuffN:
    eor     x1, x4          ;[5]
    72e4:	05 27       	eor	r16, r21
    ldi     x2, 0           ;[6]
    72e6:	10 e0       	ldi	r17, 0x00	; 0
    nop2                    ;[7]
    72e8:	00 c0       	rjmp	.+0      	; 0x72ea <bitstuffN+0x6>
    nop                     ;[9]
    72ea:	00 00       	nop
    out     USBOUT, x1      ;[10] <-- out
    72ec:	0b b9       	out	0x0b, r16	; 11
    rjmp    didStuffN       ;[0]
    72ee:	1a c0       	rjmp	.+52     	; 0x7324 <didStuffN>

000072f0 <bitstuff6>:
    
bitstuff6:
    eor     x1, x4          ;[5]
    72f0:	05 27       	eor	r16, r21
    ldi     x2, 0           ;[6] Carry is zero due to brcc
    72f2:	10 e0       	ldi	r17, 0x00	; 0
    rol     shift           ;[7] compensate for ror shift at branch destination
    72f4:	22 1f       	adc	r18, r18
    rjmp    didStuff6       ;[8]
    72f6:	1d c0       	rjmp	.+58     	; 0x7332 <didStuff6>

000072f8 <bitstuff7>:

bitstuff7:
    ldi     x2, 0           ;[2] Carry is zero due to brcc
    72f8:	10 e0       	ldi	r17, 0x00	; 0
    rjmp    didStuff7       ;[3]
    72fa:	21 c0       	rjmp	.+66     	; 0x733e <didStuff7>

000072fc <sendNakAndReti>:


sendNakAndReti:
    ldi     x3, USBPID_NAK  ;[-18]
    72fc:	4a e5       	ldi	r20, 0x5A	; 90
    rjmp    sendX3AndReti   ;[-17]
    72fe:	02 c0       	rjmp	.+4      	; 0x7304 <sendX3AndReti>

00007300 <sendAckAndReti>:
sendAckAndReti:
    ldi     cnt, USBPID_ACK ;[-17]
    7300:	32 ed       	ldi	r19, 0xD2	; 210

00007302 <sendCntAndReti>:
sendCntAndReti:
    mov     x3, cnt         ;[-16]
    7302:	43 2f       	mov	r20, r19

00007304 <sendX3AndReti>:
sendX3AndReti:
    ldi     YL, 20          ;[-15] x3==r20 address is 20
    7304:	c4 e1       	ldi	r28, 0x14	; 20
    ldi     YH, 0           ;[-14]
    7306:	d0 e0       	ldi	r29, 0x00	; 0
    ldi     cnt, 2          ;[-13]
    7308:	32 e0       	ldi	r19, 0x02	; 2

0000730a <usbSendAndReti>:
;uses: x1...x4, btcnt, shift, cnt, Y
;Numbers in brackets are time since first bit of sync pattern is sent
;We don't match the transfer rate exactly (don't insert leap cycles every third
;byte) because the spec demands only 1.5% precision anyway.
usbSendAndReti:             ; 12 cycles until SOP
    in      x2, USBDDR      ;[-12]
    730a:	1a b1       	in	r17, 0x0a	; 10
    ori     x2, USBMASK     ;[-11]
    730c:	14 61       	ori	r17, 0x14	; 20
    sbi     USBOUT, USBMINUS;[-10] prepare idle state; D+ and D- must have been 0 (no pullups)
    730e:	5c 9a       	sbi	0x0b, 4	; 11
    in      x1, USBOUT      ;[-8] port mirror for tx loop
    7310:	0b b1       	in	r16, 0x0b	; 11
    out     USBDDR, x2      ;[-7] <- acquire bus
    7312:	1a b9       	out	0x0a, r17	; 10
; need not init x2 (bitstuff history) because sync starts with 0
    ldi     x4, USBMASK     ;[-6] exor mask
    7314:	54 e1       	ldi	r21, 0x14	; 20
    ldi     shift, 0x80     ;[-5] sync byte is first byte sent
    7316:	20 e8       	ldi	r18, 0x80	; 128

00007318 <txByteLoop>:
txByteLoop:
    ldi     bitcnt, 0x35    ;[-4] [6] binary 0011 0101
    7318:	65 e3       	ldi	r22, 0x35	; 53

0000731a <txBitLoop>:
txBitLoop:
    sbrs    shift, 0        ;[-3] [7]
    731a:	20 ff       	sbrs	r18, 0
    eor     x1, x4          ;[-2] [8]
    731c:	05 27       	eor	r16, r21
    out     USBOUT, x1      ;[-1] [9] <-- out N
    731e:	0b b9       	out	0x0b, r16	; 11
    ror     shift           ;[0] [10]
    7320:	27 95       	ror	r18
    ror     x2              ;[1]
    7322:	17 95       	ror	r17

00007324 <didStuffN>:
didStuffN:
    cpi     x2, 0xfc        ;[2]
    7324:	1c 3f       	cpi	r17, 0xFC	; 252
    brcc    bitstuffN       ;[3]
    7326:	f0 f6       	brcc	.-68     	; 0x72e4 <bitstuffN>
    lsr     bitcnt          ;[4]
    7328:	66 95       	lsr	r22
    brcc    txBitLoop       ;[5]
    732a:	b8 f7       	brcc	.-18     	; 0x731a <txBitLoop>
    brne    txBitLoop       ;[6]
    732c:	b1 f7       	brne	.-20     	; 0x731a <txBitLoop>

    sbrs    shift, 0        ;[7]
    732e:	20 ff       	sbrs	r18, 0
    eor     x1, x4          ;[8]
    7330:	05 27       	eor	r16, r21

00007332 <didStuff6>:
didStuff6:
    out     USBOUT, x1      ;[-1] [9] <-- out 6
    7332:	0b b9       	out	0x0b, r16	; 11
    ror     shift           ;[0] [10]
    7334:	27 95       	ror	r18
    ror     x2              ;[1]
    7336:	17 95       	ror	r17
    cpi     x2, 0xfc        ;[2]
    7338:	1c 3f       	cpi	r17, 0xFC	; 252
    brcc    bitstuff6       ;[3]
    733a:	d0 f6       	brcc	.-76     	; 0x72f0 <bitstuff6>
    ror     shift           ;[4]
    733c:	27 95       	ror	r18

0000733e <didStuff7>:
didStuff7:
    ror     x2              ;[5]
    733e:	17 95       	ror	r17
    sbrs    x2, 7           ;[6]
    7340:	17 ff       	sbrs	r17, 7
    eor     x1, x4          ;[7]
    7342:	05 27       	eor	r16, r21
    nop                     ;[8]
    7344:	00 00       	nop
    cpi     x2, 0xfc        ;[9]
    7346:	1c 3f       	cpi	r17, 0xFC	; 252
    out     USBOUT, x1      ;[-1][10] <-- out 7
    7348:	0b b9       	out	0x0b, r16	; 11
    brcc    bitstuff7       ;[0] [11]
    734a:	b0 f6       	brcc	.-84     	; 0x72f8 <bitstuff7>
    ld      shift, y+       ;[1]
    734c:	29 91       	ld	r18, Y+
    dec     cnt             ;[3]
    734e:	3a 95       	dec	r19
    brne    txByteLoop      ;[4]
    7350:	19 f7       	brne	.-58     	; 0x7318 <txByteLoop>
;make SE0:
    cbr     x1, USBMASK     ;[5] prepare SE0 [spec says EOP may be 21 to 25 cycles]
    7352:	0b 7e       	andi	r16, 0xEB	; 235
    lds     x2, usbNewDeviceAddr;[6]
    7354:	10 91 24 01 	lds	r17, 0x0124
    lsl     x2              ;[8] we compare with left shifted address
    7358:	11 0f       	add	r17, r17
    subi    YL, 20 + 2      ;[9] Only assign address on data packets, not ACK/NAK in x3
    735a:	c6 51       	subi	r28, 0x16	; 22
    sbci    YH, 0           ;[10]
    735c:	d0 40       	sbci	r29, 0x00	; 0
    out     USBOUT, x1      ;[11] <-- out SE0 -- from now 2 bits = 22 cycles until bus idle
    735e:	0b b9       	out	0x0b, r16	; 11
;2006-03-06: moved transfer of new address to usbDeviceAddr from C-Code to asm:
;set address only after data packet was sent, not after handshake
    breq    skipAddrAssign  ;[0]
    7360:	11 f0       	breq	.+4      	; 0x7366 <skipAddrAssign>
    sts     usbDeviceAddr, x2; if not skipped: SE0 is one cycle longer
    7362:	10 93 1e 01 	sts	0x011E, r17

00007366 <skipAddrAssign>:
skipAddrAssign:
;end of usbDeviceAddress transfer
    ldi     x2, 1<<USB_INTR_PENDING_BIT;[2] int0 occurred during TX -- clear pending flag
    7366:	11 e0       	ldi	r17, 0x01	; 1
    USB_STORE_PENDING(x2)   ;[3]
    7368:	1c bb       	out	0x1c, r17	; 28
    ori     x1, USBIDLE     ;[4]
    736a:	00 61       	ori	r16, 0x10	; 16
    in      x2, USBDDR      ;[5]
    736c:	1a b1       	in	r17, 0x0a	; 10
    cbr     x2, USBMASK     ;[6] set both pins to input
    736e:	1b 7e       	andi	r17, 0xEB	; 235
    mov     x3, x1          ;[7]
    7370:	40 2f       	mov	r20, r16
    cbr     x3, USBMASK     ;[8] configure no pullup on both pins
    7372:	4b 7e       	andi	r20, 0xEB	; 235
    ldi     x4, 4           ;[9]
    7374:	54 e0       	ldi	r21, 0x04	; 4

00007376 <se0Delay>:
se0Delay:
    dec     x4              ;[10] [13] [16] [19]
    7376:	5a 95       	dec	r21
    brne    se0Delay        ;[11] [14] [17] [20]
    7378:	f1 f7       	brne	.-4      	; 0x7376 <se0Delay>
    out     USBOUT, x1      ;[21] <-- out J (idle) -- end of SE0 (EOP signal)
    737a:	0b b9       	out	0x0b, r16	; 11
    out     USBDDR, x2      ;[22] <-- release bus now
    737c:	1a b9       	out	0x0a, r17	; 10
    out     USBOUT, x3      ;[23] <-- ensure no pull-up resistors are active
    737e:	4b b9       	out	0x0b, r20	; 11
    rjmp    doReturn
    7380:	7f cf       	rjmp	.-258    	; 0x7280 <doReturn>

00007382 <usbFunctionSetup_USBASP_FUNC_TRANSMIT>:
#endif

/* ------------------------------------------------------------------------ */


uchar usbFunctionSetup_USBASP_FUNC_TRANSMIT(usbRequest_t *rq) {
    7382:	fc 01       	movw	r30, r24
  uchar rval = 0;
  usbWord_t address;
  address.bytes[1] = rq->wValue.bytes[1];
    7384:	33 81       	ldd	r19, Z+3	; 0x03
    7386:	93 2f       	mov	r25, r19
  address.bytes[0] = rq->wIndex.bytes[0];
    7388:	44 81       	ldd	r20, Z+4	; 0x04
    738a:	84 2f       	mov	r24, r20

  if(rq->wValue.bytes[0] == 0x30){        /* read signature */
    738c:	22 81       	ldd	r18, Z+2	; 0x02
    738e:	20 33       	cpi	r18, 0x30	; 48
    7390:	39 f4       	brne	.+14     	; 0x73a0 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x1e>
    rval = rq->wIndex.bytes[0] & 3;
    7392:	43 70       	andi	r20, 0x03	; 3
    rval = signatureBytes[rval];
    7394:	e4 2f       	mov	r30, r20
    7396:	f0 e0       	ldi	r31, 0x00	; 0
    7398:	ee 5f       	subi	r30, 0xFE	; 254
    739a:	fe 4f       	sbci	r31, 0xFE	; 254
    739c:	80 81       	ld	r24, Z
    739e:	08 95       	ret
defined (__AVR_ATmega1280__) ||													\
defined (__AVR_ATmega1281__) ||													\
defined (__AVR_ATmega1284__) || defined (__AVR_ATmega1284P__)  ||													\
defined (__AVR_ATmega2560__) ||													\
defined (__AVR_ATmega2561__)
  }else if(rq->wValue.bytes[0] == 0x58 && rq->wValue.bytes[1] == 0x00){  /* read lock bits */
    73a0:	28 35       	cpi	r18, 0x58	; 88
    73a2:	29 f4       	brne	.+10     	; 0x73ae <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x2c>
    73a4:	31 11       	cpse	r19, r1
    73a6:	0e c0       	rjmp	.+28     	; 0x73c4 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x42>
      rval = boot_lock_fuse_bits_get(GET_LOCK_BITS);
    73a8:	e1 e0       	ldi	r30, 0x01	; 1
    73aa:	f0 e0       	ldi	r31, 0x00	; 0
    73ac:	06 c0       	rjmp	.+12     	; 0x73ba <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x38>
  }else if(rq->wValue.bytes[0] == 0x50 && rq->wValue.bytes[1] == 0x00){  /* read lfuse bits */
    73ae:	20 35       	cpi	r18, 0x50	; 80
    73b0:	99 f4       	brne	.+38     	; 0x73d8 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x56>
    73b2:	31 11       	cpse	r19, r1
    73b4:	0c c0       	rjmp	.+24     	; 0x73ce <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x4c>
      rval = boot_lock_fuse_bits_get(GET_LOW_FUSE_BITS);
    73b6:	e0 e0       	ldi	r30, 0x00	; 0
    73b8:	f0 e0       	ldi	r31, 0x00	; 0
    73ba:	89 e0       	ldi	r24, 0x09	; 9
    73bc:	80 93 57 00 	sts	0x0057, r24
    73c0:	84 91       	lpm	r24, Z
    73c2:	08 95       	ret
  }else if(rq->wValue.bytes[0] == 0x58 && rq->wValue.bytes[1] == 0x08){  /* read hfuse bits */
    73c4:	38 30       	cpi	r19, 0x08	; 8
    73c6:	19 f5       	brne	.+70     	; 0x740e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x8c>
      rval = boot_lock_fuse_bits_get(GET_HIGH_FUSE_BITS);
    73c8:	e3 e0       	ldi	r30, 0x03	; 3
    73ca:	f0 e0       	ldi	r31, 0x00	; 0
    73cc:	f6 cf       	rjmp	.-20     	; 0x73ba <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x38>
  }else if(rq->wValue.bytes[0] == 0x50 && rq->wValue.bytes[1] == 0x08){  /* read efuse bits */
    73ce:	38 30       	cpi	r19, 0x08	; 8
    73d0:	f1 f4       	brne	.+60     	; 0x740e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x8c>
      rval = boot_lock_fuse_bits_get(GET_EXTENDED_FUSE_BITS );
    73d2:	e2 e0       	ldi	r30, 0x02	; 2
    73d4:	f0 e0       	ldi	r31, 0x00	; 0
    73d6:	f1 cf       	rjmp	.-30     	; 0x73ba <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x38>
#else
  #warning "HAVE_READ_LOCK_FUSE is activated but MCU unknown -> will not support this feature"
#endif
#endif
#if HAVE_FLASH_BYTE_READACCESS
  }else if(rq->wValue.bytes[0] == 0x20){  /* read FLASH low  byte */
    73d8:	20 32       	cpi	r18, 0x20	; 32
    73da:	21 f4       	brne	.+8      	; 0x73e4 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x62>
#if ((FLASHEND) > 65535)
      rval = pgm_read_byte_far((((addr_t)address.word)<<1)+0);
#else
      rval = pgm_read_byte((((addr_t)address.word)<<1)+0);
    73dc:	fc 01       	movw	r30, r24
    73de:	ee 0f       	add	r30, r30
    73e0:	ff 1f       	adc	r31, r31
    73e2:	06 c0       	rjmp	.+12     	; 0x73f0 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x6e>
#endif
  }else if(rq->wValue.bytes[0] == 0x28){  /* read FLASH high byte */
    73e4:	28 32       	cpi	r18, 0x28	; 40
    73e6:	31 f4       	brne	.+12     	; 0x73f4 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x72>
#if ((FLASHEND) > 65535)
      rval = pgm_read_byte_far((((addr_t)address.word)<<1)+1);
#else
      rval = pgm_read_byte((((addr_t)address.word)<<1)+1);
    73e8:	fc 01       	movw	r30, r24
    73ea:	ee 0f       	add	r30, r30
    73ec:	ff 1f       	adc	r31, r31
    73ee:	31 96       	adiw	r30, 0x01	; 1
    73f0:	84 91       	lpm	r24, Z
    73f2:	08 95       	ret
#endif
#endif
#if HAVE_EEPROM_BYTE_ACCESS
  }else if(rq->wValue.bytes[0] == 0xa0){  /* read EEPROM byte */
    73f4:	20 3a       	cpi	r18, 0xA0	; 160
    73f6:	09 f4       	brne	.+2      	; 0x73fa <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x78>
      rval = eeprom_read_byte((void *)address.word);
    73f8:	2c c2       	rjmp	.+1112   	; 0x7852 <__eerd_byte_m328p>
    73fa:	20 3c       	cpi	r18, 0xC0	; 192
  }else if(rq->wValue.bytes[0] == 0xc0){  /* write EEPROM byte */
    73fc:	19 f4       	brne	.+6      	; 0x7404 <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x82>
    73fe:	65 81       	ldd	r22, Z+5	; 0x05
      eeprom_write_byte((void *)address.word, rq->wIndex.bytes[1]);
    7400:	30 d2       	rcall	.+1120   	; 0x7862 <__eewr_byte_m328p>
    7402:	05 c0       	rjmp	.+10     	; 0x740e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x8c>
    7404:	2f 3f       	cpi	r18, 0xFF	; 255
    7406:	19 f4       	brne	.+6      	; 0x740e <usbFunctionSetup_USBASP_FUNC_TRANSMIT+0x8c>
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x5c) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x30) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0xac) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x50) && (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x58) && \
	    (HAVE_BOOTLOADER_HIDDENEXITCOMMAND != 0x38))
  }else if(rq->wValue.bytes[0] == (HAVE_BOOTLOADER_HIDDENEXITCOMMAND)){  /* cause a bootLoaderExit at disconnect */
    7408:	81 ef       	ldi	r24, 0xF1	; 241
    740a:	80 93 11 01 	sts	0x0111, r24
      stayinloader = 0xf1;  /* we need to be connected - so assume it */
    740e:	80 e0       	ldi	r24, 0x00	; 0
    7410:	08 95       	ret

00007412 <main>:

static inline void  bootLoaderInit(void)
{
#if (BOOTLOADER_IGNOREPROGBUTTON)
#else
    PIN_DDR(JUMPER_PORT)  = 0;
    7412:	1a b8       	out	0x0a, r1	; 10
    PIN_PORT(JUMPER_PORT) = (1<< PIN(JUMPER_PORT, JUMPER_BIT)); /* activate pull-up */
    7414:	80 e8       	ldi	r24, 0x80	; 128
    7416:	8b b9       	out	0x0b, r24	; 11
    /* initialize  */
    bootLoaderInit();
    odDebugInit();
    DBG1(0x00, 0, 0);
#ifndef NO_FLASH_WRITE
    GICR = (1 << IVCE);  /* enable change of interrupt vectors */
    7418:	81 e0       	ldi	r24, 0x01	; 1
    741a:	85 bf       	out	0x35, r24	; 53
    GICR = (1 << IVSEL); /* move interrupts to boot flash section */
    741c:	82 e0       	ldi	r24, 0x02	; 2
    741e:	85 bf       	out	0x35, r24	; 53
       * ...unimportant - just save some opcodes
       */
#else
#define _mydelay_ms(millisecs) __DO_NOT_USE_DIRECTLY_mywait(0+((((F_CPU/1000)*millisecs)/__MYWAIT_CYCLESperLOOP)/65536), (uint16_t)(((uint32_t)(((F_CPU/1000)*millisecs)/__MYWAIT_CYCLESperLOOP))%(uint32_t)65536))
static void __DO_NOT_USE_DIRECTLY_mywait(uint8_t waitloopcnt, uint16_t remainder) {
    asm volatile (
    7420:	e0 e0       	ldi	r30, 0x00	; 0
    7422:	f1 e7       	ldi	r31, 0x71	; 113

00007424 <_mywait_sleeploop157>:
    7424:	a8 95       	wdr
    7426:	31 97       	sbiw	r30, 0x01	; 1
    7428:	80 40       	sbci	r24, 0x00	; 0
    742a:	e1 f7       	brne	.-8      	; 0x7424 <_mywait_sleeploop157>
#	if (BOOTLOADER_ALWAYSENTERPROGRAMMODE)
#		define bootLoaderCondition()	(true)
#	else
static inline bool bootLoaderCondition(void)
{
  if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_MCUCSR & (~(_BV(WDRF)))) {
    742c:	80 91 3d 01 	lds	r24, 0x013D
    7430:	87 7f       	andi	r24, 0xF7	; 247
    7432:	21 f4       	brne	.+8      	; 0x743c <_mywait_sleeploop157+0x18>
  } else {
    if (__BOOTLOADERENTRY_FROMSOFTWARE__bootup_RAMEND_doesmatch == (__BOOTLOADERENTRY_FROMSOFTWARE__EXPECTEDADDRESS & 0xff)) {
    7434:	80 91 3e 01 	lds	r24, 0x013E
    7438:	88 23       	and	r24, r24
    743a:	81 f0       	breq	.+32     	; 0x745c <_mywait_sleeploop157+0x38>
    GICR = (1 << IVSEL); /* move interrupts to boot flash section */
#endif
#if (HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT>0)
    _mydelay_ms(HAVE_BOOTLOADER_ADDITIONALMSDEVICEWAIT);
#endif
    if(bootLoaderCondition()){
    743c:	4f 9b       	sbis	0x09, 7	; 9
    743e:	0e c0       	rjmp	.+28     	; 0x745c <_mywait_sleeploop157+0x38>
}
#else
static void __attribute__((__noreturn__)) leaveBootloader(void);
static void leaveBootloader(void) {
    DBG1(0x01, 0, 0);
    cli();
    7440:	f8 94       	cli
    usbDeviceDisconnect();
    7442:	54 9a       	sbi	0x0a, 4	; 10

static inline void  bootLoaderExit(void)
{
#if (BOOTLOADER_IGNOREPROGBUTTON)
#else
    PIN_PORT(JUMPER_PORT) = 0;		/* undo bootLoaderInit() changes */
    7444:	1b b8       	out	0x0b, r1	; 11
    bootLoaderExit();
    USB_INTR_ENABLE = 0;
    7446:	1d ba       	out	0x1d, r1	; 29
    USB_INTR_CFG = 0;       /* also reset config bits */
    7448:	10 92 69 00 	sts	0x0069, r1
    GICR = (1 << IVCE);     /* enable change of interrupt vectors */
    744c:	81 e0       	ldi	r24, 0x01	; 1
    744e:	85 bf       	out	0x35, r24	; 53
    GICR = (0 << IVSEL);    /* move interrupts to application flash section */
    7450:	15 be       	out	0x35, r1	; 53
/* We must go through a global function pointer variable instead of writing
 *  ((void (*)(void))0)();
 * because the compiler optimizes a constant 0 to "rcall 0" which is not
 * handled correctly by the assembler.
 */
    nullVector();
    7452:	e0 91 0a 01 	lds	r30, 0x010A
    7456:	f0 91 0b 01 	lds	r31, 0x010B
    745a:	09 95       	icall
#		if ((defined(CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT)) && (!(BOOTLOADER_IGNOREPROGBUTTON)) && (BOOTLOADER_LOOPCYCLES_TIMEOUT))
      if (bootLoaderConditionSimple()) {
	stayinloader = stayinloader_initialValue - 0x02;
      } else
#		endif
	      stayinloader = stayinloader_initialValue;
    745c:	8e ef       	ldi	r24, 0xFE	; 254
    745e:	80 93 11 01 	sts	0x0111, r24
	__original_WDTCR=WDTCR;
	if (__original_WDTCR & _BV(WDE)) {
	  wdt_enable(WDTO_2S);
	}
#else
	MCUCSR = 0;       /* clear all reset flags for next time */
    7462:	14 be       	out	0x34, r1	; 52
#	if ((NEED_WATCHDOG) || (defined(__MCUCSR_COMPATMODE)))
	wdt_disable();    /* main app may have enabled watchdog */
    7464:	88 e1       	ldi	r24, 0x18	; 24
    7466:	0f b6       	in	r0, 0x3f	; 63
    7468:	f8 94       	cli
    746a:	80 93 60 00 	sts	0x0060, r24
    746e:	10 92 60 00 	sts	0x0060, r1
    7472:	0f be       	out	0x3f, r0	; 63
/* ------------------------------------------------------------------------- */

USB_PUBLIC void usbInit(void)
{
#if USB_INTR_CFG_SET != 0
    USB_INTR_CFG |= USB_INTR_CFG_SET;
    7474:	80 91 69 00 	lds	r24, 0x0069
    7478:	82 60       	ori	r24, 0x02	; 2
    747a:	80 93 69 00 	sts	0x0069, r24
#endif
#if USB_INTR_CFG_CLR != 0
    USB_INTR_CFG &= ~(USB_INTR_CFG_CLR);
#endif
    USB_INTR_ENABLE |= (1 << USB_INTR_ENABLE_BIT);
    747e:	e8 9a       	sbi	0x1d, 0	; 29

static void initForUsbConnectivity(void)
{
    usbInit();
    /* enforce USB re-enumerate: */
    usbDeviceDisconnect();  /* do this while interrupts are disabled */
    7480:	54 9a       	sbi	0x0a, 4	; 10
       * ...unimportant - just save some opcodes
       */
#else
#define _mydelay_ms(millisecs) __DO_NOT_USE_DIRECTLY_mywait(0+((((F_CPU/1000)*millisecs)/__MYWAIT_CYCLESperLOOP)/65536), (uint16_t)(((uint32_t)(((F_CPU/1000)*millisecs)/__MYWAIT_CYCLESperLOOP))%(uint32_t)65536))
static void __DO_NOT_USE_DIRECTLY_mywait(uint8_t waitloopcnt, uint16_t remainder) {
    asm volatile (
    7482:	8c e0       	ldi	r24, 0x0C	; 12
    7484:	e0 e0       	ldi	r30, 0x00	; 0
    7486:	f5 e3       	ldi	r31, 0x35	; 53

00007488 <_mywait_sleeploop227>:
    7488:	a8 95       	wdr
    748a:	31 97       	sbiw	r30, 0x01	; 1
    748c:	80 40       	sbci	r24, 0x00	; 0
    748e:	e1 f7       	brne	.-8      	; 0x7488 <_mywait_sleeploop227>
{
    usbInit();
    /* enforce USB re-enumerate: */
    usbDeviceDisconnect();  /* do this while interrupts are disabled */
    _mydelay_ms(250);	/* fake USB disconnect for > 250 ms */
    usbDeviceConnect();
    7490:	54 98       	cbi	0x0a, 4	; 10
    sei();
    7492:	78 94       	sei
USB_PUBLIC void usbPoll(void)
{
schar   len;
uchar   i;

    len = usbRxLen - 3;
    7494:	80 91 23 01 	lds	r24, 0x0123
    7498:	83 50       	subi	r24, 0x03	; 3
    if(len >= 0){
    749a:	87 fd       	sbrc	r24, 7
    749c:	46 c1       	rjmp	.+652    	; 0x772a <_mywait_sleeploop227+0x2a2>
 * need data integrity checks with this driver, check the CRC in your app
 * code and report errors back to the host. Since the ACK was already sent,
 * retries must be handled on application level.
 * unsigned crc = usbCrc16(buffer + 1, usbRxLen - 3);
 */
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
    749e:	90 91 20 01 	lds	r25, 0x0120
    74a2:	cc e0       	ldi	r28, 0x0C	; 12
    74a4:	d0 e0       	ldi	r29, 0x00	; 0
    74a6:	c9 1b       	sub	r28, r25
    74a8:	d1 09       	sbc	r29, r1
    74aa:	c9 5d       	subi	r28, 0xD9	; 217
    74ac:	de 4f       	sbci	r29, 0xFE	; 254
    if(usbRxToken < 0x10){  /* OUT to endpoint != 0: endpoint number in usbRxToken */
        usbFunctionWriteOut(data, len);
        return;
    }
#endif
    if(usbRxToken == (uchar)USBPID_SETUP){
    74ae:	90 91 1f 01 	lds	r25, 0x011F
    74b2:	9d 32       	cpi	r25, 0x2D	; 45
    74b4:	09 f0       	breq	.+2      	; 0x74b8 <_mywait_sleeploop227+0x30>
    74b6:	b9 c0       	rjmp	.+370    	; 0x762a <_mywait_sleeploop227+0x1a2>
        if(len != 8)    /* Setup size must be always 8 bytes. Ignore otherwise. */
    74b8:	88 30       	cpi	r24, 0x08	; 8
    74ba:	09 f0       	breq	.+2      	; 0x74be <_mywait_sleeploop227+0x36>
    74bc:	34 c1       	rjmp	.+616    	; 0x7726 <_mywait_sleeploop227+0x29e>
            return;
        usbMsgLen_t replyLen;
        usbTxBuf[0] = USBPID_DATA0;         /* initialize data toggling */
    74be:	83 ec       	ldi	r24, 0xC3	; 195
    74c0:	80 93 13 01 	sts	0x0113, r24
        usbTxLen = USBPID_NAK;              /* abort pending transmit */
    74c4:	8a e5       	ldi	r24, 0x5A	; 90
    74c6:	80 93 01 01 	sts	0x0101, r24
        usbMsgFlags = 0;
    74ca:	10 92 12 01 	sts	0x0112, r1
        uchar type = rq->bmRequestType & USBRQ_TYPE_MASK;
    74ce:	48 81       	ld	r20, Y
    74d0:	84 2f       	mov	r24, r20
    74d2:	80 76       	andi	r24, 0x60	; 96
    74d4:	39 81       	ldd	r19, Y+1	; 0x01
        if(type != USBRQ_TYPE_STANDARD){    /* standard requests are handled by driver */
    74d6:	88 23       	and	r24, r24
    74d8:	b9 f1       	breq	.+110    	; 0x7548 <_mywait_sleeploop227+0xc0>
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
static uchar    replyBuffer[4];

    usbMsgPtr = (usbMsgPtr_t)replyBuffer;
    74da:	86 e0       	ldi	r24, 0x06	; 6
    74dc:	91 e0       	ldi	r25, 0x01	; 1
    74de:	90 93 22 01 	sts	0x0122, r25
    74e2:	80 93 21 01 	sts	0x0121, r24
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
    74e6:	33 30       	cpi	r19, 0x03	; 3
    74e8:	31 f4       	brne	.+12     	; 0x74f6 <_mywait_sleeploop227+0x6e>
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
    74ea:	ce 01       	movw	r24, r28
    74ec:	4a df       	rcall	.-364    	; 0x7382 <usbFunctionSetup_USBASP_FUNC_TRANSMIT>
    74ee:	80 93 09 01 	sts	0x0109, r24
    74f2:	24 e0       	ldi	r18, 0x04	; 4
        len = (usbMsgLen_t)4;
    74f4:	90 c0       	rjmp	.+288    	; 0x7616 <_mywait_sleeploop227+0x18e>
    74f6:	35 30       	cpi	r19, 0x05	; 5
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
    74f8:	19 f1       	breq	.+70     	; 0x7540 <_mywait_sleeploop227+0xb8>
    74fa:	3a 30       	cpi	r19, 0x0A	; 10
    74fc:	09 f1       	breq	.+66     	; 0x7540 <_mywait_sleeploop227+0xb8>
    74fe:	8c ef       	ldi	r24, 0xFC	; 252
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    }else if(rq->bRequest >= USBASP_FUNC_READFLASH && rq->bRequest <= USBASP_FUNC_SETLONGADDRESS){
    7500:	83 0f       	add	r24, r19
    7502:	86 30       	cpi	r24, 0x06	; 6
    7504:	98 f4       	brcc	.+38     	; 0x752c <_mywait_sleeploop227+0xa4>
    7506:	8a 81       	ldd	r24, Y+2	; 0x02
        currentAddress.w[0] = rq->wValue.word;
    7508:	9b 81       	ldd	r25, Y+3	; 0x03
    750a:	90 93 10 01 	sts	0x0110, r25
    750e:	80 93 0f 01 	sts	0x010F, r24
    7512:	39 30       	cpi	r19, 0x09	; 9
        if(rq->bRequest == USBASP_FUNC_SETLONGADDRESS){
    7514:	b9 f0       	breq	.+46     	; 0x7544 <_mywait_sleeploop227+0xbc>
    7516:	8e 81       	ldd	r24, Y+6	; 0x06
#if (FLASHEND) > 0xffff
            currentAddress.w[1] = rq->wIndex.word;
#endif
        }else{
            bytesRemaining = rq->wLength.bytes[0];
    7518:	80 93 0e 01 	sts	0x010E, r24
    751c:	8d 81       	ldd	r24, Y+5	; 0x05
            /* if(rq->bRequest == USBASP_FUNC_WRITEFLASH) only evaluated during writeFlash anyway */
            isLastPage = rq->wIndex.bytes[1] & 0x02;
    751e:	82 70       	andi	r24, 0x02	; 2
    7520:	80 93 0d 01 	sts	0x010D, r24
    7524:	30 93 0c 01 	sts	0x010C, r19
#if HAVE_EEPROM_PAGED_ACCESS
            currentRequest = rq->bRequest;
    7528:	2f ef       	ldi	r18, 0xFF	; 255
#endif
            len = USB_NO_MSG; /* hand over to usbFunctionRead() / usbFunctionWrite() */
    752a:	6f c0       	rjmp	.+222    	; 0x760a <_mywait_sleeploop227+0x182>
    752c:	80 91 11 01 	lds	r24, 0x0111
#if BOOTLOADER_CAN_EXIT
#	ifdef CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT
      /* let the main loop know for ever that here was activity */
      stayinloader	   &= (0xfc);
#	else
      stayinloader	   &= (0xfe);
    7530:	32 30       	cpi	r19, 0x02	; 2
            currentRequest = rq->bRequest;
#endif
            len = USB_NO_MSG; /* hand over to usbFunctionRead() / usbFunctionWrite() */
        }

    }else if(rq->bRequest == USBASP_FUNC_DISCONNECT){
    7532:	11 f4       	brne	.+4      	; 0x7538 <_mywait_sleeploop227+0xb0>
    7534:	8e 7f       	andi	r24, 0xFE	; 254
#if BOOTLOADER_CAN_EXIT
#	ifdef CONFIG_HAVE__BOOTLOADER_ABORTTIMEOUTONACT
      /* let the main loop know for ever that here was activity */
      stayinloader	   &= (0xfc);
#	else
      stayinloader	   &= (0xfe);
    7536:	01 c0       	rjmp	.+2      	; 0x753a <_mywait_sleeploop227+0xb2>
    7538:	81 60       	ori	r24, 0x01	; 1
#	endif
#endif
    }else{
        /* ignore: others, but could be USBASP_FUNC_CONNECT */
#if BOOTLOADER_CAN_EXIT
	stayinloader	   |= (0x01);
    753a:	80 93 11 01 	sts	0x0111, r24
    753e:	02 c0       	rjmp	.+4      	; 0x7544 <_mywait_sleeploop227+0xbc>
    7540:	21 e0       	ldi	r18, 0x01	; 1
    if(rq->bRequest == USBASP_FUNC_TRANSMIT){   /* emulate parts of ISP protocol */
        replyBuffer[3] = usbFunctionSetup_USBASP_FUNC_TRANSMIT(rq);
        len = (usbMsgLen_t)4;
    }else if((rq->bRequest == USBASP_FUNC_ENABLEPROG) || (rq->bRequest == USBASP_FUNC_SETISPSCK)){
        /* replyBuffer[0] = 0; is never touched and thus always 0 which means success */
        len = (usbMsgLen_t)1;
    7542:	69 c0       	rjmp	.+210    	; 0x7616 <_mywait_sleeploop227+0x18e>
    7544:	20 e0       	ldi	r18, 0x00	; 0


usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;
usbMsgLen_t     len = 0;
    7546:	67 c0       	rjmp	.+206    	; 0x7616 <_mywait_sleeploop227+0x18e>
    7548:	8a 81       	ldd	r24, Y+2	; 0x02
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
uchar   value = rq->wValue.bytes[0];
    754a:	10 92 1c 01 	sts	0x011C, r1
#if USB_CFG_IMPLEMENT_HALT
uchar   index = rq->wIndex.bytes[0];
#endif

    dataPtr[0] = 0; /* default reply common to USBRQ_GET_STATUS and USBRQ_GET_INTERFACE */
    754e:	31 11       	cpse	r19, r1
    SWITCH_START(rq->bRequest)
    SWITCH_CASE(USBRQ_GET_STATUS)           /* 0 */
    7550:	06 c0       	rjmp	.+12     	; 0x755e <_mywait_sleeploop227+0xd6>
    7552:	10 92 1d 01 	sts	0x011D, r1
            dataPtr[0] =  USB_CFG_IS_SELF_POWERED;
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
    7556:	8c e1       	ldi	r24, 0x1C	; 28
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    7558:	91 e0       	ldi	r25, 0x01	; 1
    755a:	22 e0       	ldi	r18, 0x02	; 2
#if USB_CFG_IMPLEMENT_HALT
        if(recipient == USBRQ_RCPT_ENDPOINT && index == 0x81)   /* request status for endpoint 1 */
            dataPtr[0] = usbTxLen1 == USBPID_STALL;
#endif
        dataPtr[1] = 0;
        len = 2;
    755c:	50 c0       	rjmp	.+160    	; 0x75fe <_mywait_sleeploop227+0x176>
    755e:	35 30       	cpi	r19, 0x05	; 5
        if(value == 0 && index == 0x81){    /* feature 0 == HALT for endpoint == 1 */
            usbTxLen1 = rq->bRequest == USBRQ_CLEAR_FEATURE ? USBPID_NAK : USBPID_STALL;
            usbResetDataToggling();
        }
#endif
    SWITCH_CASE(USBRQ_SET_ADDRESS)          /* 5 */
    7560:	19 f4       	brne	.+6      	; 0x7568 <_mywait_sleeploop227+0xe0>
    7562:	80 93 24 01 	sts	0x0124, r24
        usbNewDeviceAddr = value;
    7566:	3d c0       	rjmp	.+122    	; 0x75e2 <_mywait_sleeploop227+0x15a>
    7568:	36 30       	cpi	r19, 0x06	; 6
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
    756a:	a9 f5       	brne	.+106    	; 0x75d6 <_mywait_sleeploop227+0x14e>
    756c:	9b 81       	ldd	r25, Y+3	; 0x03
/* ------------------------------------------------------------------------- */

/* usbDriverSetup() is similar to usbFunctionSetup(), but it's used for
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
    756e:	91 30       	cpi	r25, 0x01	; 1
{
usbMsgLen_t len = 0;
uchar       flags = USB_FLG_MSGPTR_IS_ROM;

    SWITCH_START(rq->wValue.bytes[1])
    SWITCH_CASE(USBDESCR_DEVICE)    /* 1 */
    7570:	19 f4       	brne	.+6      	; 0x7578 <_mywait_sleeploop227+0xf0>
    7572:	88 e9       	ldi	r24, 0x98	; 152
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_DEVICE, usbDescriptorDevice)
    7574:	90 e7       	ldi	r25, 0x70	; 112
    7576:	04 c0       	rjmp	.+8      	; 0x7580 <_mywait_sleeploop227+0xf8>
    7578:	92 30       	cpi	r25, 0x02	; 2
    SWITCH_CASE(USBDESCR_CONFIG)    /* 2 */
    757a:	41 f4       	brne	.+16     	; 0x758c <_mywait_sleeploop227+0x104>
    757c:	86 e8       	ldi	r24, 0x86	; 134
        GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_CONFIGURATION, usbDescriptorConfiguration)
    757e:	90 e7       	ldi	r25, 0x70	; 112
    7580:	90 93 22 01 	sts	0x0122, r25
    7584:	80 93 21 01 	sts	0x0121, r24
    7588:	22 e1       	ldi	r18, 0x12	; 18
    758a:	21 c0       	rjmp	.+66     	; 0x75ce <_mywait_sleeploop227+0x146>
    758c:	93 30       	cpi	r25, 0x03	; 3
    SWITCH_CASE(USBDESCR_STRING)    /* 3 */
    758e:	f1 f4       	brne	.+60     	; 0x75cc <_mywait_sleeploop227+0x144>
    7590:	81 11       	cpse	r24, r1
        if(USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_RAM)
            flags = 0;
        len = usbFunctionDescriptor(rq);
#else   /* USB_CFG_DESCR_PROPS_STRINGS & USB_PROP_IS_DYNAMIC */
        SWITCH_START(rq->wValue.bytes[0])
        SWITCH_CASE(0)
    7592:	08 c0       	rjmp	.+16     	; 0x75a4 <_mywait_sleeploop227+0x11c>
    7594:	84 ed       	ldi	r24, 0xD4	; 212
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_0, usbDescriptorString0)
    7596:	90 e7       	ldi	r25, 0x70	; 112
    7598:	90 93 22 01 	sts	0x0122, r25
    759c:	80 93 21 01 	sts	0x0121, r24
    75a0:	24 e0       	ldi	r18, 0x04	; 4
    75a2:	15 c0       	rjmp	.+42     	; 0x75ce <_mywait_sleeploop227+0x146>
    75a4:	81 30       	cpi	r24, 0x01	; 1
        SWITCH_CASE(1)
    75a6:	41 f4       	brne	.+16     	; 0x75b8 <_mywait_sleeploop227+0x130>
    75a8:	88 eb       	ldi	r24, 0xB8	; 184
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_VENDOR, usbDescriptorStringVendor)
    75aa:	90 e7       	ldi	r25, 0x70	; 112
    75ac:	90 93 22 01 	sts	0x0122, r25
    75b0:	80 93 21 01 	sts	0x0121, r24
    75b4:	2c e1       	ldi	r18, 0x1C	; 28
    75b6:	0b c0       	rjmp	.+22     	; 0x75ce <_mywait_sleeploop227+0x146>
    75b8:	82 30       	cpi	r24, 0x02	; 2
        SWITCH_CASE(2)
    75ba:	41 f4       	brne	.+16     	; 0x75cc <_mywait_sleeploop227+0x144>
    75bc:	8a ea       	ldi	r24, 0xAA	; 170
            GET_DESCRIPTOR(USB_CFG_DESCR_PROPS_STRING_PRODUCT, usbDescriptorStringDevice)
    75be:	90 e7       	ldi	r25, 0x70	; 112
    75c0:	90 93 22 01 	sts	0x0122, r25
    75c4:	80 93 21 01 	sts	0x0121, r24
    75c8:	2e e0       	ldi	r18, 0x0E	; 14
    75ca:	01 c0       	rjmp	.+2      	; 0x75ce <_mywait_sleeploop227+0x146>
    75cc:	20 e0       	ldi	r18, 0x00	; 0
/* usbDriverDescriptor() is similar to usbFunctionDescriptor(), but used
 * internally for all types of descriptors.
 */
static inline usbMsgLen_t usbDriverDescriptor(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
    75ce:	80 e4       	ldi	r24, 0x40	; 64
    SWITCH_DEFAULT
        if(USB_CFG_DESCR_PROPS_UNKNOWN & USB_PROP_IS_DYNAMIC){
            len = usbFunctionDescriptor(rq);
        }
    SWITCH_END
    usbMsgFlags = flags;
    75d0:	80 93 12 01 	sts	0x0112, r24
    75d4:	18 c0       	rjmp	.+48     	; 0x7606 <_mywait_sleeploop227+0x17e>
    75d6:	38 30       	cpi	r19, 0x08	; 8
        usbNewDeviceAddr = value;
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
    75d8:	79 f0       	breq	.+30     	; 0x75f8 <_mywait_sleeploop227+0x170>
    75da:	39 30       	cpi	r19, 0x09	; 9
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
    75dc:	31 f4       	brne	.+12     	; 0x75ea <_mywait_sleeploop227+0x162>
    75de:	80 93 26 01 	sts	0x0126, r24
        usbConfiguration = value;
    75e2:	8c e1       	ldi	r24, 0x1C	; 28
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    75e4:	91 e0       	ldi	r25, 0x01	; 1
    75e6:	20 e0       	ldi	r18, 0x00	; 0
/* usbDriverSetup() is similar to usbFunctionSetup(), but it's used for
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
    75e8:	0a c0       	rjmp	.+20     	; 0x75fe <_mywait_sleeploop227+0x176>
    75ea:	21 e0       	ldi	r18, 0x01	; 1
        dataPtr = &usbConfiguration;  /* send current configuration value */
        len = 1;
    SWITCH_CASE(USBRQ_SET_CONFIGURATION)    /* 9 */
        usbConfiguration = value;
        usbResetStall();
    SWITCH_CASE(USBRQ_GET_INTERFACE)        /* 10 */
    75ec:	3a 30       	cpi	r19, 0x0A	; 10
    75ee:	09 f0       	breq	.+2      	; 0x75f2 <_mywait_sleeploop227+0x16a>
    75f0:	20 e0       	ldi	r18, 0x00	; 0
    75f2:	8c e1       	ldi	r24, 0x1C	; 28
 * standard requests instead of class and custom requests.
 */
static inline usbMsgLen_t usbDriverSetup(usbRequest_t *rq)
{
usbMsgLen_t len = 0;
uchar   *dataPtr = usbTxBuf + 9;    /* there are 2 bytes free space at the end of the buffer */
    75f4:	91 e0       	ldi	r25, 0x01	; 1
    75f6:	03 c0       	rjmp	.+6      	; 0x75fe <_mywait_sleeploop227+0x176>
    75f8:	86 e2       	ldi	r24, 0x26	; 38
        USB_SET_ADDRESS_HOOK();
    SWITCH_CASE(USBRQ_GET_DESCRIPTOR)       /* 6 */
        len = usbDriverDescriptor(rq);
        goto skipMsgPtrAssignment;
    SWITCH_CASE(USBRQ_GET_CONFIGURATION)    /* 8 */
        dataPtr = &usbConfiguration;  /* send current configuration value */
    75fa:	91 e0       	ldi	r25, 0x01	; 1
    75fc:	21 e0       	ldi	r18, 0x01	; 1
        len = 1;
    75fe:	90 93 22 01 	sts	0x0122, r25
        usbResetStall();
#endif
    SWITCH_DEFAULT                          /* 7=SET_DESCRIPTOR, 12=SYNC_FRAME */
        /* Should we add an optional hook here? */
    SWITCH_END
    usbMsgPtr = (usbMsgPtr_t)dataPtr;
    7602:	80 93 21 01 	sts	0x0121, r24
    7606:	2f 3f       	cpi	r18, 0xFF	; 255
            replyLen = usbFunctionSetup(data);
        }else{
            replyLen = usbDriverSetup(rq);
        }
#if USB_CFG_IMPLEMENT_FN_READ || USB_CFG_IMPLEMENT_FN_WRITE
        if(replyLen == USB_NO_MSG){         /* use user-supplied read/write function */
    7608:	31 f4       	brne	.+12     	; 0x7616 <_mywait_sleeploop227+0x18e>
    760a:	47 fd       	sbrc	r20, 7
            /* do some conditioning on replyLen, but on IN transfers only */
            if((rq->bmRequestType & USBRQ_DIR_MASK) != USBRQ_DIR_HOST_TO_DEVICE){
    760c:	2e 81       	ldd	r18, Y+6	; 0x06
                if(sizeof(replyLen) < sizeof(rq->wLength.word)){ /* help compiler with optimizing */
                    replyLen = rq->wLength.bytes[0];
    760e:	80 e8       	ldi	r24, 0x80	; 128
                }else{
                    replyLen = rq->wLength.word;
                }
            }
            usbMsgFlags = USB_FLG_USE_USER_RW;
    7610:	80 93 12 01 	sts	0x0112, r24
    7614:	07 c0       	rjmp	.+14     	; 0x7624 <_mywait_sleeploop227+0x19c>
    7616:	8f 81       	ldd	r24, Y+7	; 0x07
        }else   /* The 'else' prevents that we limit a replyLen of USB_NO_MSG to the maximum transfer len. */
#endif
        if(sizeof(replyLen) < sizeof(rq->wLength.word)){ /* help compiler with optimizing */
            if(!rq->wLength.bytes[1] && replyLen > rq->wLength.bytes[0])    /* limit length to max */
    7618:	81 11       	cpse	r24, r1
    761a:	04 c0       	rjmp	.+8      	; 0x7624 <_mywait_sleeploop227+0x19c>
    761c:	8e 81       	ldd	r24, Y+6	; 0x06
    761e:	82 17       	cp	r24, r18
    7620:	08 f4       	brcc	.+2      	; 0x7624 <_mywait_sleeploop227+0x19c>
    7622:	28 2f       	mov	r18, r24
    7624:	20 93 00 01 	sts	0x0100, r18
                replyLen = rq->wLength.bytes[0];
        }else{
            if(replyLen > rq->wLength.word)     /* limit length to max */
                replyLen = rq->wLength.word;
        }
        usbMsgLen = replyLen;
    7628:	7e c0       	rjmp	.+252    	; 0x7726 <_mywait_sleeploop227+0x29e>
    762a:	90 91 12 01 	lds	r25, 0x0112
    }else{  /* usbRxToken must be USBPID_OUT, which means data phase of setup (control-out) */
#if USB_CFG_IMPLEMENT_FN_WRITE
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    762e:	97 ff       	sbrs	r25, 7
    7630:	7a c0       	rjmp	.+244    	; 0x7726 <_mywait_sleeploop227+0x29e>
    7632:	90 91 0e 01 	lds	r25, 0x010E
uchar usbFunctionWrite(uchar *data, uchar len)
{
uchar   i,isLast;

    DBG1(0x31, (void *)&currentAddress.l, 4);
    if(len > bytesRemaining)
    7636:	e8 2e       	mov	r14, r24
    7638:	98 17       	cp	r25, r24
    763a:	08 f4       	brcc	.+2      	; 0x763e <_mywait_sleeploop227+0x1b6>
    763c:	e9 2e       	mov	r14, r25
    763e:	9e 19       	sub	r25, r14
        len = bytesRemaining;
    bytesRemaining -= len;
    7640:	90 93 0e 01 	sts	0x010E, r25
    7644:	dd 24       	eor	r13, r13
    isLast = bytesRemaining == 0;
    7646:	d3 94       	inc	r13
    7648:	91 11       	cpse	r25, r1
    764a:	d1 2c       	mov	r13, r1
    764c:	f1 2c       	mov	r15, r1
    for(i = 0; i < len;) {
    764e:	fe 14       	cp	r15, r14
    7650:	08 f0       	brcs	.+2      	; 0x7654 <_mywait_sleeploop227+0x1cc>
    7652:	66 c0       	rjmp	.+204    	; 0x7720 <_mywait_sleeploop227+0x298>
    7654:	20 91 0c 01 	lds	r18, 0x010C
      if(currentRequest >= USBASP_FUNC_READEEPROM){
    7658:	80 91 0f 01 	lds	r24, 0x010F
    765c:	90 91 10 01 	lds	r25, 0x0110
    7660:	27 30       	cpi	r18, 0x07	; 7
    7662:	78 f0       	brcs	.+30     	; 0x7682 <_mywait_sleeploop227+0x1fa>
    7664:	8e 01       	movw	r16, r28
	eeprom_write_byte((void *)(currentAddress.w[0]++), *data++);
    7666:	0f 5f       	subi	r16, 0xFF	; 255
    7668:	1f 4f       	sbci	r17, 0xFF	; 255
    766a:	68 81       	ld	r22, Y
    766c:	9c 01       	movw	r18, r24
    766e:	2f 5f       	subi	r18, 0xFF	; 255
    7670:	3f 4f       	sbci	r19, 0xFF	; 255
    7672:	30 93 10 01 	sts	0x0110, r19
    7676:	20 93 0f 01 	sts	0x010F, r18
    767a:	f3 d0       	rcall	.+486    	; 0x7862 <__eewr_byte_m328p>
    767c:	f3 94       	inc	r15
    767e:	e8 01       	movw	r28, r16
	i++;
    7680:	e6 cf       	rjmp	.-52     	; 0x764e <_mywait_sleeploop227+0x1c6>
        len = bytesRemaining;
    bytesRemaining -= len;
    isLast = bytesRemaining == 0;
    for(i = 0; i < len;) {
      if(currentRequest >= USBASP_FUNC_READEEPROM){
	eeprom_write_byte((void *)(currentAddress.w[0]++), *data++);
    7682:	81 15       	cp	r24, r1
    7684:	90 47       	sbci	r25, 0x70	; 112
	i++;
      } else {
#if HAVE_BLB11_SOFTW_LOCKBIT
	if (CURRENT_ADDRESS >= (addr_t)(BOOTLOADER_PAGEADDR)) {
    7686:	08 f0       	brcs	.+2      	; 0x768a <_mywait_sleeploop227+0x202>
    7688:	4c c0       	rjmp	.+152    	; 0x7722 <_mywait_sleeploop227+0x29a>
    768a:	f3 94       	inc	r15
    768c:	f3 94       	inc	r15
	  return 1;
	}
#endif
	i += 2;
    768e:	f8 94       	cli
    7690:	e0 91 0f 01 	lds	r30, 0x010F
	DBG1(0x32, 0, 0);
	cli();
	boot_page_fill(CURRENT_ADDRESS, *(short *)data);
    7694:	f0 91 10 01 	lds	r31, 0x0110
    7698:	89 91       	ld	r24, Y+
    769a:	99 91       	ld	r25, Y+
    769c:	21 e0       	ldi	r18, 0x01	; 1
    769e:	0c 01       	movw	r0, r24
    76a0:	20 93 57 00 	sts	0x0057, r18
    76a4:	e8 95       	spm
    76a6:	11 24       	eor	r1, r1
    76a8:	78 94       	sei
    76aa:	80 91 0f 01 	lds	r24, 0x010F
	sei();
	CURRENT_ADDRESS += 2;
    76ae:	90 91 10 01 	lds	r25, 0x0110
    76b2:	02 96       	adiw	r24, 0x02	; 2
    76b4:	90 93 10 01 	sts	0x0110, r25
    76b8:	80 93 0f 01 	sts	0x010F, r24
    76bc:	8f 77       	andi	r24, 0x7F	; 127
    76be:	99 27       	eor	r25, r25
	data += 2;
	/* write page when we cross page boundary or we have the last partial page */
	if((currentAddress.w[0] & (SPM_PAGESIZE - 1)) == 0 || (isLast && i >= len && isLastPage)){
    76c0:	89 2b       	or	r24, r25
    76c2:	59 f0       	breq	.+22     	; 0x76da <_mywait_sleeploop227+0x252>
    76c4:	dd 20       	and	r13, r13
    76c6:	09 f4       	brne	.+2      	; 0x76ca <_mywait_sleeploop227+0x242>
    76c8:	c2 cf       	rjmp	.-124    	; 0x764e <_mywait_sleeploop227+0x1c6>
    76ca:	fe 14       	cp	r15, r14
    76cc:	08 f4       	brcc	.+2      	; 0x76d0 <_mywait_sleeploop227+0x248>
    76ce:	bf cf       	rjmp	.-130    	; 0x764e <_mywait_sleeploop227+0x1c6>
    76d0:	80 91 0d 01 	lds	r24, 0x010D
    76d4:	88 23       	and	r24, r24
    76d6:	09 f4       	brne	.+2      	; 0x76da <_mywait_sleeploop227+0x252>
    76d8:	ba cf       	rjmp	.-140    	; 0x764e <_mywait_sleeploop227+0x1c6>
    76da:	f8 94       	cli
    76dc:	e0 91 0f 01 	lds	r30, 0x010F
#if (!HAVE_CHIP_ERASE) || (HAVE_ONDEMAND_PAGEERASE)
	    DBG1(0x33, 0, 0);
#   ifndef NO_FLASH_WRITE
	    cli();
	    boot_page_erase(CURRENT_ADDRESS - 2);   /* erase page */
    76e0:	f0 91 10 01 	lds	r31, 0x0110
    76e4:	32 97       	sbiw	r30, 0x02	; 2
    76e6:	83 e0       	ldi	r24, 0x03	; 3
    76e8:	80 93 57 00 	sts	0x0057, r24
    76ec:	e8 95       	spm
    76ee:	78 94       	sei
    76f0:	07 b6       	in	r0, 0x37	; 55
	    sei();
    76f2:	00 fc       	sbrc	r0, 0
	    boot_spm_busy_wait();                   /* wait until page is erased */
    76f4:	fd cf       	rjmp	.-6      	; 0x76f0 <_mywait_sleeploop227+0x268>
    76f6:	f8 94       	cli
    76f8:	e0 91 0f 01 	lds	r30, 0x010F
#   endif
#endif
	    DBG1(0x34, 0, 0);
#ifndef NO_FLASH_WRITE
	    cli();
	    boot_page_write(CURRENT_ADDRESS - 2);
    76fc:	f0 91 10 01 	lds	r31, 0x0110
    7700:	32 97       	sbiw	r30, 0x02	; 2
    7702:	85 e0       	ldi	r24, 0x05	; 5
    7704:	80 93 57 00 	sts	0x0057, r24
    7708:	e8 95       	spm
    770a:	78 94       	sei
    770c:	07 b6       	in	r0, 0x37	; 55
	    sei();
    770e:	00 fc       	sbrc	r0, 0
	    boot_spm_busy_wait();
    7710:	fd cf       	rjmp	.-6      	; 0x770c <_mywait_sleeploop227+0x284>
    7712:	f8 94       	cli
    7714:	81 e1       	ldi	r24, 0x11	; 17
	    cli();
    7716:	80 93 57 00 	sts	0x0057, r24
	    boot_rww_enable();
    771a:	e8 95       	spm
    771c:	78 94       	sei
    771e:	97 cf       	rjmp	.-210    	; 0x764e <_mywait_sleeploop227+0x1c6>
    7720:	d1 10       	cpse	r13, r1
    7722:	10 92 00 01 	sts	0x0100, r1
            uchar rval = usbFunctionWrite(data, len);
            if(rval == 0xff){   /* an error occurred */
                usbTxLen = USBPID_STALL;
            }else if(rval != 0){    /* This was the final package */
                usbMsgLen = 0;  /* answer with a zero-sized data packet */
    7726:	10 92 23 01 	sts	0x0123, r1
        usbProcessRx(usbRxBuf + USB_BUFSIZE + 1 - usbInputBufOffset, len);
#if USB_CFG_HAVE_FLOWCONTROL
        if(usbRxLen > 0)    /* only mark as available if not inactivated */
            usbRxLen = 0;
#else
        usbRxLen = 0;       /* mark rx buffer as available */
    772a:	80 91 01 01 	lds	r24, 0x0101
#endif
    }
    if(usbTxLen & 0x10){    /* transmit system idle */
    772e:	84 ff       	sbrs	r24, 4
    7730:	6c c0       	rjmp	.+216    	; 0x780a <_mywait_sleeploop227+0x382>
    7732:	80 91 00 01 	lds	r24, 0x0100
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
    7736:	8f 3f       	cpi	r24, 0xFF	; 255
    7738:	09 f4       	brne	.+2      	; 0x773c <_mywait_sleeploop227+0x2b4>
    773a:	67 c0       	rjmp	.+206    	; 0x780a <_mywait_sleeploop227+0x382>
    773c:	f8 2e       	mov	r15, r24
    773e:	89 30       	cpi	r24, 0x09	; 9
    7740:	10 f0       	brcs	.+4      	; 0x7746 <_mywait_sleeploop227+0x2be>
    7742:	28 e0       	ldi	r18, 0x08	; 8
    7744:	f2 2e       	mov	r15, r18
    7746:	8f 19       	sub	r24, r15
    7748:	80 93 00 01 	sts	0x0100, r24
uchar       len;

    wantLen = usbMsgLen;
    if(wantLen > 8)
        wantLen = 8;
    usbMsgLen -= wantLen;
    774c:	80 91 13 01 	lds	r24, 0x0113
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    7750:	98 e8       	ldi	r25, 0x88	; 136
    7752:	89 27       	eor	r24, r25
    7754:	80 93 13 01 	sts	0x0113, r24
    7758:	ff 20       	and	r15, r15
    775a:	09 f4       	brne	.+2      	; 0x775e <_mywait_sleeploop227+0x2d6>
/* This function is similar to usbFunctionRead(), but it's also called for
 * data handled automatically by the driver (e.g. descriptor reads).
 */
static uchar usbDeviceRead(uchar *data, uchar len)
{
    if(len > 0){    /* don't bother app with 0 sized reads */
    775c:	49 c0       	rjmp	.+146    	; 0x77f0 <_mywait_sleeploop227+0x368>
    775e:	80 91 12 01 	lds	r24, 0x0112
#if USB_CFG_IMPLEMENT_FN_READ
        if(usbMsgFlags & USB_FLG_USE_USER_RW){
    7762:	87 ff       	sbrs	r24, 7
    7764:	27 c0       	rjmp	.+78     	; 0x77b4 <_mywait_sleeploop227+0x32c>
    7766:	80 91 0e 01 	lds	r24, 0x010E

uchar usbFunctionRead(uchar *data, uchar len)
{
uchar   i;

    if(len > bytesRemaining)
    776a:	8f 15       	cp	r24, r15
    776c:	08 f4       	brcc	.+2      	; 0x7770 <_mywait_sleeploop227+0x2e8>
    776e:	f8 2e       	mov	r15, r24
    7770:	8f 19       	sub	r24, r15
    7772:	80 93 0e 01 	sts	0x010E, r24
        len = bytesRemaining;
    bytesRemaining -= len;
    7776:	e0 90 0c 01 	lds	r14, 0x010C
    for(i = 0; i < len; i++){
        if(currentRequest >= USBASP_FUNC_READEEPROM){
    777a:	c4 e1       	ldi	r28, 0x14	; 20
    777c:	d1 e0       	ldi	r29, 0x01	; 1
    777e:	84 e1       	ldi	r24, 0x14	; 20
    7780:	91 e0       	ldi	r25, 0x01	; 1
    7782:	fc 2f       	mov	r31, r28
    7784:	f8 1b       	sub	r31, r24
    7786:	ff 15       	cp	r31, r15
    7788:	98 f5       	brcc	.+102    	; 0x77f0 <_mywait_sleeploop227+0x368>
uchar   i;

    if(len > bytesRemaining)
        len = bytesRemaining;
    bytesRemaining -= len;
    for(i = 0; i < len; i++){
    778a:	00 91 0f 01 	lds	r16, 0x010F
    778e:	10 91 10 01 	lds	r17, 0x0110
    7792:	86 e0       	ldi	r24, 0x06	; 6
    7794:	8e 15       	cp	r24, r14
        if(currentRequest >= USBASP_FUNC_READEEPROM){
    7796:	18 f4       	brcc	.+6      	; 0x779e <_mywait_sleeploop227+0x316>
    7798:	c8 01       	movw	r24, r16
    779a:	5b d0       	rcall	.+182    	; 0x7852 <__eerd_byte_m328p>
            *data = eeprom_read_byte((void *)currentAddress.w[0]);
    779c:	02 c0       	rjmp	.+4      	; 0x77a2 <_mywait_sleeploop227+0x31a>
    779e:	f8 01       	movw	r30, r16
    77a0:	84 91       	lpm	r24, Z
    77a2:	88 83       	st	Y, r24
        }else{
#if ((FLASHEND) > 65535)
            *data = pgm_read_byte_far(CURRENT_ADDRESS);
#else
            *data = pgm_read_byte(CURRENT_ADDRESS);
    77a4:	21 96       	adiw	r28, 0x01	; 1
    77a6:	0f 5f       	subi	r16, 0xFF	; 255
    77a8:	1f 4f       	sbci	r17, 0xFF	; 255
#endif
        }
        data++;
    77aa:	10 93 10 01 	sts	0x0110, r17
        CURRENT_ADDRESS++;
    77ae:	00 93 0f 01 	sts	0x010F, r16
    77b2:	e5 cf       	rjmp	.-54     	; 0x777e <_mywait_sleeploop227+0x2f6>
    77b4:	e0 91 21 01 	lds	r30, 0x0121
    77b8:	f0 91 22 01 	lds	r31, 0x0122
            len = usbFunctionRead(data, len);
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
    77bc:	86 ff       	sbrs	r24, 6
    77be:	0b c0       	rjmp	.+22     	; 0x77d6 <_mywait_sleeploop227+0x34e>
    77c0:	84 e1       	ldi	r24, 0x14	; 20
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    77c2:	91 e0       	ldi	r25, 0x01	; 1
    77c4:	dc 01       	movw	r26, r24
    77c6:	24 91       	lpm	r18, Z
    77c8:	2d 93       	st	X+, r18
    77ca:	31 96       	adiw	r30, 0x01	; 1
                do{
                    uchar c = USB_READ_FLASH(r);    /* assign to char size variable to enforce byte ops */
    77cc:	2f 2d       	mov	r18, r15
                    *data++ = c;
    77ce:	28 0f       	add	r18, r24
                    r++;
    77d0:	2a 13       	cpse	r18, r26
    77d2:	f9 cf       	rjmp	.-14     	; 0x77c6 <_mywait_sleeploop227+0x33e>
    77d4:	09 c0       	rjmp	.+18     	; 0x77e8 <_mywait_sleeploop227+0x360>
                }while(--i);
    77d6:	84 e1       	ldi	r24, 0x14	; 20
    77d8:	91 e0       	ldi	r25, 0x01	; 1
    77da:	dc 01       	movw	r26, r24
    77dc:	21 91       	ld	r18, Z+
    77de:	2d 93       	st	X+, r18
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    77e0:	2f 2d       	mov	r18, r15
                    *data++ = c;
                    r++;
                }while(--i);
            }else{  /* RAM data */
                do{
                    *data++ = *((uchar *)r);
    77e2:	28 0f       	add	r18, r24
    77e4:	2a 13       	cpse	r18, r26
    77e6:	fa cf       	rjmp	.-12     	; 0x77dc <_mywait_sleeploop227+0x354>
    77e8:	f0 93 22 01 	sts	0x0122, r31
                    r++;
                }while(--i);
    77ec:	e0 93 21 01 	sts	0x0121, r30
            }
            usbMsgPtr = r;
    77f0:	6f 2d       	mov	r22, r15
    77f2:	84 e1       	ldi	r24, 0x14	; 20
    77f4:	91 e0       	ldi	r25, 0x01	; 1
        wantLen = 8;
    usbMsgLen -= wantLen;
    usbTxBuf[0] ^= USBPID_DATA0 ^ USBPID_DATA1; /* DATA toggling */
    len = usbDeviceRead(usbTxBuf + 1, wantLen);
    if(len <= 8){           /* valid data packet */
        usbCrc16Append(&usbTxBuf[1], len);
    77f6:	ad dc       	rcall	.-1702   	; 0x7152 <usbCrc16Append>
    77f8:	84 e0       	ldi	r24, 0x04	; 4
    77fa:	8f 0d       	add	r24, r15
    77fc:	8c 30       	cpi	r24, 0x0C	; 12
    77fe:	19 f0       	breq	.+6      	; 0x7806 <_mywait_sleeploop227+0x37e>
        len += 4;           /* length including sync byte */
    7800:	9f ef       	ldi	r25, 0xFF	; 255
    7802:	90 93 00 01 	sts	0x0100, r25
        if(len < 12)        /* a partial package identifies end of message */
    7806:	80 93 01 01 	sts	0x0101, r24
            usbMsgLen = USB_NO_MSG;
    780a:	84 e1       	ldi	r24, 0x14	; 20
    780c:	99 b1       	in	r25, 0x09	; 9
    }else{
        len = USBPID_STALL;   /* stall the endpoint */
        usbMsgLen = USB_NO_MSG;
    }
    usbTxLen = len;
    780e:	94 71       	andi	r25, 0x14	; 20
    7810:	31 f4       	brne	.+12     	; 0x781e <_mywait_sleeploop227+0x396>
        }else
#endif
        {
            uchar i = len;
            usbMsgPtr_t r = usbMsgPtr;
            if(usbMsgFlags & USB_FLG_MSGPTR_IS_ROM){    /* ROM data */
    7812:	81 50       	subi	r24, 0x01	; 1
        if(usbMsgLen != USB_NO_MSG){    /* transmit data pending? */
            usbBuildTxBlock();
        }
    }
    for(i = 20; i > 0; i--){
        uchar usbLineStatus = USBIN & USBMASK;
    7814:	d9 f7       	brne	.-10     	; 0x780c <_mywait_sleeploop227+0x384>
    7816:	10 92 24 01 	sts	0x0124, r1
        if(usbLineStatus != 0)  /* SE0 has ended */
    781a:	10 92 1e 01 	sts	0x011E, r1
            goto isNotReset;
    }
    /* RESET condition, called multiple times during reset */
    usbNewDeviceAddr = 0;
    781e:	80 91 11 01 	lds	r24, 0x0111
    7822:	80 31       	cpi	r24, 0x10	; 16
    7824:	30 f0       	brcs	.+12     	; 0x7832 <_mywait_sleeploop227+0x3aa>
  : [sil]        "+d" (stayinloader)
  : [pin]         "I" (_SFR_IO_ADDR(PIN_PIN(JUMPER_PORT))),
    [bit]         "I" (PIN(JUMPER_PORT, JUMPER_BIT))
);
#else
	if (stayinloader >= 0x10) {
    7826:	4f 9b       	sbis	0x09, 7	; 9
    7828:	0f c0       	rjmp	.+30     	; 0x7848 <_mywait_sleeploop227+0x3c0>
    782a:	80 91 11 01 	lds	r24, 0x0111
	  if (!bootLoaderConditionSimple()) {
    782e:	80 51       	subi	r24, 0x10	; 16
    7830:	09 c0       	rjmp	.+18     	; 0x7844 <_mywait_sleeploop227+0x3bc>
	    stayinloader-=0x10;
    7832:	4f 99       	sbic	0x09, 7	; 9
    7834:	09 c0       	rjmp	.+18     	; 0x7848 <_mywait_sleeploop227+0x3c0>
    7836:	80 91 11 01 	lds	r24, 0x0111
	  } 
	} else {
	  if (bootLoaderConditionSimple()) {
    783a:	82 30       	cpi	r24, 0x02	; 2
    783c:	28 f0       	brcs	.+10     	; 0x7848 <_mywait_sleeploop227+0x3c0>
	    if (stayinloader > 1) stayinloader-=2;
    783e:	80 91 11 01 	lds	r24, 0x0111
    7842:	82 50       	subi	r24, 0x02	; 2
    7844:	80 93 11 01 	sts	0x0111, r24
    7848:	80 91 11 01 	lds	r24, 0x0111
    784c:	81 11       	cpse	r24, r1
    784e:	22 ce       	rjmp	.-956    	; 0x7494 <_mywait_sleeploop227+0xc>
#endif
#endif
#endif

#if BOOTLOADER_CAN_EXIT
        }while (stayinloader);	/* main event loop, if BOOTLOADER_CAN_EXIT*/
    7850:	f7 cd       	rjmp	.-1042   	; 0x7440 <_mywait_sleeploop157+0x1c>

00007852 <__eerd_byte_m328p>:
    7852:	f9 99       	sbic	0x1f, 1	; 31
    7854:	fe cf       	rjmp	.-4      	; 0x7852 <__eerd_byte_m328p>
    7856:	92 bd       	out	0x22, r25	; 34
    7858:	81 bd       	out	0x21, r24	; 33
    785a:	f8 9a       	sbi	0x1f, 0	; 31
    785c:	99 27       	eor	r25, r25
    785e:	80 b5       	in	r24, 0x20	; 32
    7860:	08 95       	ret

00007862 <__eewr_byte_m328p>:
    7862:	26 2f       	mov	r18, r22

00007864 <__eewr_r18_m328p>:
    7864:	f9 99       	sbic	0x1f, 1	; 31
    7866:	fe cf       	rjmp	.-4      	; 0x7864 <__eewr_r18_m328p>
    7868:	1f ba       	out	0x1f, r1	; 31
    786a:	92 bd       	out	0x22, r25	; 34
    786c:	81 bd       	out	0x21, r24	; 33
    786e:	20 bd       	out	0x20, r18	; 32
    7870:	0f b6       	in	r0, 0x3f	; 63
    7872:	f8 94       	cli
    7874:	fa 9a       	sbi	0x1f, 2	; 31
    7876:	f9 9a       	sbi	0x1f, 1	; 31
    7878:	0f be       	out	0x3f, r0	; 63
    787a:	01 96       	adiw	r24, 0x01	; 1
    787c:	08 95       	ret

0000787e <_exit>:
    787e:	f8 94       	cli

00007880 <__stop_program>:
    7880:	ff cf       	rjmp	.-2      	; 0x7880 <__stop_program>
