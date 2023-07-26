#include <xc.h>
#include <stdio.h>
#include "lcd_hd44780_pic16.h"

#define _XTAL_FREQ 4000000

#define LL_Prob RA0
#define LU_Prob RA1
#define UL_Prob RA2
#define UU_Prob RA3

#define Only_LL_Input 0x01   //TRISA setting for LL Input
#define Only_LU_Input 0x02   //TRISA setting for LU Input
#define Only_UL_Input 0x04   //TRISA setting for UL Input
#define Only_UU_Input 0x08   //TRISA setting for UU Input

#define Relay RB4
#define Motor_LED RC4

#define Dry_Run RB7
//#define Dry_Runt_LED RB6

#define On 1
#define Off 0
#define Full 1
#define Empty 0
#define OK 1
#define Fail 0

void display_upper_tank();
void display_lower_tank();

char txr_not_received = 14;
int uu = 0, ul = 0, lu = 0, ll = 0;
char level_check = 0, lp_flag = 0, motor_flag = 0; //DRY_RUN_NEEDED = On, Dry_Run_Timer = 0;

char count = 0;

void main()
   {
      ADCON1 = 0x06; //ALL DIGITAL
      TRISA = 0x00;  //ALL OUTPUTS
      TRISB = 0x01;  //RB0 AND RB7 IS INPUT, ALL OTHER OUTPUTS
      TRISC = 0x00;  //ALL OUTPUTS

	   OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE
      
      PORTB = 0x00;
      PORTA = 0x00;
      PORTC = 0x00;
      
      for(count = 0; count <= 4; count++)
         {
            Motor_LED = 1;
            _delay(1000000);  //DELAY OF 1 SECOND
            Motor_LED = 0;
            _delay(1000000);  //DELAY OF 1 SECOND
         }   
      count = 0;  //Reset count for reuse 
      
      //Initialize the LCD Module
      LCDInit(LS_NONE);

      //Clear the display
      LCDClear();
      
      while(1)
         {      
            txr_not_received ++;
            //Lock txr_not_received to 20 if it is greator than 20 to avoid overflow reset.
            if(txr_not_received > 13)
               txr_not_received = 14;
            //If motor is running
            if( motor_flag == On )
               {
                  if( uu == Empty && ll == Full )
                     {
                        level_check = OK;
                     }
                  else
                     {
                        level_check = Fail;
                     }
               }
            //If motor is stoped
            else 
               {
                  if( (uu == Empty && ul == Empty) && (lu == Full && ll == Full) )
                     {
                        level_check = OK;
                     }
                  else 
                     {
                        level_check = Fail;
                     }
               }
            
            if( level_check == OK && txr_not_received <= 13 )
               {
                   //Check level & phase flag if it is 0 then motor was off due to Power faillure or level failure Start it again
                   if( lp_flag == Off )
                      {
                         Relay = On;   //start()
                         lp_flag = On;
                         motor_flag = On;
						 		 Motor_LED = On;
                      }
               }
            //If level or Phase is not ok then stop the motor & set it's flag to 0
            else
               {
                   //Level or Power is fail check that the motor was running or not if it was running stop it now
                   if( lp_flag == On )
                      {
                         Relay = Off;   //stop();
                         lp_flag = Off;
                         motor_flag = Off;
						 		 Motor_LED = Off;
                      }
               }
            /*
            //Check Dry Run while motor is running
				if(DRY_RUN_NEEDED == On && Dry_Run == Off && motor_flag == On)
					{
   					Dry_Run_Timer++;
   					if(Dry_Run_Timer > 6)
   						{
      						//Dry Run is on for 2 minutes. Off the motor
      						Relay = Off;   //stop();
                        lp_flag = Off;
                        motor_flag = Off;
						 		Motor_LED = Off;
						 		while(1)
						 		   {
   						 		   LCDClear();
                              _delay(1000000);  //1SEC DELAY
                              //Write a string
                              LCDGotoXY(1,0);
                              LCDWriteString("*MOTOR DRYRUN*");
                              _delay(1000000);  //1SEC DELAY
   						 		}   
							}
					}
				else
					{
   					Dry_Run_Timer = 0;
   				} 
   		   */
            LCDClear();
            _delay(1000000);  //1SEC DELAY
            //Write a string
            LCDGotoXY(1,0);
            LCDWriteString("**UPPER TANK**");
            display_upper_tank();            
            _delay(5000000);  //1SEC DELAY
            
            LCDClear();
            _delay(1000000);  //1SEC DELAY
            //Write a string
            LCDGotoXY(1,0);
            LCDWriteString("**LOWER TANK**");
            display_lower_tank();            
            _delay(5000000);  //1SEC DELAY
            
            LCDClear();
            _delay(1000000);  //1SEC DELAY
            //Write a string
            LCDGotoXY(3,0);
            LCDWriteString("**MOTOR**");
            LCDGotoXY(6,1);
            if(motor_flag == On)
               LCDWriteString("ON");
            else
               LCDWriteString("OFF");       
            _delay(5000000);  //1SEC DELAY
            
            LCDClear();
            _delay(1000000);  //1SEC DELAY
            //Write a string
            LCDGotoXY(2,0);
            LCDWriteString("COMMUNICATION");
            LCDGotoXY(6,1);
            if(txr_not_received <= 13)
               LCDWriteString("ON");
            else
               LCDWriteString("OFF");       
            _delay(5000000);  //1SEC DELAY
         }
   }

// Interrupt
void interrupt Tx_Received(void)
   {
		txr_not_received = 0;
		
		//MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
      
      TRISA = Only_UL_Input;

      //CHECK UL = 1 
      if( UL_Prob == On )
         {
            _delay(1000);
            if( UL_Prob == On )
               {
                  ul = Full;
               }
         }
      else
         {
            ul = Empty;
         }
            
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
      
      TRISA = Only_UU_Input;
      
      //CHECK BOTH PROBS IN WATER
      if( UU_Prob == On )
         {
            _delay(1000);
            if( UU_Prob == On )
               {
                  uu = Full;
                  ul = Full;
               }
         }
      //UU IS OUT OF WATER
      else
         {
            uu = Empty;
         }
      
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
		
		TRISA = Only_LL_Input;
      LU_Prob = On;  //PORTA = 0x08; //MAKE LU_PROB = ON	0000 1000
      _delay(1000);   //1 MS WAIT
      //CHECK LL_PROB = ON OR NOT
      if( LL_Prob == On )
         {
            _delay(1000);
				if( LL_Prob == On )
               {
                  ll = Full;
               }
         }
      else
         {
            ll = Empty;
         }
         
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
            
      TRISA = Only_LU_Input;
      LL_Prob = On;  //PORTA = 0x20; //MAKE LL_PROB = ON	0010 0000
      _delay(1000);
      //CHECK LU_PROB = ON OR NOT
      if( LU_Prob == On )
         {
            _delay(1000);
            if( LU_Prob == On )
               {
                  lu = Full;
               }
         }
      else
         {
            lu = Empty;
         }
               
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
      
      //Reset interrupt flag
      INTF = Off;
   }
   
void display_upper_tank()
   {
      LCDGotoXY(0,1);
      if(uu == Full)
         LCDWriteString("Lev.1 %0");
      else
         LCDWriteString("Lev.1 %1");
      LCDGotoXY(9,1);
      if(ul == Full)
         LCDWriteString("Lev.2 %0");
      else
         LCDWriteString("Lev.2 %1");
   }   
   
void display_lower_tank()
   {
      LCDGotoXY(0,1);
      if(lu == Full)
         LCDWriteString("Lev.1 %0");
      else
         LCDWriteString("Lev.1 %1");
      LCDGotoXY(9,1);
      if(ll == Full)
         LCDWriteString("Lev.2 %0");
      else
         LCDWriteString("Lev.2 %1");
   } 
