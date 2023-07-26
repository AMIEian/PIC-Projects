#include <xc.h>
#include "my_serial.h"
#include "pins.h"

#define _XTAL_FREQ 40000000

void USARTInit()
   {
      //Configuration TX and RX pins
      TRISCbits.RC6 = 0; //TX output
      TRISCbits.RC7 = 1; //RX input

      //TXSTA: Transmit Status and Control Register
      TXSTAbits.SYNC = 0; //Asynchronous mode
      TXSTAbits.TX9 = 0; //8bit transmission
      TXSTAbits.BRGH = 1; //Set HIGH Baud rate
      TXSTAbits.TXEN = 1; //Enable transmitter
      
      //RCSTA: Receive Status and Control Register
      RCSTAbits.SPEN = 1; //Serial Port enabled
      RCSTAbits.RX9 = 0; //8bit reception
      RCSTAbits.CREN = 1; //Enables Receiver

      SPBRG = 255;           // Set to 9600 baud rate, 12Mhz, High Speed, BRG16
    }

void put_char(char ch)
{
  while(!PIR1bits.TXIF);
     TXREG=ch;
}

char get_char()
{
   char data;
   unsigned int rx_delay = 0;
   while(!PIR1bits.RCIF && rx_delay < 50000)
      {
         __delay_us(5);
         rx_delay++;
      }   
   if(rx_delay >= 50000)
      {
         Data_Error = On;
         return 'X';
      }
   Data_Error = Off;   
   data = RCREG;
   return data;
}   
