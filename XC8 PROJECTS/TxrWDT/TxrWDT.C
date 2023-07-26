//JUST CONNECT VDD,VSS AND LED TO RB4
//CONFIGURATION BIT SETTING = 3F1D
#include<xc.h>

 void main(void)
   {
      PCON = 0x00;	//USE ER OSCILLATOR AT FIXED 37kHz POWER SAVING
      TRISB = 0x6F;	//PIN RB5, RB6 ARE INPUTS, ALL OTHER PINS ARE OUTPUTS
      RB4 = 1;	//SET HIGH ON TE PIN TO DISABLE TRANSMISSION
      OPTION_REG = 0x8F;	//CLOCK ON WATCHDOG, PRESCALER SET AT 1:128 FOR 2 SEC. DELAY
      
      unsigned char count = 0;
      while(1)
         {
            //1 MINUTE DELAY LOOP
			for( count = 0; count < 26; count++ )
               {
                  #asm 
		             SLEEP	;GO TO SLEEP MODE
		          #endasm
			   }
            //ONE MINUTE IS COMPLETE HERE
            
            RB4 = 0;	//DOWN THE PIN
            
            //2 SECONDS DELAY
            #asm 
		    SLEEP	;GO TO SLEEP MODE
		    #endasm
            
            RB4 = 1;	//SET HIGH ON PIN
         }
   }
