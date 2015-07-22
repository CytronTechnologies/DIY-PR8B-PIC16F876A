opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F876A
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
# 23 "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	psect config,class=CONFIG,delta=2 ;#
# 23 "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_beep
	FNCALL	_main,_delay
	FNCALL	_main,_uart_rec
	FNCALL	_main,_send_char
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_beep,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	main@F1007
	global	main@F1009
	global	main@F1011
	global	main@F1013
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	77

;initializer for main@F1007
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	032h
	retlw	033h
	retlw	039h
	retlw	033h
	retlw	039h
	retlw	032h
	retlw	039h
	line	78

;initializer for main@F1009
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	030h
	retlw	037h
	retlw	039h
	retlw	037h
	retlw	034h
	retlw	034h
	retlw	037h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	80

;initializer for main@F1011
	retlw	04Ah
	retlw	06Fh
	retlw	073h
	retlw	065h
	retlw	070h
	retlw	068h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	line	81

;initializer for main@F1013
	retlw	04Dh
	retlw	061h
	retlw	072h
	retlw	079h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	global	_PORTB
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_ADCON1
_ADCON1	set	159
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_BRGH
_BRGH	set	1218
	global	_TXEN
_TXEN	set	1221
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_5:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_4:	
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_11:	
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	80	;'P'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	strings
	
STR_7:	
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	0
psect	strings
STR_9	equ	STR_7+0
STR_10	equ	STR_8+0
	file	"pr8B.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	77
main@F1007:
       ds      10

psect	dataBANK0
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	78
main@F1009:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	80
main@F1011:
       ds      10

psect	dataBANK1
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	81
main@F1013:
       ds      10

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+20)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_beep
?_beep:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_uart_rec
??_uart_rec:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_uart_rec
?_uart_rec:	; 1 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	uart_rec@rec_data
uart_rec@rec_data:	; 1 bytes @ 0x1
	ds	3
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_beep
??_beep:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	ds	1
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@i
send_string@i:	; 1 bytes @ 0xA
	ds	1
	global	send_string@s
send_string@s:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@user_1
main@user_1:	; 10 bytes @ 0x4
	ds	10
	global	main@user_2
main@user_2:	; 10 bytes @ 0xE
	ds	10
	global	main@id_1
main@id_1:	; 10 bytes @ 0x18
	ds	10
	global	main@id_2
main@id_2:	; 10 bytes @ 0x22
	ds	10
	global	main@data
main@data:	; 12 bytes @ 0x2C
	ds	12
	global	main@database
main@database:	; 1 bytes @ 0x38
	ds	1
	global	main@temp
main@temp:	; 1 bytes @ 0x39
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x3A
	ds	1
;;Data sizes: Strings 102, constant 0, data 40, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     59      79
;; BANK1           80      0      20
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_11(CODE[15]), STR_10(CODE[5]), STR_9(CODE[7]), STR_8(CODE[5]), 
;;		 -> STR_7(CODE[7]), STR_6(CODE[4]), STR_5(CODE[17]), STR_4(CODE[15]), 
;;		 -> STR_3(CODE[14]), STR_2(CODE[12]), STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_send_string
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _send_char->_delay
;;   _beep->_delay
;;   _send_config->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                59    59      0    1546
;;                                              0 BANK0     59    59      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                               _beep
;;                              _delay
;;                           _uart_rec
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          3     3      0     135
;;                                              9 COMMON     3     3      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _beep                                                 0     0      0      45
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _uart_rec                                             2     2      0      23
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _beep
;;     _delay
;;   _delay
;;   _uart_rec
;;   _send_char
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      14       7       25.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      72      12        0.0%
;;ABS                  0      0      6F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     3B      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 70 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           12   44[BANK0 ] unsigned char [12]
;;  id_2           10   34[BANK0 ] unsigned char [10]
;;  id_1           10   24[BANK0 ] unsigned char [10]
;;  user_2         10   14[BANK0 ] unsigned char [10]
;;  user_1         10    4[BANK0 ] unsigned char [10]
;;  i               1   58[BANK0 ] unsigned char 
;;  temp            1   57[BANK0 ] unsigned char 
;;  database        1   56[BANK0 ] unsigned char 
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
;;      Locals:         0      55       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      59       0       0       0
;;Total ram usage:       59 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_beep
;;		_delay
;;		_uart_rec
;;		_send_char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	70
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	77
	
l2890:	
;PR8.c: 72: unsigned char i,temp,database;
;PR8.c: 73: unsigned char data[12];
;PR8.c: 77: unsigned char id_1[10]={"0002393929"};
	movlw	(main@id_1)&0ffh
	movwf	fsr0
	movlw	low(main@F1007)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2600:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2600
	line	78
;PR8.c: 78: unsigned char id_2[10]={"0000797447"};
	movlw	(main@id_2)&0ffh
	movwf	fsr0
	movlw	low(main@F1009)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2610:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2610
	line	80
;PR8.c: 80: unsigned char user_1[10]={"Joseph    "};
	movlw	(main@user_1)&0ffh
	movwf	fsr0
	movlw	low(main@F1011)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2620:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2620
	line	81
;PR8.c: 81: unsigned char user_2[10]={"Mary      "};
	movlw	(main@user_2)&0ffh
	movwf	fsr0
	movlw	low(main@F1013)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2630:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2630
	line	84
	
l2892:	
;PR8.c: 84: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	85
	
l2894:	
;PR8.c: 85: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	86
	
l2896:	
;PR8.c: 86: TRISA = 0b11110011;
	movlw	(0F3h)
	movwf	(133)^080h	;volatile
	line	89
	
l2898:	
;PR8.c: 89: SPBRG = 0x81;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	90
	
l2900:	
;PR8.c: 90: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	91
	
l2902:	
;PR8.c: 91: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	92
	
l2904:	
;PR8.c: 92: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	93
	
l2906:	
;PR8.c: 93: SPEN = 1;
	bsf	(199/8),(199)&7
	line	96
	
l2908:	
;PR8.c: 96: ADCON1 = 0b00000110;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	99
	
l2910:	
;PR8.c: 99: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	100
	
l2912:	
;PR8.c: 100: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	101
	
l2914:	
;PR8.c: 101: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	102
	
l2916:	
;PR8.c: 102: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	103
	
l2918:	
;PR8.c: 103: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	106
	
l2920:	
;PR8.c: 106: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	107
	
l2922:	
;PR8.c: 107: RC1=1;
	bsf	(57/8),(57)&7
	line	108
	
l2924:	
;PR8.c: 108: RA2=0;
	bcf	(42/8),(42)&7
	line	109
	
l2926:	
;PR8.c: 109: RA3=0;
	bcf	(43/8),(43)&7
	line	111
	
l2928:	
;PR8.c: 111: lcd_clr();
	fcall	_lcd_clr
	line	112
	
l2930:	
;PR8.c: 112: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	113
	
l2932:	
;PR8.c: 113: send_string("   RFID door");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	114
	
l2934:	
;PR8.c: 114: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	115
	
l2936:	
;PR8.c: 115: send_string("   security");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	117
	
l2938:	
;PR8.c: 117: beep();
	fcall	_beep
	line	118
	
l2940:	
;PR8.c: 118: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	goto	l2942
	line	121
;PR8.c: 121: while(1)
	
l637:	
	line	123
	
l2942:	
;PR8.c: 122: {
;PR8.c: 123: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	124
	
l2944:	
;PR8.c: 124: lcd_clr();
	fcall	_lcd_clr
	line	125
	
l2946:	
;PR8.c: 125: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	126
	
l2948:	
;PR8.c: 126: send_string("Place your ID");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	127
	
l2950:	
;PR8.c: 127: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	128
	
l2952:	
;PR8.c: 128: send_string("on the reader.");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	130
	
l2954:	
;PR8.c: 130: for(i=0;i<12;i+=1)data[i]=uart_rec();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l2956:	
	movlw	(0Ch)
	subwf	(main@i),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2960
u2640:
	goto	l639
	
l2958:	
	goto	l639
	
l638:	
	
l2960:	
	fcall	_uart_rec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2962:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2964:	
	movlw	(0Ch)
	subwf	(main@i),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2960
u2650:
	
l639:	
	line	134
;PR8.c: 134: RA2=1;
	bsf	(42/8),(42)&7
	line	136
	
l2966:	
;PR8.c: 136: lcd_clr();
	fcall	_lcd_clr
	line	137
;PR8.c: 137: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	138
	
l2968:	
;PR8.c: 138: send_string("Processing......");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	139
	
l2970:	
;PR8.c: 139: delay(40000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	09Ch
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	141
	
l2972:	
;PR8.c: 141: database=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@database)
	line	144
	
l2974:	
;PR8.c: 144: temp=0;
	clrf	(main@temp)
	line	147
	
l2976:	
;PR8.c: 147: for(i=1;i<11;i+=1)
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2978:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2982
u2660:
	goto	l2988
	
l2980:	
	goto	l2988
	line	148
	
l640:	
	line	149
	
l2982:	
;PR8.c: 148: {
;PR8.c: 149: if((data[i])!=(id_1[i-1]))temp=1;
	movf	(main@i),w
	addlw	0FFh
	addlw	main@id_1&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(??_main+0)+0,w
	skipnz
	goto	u2671
	goto	u2670
u2671:
	goto	l2986
u2670:
	
l2984:	
	clrf	(main@temp)
	bsf	status,0
	rlf	(main@temp),f
	goto	l2986
	
l642:	
	line	147
	
l2986:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2982
u2680:
	goto	l2988
	
l641:	
	line	151
	
l2988:	
;PR8.c: 150: }
;PR8.c: 151: if(temp==0) database=1;
	movf	(main@temp),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2992
u2690:
	
l2990:	
	clrf	(main@database)
	bsf	status,0
	rlf	(main@database),f
	goto	l2992
	
l643:	
	line	154
	
l2992:	
;PR8.c: 154: temp=0;
	clrf	(main@temp)
	line	157
;PR8.c: 157: for(i=1;i<11;i+=1)
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2994:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l2998
u2700:
	goto	l3004
	
l2996:	
	goto	l3004
	line	158
	
l644:	
	line	159
	
l2998:	
;PR8.c: 158: {
;PR8.c: 159: if((data[i])!=(id_2[i-1]))temp=1;
	movf	(main@i),w
	addlw	0FFh
	addlw	main@id_2&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movf	indf,w
	xorwf	(??_main+0)+0,w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l3002
u2710:
	
l3000:	
	clrf	(main@temp)
	bsf	status,0
	rlf	(main@temp),f
	goto	l3002
	
l646:	
	line	157
	
l3002:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2998
u2720:
	goto	l3004
	
l645:	
	line	161
	
l3004:	
;PR8.c: 160: }
;PR8.c: 161: if(temp==0) database=2;
	movf	(main@temp),f
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l3008
u2730:
	
l3006:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@database)
	goto	l3008
	
l647:	
	line	163
	
l3008:	
;PR8.c: 163: lcd_clr();
	fcall	_lcd_clr
	line	164
	
l3010:	
;PR8.c: 164: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	line	167
;PR8.c: 167: switch(database)
	goto	l3106
	line	169
;PR8.c: 168: {
;PR8.c: 169: case 1:
	
l649:	
	line	170
;PR8.c: 170: RA3=1;
	bsf	(43/8),(43)&7
	line	171
	
l3012:	
;PR8.c: 171: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	172
	
l3014:	
;PR8.c: 172: send_string("ID:");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	173
	
l3016:	
;PR8.c: 173: for(i=0;i<10;i+=1)send_char(id_1[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l3018:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l3022
u2740:
	goto	l3028
	
l3020:	
	goto	l3028
	
l650:	
	
l3022:	
	movf	(main@i),w
	addlw	main@id_1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l3024:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3026:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l3022
u2750:
	goto	l3028
	
l651:	
	line	174
	
l3028:	
;PR8.c: 174: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	175
	
l3030:	
;PR8.c: 175: send_string("user: ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	176
	
l3032:	
;PR8.c: 176: for(i=0;i<10;i+=1)send_char(user_1[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l3034:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l3038
u2760:
	goto	l3044
	
l3036:	
	goto	l3044
	
l652:	
	
l3038:	
	movf	(main@i),w
	addlw	main@user_1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l3040:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3042:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l3038
u2770:
	goto	l3044
	
l653:	
	line	177
	
l3044:	
;PR8.c: 177: beep();
	fcall	_beep
	line	178
;PR8.c: 178: break;
	goto	l3108
	line	179
;PR8.c: 179: case 2:
	
l655:	
	line	180
;PR8.c: 180: RA3=1;
	bsf	(43/8),(43)&7
	line	181
	
l3046:	
;PR8.c: 181: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	182
	
l3048:	
;PR8.c: 182: send_string("ID: ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	183
	
l3050:	
;PR8.c: 183: for(i=0;i<10;i+=1)send_char(id_2[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l3052:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l3056
u2780:
	goto	l3062
	
l3054:	
	goto	l3062
	
l656:	
	
l3056:	
	movf	(main@i),w
	addlw	main@id_2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l3058:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3060:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l3056
u2790:
	goto	l3062
	
l657:	
	line	184
	
l3062:	
;PR8.c: 184: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	185
	
l3064:	
;PR8.c: 185: send_string("user: ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	186
	
l3066:	
;PR8.c: 186: for(i=0;i<10;i+=1)send_char(user_2[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l3068:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l3072
u2800:
	goto	l3078
	
l3070:	
	goto	l3078
	
l658:	
	
l3072:	
	movf	(main@i),w
	addlw	main@user_2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l3074:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3076:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l3072
u2810:
	goto	l3078
	
l659:	
	line	187
	
l3078:	
;PR8.c: 187: beep();
	fcall	_beep
	line	188
;PR8.c: 188: break;
	goto	l3108
	line	189
;PR8.c: 189: default:
	
l660:	
	line	190
	
l3080:	
;PR8.c: 190: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	191
	
l3082:	
;PR8.c: 191: send_string("ID: ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	192
	
l3084:	
;PR8.c: 192: for(i=1;i<11;i+=1)send_char(data[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l3086:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l3090
u2820:
	goto	l3096
	
l3088:	
	goto	l3096
	
l661:	
	
l3090:	
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l3092:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3094:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l3090
u2830:
	goto	l3096
	
l662:	
	line	193
	
l3096:	
;PR8.c: 193: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	194
	
l3098:	
;PR8.c: 194: send_string("user not found");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_send_string
	line	195
	
l3100:	
;PR8.c: 195: beep();
	fcall	_beep
	line	196
	
l3102:	
;PR8.c: 196: beep();
	fcall	_beep
	line	197
;PR8.c: 197: break;
	goto	l3108
	line	198
	
l3104:	
;PR8.c: 198: }
	goto	l3108
	line	167
	
l648:	
	
l3106:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@database),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l649
	xorlw	2^1	; case 2
	skipnz
	goto	l655
	goto	l3080
	opt asmopt_on

	line	198
	
l654:	
	line	199
	
l3108:	
;PR8.c: 199: delay(300000);
	movlw	0
	movwf	(?_delay+3)
	movlw	04h
	movwf	(?_delay+2)
	movlw	093h
	movwf	(?_delay+1)
	movlw	0E0h
	movwf	(?_delay)

	fcall	_delay
	line	200
	
l3110:	
;PR8.c: 200: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	201
	
l3112:	
;PR8.c: 201: RA3=0;
	bcf	(43/8),(43)&7
	goto	l2942
	line	202
	
l663:	
	line	121
	goto	l2942
	
l664:	
	line	204
	
l665:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _send_string *****************
;; Defined at:
;;		line 257 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_11(15), STR_10(5), STR_9(7), STR_8(5), 
;;		 -> STR_7(7), STR_6(4), STR_5(17), STR_4(15), 
;;		 -> STR_3(14), STR_2(12), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  s               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_11(15), STR_10(5), STR_9(7), STR_8(5), 
;;		 -> STR_7(7), STR_6(4), STR_5(17), STR_4(15), 
;;		 -> STR_3(14), STR_2(12), STR_1(13), 
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	257
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	258
	
l2880:	
;PR8.c: 258: unsigned char i=0;
	clrf	(send_string@i)
	line	259
;PR8.c: 259: while (s && *s)send_char (*s++);
	goto	l2886
	
l688:	
	
l2882:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2884:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2886
	
l687:	
	
l2886:	
	movf	(send_string@s),w
	skipz
	goto	u2580
	goto	l692
u2580:
	
l2888:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l2882
u2590:
	goto	l692
	
l690:	
	goto	l692
	
l691:	
	line	261
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 238 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	238
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	239
	
l2872:	
;PR8.c: 239: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2876
u2570:
	line	241
	
l2874:	
;PR8.c: 240: {
;PR8.c: 241: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	242
;PR8.c: 242: }
	goto	l681
	line	243
	
l679:	
	line	245
	
l2876:	
;PR8.c: 243: else
;PR8.c: 244: {
;PR8.c: 245: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	246
	
l2878:	
;PR8.c: 246: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l681
	line	247
	
l680:	
	line	248
	
l681:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 251 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text223
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	251
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	252
	
l2870:	
;PR8.c: 252: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	253
;PR8.c: 253: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	254
	
l684:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _send_char *****************
;; Defined at:
;;		line 227 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text224
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	227
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 6
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	228
	
l2858:	
;PR8.c: 228: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	229
;PR8.c: 229: RC3=1;
	bsf	(59/8),(59)&7
	line	230
	
l2860:	
;PR8.c: 230: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	231
	
l2862:	
;PR8.c: 231: RC4=1;
	bsf	(60/8),(60)&7
	line	232
	
l2864:	
;PR8.c: 232: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	233
	
l2866:	
;PR8.c: 233: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	234
	
l2868:	
;PR8.c: 234: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	235
	
l676:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_beep
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function _beep *****************
;; Defined at:
;;		line 272 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text225
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	272
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:	
	opt	stack 6
; Regs used in _beep: [wreg+status,2+status,0+pclath+cstack]
	line	273
	
l2852:	
;PR8.c: 273: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	274
	
l2854:	
;PR8.c: 274: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	275
	
l2856:	
;PR8.c: 275: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	276
;PR8.c: 276: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	277
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
;; =============== function _beep ends ============

	signat	_beep,88
	global	_send_config
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function _send_config *****************
;; Defined at:
;;		line 216 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text226
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	216
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	217
	
l2840:	
;PR8.c: 217: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	218
;PR8.c: 218: RC3=0;
	bcf	(59/8),(59)&7
	line	219
	
l2842:	
;PR8.c: 219: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	220
	
l2844:	
;PR8.c: 220: RC4=1;
	bsf	(60/8),(60)&7
	line	221
	
l2846:	
;PR8.c: 221: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	222
	
l2848:	
;PR8.c: 222: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	223
	
l2850:	
;PR8.c: 223: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	224
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_uart_rec
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _uart_rec *****************
;; Defined at:
;;		line 264 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rec_data        1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text227
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	264
	global	__size_of_uart_rec
	__size_of_uart_rec	equ	__end_of_uart_rec-_uart_rec
	
_uart_rec:	
	opt	stack 7
; Regs used in _uart_rec: [wreg]
	line	266
	
l2834:	
;PR8.c: 265: unsigned char rec_data;
;PR8.c: 266: while(RCIF==0);
	goto	l695
	
l696:	
	
l695:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l695
u2560:
	goto	l2836
	
l697:	
	line	267
	
l2836:	
;PR8.c: 267: rec_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_rec+0)+0
	movf	(??_uart_rec+0)+0,w
	movwf	(uart_rec@rec_data)
	line	268
;PR8.c: 268: return rec_data;
	movf	(uart_rec@rec_data),w
	goto	l698
	
l2838:	
	line	269
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of_uart_rec
	__end_of_uart_rec:
;; =============== function _uart_rec ends ============

	signat	_uart_rec,89
	global	_delay
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function _delay *****************
;; Defined at:
;;		line 211 in file "C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_send_config
;;		_send_char
;;		_lcd_clr
;;		_beep
;; This function uses a non-reentrant model
;;
psect	text228
	file	"C:\Documents and Settings\Sales\Desktop\PIC16F876A  DIY PR8B\Source file\PR8.c"
	line	211
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	212
	
l2828:	
;PR8.c: 212: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l2832
u2530:
	goto	l670
	
l2830:	
	goto	l670
	
l668:	
	
l2832:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2545
	goto	u2546
u2545:
	subwf	(delay@data+1),f
u2546:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2547
	goto	u2548
u2547:
	subwf	(delay@data+2),f
u2548:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2549
	goto	u2540
u2549:
	subwf	(delay@data+3),f
u2540:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2832
u2550:
	goto	l670
	
l669:	
	line	213
	
l670:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
