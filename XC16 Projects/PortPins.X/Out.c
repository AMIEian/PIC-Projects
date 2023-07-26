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
        
    _LATB7  = _OUT0;
    _LATB8 = _OUT1;
    _LATB9 = _OUT2;
    _LATB10  = _OUT3;
    _LATC4  = _OUT4;
    _LATC5 = _OUT5;
    _LATC6  = _OUT6;
    _LATC7  = _OUT7;

}
/**
 End of File
 */