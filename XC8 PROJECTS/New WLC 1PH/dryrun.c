#include <xc.h>
#include "lcd_hd44780_pic16.h"
#include "adc_pic16.h"

void dryrun_config()
   {
      char count;
      int progress = 0;
      //Clear the display
      LCDClear();

      //Write a string
      LCDGotoXY(0,0);
      LCDWriteString("********************");
      LCDGotoXY(0,1);
      LCDWriteString(" WELCOME TO DRYRUN ");
      LCDGotoXY(0,2);
      LCDWriteString("  CONFIG. WIZARD!  ");
      LCDGotoXY(0,3);
      LCDWriteString("********************");
      _delay(5000000);  //5 sec. delay
      
      //Clear the display
      LCDClear();
      
      LCDGotoXY(0,0);
      LCDWriteString("BE SURE THAT MOTOR ");
      LCDGotoXY(0,1);
      LCDWriteString("CAN RUN FOR 3 MIN.!");
      LCDGotoXY(0,2);
      LCDWriteString("       PRESS       ");
      LCDGotoXY(0,3);
      LCDWriteString("DRY-OK / RESET-EXIT");
      
      //Remain here until DRY button is pressed
      while(DryRun_Adj == Off)
         {
         }
      
      //Clear the display
      LCDClear();
      
      LCDGotoXY(0,0);
      LCDWriteString("WARNING-DO NOT TURN");
      LCDGotoXY(0,1);
      LCDWriteString("OFF MOTOR OR PRESS ");
      LCDGotoXY(0,2);
      LCDWriteString("RESET WHILE CONFIG.");
      LCDGotoXY(0,3);
      LCDWriteString("  IS IN PROGRESS!  ");
      
      _delay(1000000);  //1 sec. delay
      
      //Start the motor
      Motor_Relay = On;
      _delay(4000000);  //4 sec. delay
      
      //Initialise ADC
      ADCInit();
      
      for(count = 0; count < 20; count ++)
         {
            LCDClear();
      
            LCDGotoXY(0,0);
            LCDWriteString("    MOTOR IS ON    ");
            LCDGotoXY(0,1);
            LCDWriteString(" DRYRUN CONFIG. IS ");
            progress = count * 5;
            LCDWriteIntXY(9,2,progress,2);
            //Print the % symbol
            LCDWriteString("%");
            LCDGotoXY(0,3);
            LCDWriteString("    COMPLETED...    ");
            
            if(count > 12)
               {
               }   
         }   
   }  
