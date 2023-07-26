#include <xc.h>

#define LED RC4
#define ON 1
#define OFF 0
#define LATCH RA5

void USARTWriteChar(char ch);

char data[32] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
char index = 0;
char index_1 = 0;
char index_2 = 16;
char address_1 = 0;
char address_2 = 0;
char PortB_Value = 0x00;
char flag = 0;
unsigned char micro_secs = 0;  
char ch;
char count = 0;

void main()
{
  TRISA = 0x00;   //All output 
  TRISB = 0x00;   //All output 
  TRISC = 0xC0;   //All output 
  ADCON1 = 0x06;	// All Digital
  
  PORTB = 0xFF;
  PORTA = 0xFF;
  PORTC = 0xFF;
  
  for(count = 0; count <= 4; count++)
     {
        LED = OFF;
        _delay(1000000);  //1SEC DELAY
        LED = ON;
        _delay(1000000);  //1SEC DELAY
     } 

  //Initialize USART with baud rate 9600
  SPBRG=25;
  
  //TXSTA
  TXSTAbits.TX9=0;  //8 bit transmission
  TXSTAbits.TXEN=1; //Transmit enable
  TXSTAbits.SYNC=0; //Async mode
  TXSTAbits.BRGH=1; //High speed baud rate

  //RCSTA
  RCSTAbits.SPEN=1;   //Serial port enabled
  RCSTAbits.RX9=0;    //8 bit mode
  RCSTAbits.CREN=1;   //Enable receive
  RCSTAbits.ADDEN=0;  //Disable address detection

  //Receive interrupt
  RCIE=1;
  PEIE=1;
		
  //Enable interrupt
  ei();

  while(1)
   {
      PORTB = 0xFF;
      _delay(10);
      //We have data in array. Display it.
      if(data[index_1] != 'B')
         {
            PortB_Value = 0x00;
            PortB_Value = address_1;
            PortB_Value = PortB_Value << 4;
            PortB_Value = PortB_Value & 0xF0;
            PortB_Value = PortB_Value | data[index_1];
            PORTB = PortB_Value;
         }
         
      index_1++;
      address_1++;
      if(index_1 == 16)
         {
            index_1 = 0;
            address_1 = 0;
         }   
      
      PORTA = 0xFF;
      PORTC = 0xFF;
      _delay(10);
      
      if(data[index_2] != 'B')
         {
            PORTA = address_2;
            PORTC = PORTC & 0xF0;
            PORTC = PORTC | data[index_2];
         }
         
      index_2++;
      address_2++;
      if(index_2 == 32)
         {
            index_2 = 16;   
            address_2 = 0;
         }   
         
      LATCH = ON;
      _delay(10);
      LATCH = OFF;
      
      _delay(1500);
      if(flag == 1)
         {
            USARTWriteChar(ch);
            flag = 0;
         }
   }
}

void interrupt ISR(void)
{
    if (RCIE && RCIF) {
        ch = (char)RCREG;
        if((ch-48) >= 0x00 && (ch-48) <= 0x09)
         {
            data[index] = ch - 48;
            flag = 1;
            index++;
            if(index == 32)
               index = 0;
            return;
         }  
        //Blank digit data
        if(ch == 'B')
          {
            data[index] = 0x0F;
            flag = 1;
        
            index++;
            if(index == 32)
               index = 0;
            return;
         }
        //Reset display when 'R' is received     
        if(ch == 'R')
         {
            for(index = 0; index < 32; index++)
               {
                  data[index] = 0x00;
               }
            index = 0;
            index_1 = 0;
            index_2 = 16;
            address_1 = 0;
            address_2 = 0;
            flag = 1;
            return;
         }      
        return;
    }
}

//This function sends a single given character on USART
void USARTWriteChar(char ch)
	{
  		while(!PIR1bits.TXIF);
  			TXREG=ch;
	}