opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

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
# 20 "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	psect config,class=CONFIG,delta=2 ;#
# 20 "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
	global	main@F533
	global	main@F535
	global	main@F537
	global	main@F539
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	62

;initializer for main@F533
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
	line	63

;initializer for main@F535
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
	line	65

;initializer for main@F537
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
	line	66

;initializer for main@F539
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
	global	_CREN
_CREN	set	196
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
	file	"PR 8.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	62
main@F533:
       ds      10

psect	dataBANK0
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	63
main@F535:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	65
main@F537:
       ds      10

psect	dataBANK1
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	66
main@F539:
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
;;		line 55 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	62
	
l2156:	
;PR8.c: 57: unsigned char i,temp,database;
;PR8.c: 58: unsigned char data[12];
;PR8.c: 62: unsigned char id_1[10]={"0002393929"};
	movlw	(main@id_1)&0ffh
	movwf	fsr0
	movlw	low(main@F533)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2520:
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
	goto	u2520
	line	63
;PR8.c: 63: unsigned char id_2[10]={"0000797447"};
	movlw	(main@id_2)&0ffh
	movwf	fsr0
	movlw	low(main@F535)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2530:
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
	goto	u2530
	line	65
;PR8.c: 65: unsigned char user_1[10]={"Joseph    "};
	movlw	(main@user_1)&0ffh
	movwf	fsr0
	movlw	low(main@F537)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2540:
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
	goto	u2540
	line	66
;PR8.c: 66: unsigned char user_2[10]={"Mary      "};
	movlw	(main@user_2)&0ffh
	movwf	fsr0
	movlw	low(main@F539)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2550:
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
	goto	u2550
	line	69
	
l2158:	
;PR8.c: 69: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	70
	
l2160:	
;PR8.c: 70: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	71
	
l2162:	
;PR8.c: 71: TRISA = 0b11110011;
	movlw	(0F3h)
	movwf	(133)^080h	;volatile
	line	74
	
l2164:	
;PR8.c: 74: SPBRG = 0x81;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	75
	
l2166:	
;PR8.c: 75: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	76
	
l2168:	
;PR8.c: 76: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	77
	
l2170:	
;PR8.c: 77: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	78
	
l2172:	
;PR8.c: 78: SPEN = 1;
	bsf	(199/8),(199)&7
	line	81
	
l2174:	
;PR8.c: 81: ADCON1 = 0b00000110;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	84
	
l2176:	
;PR8.c: 84: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	85
	
l2178:	
;PR8.c: 85: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	86
	
l2180:	
;PR8.c: 86: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	87
	
l2182:	
;PR8.c: 87: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	88
	
l2184:	
;PR8.c: 88: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	91
	
l2186:	
;PR8.c: 91: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	92
	
l2188:	
;PR8.c: 92: RC1=1;
	bsf	(57/8),(57)&7
	line	93
	
l2190:	
;PR8.c: 93: RA2=0;
	bcf	(42/8),(42)&7
	line	94
	
l2192:	
;PR8.c: 94: RA3=0;
	bcf	(43/8),(43)&7
	line	96
	
l2194:	
;PR8.c: 96: lcd_clr();
	fcall	_lcd_clr
	line	97
	
l2196:	
;PR8.c: 97: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	98
	
l2198:	
;PR8.c: 98: send_string("   RFID door");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	99
	
l2200:	
;PR8.c: 99: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	100
	
l2202:	
;PR8.c: 100: send_string("   security");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	102
	
l2204:	
;PR8.c: 102: beep();
	fcall	_beep
	line	103
	
l2206:	
;PR8.c: 103: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	goto	l2208
	line	106
;PR8.c: 106: while(1)
	
l583:	
	line	108
	
l2208:	
;PR8.c: 107: {
;PR8.c: 108: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	109
	
l2210:	
;PR8.c: 109: lcd_clr();
	fcall	_lcd_clr
	line	110
	
l2212:	
;PR8.c: 110: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	111
	
l2214:	
;PR8.c: 111: send_string("Place your ID");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	112
	
l2216:	
;PR8.c: 112: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	113
	
l2218:	
;PR8.c: 113: send_string("on the reader.");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	115
	
l2220:	
;PR8.c: 115: for(i=0;i<12;i+=1)data[i]=uart_rec();
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2222:	
	movlw	(0Ch)
	subwf	(main@i),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2226
u2560:
	goto	l585
	
l2224:	
	goto	l585
	
l584:	
	
l2226:	
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
	
l2228:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2230:	
	movlw	(0Ch)
	subwf	(main@i),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2226
u2570:
	
l585:	
	line	119
;PR8.c: 119: RA2=1;
	bsf	(42/8),(42)&7
	line	121
	
l2232:	
;PR8.c: 121: lcd_clr();
	fcall	_lcd_clr
	line	122
;PR8.c: 122: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	123
	
l2234:	
;PR8.c: 123: send_string("Processing......");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	124
	
l2236:	
;PR8.c: 124: delay(40000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	09Ch
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	126
	
l2238:	
;PR8.c: 126: database=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@database)
	line	129
	
l2240:	
;PR8.c: 129: temp=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@temp)
	line	132
	
l2242:	
;PR8.c: 132: for(i=1;i<11;i+=1)
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2244:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2248
u2580:
	goto	l2254
	
l2246:	
	goto	l2254
	line	133
	
l586:	
	line	134
	
l2248:	
;PR8.c: 133: {
;PR8.c: 134: if((data[i])!=(id_1[i-1]))temp=1;
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
	goto	u2591
	goto	u2590
u2591:
	goto	l2252
u2590:
	
l2250:	
	clrf	(main@temp)
	bsf	status,0
	rlf	(main@temp),f
	goto	l2252
	
l588:	
	line	132
	
l2252:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l2248
u2600:
	goto	l2254
	
l587:	
	line	136
	
l2254:	
;PR8.c: 135: }
;PR8.c: 136: if(temp==0) database=1;
	movf	(main@temp),f
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2258
u2610:
	
l2256:	
	clrf	(main@database)
	bsf	status,0
	rlf	(main@database),f
	goto	l2258
	
l589:	
	line	139
	
l2258:	
;PR8.c: 139: temp=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@temp)
	line	142
	
l2260:	
;PR8.c: 142: for(i=1;i<11;i+=1)
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2262:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2266
u2620:
	goto	l2272
	
l2264:	
	goto	l2272
	line	143
	
l590:	
	line	144
	
l2266:	
;PR8.c: 143: {
;PR8.c: 144: if((data[i])!=(id_2[i-1]))temp=1;
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
	goto	u2631
	goto	u2630
u2631:
	goto	l2270
u2630:
	
l2268:	
	clrf	(main@temp)
	bsf	status,0
	rlf	(main@temp),f
	goto	l2270
	
l592:	
	line	142
	
l2270:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2266
u2640:
	goto	l2272
	
l591:	
	line	146
	
l2272:	
;PR8.c: 145: }
;PR8.c: 146: if(temp==0) database=2;
	movf	(main@temp),f
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l2276
u2650:
	
l2274:	
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@database)
	goto	l2276
	
l593:	
	line	148
	
l2276:	
;PR8.c: 148: lcd_clr();
	fcall	_lcd_clr
	line	149
	
l2278:	
;PR8.c: 149: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	line	152
;PR8.c: 152: switch(database)
	goto	l2374
	line	154
;PR8.c: 153: {
;PR8.c: 154: case 1:
	
l595:	
	line	155
;PR8.c: 155: RA3=1;
	bsf	(43/8),(43)&7
	line	156
	
l2280:	
;PR8.c: 156: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	157
	
l2282:	
;PR8.c: 157: send_string("ID:");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	158
	
l2284:	
;PR8.c: 158: for(i=0;i<10;i+=1)send_char(id_1[i]);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2286:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2290
u2660:
	goto	l2296
	
l2288:	
	goto	l2296
	
l596:	
	
l2290:	
	movf	(main@i),w
	addlw	main@id_1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l2292:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2294:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2290
u2670:
	goto	l2296
	
l597:	
	line	159
	
l2296:	
;PR8.c: 159: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	160
	
l2298:	
;PR8.c: 160: send_string("user: ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	161
	
l2300:	
;PR8.c: 161: for(i=0;i<10;i+=1)send_char(user_1[i]);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2302:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2306
u2680:
	goto	l2312
	
l2304:	
	goto	l2312
	
l598:	
	
l2306:	
	movf	(main@i),w
	addlw	main@user_1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l2308:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2310:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l2306
u2690:
	goto	l2312
	
l599:	
	line	162
	
l2312:	
;PR8.c: 162: beep();
	fcall	_beep
	line	163
;PR8.c: 163: break;
	goto	l2376
	line	164
;PR8.c: 164: case 2:
	
l601:	
	line	165
;PR8.c: 165: RA3=1;
	bsf	(43/8),(43)&7
	line	166
	
l2314:	
;PR8.c: 166: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	167
	
l2316:	
;PR8.c: 167: send_string("ID: ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	168
	
l2318:	
;PR8.c: 168: for(i=0;i<10;i+=1)send_char(id_2[i]);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2320:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l2324
u2700:
	goto	l2330
	
l2322:	
	goto	l2330
	
l602:	
	
l2324:	
	movf	(main@i),w
	addlw	main@id_2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l2326:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2328:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l2324
u2710:
	goto	l2330
	
l603:	
	line	169
	
l2330:	
;PR8.c: 169: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	170
	
l2332:	
;PR8.c: 170: send_string("user: ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	171
	
l2334:	
;PR8.c: 171: for(i=0;i<10;i+=1)send_char(user_2[i]);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	
l2336:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2340
u2720:
	goto	l2346
	
l2338:	
	goto	l2346
	
l604:	
	
l2340:	
	movf	(main@i),w
	addlw	main@user_2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l2342:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2344:	
	movlw	(0Ah)
	subwf	(main@i),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2340
u2730:
	goto	l2346
	
l605:	
	line	172
	
l2346:	
;PR8.c: 172: beep();
	fcall	_beep
	line	173
;PR8.c: 173: break;
	goto	l2376
	line	174
;PR8.c: 174: default:
	
l606:	
	line	175
	
l2348:	
;PR8.c: 175: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	176
	
l2350:	
;PR8.c: 176: send_string("ID: ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	177
	
l2352:	
;PR8.c: 177: for(i=1;i<11;i+=1)send_char(data[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	bsf	status,0
	rlf	(main@i),f
	
l2354:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2358
u2740:
	goto	l2364
	
l2356:	
	goto	l2364
	
l607:	
	
l2358:	
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	
l2360:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2362:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2358
u2750:
	goto	l2364
	
l608:	
	line	178
	
l2364:	
;PR8.c: 178: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	179
	
l2366:	
;PR8.c: 179: send_string("user not found");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_send_string
	line	180
	
l2368:	
;PR8.c: 180: beep();
	fcall	_beep
	line	181
	
l2370:	
;PR8.c: 181: beep();
	fcall	_beep
	line	182
;PR8.c: 182: break;
	goto	l2376
	line	183
	
l2372:	
;PR8.c: 183: }
	goto	l2376
	line	152
	
l594:	
	
l2374:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@database),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    28    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l595
	xorlw	2^1	; case 2
	skipnz
	goto	l601
	goto	l2348

	line	183
	
l600:	
	line	184
	
l2376:	
;PR8.c: 184: delay(300000);
	movlw	0
	movwf	(?_delay+3)
	movlw	04h
	movwf	(?_delay+2)
	movlw	093h
	movwf	(?_delay+1)
	movlw	0E0h
	movwf	(?_delay)

	fcall	_delay
	line	185
	
l2378:	
;PR8.c: 185: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	186
	
l2380:	
;PR8.c: 186: RA3=0;
	bcf	(43/8),(43)&7
	goto	l2208
	line	187
	
l609:	
	line	106
	goto	l2208
	
l610:	
	line	189
	
l611:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function _send_string *****************
;; Defined at:
;;		line 242 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text205
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	242
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	243
	
l2146:	
;PR8.c: 243: unsigned char i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_string@i)
	line	244
;PR8.c: 244: while (s && *s)send_char (*s++);
	goto	l2152
	
l634:	
	
l2148:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2150:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2152
	
l633:	
	
l2152:	
	movf	(send_string@s),w
	skipz
	goto	u2500
	goto	l638
u2500:
	
l2154:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2148
u2510:
	goto	l638
	
l636:	
	goto	l638
	
l637:	
	line	246
	
l638:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 223 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text206
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	223
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	224
	
l2138:	
;PR8.c: 224: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2142
u2490:
	line	226
	
l2140:	
;PR8.c: 225: {
;PR8.c: 226: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	227
;PR8.c: 227: }
	goto	l627
	line	228
	
l625:	
	line	230
	
l2142:	
;PR8.c: 228: else
;PR8.c: 229: {
;PR8.c: 230: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	231
	
l2144:	
;PR8.c: 231: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l627
	line	232
	
l626:	
	line	233
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 236 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text207
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	236
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	237
	
l2136:	
;PR8.c: 237: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	238
;PR8.c: 238: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	239
	
l630:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _send_char *****************
;; Defined at:
;;		line 212 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text208
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	212
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 6
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	213
	
l2124:	
;PR8.c: 213: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	214
;PR8.c: 214: RC3=1;
	bsf	(59/8),(59)&7
	line	215
	
l2126:	
;PR8.c: 215: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	216
	
l2128:	
;PR8.c: 216: RC4=1;
	bsf	(60/8),(60)&7
	line	217
	
l2130:	
;PR8.c: 217: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	218
	
l2132:	
;PR8.c: 218: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	219
	
l2134:	
;PR8.c: 219: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	220
	
l622:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_beep
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _beep *****************
;; Defined at:
;;		line 257 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text209
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	257
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:	
	opt	stack 6
; Regs used in _beep: [wreg+status,2+status,0+pclath+cstack]
	line	258
	
l2118:	
;PR8.c: 258: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	259
	
l2120:	
;PR8.c: 259: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	260
	
l2122:	
;PR8.c: 260: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	261
;PR8.c: 261: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	262
	
l647:	
	return
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
;; =============== function _beep ends ============

	signat	_beep,88
	global	_send_config
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _send_config *****************
;; Defined at:
;;		line 201 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text210
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	201
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	202
	
l2106:	
;PR8.c: 202: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	203
;PR8.c: 203: RC3=0;
	bcf	(59/8),(59)&7
	line	204
	
l2108:	
;PR8.c: 204: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	205
	
l2110:	
;PR8.c: 205: RC4=1;
	bsf	(60/8),(60)&7
	line	206
	
l2112:	
;PR8.c: 206: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	207
	
l2114:	
;PR8.c: 207: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	208
	
l2116:	
;PR8.c: 208: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	209
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_uart_rec
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _uart_rec *****************
;; Defined at:
;;		line 249 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text211
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	249
	global	__size_of_uart_rec
	__size_of_uart_rec	equ	__end_of_uart_rec-_uart_rec
	
_uart_rec:	
	opt	stack 7
; Regs used in _uart_rec: [wreg]
	line	251
	
l2100:	
;PR8.c: 250: unsigned char rec_data;
;PR8.c: 251: while(RCIF==0);
	goto	l641
	
l642:	
	
l641:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l641
u2480:
	goto	l2102
	
l643:	
	line	252
	
l2102:	
;PR8.c: 252: rec_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_rec+0)+0
	movf	(??_uart_rec+0)+0,w
	movwf	(uart_rec@rec_data)
	line	253
;PR8.c: 253: return rec_data;
	movf	(uart_rec@rec_data),w
	goto	l644
	
l2104:	
	line	254
	
l644:	
	return
	opt stack 0
GLOBAL	__end_of_uart_rec
	__end_of_uart_rec:
;; =============== function _uart_rec ends ============

	signat	_uart_rec,89
	global	_delay
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:

;; *************** function _delay *****************
;; Defined at:
;;		line 196 in file "C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
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
psect	text212
	file	"C:\Users\Phang\Desktop\9.80\PR 8\PR8.c"
	line	196
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	197
	
l2094:	
;PR8.c: 197: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2098
u2450:
	goto	l616
	
l2096:	
	goto	l616
	
l614:	
	
l2098:	
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
	goto	u2465
	goto	u2466
u2465:
	subwf	(delay@data+1),f
u2466:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2467
	goto	u2468
u2467:
	subwf	(delay@data+2),f
u2468:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2469
	goto	u2460
u2469:
	subwf	(delay@data+3),f
u2460:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2098
u2470:
	goto	l616
	
l615:	
	line	198
	
l616:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
