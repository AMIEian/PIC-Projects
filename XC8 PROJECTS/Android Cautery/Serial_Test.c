#include <xc.h>
#include "usart_pic16.h"

void main()
   {
      TRISC = 0x80;
      ADCON1 = 0x06;	// All Digital
      char ch;
      USARTInit(9600);
      while(1)
         {
            ch = get_char();
            put_char(ch);
         }   
   }   