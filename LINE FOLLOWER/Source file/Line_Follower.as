opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_delay_ms
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay_ms
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"Line_Follower.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay_ms:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x0
	ds	2
??_delay_ms:	; 0 bytes @ 0x2
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x2
	ds	2
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
	ds	1
	global	main@sensor
main@sensor:	; 1 bytes @ 0x7
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       8
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_delay_ms
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0     118
;!                                              6 COMMON     2     2      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             6     4      2     103
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\CPE3201_Line-Follower\LINE FOLLOWER\Source file\Line_Follower.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sensor          1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\CPE3201_Line-Follower\LINE FOLLOWER\Source file\Line_Follower.c"
	line	18
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\CPE3201_Line-Follower\LINE FOLLOWER\Source file\Line_Follower.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l511:	
;Line_Follower.c: 19: unsigned char sensor;
;Line_Follower.c: 21: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	22
	
l513:	
;Line_Follower.c: 22: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	23
	
l515:	
;Line_Follower.c: 23: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	24
;Line_Follower.c: 24: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	25
	
l517:	
;Line_Follower.c: 25: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	27
	
l519:	
;Line_Follower.c: 27: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	28
	
l521:	
;Line_Follower.c: 28: PORTE = 0x00;
	clrf	(9)	;volatile
	line	29
	
l523:	
;Line_Follower.c: 29: PORTC = 0x00;
	clrf	(7)	;volatile
	goto	l525
	line	31
;Line_Follower.c: 31: while (1) {
	
l29:	
	line	32
	
l525:	
;Line_Follower.c: 32: sensor = PORTB & 0x07;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	07h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@sensor)
	line	34
;Line_Follower.c: 34: switch (sensor) {
	goto	l553
	line	35
;Line_Follower.c: 35: case 0x02:
	
l31:	
	line	36
	
l527:	
;Line_Follower.c: 36: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	37
;Line_Follower.c: 37: PORTD = 0x50;
	movlw	(050h)
	movwf	(8)	;volatile
	line	38
;Line_Follower.c: 38: PORTC = 0x01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	39
;Line_Follower.c: 39: break;
	goto	l555
	line	40
;Line_Follower.c: 40: case 0x04:
	
l33:	
	line	41
	
l529:	
;Line_Follower.c: 41: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	42
;Line_Follower.c: 42: PORTD = 0x90;
	movlw	(090h)
	movwf	(8)	;volatile
	line	43
	
l531:	
;Line_Follower.c: 43: PORTC = 0x00;
	clrf	(7)	;volatile
	line	44
;Line_Follower.c: 44: break;
	goto	l555
	line	45
;Line_Follower.c: 45: case 0x01:
	
l34:	
	line	46
	
l533:	
;Line_Follower.c: 46: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	47
;Line_Follower.c: 47: PORTD = 0x60;
	movlw	(060h)
	movwf	(8)	;volatile
	line	48
	
l535:	
;Line_Follower.c: 48: PORTC = 0x00;
	clrf	(7)	;volatile
	line	49
;Line_Follower.c: 49: break;
	goto	l555
	line	50
;Line_Follower.c: 50: case 0x07:
	
l35:	
	line	51
	
l537:	
;Line_Follower.c: 51: PORTE = 0x00;
	clrf	(9)	;volatile
	line	52
;Line_Follower.c: 52: PORTD = 0x00;
	clrf	(8)	;volatile
	line	53
;Line_Follower.c: 53: PORTC = 0x00;
	clrf	(7)	;volatile
	line	54
;Line_Follower.c: 54: break;
	goto	l555
	line	57
;Line_Follower.c: 57: case 0x05:
	
l36:	
	line	58
	
l539:	
;Line_Follower.c: 58: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	59
;Line_Follower.c: 59: PORTD = 0x50;
	movlw	(050h)
	movwf	(8)	;volatile
	line	60
;Line_Follower.c: 60: PORTC = 0x01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	61
;Line_Follower.c: 61: break;
	goto	l555
	line	63
;Line_Follower.c: 63: case 0x03:
	
l37:	
	line	64
	
l541:	
;Line_Follower.c: 64: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	65
;Line_Follower.c: 65: PORTD = 0x60;
	movlw	(060h)
	movwf	(8)	;volatile
	line	66
	
l543:	
;Line_Follower.c: 66: PORTC = 0x00;
	clrf	(7)	;volatile
	line	67
;Line_Follower.c: 67: break;
	goto	l555
	line	69
;Line_Follower.c: 69: case 0x06:
	
l38:	
	line	70
	
l545:	
;Line_Follower.c: 70: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	71
;Line_Follower.c: 71: PORTD = 0x90;
	movlw	(090h)
	movwf	(8)	;volatile
	line	72
	
l547:	
;Line_Follower.c: 72: PORTC = 0x00;
	clrf	(7)	;volatile
	line	73
;Line_Follower.c: 73: break;
	goto	l555
	line	75
;Line_Follower.c: 75: default:
	
l39:	
	line	76
	
l549:	
;Line_Follower.c: 76: PORTE = 0x03;
	movlw	(03h)
	movwf	(9)	;volatile
	line	77
;Line_Follower.c: 77: PORTD = 0x50;
	movlw	(050h)
	movwf	(8)	;volatile
	line	78
;Line_Follower.c: 78: PORTC = 0x01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	79
;Line_Follower.c: 79: break;
	goto	l555
	line	80
	
l551:	
;Line_Follower.c: 80: }
	goto	l555
	line	34
	
l30:	
	
l553:	
	movf	(main@sensor),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l533
	xorlw	2^1	; case 2
	skipnz
	goto	l527
	xorlw	3^2	; case 3
	skipnz
	goto	l541
	xorlw	4^3	; case 4
	skipnz
	goto	l529
	xorlw	5^4	; case 5
	skipnz
	goto	l539
	xorlw	6^5	; case 6
	skipnz
	goto	l545
	xorlw	7^6	; case 7
	skipnz
	goto	l537
	goto	l549
	opt asmopt_on

	line	80
	
l32:	
	line	81
	
l555:	
;Line_Follower.c: 81: delay_ms(10);
	movlw	low(0Ah)
	movwf	(delay_ms@ms)
	movlw	high(0Ah)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l525
	line	82
	
l40:	
	line	31
	goto	l525
	
l41:	
	line	83
	
l42:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 12 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\CPE3201_Line-Follower\LINE FOLLOWER\Source file\Line_Follower.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] unsigned int 
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	12
global __ptext1
__ptext1:	;psect for function _delay_ms
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\CPE3201_Line-Follower\LINE FOLLOWER\Source file\Line_Follower.c"
	line	12
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 7
; Regs used in _delay_ms: [wreg+status,2]
	line	14
	
l499:	
;Line_Follower.c: 13: unsigned int i, j;
;Line_Follower.c: 14: for (i = 0; i < ms; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l21
	line	15
	
l22:	
	
l501:	
;Line_Follower.c: 15: for (j = 0; j < 110; j++);
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	
l503:	
	movlw	high(06Eh)
	subwf	(delay_ms@j+1),w
	movlw	low(06Eh)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l507
u10:
	goto	l509
	
l505:	
	goto	l509
	
l23:	
	
l507:	
	movlw	low(01h)
	addwf	(delay_ms@j),f
	skipnc
	incf	(delay_ms@j+1),f
	movlw	high(01h)
	addwf	(delay_ms@j+1),f
	movlw	high(06Eh)
	subwf	(delay_ms@j+1),w
	movlw	low(06Eh)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l507
u20:
	goto	l509
	
l24:	
	line	14
	
l509:	
	movlw	low(01h)
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(01h)
	addwf	(delay_ms@i+1),f
	
l21:	
	movf	(delay_ms@ms+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u35
	movf	(delay_ms@ms),w
	subwf	(delay_ms@i),w
u35:
	skipc
	goto	u31
	goto	u30
u31:
	goto	l501
u30:
	goto	l26
	
l25:	
	line	16
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
