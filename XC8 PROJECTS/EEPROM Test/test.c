#include<htc.h>
#include<xc.h>
#include<pic18.h>

/////////////////////////////LCD FUNCTIONS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#define RS RB0

#define EN RB1

#define D4 RB2

#define D5 RB3

#define D6 RB4

#define D7 RB5

#define _XTAL_FREQ 4000000

#pragma config OSC=XT, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF


void LCD_OUT(char a, char b, char *n);

void LCD_INIT();

void LCD_CHR(char m);

void LCD_DATA(char m);


void LCD_DATA(char m)
{
	if(m & 1)D4 = 1;

	else 	 D4 = 0;
	

	if(m & 2)D5 = 1;

	else	 D5 = 0;
	

	if(m & 4)D6 = 1;

	else	 D6 = 0;
	
	if(m & 8)D7 = 1;

	else	 D7 = 0;
}



void LCD_CMD(char m)
{ 

	RS = 0;             

	LCD_DATA(m);

	EN  = 1;             

    __delay_ms(4);

    EN  = 0;            
}



LCD_CLEAR()
{

	LCD_CMD(0);

	LCD_CMD(1);

}



void LCD_OUT(char a, char b, char *n)
{

	char p,q,r;

	if(a == 1)
	{

	    p = 0x80 + b;

		r = p>>4;

		q = (0x80+b) & 0x0F;

		LCD_CMD(r);

		LCD_CMD(q);

	}

	else if(a == 2)
	{
		p = 0xC0 + b;

		r = p>>4;

		q = (0xC0+b) & 0x0F;

		LCD_CMD(r);

		LCD_CMD(q);

	}


	int i;

	for(i=0;n[i]!='\0';i++)

	LCD_CHR(n[i]);

}



void LCD_INIT()
{
    LCD_DATA(0x00);

    __delay_ms(20);

    LCD_CMD(0x03);

	__delay_ms(5);

    LCD_CMD(0x03);

	__delay_ms(11);

    LCD_CMD(0x03);

    LCD_CMD(0x02);    

	LCD_CMD(0x02);

    LCD_CMD(0x08); 	

	LCD_CMD(0x00); 

	LCD_CMD(0x0C);     

 	LCD_CMD(0x00);    

    LCD_CMD(0x06);   
}



void LCD_CHR(char m)
{
     char T1,T2;

     T1 = m&0x0F; 

     T2 = m&0xF0;	

	 RS = 1;            

     LCD_DATA(T2>>4);          
   
	 EN = 1;

	 __delay_ms(5);

	 EN = 0;

	 LCD_DATA(T1);

	 EN = 1;

	 __delay_ms(5);

	 EN = 0;
}



//////////////////////I2C Functions\\\\\\\\\\\\\\\\\\\\\\\\




void I2CInit();

void I2CStart();

void I2CStop();

void I2CRestart();

void I2CAck();

void I2CNak();

void I2CWait();

void I2CSend(unsigned char dat);

char I2CInitval[10];

char rcdata[30];

double rdaddr=0x00;

unsigned char I2CRead();

unsigned char I2CData[] = {"Shreya"};

unsigned char i,j;


void I2CInit(void)
{

TRISC3 = 1; 

TRISC4 = 1;
 
SSPSTAT |= 0x80; // Slew rate disabled 

SSPCON1 = 0x28; 

SSPADD = 0x28; /* 100Khz @ 4Mhz Fosc */
}



void I2CStart()
{

SEN = 1; 

while(SEN); 

}


void I2CStop()
{

PEN = 1;

while(PEN); 

}


void I2CRestart()
{

RSEN = 1; 

while(RSEN);

}


void I2CAck()
{

ACKDT = 0;

ACKEN = 1; 

while(ACKEN); 

}


void I2CNak()
{
ACKDT = 1; 

ACKEN = 1;

while(ACKEN); 

}


void I2CWait()
{

while ((SSPCON2 & 0x1F ) || ( SSPSTAT & 0x04 ) );

}


void I2CSend(unsigned char dat)
{

SSPBUF = dat;

while(BF); 

I2CWait();

}



unsigned char I2CRead()
{

unsigned char temp;

RCEN = 1; 

while(!BF); 

temp = SSPBUF; 

I2CWait(); 

return temp;

} 





//////////////////MAIN FUNCTION\\\\\\\\\\\\\\\\\\\\\\\\\\\\





void main()
{
  int i;

  TRISB = 0x00; // Set PORTB as  Output

  LCD_INIT();	// Initilise LCD

  LCD_CLEAR();	// Clear LCD

  LCD_OUT(1,1,"WRITE:");//Print "WRITE" on LCD 1st row 1st colum

  LCD_OUT(2,1,"READ :");//Print "READ" on LCD 2nd row 1st colum

  LCD_OUT(1,7,I2CData);

	
////////////////EEPROM READ and WRITE\\\\\\\\\\\\\\\\
	
	I2CInit();
	
	I2CStart();
	
	I2CSend(0xA0);
	
	I2CSend(0x00);
	
	I2CSend(0x00);
	
	//for(j=0;j<6;j++)
	//{
    I2CSend('A');
	//I2CSend(I2CData[j]);
	//}
	
	I2CStop();
	
	__delay_ms(100);
	
	I2CStart();
	
	I2CSend(0xA0);
	
	I2CSend(0x00);
	
	I2CSend(0x00);
	
	I2CRestart();
	
	I2CSend(0xA1);
	j=0;
	//for(j=0;j<6;j++)
	//{


	rcdata[j]= I2CRead();
	
	//I2CAck();
	//}
	
	//if (i - 1)

	//I2CAck();

	//else

	I2CNak();

	I2CStop();

	LCD_OUT(2,7,rcdata);

while(1);
  
}