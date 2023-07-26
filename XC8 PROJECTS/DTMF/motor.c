#include <xc.h>
#include "pins.h"
#include "motor.h"

#define _XTAL_FREQ 4000000

char phase_check()
   {
      if(Phase_1 == On && Phase_2 == On && Phase_3 == On)
         return 1;
      else
         return 0;
   }
   
void motor_start()
   {
      Start = On; 
      __delay_ms(5000); //5 sec delay
      Start = Off;
      Motor_LED = On;
      eeprom_write(11,1);
   }
   
void motor_stop()
   {
      Stop = On;
      __delay_ms(5000); //5 sec delay
      Stop = Off;
      Motor_LED = Off;
      eeprom_write(11,0);
   }      