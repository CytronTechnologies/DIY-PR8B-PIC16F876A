//========================================================================
//	Author				: Cytron Technologies		
//	Project				: DIY Project (PR8-RFID door security)
//	Project description             : Scan RFID tag and display the ID and user  on lcd display
//                                        This project use PIC16F876A.Compatible with
//                                        MPLAB IDE with HITECH C compiler
//                                        using MPLABX with HITECH C compiler XC8 compiler.
//========================================================================


//========================================================================
//	include
//========================================================================
#if defined(__XC8)
   #include <xc.h>
   #pragma config CONFIG = 0x3F32
#else
#include <htc.h>                        //include the PIC microchip header file

//===========================================================================
// 	configuration
//============================================================================
__CONFIG (0x3F32);
//FOSC = HS        // Oscillator Selection bits (HS oscillator)
//WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
//PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
//BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
//LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)



#endif


//=========================================================================									
//	Define
//=========================================================================
#define	RS          RC3         //RS pin of the LCD display
#define	RW          RC2		//R/W pin of the LCD display
#define	E           RC4		//E pin of the LCD display
#define	B_LIGHT     RC1		//backlight of the LCD display (1 to on backlight)
#define	BUZZER      RC0		//buzzer (1 to on buzzer)
#define	BUTTON1     RA0		//button (active low)
#define	BUTTON2     RA1		//button (active low)
#define	LCD_DATA    PORTB       //LCD 8-bit data PORT
#define	LED1        RA2		//led 1 (active high)
#define	LED2        RA3		//led 2 (active high)


//===========================================================================
//	Function prototype		(every function must have a function prototype)
//===========================================================================
void delay(unsigned long data);             //delay function, the delay time
void send_config(unsigned char data);       //send lcd configuration
void send_char(unsigned char data);         //send lcd character
void lcd_goto(unsigned char data);          //set the location of the lcd cursor
void lcd_clr(void);                         //clear the lcd
void send_string(const char *s);            //send a string to display in the lcd
unsigned char uart_rec(void);               //receive uart value
void beep(void);                            //short beep function


//===========================================================================
//	Main function		(main fucntion of the program)
//===========================================================================
void main(void)
{
	//assign variable
	unsigned char i,temp,database;				
	unsigned char data[12];                         //12 bytes of data received from RFID Reader.
							//The data include start of heading, RFID ID, 
							//and start of text
	
	unsigned char id_1[10]={"0002393929"};		//define the Tag ID here
	unsigned char id_2[10]={"0000797447"};		//change this ID to the tag ID that user want to read
	
	unsigned char user_1[10]={"Joseph    "};	//define the Tag user here
	unsigned char user_2[10]={"Mary      "};	//change this user name to the tag ID owner name

	//set I/O input output
	TRISB = 0b00000000;		//configure PORTB I/O direction
	TRISC = 0b10000000;		//configure PORTC I/O direction
	TRISA = 0b11110011;		//configure PORTA I/O direction
	
	//setup USART
	SPBRG = 0x81;                       //set baud rate to 9600 for 20Mhz
	BRGH = 1;                           //baud rate high speed option
	TXEN = 1;                           //enable transmission
	CREN = 1;                           //enable reception
	SPEN = 1;                           //enable serial port
	
	//setup ADC
	ADCON1 = 0b00000110;        //set ADx pin digital I/O
	
	//configure lcd
	send_config(0b00000001);    //clear display at lcd
	send_config(0b00000010);    //lcd return to home
	send_config(0b00000110);    //entry mode-cursor increase 1
	send_config(0b00001100);    //display on, cursor off and cursor blink off
	send_config(0b00111000);    //function set
			
	//set initial condition
	BUZZER=0;					//off buzzer
	B_LIGHT=1;					//on backlight
	LED1=0;						//off led 1
	LED2=0;						//off led 2
	
	lcd_clr();				//clear lcd
	lcd_goto(0);				//set the lcd cursor to location 0
	send_string("   RFID door");            //display welcome note
	lcd_goto(20);				//set the lcd cursor to location 20
	send_string("   security");		//display welcome note
	
	beep();					//initial beep
	delay(200000);                          //delay for display the welcome note

	//infinity loop 
	while(1)	
	{
		CREN = 1;				//enable reception from UART
		lcd_clr();				//clear lcd
		lcd_goto(0);				//set lcd cursor to location 0
		send_string("Place your ID");		//display note
		lcd_goto(20);						//set lcd cursor to location 20
		send_string("on the reader.");		//display note
		
		for(i=0;i<12;i+=1)data[i]=uart_rec();	//wait for 12 character data receive from RFID reader
							//The data receive are start of heading, RFID ID, 
							//and start of text

		LED1=1;                             //on led to indicate system is busy
				
		lcd_clr();                          //clear lcd
		lcd_goto(20);                       //set lcd cursor to location 20
		send_string("Processing......");    //display "Processing...."
		delay(40000);                       //delay
		
		database=0;                         //clear the value of database and start scanning
		
		//comparing with the 1st id
		temp=0;						//comparing the received data with the saved id.
								//only byte 2-11 which is RFID ID data, will be used to compare between 
								//receive data and saved id.
		for(i=1;i<11;i+=1)                              //comparing digit by digit
		{	
			if((data[i])!=(id_1[i-1]))temp=1;	//if the id is different from the id define above,
		}						//then set temp=1;
		if(temp==0) database=1;				//if temp=0, mean the id match, set the database=1
		
		//comparing with the 2nd id
		temp=0;                                     //comparing the received data with the saved id
                                                            //only byte 2-11 which is RFID ID data, will be used to compare between
                                                            //receive data and saved id.
		for(i=1;i<11;i+=1)                          //comparing digit by digit
		{
			if((data[i])!=(id_2[i-1]))temp=1;   //if the id is different from the id define above,
		}                                           //then set temp=1;
		if(temp==0) database=2;                     //if temp=0, mean the id match, set the database=1
		
		lcd_clr();                                  //clear lcd
		CREN = 0;                                   //disable reception from UART


		switch(database)						
		{
			case 1:						//id 1 match
				LED2=1;					//on led 2
				lcd_goto(0);				//set lcd cursor to location 0
				send_string("ID:");			//display "ID: "
				for(i=0;i<10;i+=1)send_char(id_1[i]);	//display tag ID
				lcd_goto(20);				//set lcd cursor to location 20
				send_string("user: ");			//display "user: "
				for(i=0;i<10;i+=1)send_char(user_1[i]);	//display user name
				beep();                                 //beep once
				break;
			case 2:								//id_2 match
				LED2=1;							//on led 2
				lcd_goto(0);						//set lcd cursor to location 0
				send_string("ID: ");					//display "ID: "
				for(i=0;i<10;i+=1)send_char(id_2[i]);                   //display tag ID
				lcd_goto(20);						//set lcd cursor to location 20
				send_string("user: ");                                  //display "user: "
				for(i=0;i<10;i+=1)send_char(user_2[i]);                 //display user name
				beep();							//beep once
				break;
			default:							//id doesnt match 
				lcd_goto(0);						//set lcd cursor to location 0
				send_string("ID: ");					//display "ID: "
				for(i=1;i<11;i+=1)send_char(data[i]);                   //display tag ID
				lcd_goto(20);						//set lcd cursor to location 20
				send_string("user not found");                          //display "user not found"
				beep();							//beep twice
				beep();
				break;
		}
		delay(300000);			//delay
		LED1=0;                         //off led after the process complete
		LED2=0;
	}
		
}

//===========================================================================
//	Functions
//===========================================================================

void delay(unsigned long data)		//delay function, the delay time
{					//depend on the given value
	for( ;data>0;data-=1);
}

void send_config(unsigned char data)	//send lcd configuration 
{
	RW=0;				//set lcd to write mode
	RS=0;				//set lcd to configuration mode
	LCD_DATA=data;                  //lcd data port = data
	E=1;                            //pulse e to confirm the data
	delay(50);
	E=0;
	delay(50);
}

void send_char(unsigned char data)	//send lcd character
{
 	RW=0;				//set lcd to write mode
	RS=1;				//set lcd to display mode
	LCD_DATA=data;                  //lcd data port = data
	E=1;				//pulse e to confirm the data
	delay(10);
	E=0;
	delay(10);
}

void lcd_goto(unsigned char data)           //set the location of the lcd cursor
{                                           //if the given value is (0-15) the
 	if(data<16)                         //cursor will be at the upper line
	{                                   //if the given value is (20-35) the
	 	send_config(0x80+data);  		//cursor will be at the lower line
	}                                   //location of the lcd cursor(2X16):
	else                                // -----------------------------------------------------
	{                                   // | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;             		// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);     	// -----------------------------------------------------
	}
}

void lcd_clr(void)			//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void send_string(const char *s)		//send a string to display in the lcd
{          
	unsigned char i=0;
  	while (s && *s)send_char (*s++);

}

unsigned char uart_rec(void)		//receive uart value
{
	unsigned char rec_data;
	while(RCIF==0);			//wait for data
	rec_data = RCREG;				
	return rec_data;		//return the data received
}

void beep(void)			//short beep function
{
	BUZZER=1;		//on buzzer
	delay(10000);		//short delay
	BUZZER=0;		//off buzzer
	delay(10000);		//short delay
}