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
        
    _LATA0  = _OUT0;
    _LATA1 = _OUT1;
    _LATA2 = _OUT2;
    _LATA3  = _OUT3;
    _LATA4  = _OUT4;
    _LATA5 = _OUT5;
    _LATA6  = _OUT6;
    _LATA7  = _OUT7;

}
/**
 End of File
 */