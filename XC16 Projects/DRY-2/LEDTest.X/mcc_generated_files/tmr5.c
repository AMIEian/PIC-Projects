
/**
  TMR5 Generated Driver API Source File 

  @Company
    Microchip Technology Inc.

  @File Name
    tmr5.c

  @Summary
    This is the generated source file for the TMR5 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for driver for TMR5. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.95-b-SNAPSHOT
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36
        MPLAB             :  MPLAB X v5.10
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

#include <stdio.h>
#include "tmr5.h"

/**
 Section: File specific functions
*/

unsigned long milliSecs = 0;

void (*TMR5_InterruptHandler)(void) = NULL;
void TMR5_CallBack(void);

unsigned long millis(void)
{
    return milliSecs;
}
/**
  Section: Data Type Definitions
*/

/** TMR Driver Hardware Instance Object

  @Summary
    Defines the object required for the maintainence of the hardware instance.

  @Description
    This defines the object required for the maintainence of the hardware
    instance. This object exists once per hardware instance of the peripheral.

  Remarks:
    None.
*/

typedef struct _TMR_OBJ_STRUCT
{
    /* Timer Elapsed */
    volatile bool           timerElapsed;
    /*Software Counter value*/
    volatile uint8_t        count;
    
    

} TMR_OBJ;

static TMR_OBJ tmr5_obj;

/**
  Section: Driver Interface
*/

void TMR5_Initialize (void)
{
    //TMR5 0; 
    TMR5 = 0x00;
    //Period = 0.001 s; Frequency = 8000000 Hz; PR5 7999; 
    PR5 = 0x1F3F;
    //TCKPS 1:1; TON enabled; TSIDL disabled; TCS FOSC/2; TGATE disabled; 
    T5CON = 0x8000;

    if(TMR5_InterruptHandler == NULL)
    {
        TMR5_SetInterruptHandler(&TMR5_CallBack);
    }

    IFS1bits.T5IF = false;
    IEC1bits.T5IE = true;
	
    tmr5_obj.timerElapsed = false;

}


void __attribute__ ( ( interrupt, no_auto_psv ) ) _T5Interrupt (  )
{
    /* Check if the Timer Interrupt/Status is set */

    //***User Area Begin
    milliSecs++;
    // ticker function call;
    // ticker is 1 -> Callback function gets called everytime this ISR executes
    if(TMR5_InterruptHandler) 
    { 
           TMR5_InterruptHandler(); 
    }

    //***User Area End
    tmr5_obj.count++;
    tmr5_obj.timerElapsed = true;
    IFS1bits.T5IF = false;
}

void TMR5_Period16BitSet( uint16_t value )
{
    /* Update the counter values */
    PR5 = value;
    /* Reset the status information */
    tmr5_obj.timerElapsed = false;
}

uint16_t TMR5_Period16BitGet( void )
{
    return( PR5 );
}

void TMR5_Counter16BitSet ( uint16_t value )
{
    /* Update the counter values */
    TMR5 = value;
    /* Reset the status information */
    tmr5_obj.timerElapsed = false;
}

uint16_t TMR5_Counter16BitGet( void )
{
    return( TMR5 );
}


void __attribute__ ((weak)) TMR5_CallBack(void)
{
    // Add your custom callback code here
}

void  TMR5_SetInterruptHandler(void (* InterruptHandler)(void))
{ 
    IEC1bits.T5IE = false;
    TMR5_InterruptHandler = InterruptHandler; 
    IEC1bits.T5IE = true;
}

void TMR5_Start( void )
{
    /* Reset the status information */
    tmr5_obj.timerElapsed = false;

    /*Enable the interrupt*/
    IEC1bits.T5IE = true;

    /* Start the Timer */
    T5CONbits.TON = 1;
}

void TMR5_Stop( void )
{
    /* Stop the Timer */
    T5CONbits.TON = false;

    /*Disable the interrupt*/
    IEC1bits.T5IE = false;
}

bool TMR5_GetElapsedThenClear(void)
{
    bool status;
    
    status = tmr5_obj.timerElapsed;

    if(status == true)
    {
        tmr5_obj.timerElapsed = false;
    }
    return status;
}

int TMR5_SoftwareCounterGet(void)
{
    return tmr5_obj.count;
}

void TMR5_SoftwareCounterClear(void)
{
    tmr5_obj.count = 0; 
}

/**
 End of File
*/
