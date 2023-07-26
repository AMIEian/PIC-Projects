/*
 * File:   HSDI.c
 * Author: AMIEian
 *
 * Created on August 4, 2019, 5:48 PM
 */


#include "xc.h"
#include "mcc_generated_files/ic1.h"
#include "mcc_generated_files/ic2.h"
#include "mcc_generated_files/ic3.h"
#include "mcc_generated_files/ic4.h"
#include "variables.h"
#include <stdint.h>
#include <stdbool.h>
#include "leds.h"

void checkHSDI()
{
    uint16_t time;
    uint16_t frequency;
    double freq;
    
    if(IC1_DataReady() == true)
        {
            time = getIC1Period();
            freq = (double)1/(double)time;
            frequency = freq * 1000000;  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            counts[HSDI_1] = frequency;
            DI0_LED = 1;
        }
    else
        {
            counts[HSDI_1] = 0;
            DI0_LED = 0;
        }
    
    if(IC2_DataReady() == true)
        {
            time = getIC2Period();
            freq = (double)1/(double)time;
            frequency = freq * 1000000;  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            counts[HSDI_2] = frequency;
            DI1_LED = 1;
        }
    else
        {
            counts[HSDI_2] = 0;
            DI1_LED = 0;
        }
    
    if(IC3_DataReady() == true)
        {
            time = getIC3Period();
            freq = (double)1/(double)time;
            frequency = freq * 1000000;  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            counts[HSDI_3] = frequency;
            DI2_LED = 1;
        }
    else
        {
            counts[HSDI_3] = 0;
            DI2_LED = 0;
        }
        
    if(IC4_DataReady() == true)
        {
            time = getIC4Period();
            freq = (double)1/(double)time;
            frequency = freq * 1000000;  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            counts[HSDI_4] = frequency;
            DI3_LED = 1;
        }
    else
        {
            counts[HSDI_4] = 0;
            DI3_LED = 0;
        }
}