#include "mcc_generated_files/mcc.h"
#include "Out.h"

volatile LAT_OUTSBITS LAT_OUTSbits;

/*****************************************************************************
 * Function: DisplayValueOnLEDs
 * Precondition: None.
 * Overview: Display input value on Explorer 16 LEDs
 * Input: Value to display
 * Output: None.
 *****************************************************************************/
void SetOutPins(unsigned int value) {

    _OUTS = value;
        
    LATAbits.LATA2 = _OUT0;
    LATAbits.LATA4 = _OUT1;
    LATBbits.LATB2 = _OUT2;
    LATBbits.LATB4 = _OUT3;
    LATCbits.LATC2 = _OUT4;
    LATCbits.LATC4 = _OUT5;
    LATDbits.LATD2 = _OUT6;
    LATDbits.LATD4 = _OUT7;

}
/**
 End of File
 */