#include <xc.h>
#include "max7219.h"

void main()
   {
      TRISC = 0x00;
      
      MAX7219_Init ();
      MAX7219_DisplayChar (1, '5', 0);
      MAX7219_DisplayChar (2, '1', 0);
      MAX7219_DisplayChar (3, '-', 0);
      MAX7219_DisplayChar (4, '0', 0);
      MAX7219_DisplayChar (5, '1', 0);
      MAX7219_DisplayChar (6, '-', 0);
      MAX7219_DisplayChar (7, '7', 0);
      MAX7219_DisplayChar (8, '2', 0);
      while(1)
         {
            
         }   
   }   