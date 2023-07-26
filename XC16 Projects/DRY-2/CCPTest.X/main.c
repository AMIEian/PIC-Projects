/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system intialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.95-b-SNAPSHOT
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36
        MPLAB 	          :  MPLAB X v5.10
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/ic1.h"
#include "mcc_generated_files/ic2.h"
#include "mcc_generated_files/oc1.h"
#include "mcc_generated_files/uart1.h"
#include <stdint.h>
#include <stdbool.h>

/*
                         Main application
 */
int main(void)
{
    uint16_t time;
    uint16_t frequency;
    float freq;
    int i, j;
    
    // initialize the device
    SYSTEM_Initialize();
    
    //bool bufferStatus1, bufferStatus2;
    //uint16_t data1, data2;
    
    //OC1_Start();
    while (1)
    {
        if(IC1_DataReady())
        {
            time = getIC1Period();
            freq = (float)1/(float)time;
            frequency = (int16_t)(freq * 1000000);  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            i++;
            if(i == 50)
            {
                printf("%d ", frequency);
                j = 0;
            }
        }
        
        if(IC2_DataReady())
        {
            time = getIC2Period();
            freq = (float)1/(float)time;
            frequency = (int16_t)(freq * 1000000);  //1000000/2 = 500000; Timer2's 1 count gives 2us so divided final result by 2.
            j++;
            if(j == 50)
            {
                printf("%d ", frequency);
                i = 0;
            }
        }
    }

    return 1;
}
/**
 End of File
*/

