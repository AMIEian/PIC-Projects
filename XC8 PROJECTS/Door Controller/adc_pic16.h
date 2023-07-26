/* 
 * File:   adc_pic16.h
 * Author: Avinash Gupta
 *
 * Created on June 8, 2013, 6:59 PM
 */

#ifndef ADC_PIC16_H
#define	ADC_PIC16_H

#include <xc.h>
#include <stdint.h>

#ifdef	__cplusplus
extern "C" {
#endif

void ADCInit();
uint16_t ReadADC();




#ifdef	__cplusplus
}
#endif

#endif	/* ADC_PIC16_H */

