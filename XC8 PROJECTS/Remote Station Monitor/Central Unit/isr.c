#include <stdint.h>
#include <xc.h>

#include "usart_pic18.h"
#include "rtu.h"

void interrupt ISR(void)
{
    if (RCIE && RCIF) {
        USARTHandleRxInt();
        return;
    }
    
    if(INT0IE && INT0IF) {
       SecondsInt();
       INT0IF = 0;
       return;
    }  
}
