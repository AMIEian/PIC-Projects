#include <xc.h>

#define LED RC4
#define ON 1
#define OFF 0

void USARTWriteChar(char ch);

char display[10] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};
//These are all possible commands
typedef enum Android_Commands
		   {
			   Increase,
			   FastIncrease,
			   Stop,
			   Decrease,
			   FastDecrease,
			   Switch_Value
		   }Android_Command;
		   
Android_Command Command = Stop;

char ch;
signed char digits[3] = {1, 2, 3};
char foot = 1;

void main(void)
   {
      TRISA = 0x00;   //All output 
      TRISB = 0x00;   //All output 
      TRISC = 0xC0;   //All output 
      ADCON1 = 0x06;	// All Digital
  
      PORTB = 0xFF;
      PORTA = 0xFF;
      PORTC = 0xFF;
  
      int count;
      for(count = 0; count <= 4; count++)
         {
            LED = ON;
            _delay(1000000);  //1SEC DELAY
            LED = OFF;
            _delay(1000000);  //1SEC DELAY
         }   
      count = 0;
      
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
      char data;
      
      while(1)
         {
            _delay(1000);
            count++;
            if(count > 10000)
               {
                  if(foot == 1)
                     {
                        LED = ON;
                     }
                  if(foot == 0)
                     {   
                        LED = OFF;
                     }
                  foot = foot ^ 0x01;
                  count = 0;
               }      
            switch(Command)
               {
                  case Increase:
                     digits[0] = digits[0] + 1;
                     if(digits[0] > 9)
                        {
                           digits[0] = 0;
                           digits[1] = digits[1] + 1;
                           if(digits[1] > 9)
                              {
                                 digits[1] = 0;
                                 digits[2] = digits[2] + 1;
                                 if(digits[2] > 9)
                                    {
                                       digits[2] = 9;
                                       digits[1] = 9;
                                       digits[0] = 9;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     _delay(10000);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case Decrease:
                     digits[0] = digits[0] - 1;
                     if(digits[0] < 0)
                        {
                           digits[0] = 9;
                           digits[1] = digits[1] - 1;
                           if(digits[1] < 0)
                              {
                                 digits[1] = 9;
                                 digits[2] = digits[2] - 1;
                                 if(digits[2] < 0)
                                    {
                                       digits[2] = 0;
                                       digits[1] = 0;
                                       digits[0] = 0;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     _delay(10000);  //10 MSEC DELAY
                     Command = Stop;
                     break;
                     
                  case FastIncrease:
                     digits[0] = digits[0] + 1;
                     if(digits[0] > 9)
                        {
                           digits[0] = 0;
                           digits[1] = digits[1] + 1;
                           if(digits[1] > 9)
                              {
                                 digits[1] = 0;
                                 digits[2] = digits[2] + 1;
                                 if(digits[2] > 9)
                                    {
                                       digits[2] = 9;
                                       digits[1] = 9;
                                       digits[0] = 9;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     _delay(500000);  //500 MSEC DELAY
                     break;
                     
                  case FastDecrease:
                     digits[0] = digits[0] - 1;
                     if(digits[0] < 0)
                        {
                           digits[0] = 9;
                           digits[1] = digits[1] - 1;
                           if(digits[1] < 0)
                              {
                                 digits[1] = 9;
                                 digits[2] = digits[2] - 1;
                                 if(digits[2] < 0)
                                    {
                                       digits[2] = 0;
                                       digits[1] = 0;
                                       digits[0] = 0;
                                    }   
                              }
                        }
                     //Send this value over serial
                     USARTWriteChar('A');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[0] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('B');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[1] + 48;
                     USARTWriteChar(data);
                     USARTWriteChar('C');
                     //_delay(100000);  //10 MSEC DELAY
                     data = digits[2] + 48;
                     USARTWriteChar(data);
                     _delay(500000);  //500 MSEC DELAY
                     break;
                     
                  case Switch_Value:
                     if(foot == 1)
                        {
                           USARTWriteChar('R');
                           USARTWriteChar('1');
                        }
                     if(foot == 0)
                        {   
                           USARTWriteChar('F');
                           USARTWriteChar('1');
                        } 
                     Command = Stop;
                     break;
                     
                  case Stop:
                     break;
                     
                  default:
                     break;
               }
         }
   } 
   
void interrupt ISR(void)
{
    if (RCIE && RCIF) {
        ch = (char)RCREG;
        
        switch(ch)
            {
               case '1':
                  Command = Increase;
                  break;
               case '2':
                  Command = FastIncrease;
                  break;
               case '3':
                  Command = Stop;
                  break;
               case '4':
                  Command = Decrease;
                  break;
               case '5':
                  Command = FastDecrease;
                  break;
               case '6':
                  Command = Switch_Value;
                  break;   
               default:
                  Command = Stop;
                  break;
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
