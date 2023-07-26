#include <xc.h>
#include <stdint.h>
#include "adc_pic16.h"

#define _XTAL_FREQ 4000000

void ADCInit()
{
  //ADCON1bits.ADFM=1;

  //All 8 pins as analog inputs
  //Vref+ = VDD
  //Vref- = VSS
  //ADCON1bits.PCFG=0x00;

  //ADC Clock = Fosc/64
  //ADCON0bits.ADCS=0b10;
  //ADCON1bits.ADCS2=1;

  //Turn on ADC Module
  //ADCON0bits.ADON=1;
  
}
uint16_t ReadADC()
{
  uint16_t result = 0;
  //if(ch>7) return 0;

  //ADCON0bits.CHS=ch;
  //Turn on ADC module
  ADCON0bits.ADON=1;
  //Wait for aquisition
  __delay_us(100);
  
  //Start Conversion
  ADCON0bits.GO=1;

  //Wait for the conversion to complete
  while(ADCON0bits.GO);
  result = ((ADRESH<<8)|ADRESL);
  ADCON0bits.ADON=0; ////Turn off ADC module
  return result;

}