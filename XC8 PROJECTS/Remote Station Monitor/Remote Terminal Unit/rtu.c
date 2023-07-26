#include <xc.h>
#include <I2C.h>
#include <EEP.h>
#include "lcd_hd44780_pic18.h"
#include "usart_pic18.h"
#include "myeeprom.h"
#include "myrtc.h"
#include "pins.h"
#include "rtu.h"

#define _XTAL_FREQ 100000000 //The speed of your internal(or)external oscillator

unsigned char c;

void RTUInit()
   {
      unsigned char high, low, count;
      unsigned int adr;
      
      TRISA = 0x1F;
      TRISB = 0x01;
      TRISC = 0xA0;
      TRISD = 0x33;
      TRISE = 0x00;
      
      LED1 = 0;
      LED2 = 0;
      LED3 = 0;
      LED4 = 0;
      LED5 = 0;
      
      LCD_PORT = 0x00;
      Comm = Off;
      
      //Five times LED blinking to check crystal activity
      for(c = 0; c < 5; c++)
         {
            LED1 = On;
            MyDelay(100); //1 Sec delay
            LED1 = Off;
            MyDelay(100); //1 Sec delay
         }   
      //Set RTU and Center's ID
      Source_ID = 'x';
      Destination_ID = 'z';
      //Init Seconds and other flags
      seconds = 0;
      sec_flag = Off;
      min_flag = Off;
      
      //Set EEPROM's ID
      device = 0xA0;
      
      //Read EEPROM's Current Write Page from MC's EEPROM
      high = Read_b_eep(0);
      _delay(50);
      low = Read_b_eep(1);
      _delay(50);
      
      //Create address from this data
      adr = 0x0000;
      adr = adr + high;
      adr = adr << 8;
      adr = adr + low;
      if(adr > MAX_PAGE_NO)
         adr = 0;
      Current_Write_Page = adr;
      
      Current_Write_Page = 0;
      Current_Read_Page = 0;
      
      //Initiate I2C
      OpenI2C(MASTER,SLEW_OFF);
      SSPADD = 0x19;
      
      //Init RTC
      ds1307_init();
      
      if(Read_b_eep(4) != 0)
         {
            day = 1;
  `         month = 1;
            year = 15;
            dow = 2;
            hr = 6;
            min = 0;
            sec = 0;
            ds1307_set_date_time();
            MyDelay(100);
            Write_b_eep(0x04,0);
            _delay(50);
         }   
  
      //Get current date
      ds1307_get_date();
      MyDelay(100);
      //Get Current Time
      ds1307_get_time();
      MyDelay(100);
      
      high = Read_b_eep(5);
      _delay(50);
      low = Read_b_eep(6);
      _delay(50);
      thresh_temp1 = high + (low*0.01);
      
      high = Read_b_eep(7);
      _delay(50);
      low = Read_b_eep(8);
      _delay(50);
      thresh_hum1 = high + (low*0.01);
      
      high = Read_b_eep(9);
      _delay(50);
      low = Read_b_eep(10);
      _delay(50);
      thresh_temp2 = high + (low*0.01);
      
      high = Read_b_eep(11);
      _delay(50);
      low = Read_b_eep(12);
      _delay(50);
      thresh_hum2 = high + (low*0.01);
      
      high = Read_b_eep(13);
      _delay(50);
      low = Read_b_eep(14);
      _delay(50);
      trig_temp1 = high + (low*0.01);
      
      high = Read_b_eep(15);
      _delay(50);
      low = Read_b_eep(16);
      _delay(50);
      trig_hum1 = high + (low*0.01);
      
      high = Read_b_eep(17);
      _delay(50);
      low = Read_b_eep(18);
      _delay(50);
      trig_temp2 = high + (low*0.01);
      
      high = Read_b_eep(19);
      _delay(50);
      low = Read_b_eep(20);
      _delay(50);
      trig_hum2 = high + (low*0.01);
      
      //Initialize the LCD Module
      LCD_PWR = On;
      LCDInit(LS_NONE);
      //Clear the display
      LCDClear();  
      
      //Initialize USART with baud rate 9600
      USARTInit(9600); 
      
      //Enable RB0 interrupt  
      INTEDG0 = 1;   //Interrupt on rising edge
      INT0IE = 1;   //Enable RB0 interrupt
      ei(); //Enable globle interrupt 
   }  
   
void MyDelay(unsigned int ms)
   {
      while(ms > 0)
         {
            __delay_ms(1);
            ms--;
         }   
   }   

void SecondsInt()
   {
      LED5 = ~LED5;
      sec_flag = On;
      seconds++;
      if(seconds == 60)
         {
            min_flag = On;
            seconds = 0;
         }   
   }   

unsigned char getkey(unsigned int msecs)
   {
      //Remain here for specified time or key press.
      while(Switch1 == Off && Switch2 == Off && Switch3 == Off && Switch4 == Off && Switch5 == Off && msecs > 0)
         {
            __delay_ms(1);
            msecs--;
         }
      //We are out of loop. Check cause of loop termination  
      if(msecs <= 0)
         return 0;   //Time over
      if(Switch1 == On)
         return 1;
      if(Switch2 == On)
         return 2;
      if(Switch3 == On)
         return 3;
      if(Switch4 == On)
         return 4;
      if(Switch5 == On)
         return 5;
   } 
   
void beep(unsigned int del)
   {
      Buzzer = On;
      MyDelay(del);
      Buzzer = Off;
   }     
