#include <xc.h>
#include "pins.h"
#include "keypad.h"
#define _XTAL_FREQ 250000
void MY_DELAY(int ms);

signed char digits[3] = {1, 2, 3};
int data_timer = 0;
char count = 0;
char index = 0;
char Segment_Codes[11] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67,0x00};
unsigned int One_Minute_Timer = On;
char Sleep_Flag = Off;
char digit = 0xFF;
char t;

void main()
   {
      OSCCON = 0x17; //Internal oscillator at 250kHZ
      //OSCTUNE = 0x00;   //Clock derived from LFINTOSC at minimum frquency
      SWDTEN = 0x00; //Disable Watchdog
      RCON = 0x00;	//DISABLE INTERRUPT PRIORITY
      
      ADCON1 = 0x06; //ALL DIGITAL
      
      TRISA = 0x00;	//ALL OUTPUTS FOR TRANSMITTER
      TRISC = 0x00;	//ALL OUTPUTS FOR ADDRESS
      TRISD = 0x00;  //ALL OUTPUTS FOR DISPLAY
      TRISE = 0x00;  //ALL OUTPUTS
      
      ROWS = 0x00;  //Turn off transmitter
      
      for(count = 0; count <= 5; count++)
         {
            LED = 0xFF;
            MY_DELAY(1000);  //1SEC DELAY
            LED = 0x00;
            MY_DELAY(1000);  //1SEC DELAY
         }
      count = 0;  //Reset count for reuse 
          
      Address = 0x01;   //Select First Seven Segment on RC1
      
      INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
      T0CON = 0xD8;	//ENABLE TIMER0

      TMR0 = 0;   //RESET TIMER
      
      initKeyboard();   //Initialise PORTB
      
      while(1)
         {
            digit = getKeyboardInput();
            
            if(digit == 0x0C)
               {
                  //Next command received 
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
                  One_Minute_Timer = On;  //Go to sleep after 1 minute    
                  digit = 0xFF;         
               } 
               
            if(digit == 0x0B)
               {
                  //Previous command received 
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
                  One_Minute_Timer = On;  //Go to sleep after 1 minute   
                  digit = 0xFF;         
               }  
            
            if( digit != 0xFF )
               {
                  if(count == 0)
                     {
                        digits[count] = digit;
                        digits[count+1] = 10;   //Clear tens 
                        digits[count+2] = 10;  //Clear hundreds 
                        data_timer = 1;   //Start 3 sec timer for next digit 
                        One_Minute_Timer = On;  //Go to sleep after 1 minute
                     }
                  if(count == 1)
                     {
                        digits[count] = digits[count-1];  //Shift display by 1 digit 
                        digits[count-1] = digit; //Get new value in units
                        data_timer = 1;   //Start 3 sec timer for next digit 
                        One_Minute_Timer = On;  //Go to sleep after 1 minute
                     }         
                  if(count == 2)
                     {
                        digits[count] = digits[count-1];  //Shift display by 1 digit 
                        digits[count-1] = digits[count-2];  //Shift display by 1 digit
                        digits[count-2] = digit; //Get new value in units
                        data_timer = 0;   //Reset 3 sec timer for next digit 
                        One_Minute_Timer = On;  //Go to sleep after 1 minute
                     }
                  count++;
                  if(count > 2)
                     count = 0;
                  digit = 0xFF;
               }
               
            if(Sleep_Flag == On)
               {
                  Address = 0x00;
                  Display = 0x00;
                  TMR0ON = Off;  //Stop timer
                  TRISA = 0x00;
                  COLUMNS = 0x07;
                  TRISB = 0xFF;  //PORTB input
                  TRISC = 0xFF;
                  TRISD = 0xFF;
                  //TRISE = 0xFF;
                  INTCON = 0x88;
                  IOCB = 0xFF;
                  //Go to sleep !
                  #asm
                     sleep
                  #endasm
                  //Wake up! Do this first 
                  Sleep_Flag = Off;
                  RCON = 0x00;	//DISABLE INTERRUPT PRIORITY
                  INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
                  IOCB = 0x00;
                  T0CON = 0xD8;	//ENABLE TIMER0
                  TMR0 = 0;   //RESET TIMER
                  TRISA = 0x00;
                  COLUMNS = 0x00;
                  TRISC = 0x00;
                  TRISD = 0x00;
                  initKeyboard();
                  Address = 0x01;   //Select First Seven Segment on RC1
                  index = 0;        //Select first digit 
                  One_Minute_Timer = On;
               }   
         }         
                  
   }   
   
void interrupt ISR(void)
   {
      //Check for RB0 interrupt
      if(RBIE && RBIF)
         {
            RBIF = 0;   //Reset interrupt flag 
            return;
         }
      //Check for Timer 0 interrupt 
      if(TMR0ON && TMR0IF)
         {
            index = index + 1;   //Increase index by 1
            Address = Address << 1; //Turn On next common
            if(index > 2)
               {
                  index = 0;  //Reset index 
                  Address = 0x01; //Reset address 
               }
            Display = Segment_Codes[digits[index]];
            Display = ~(Display);   
            if(data_timer >= 1)
               {
                  data_timer = data_timer + 1;
                  if(data_timer >= 500)
                     {
                        //Approximately 3 seconds completed after getting key input 
                       data_timer = 0;   //Reset 2 sec timer for next digit 
                       count = 0;  //Reset digit counter 
                       One_Minute_Timer = On; 
                     }
               }
            
            if(One_Minute_Timer >= 1)
               {
                  One_Minute_Timer = One_Minute_Timer + 1;
                  if(One_Minute_Timer > 2500)
                     {
                       Sleep_Flag = On;
                       One_Minute_Timer = Off;
                     }
               }   
            TMR0 = 0;   //Reset  TMR0
            TMR0IF = 0;   //Reset interrupt flag    
            return; 
         }       
   }
   
void MY_DELAY(int ms)
   {
      while(ms > 0)
         {
            __delay_ms(1);
            ms--;
         }
      return;
   }         

