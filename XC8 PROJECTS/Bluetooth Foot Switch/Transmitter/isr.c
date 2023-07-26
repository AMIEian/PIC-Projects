#include <stdint.h>
#include <xc.h>

#include "usart_pic16.h"
#include "beep.h"

void interrupt ISR(void)
{
    //Receiver interrupt
    if (RCIE && RCIF) {
        USARTHandleRxInt();
        return;
    }
    //Timer0 interrupt
    if (T0IE && T0IF) {
        Beeper();
        TMR0 = 0; //Reset TMR0
        T0IF = 0; //Reset timer
        return;
    }   
}