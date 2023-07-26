#include <xc.h>
#include <stdio.h>
#include "lcd_hd44780_pic16.h"

#define _XTAL_FREQ 4000000

//#define Timer_Input RA0

#define LL_Prob RA0
#define LU_Prob RA1
#define UL_Prob RA2
#define UU_Prob RA3

#define Only_LL_Input 0x01   //TRISA setting for LL Input
#define Only_LU_Input 0x02   //TRISA setting for LU Input
#define Only_UL_Input 0x04   //TRISA setting for UL Input
#define Only_UU_Input 0x08   //TRISA setting for UU Input

#define Stop_Relay RB4
#define Start_Relay RB3

#define Phase_1 RB7
#define Phase_2 RB6
#define Phase_3 RB5

#define LED RC4

#define On 1
#define Off 0
#define Full 1
#define Empty 0
#define OK 1
#define Fail 0

void motor_start();
void motor_stop();
void display_upper_tank();
void display_lower_tank();
void phase_display();
void update_display();
void first_screen();
//char ReadADC();

char txr_not_received = 21;
char count = 0, level_check = 0, power_check = 0, lp_flag = 0, motor_flag = 0; //DRY_RUN_NEEDED = Off, Dry_Run_Timer = 0;;
char uu = 0, ul = 0, lu = 0, ll = 0;
//char TIMER_NEEDED = Off, On_Timer = Off, Off_Timer = Off, timer = Off;

void main()
   {
      ADCON1 = 0x06; //ALL DIGITAL
		
		TRISA = 0x01;	//RA0 Input
      TRISB = 0xE1;  //RB0 AND RB7 IS INPUT, ALL OTHER OUTPUTS
      TRISC = 0x00;	//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 0000 0111

      PORTB = 0x00;
      PORTA = 0x00;
      PORTC = 0x00;
      
     //Initialize the LCD Module
      LCDInit(LS_NONE);

      //Clear the display
      LCDClear();
      
      first_screen();
      
      OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE
      
      while(1)
         {            
            txr_not_received ++;
            //Lock txr_not_received to 21 if it is greator than 20 to avoid overflow reset.
            if(txr_not_received > 20)
               txr_not_received = 21;
               
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
            
            //POWER CHEK
            if( Phase_1 == OK && Phase_2 == OK && Phase_3 == OK )
               {
                  //All phases are Ok
                  power_check = OK;
                  update_display();
               }
            else
               {
                  //One of the 3 or all the phases are off
                  power_check = Fail;
                  update_display();
               }

            if( level_check == OK && power_check == OK && txr_not_received <= 20 )
               {
                   //Check level & phase flag if it is 0 then motor was off due to Power faillure or level failure Start it again
                   if( lp_flag == Off )
                      {
                         motor_start();
                         lp_flag = On;
                         motor_flag = On;
                         update_display();
                      }
               }
            //If level or Phase is not ok then stop the motor & set it's flag to 0
            else
               {
                   //Level or Power is fail check that the motor was running or not if it was running stop it now
                   if( lp_flag == On )
                      {
                         motor_stop();
                         lp_flag = Off;
                         motor_flag = Off;
                         update_display();
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
      						motor_stop();
                        lp_flag = Off;
                        motor_flag = Off;
						 		while(1)
						 		   {
   						 		   //Remain here untill reset
   						 		}   
							}
					}
				else
					{
   					Dry_Run_Timer = 0;
   				}
   		   */
            update_display();       
            _delay(10000000);  //10 SEC DELAY
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
   
void motor_start()
   {
      char i;
      Start_Relay = On;   //start()
      //8 SEC DELAY
      for( i = 0; i <= 7; i++ )
         {
            _delay(1000000);	//DELAY OF 1 SEC
         }
		Start_Relay = Off;
   }
   
void motor_stop()
   {
      char i;
      Stop_Relay = On;   //start()
      //8 SEC DELAY
      for( i = 0; i <= 7; i++ )
         {
            _delay(1000000);	//DELAY OF 1 SEC
         }
		Stop_Relay = Off;
   }   
   
void display_upper_tank()
   {
      //LCDGotoXY(0,1);
      if(uu == Full)
         LCDWriteString("L1 %0");
      else
         LCDWriteString("L1 %1");
      //LCDGotoXY(9,1);
      if(ul == Full)
         LCDWriteString(" L2 %0");
      else
         LCDWriteString(" L2 %1");
   }   
   
void display_lower_tank()
   {
      //LCDGotoXY(0,3);
      if(lu == Full)
         LCDWriteString("L1 %0");
      else
         LCDWriteString("L1 %1");
      //LCDGotoXY(9,3);
      if(ll == Full)
         LCDWriteString(" L2 %0");
      else
         LCDWriteString(" L2 %1");
   }

void phase_display()
   {
      if(Phase_1 == On)
         LCDWriteString("P1 %0");
      else
         LCDWriteString("P1 %1");
      if(Phase_2 == On)
         LCDWriteString(" P2 %0");
      else
         LCDWriteString(" P2 %1");
      if(Phase_3 == On)
         LCDWriteString(" P3 %0");
      else
         LCDWriteString(" P3 %1");
   }   
   
void update_display()
   {
      //Update Display
      LCDClear();
      //UPPER TANK
      LCDGotoXY(0,0);
      LCDWriteString("UPPER TANK-");
      display_upper_tank();            
                       
      //LOWER TANK
      LCDGotoXY(0,1);
      LCDWriteString("LOWER TANK-");
      display_lower_tank();            
                     
      //PHASES
      LCDGotoXY(0,2);
      LCDWriteString("PHASE-");
      phase_display();
            
      //MOTOR STATUS
      LCDGotoXY(0,3);
      LCDWriteString("MOTOR-");
      if(lp_flag == On)
         LCDWriteString("ON");
      else
         LCDWriteString("OFF");
         
      LCDWriteString(" COM.-");
      if(txr_not_received <= 20)
         LCDWriteString("ON");
      else
         LCDWriteString("OFF");
   }

void first_screen()
   {
      //Update Display
      LCDClear();
      LCDGotoXY(0,0);
      LCDWriteString("--------------------");
                            
      LCDGotoXY(0,1);
      LCDWriteString("       EAGLE        ");
                          
      LCDGotoXY(0,2);
      LCDWriteString("  CONTROL SYSTEMS   ");
                 
      //MOTOR STATUS
      LCDGotoXY(0,3);
      LCDWriteString("--------------------");
      
      for(count = 0; count <= 4; count++)
         {
            LED = On;
            _delay(1000000);  //DELAY OF 1 SECOND
            LED = Off;
            _delay(1000000);  //DELAY OF 1 SECOND
         }  
      count = 0;  //Reset count for reuse
      
      LCDClear();
      
      _delay(1000000);  //1 SEC DELAY
      
      LCDGotoXY(0,0);
      LCDWriteString("--------------------");
                            
      LCDGotoXY(0,1);
      LCDWriteString("   WIRELESS WATER   ");
                          
      LCDGotoXY(0,2);
      LCDWriteString("  LEVEL CONTROLLER  ");
                 
      //MOTOR STATUS
      LCDGotoXY(0,3);
      LCDWriteString("--------------------");
      
      _delay(8000000);  //1 SEC DELAY
      
      LCDClear();
      
      _delay(1000000);  //1 SEC DELAY  
   } 
