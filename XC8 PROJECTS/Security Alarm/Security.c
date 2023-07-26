#include <xc.h>
#include <stdint.h>
#include "sim300.h"

#define _XTAL_FREQ 4000000

#define Security_Input RB0
#define LED RC5
#define On 1
#define Off 0

void main(void)
   {
      TRISB = 0xFF;  //All inputs 
      TRISC = 0x00;  //All outputs 
      char count = 0;
      char SMS_Sent = Off;
      uint8_t ref,result;
      
      for(count = 0; count < 5; count ++)
         {
            LED = On;
            __delay_ms(1000);	//Delay for 1 seconds
            LED = Off;
            __delay_ms(1000);	//Delay for 1 seconds
         }
         
      int8_t r= SIM300Init();
		_delay(1000000);  //1 SEC DELAY
		
		if(r == SIM300_OK)
			{
				//Enable Text Messages
				SIM300Cmd("AT+CMGF=1");
				_delay(1000000);  //1 SEC DELAY
				//Delete 1st Message 
				SIM300Cmd("AT+CMGD=1");
				_delay(1000000);  //1 SEC DELAY
				//Clear Buffer
				USARTFlushBuffer();
				//Single LED blink
				LED = On;
				_delay(1000000);  //1SEC DELAY
			}
		else
			{
				//Keep LED blinking
				while(1)
					{
						LED = On;
						_delay(100000);  //100 Mili SEC DELAY
						LED = Off;
						_delay(100000);  //100 Mili SEC DELAY
					}
			}
			
      while(1)
         {
            while(Security_Input == On)
               {
                  //Call Owner
                  SIM300Cmd("ATD9403585436;");
                  __delay_ms(30000);	//Delay for 30 seconds
                  //Cut the phone
                  SIM300Cmd("ATH");
					   __delay_ms(1000);	//Delay for 1 seconds
					   if(SMS_Sent == Off)
					      {
					         //Send SMS to owner
						      //uint8_t ref,result;
						      result=SIM300SendMsg("9403585436","SOMEBODY HAS ENTERED INTO HOUSE!",&ref);	//Change phone number to some valid value!
						      __delay_ms(5000); //5SEC DELAY
						      SMS_Sent = On;
						   } 
				   }
				SMS_Sent = Off;
		   }
   }  