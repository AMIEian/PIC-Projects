#include <xc.h>
#include "timekeeper.h"
#include "display.h"
#include "max7219.h"
#include "pins.h"
#include <stdlib.h>

char error = 0, ch = 0, index = 0;
int msecs = 0, ran = 0;
char set_alarm = 0;
unsigned char alarm_array[4];

void main()
   {
      TRISB = 0x00;  //All output
      TRISC = 0xC0;   //All output 
      ADCON1 = 0x06;	// All Digital
       
      PORTB = 0x00;
      Bell = OFF;
      //PORTC = 0x00;
      
      MAX7219_Init ();
      
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
      
      //Timer1 interrupt configuration
      OPTION_REG = 0xC1;
      T0IE = 1;
      TMR0 = 17;
      
      ei(); //Enable interrupts
      
      srand(100);
      
      while(1)
         {
            if(sec_flag == 1)
               {
                  if((secs % 5) == 0)
                     {
                        ran = rand();
                        if((ran % 2) == 0)
                           eagle_flag = 1;
                        else
                           date_flag = 1;
                     }   
                   
                  update_time();
                  display_time();
                  sec_flag = 0;
                  if(alarm_bell == 1 && secs < 15)
                     Bell = ON;
                  else
                     Bell = OFF;
                  if(beeps > 0)
                     {
                        Buzzer = ~Buzzer;
                        beeps--;
                     }   
               }   
         }   
   }      
   
void interrupt ISR(void)
   {
      //Check for Timer 0 interrupt 
      if(T0IE && T0IF)
         {
            #asm
               NOP
               NOP
               NOP
               NOP
               NOP
            #endasm
            
            msecs++;
            if(msecs == 999)
               {
                  for(error = 0; error < 68; error++)
                     {
                        #asm
                           goto $+1
                        #endasm
                     }
                  #asm
                     goto $+1
                     goto $+1
                     goto $+1
                  #endasm
                  secs++;
                  sec_flag = 1;
                  msecs = 0;
               }       
            T0IF = 0;   //Reset interrupt flag 
            TMR0 = 17;   //Reset  TMR0   
            return;
         } 
         
      if (RCIE && RCIF) 
         {
            ch = (char)RCREG;
            if(set_alarm == 0)
               {
                  if((ch-48) >= 0x00 && (ch-48) <= 0x09)
                     {
                        if(index < 6)
                           {
                              time_display_array[index] = ch - 48;

                              if(index == 5)
                                 {
                                    secs = time_display_array[1] * 10 + time_display_array[0];
                                    mins = time_display_array[3] * 10 + time_display_array[2];
                                    hrs = time_display_array[5] * 10 + time_display_array[4];
                                    min_flag = 1;
                                    adjustment = 0;
                                 }
                           }
                     
                        if(index >= 6)
                           {
                              date_display_array[index-6] = ch - 48;

                              if(index == 11)
                                 {
                                    year = date_display_array[1] * 10 + date_display_array[0];
                                    month = date_display_array[3] * 10 + date_display_array[2];
                                    day = date_display_array[5] * 10 + date_display_array[4];
                                    date_flag = 1;
                                    index = 0;
                                    return;
                                 }   
                           }
                  
                        index++;
                        return;  
                     }
               }
            if(set_alarm == 1)
               {
                  if((ch-48) >= 0x00 && (ch-48) <= 0x09)
                     {
                        alarm_array[index] = ch - 48;
                        if(index == 3)
                           {
                              alarm_mins = alarm_array[1] * 10 + alarm_array[0];
                              alarm_hrs = alarm_array[3] * 10 + alarm_array[2];
                                                            
                              alarm_flag = 1;
                              set_alarm = 0;
                              index = 0;
                              return;
                           }   
                        index++;
                        return;  
                     }
               }
            if(ch == 'T')
               {
                  Twenty_Four_Hrs = 1;
                  min_flag = 1;
                  return;
               }
            if(ch == 'F')
               {
                  Twenty_Four_Hrs = 0;
                  min_flag = 1;
                  return;
               }
            if(ch == 'S')
               {
                  set_alarm = 1;
                  return;
               }
            if(ch == 'R')
               {
                  alarm_auto_repeat = 1;
                  return;
               }
            if(ch == 'N')
               {
                  alarm_auto_repeat = 0;
                  return;
               }
            return;         
         }    
   }