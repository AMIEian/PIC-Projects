/**
  IC1 Generated Driver API Source File

  @Company
    Microchip Technology Inc.

  @File Name
    ic1.c

  @Summary
    This is the generated source file for the IC1 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for driver for IC1.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.125
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36B
        MPLAB 	          :  MPLAB X v5.20
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

#include "ic1.h"

/**
  IC Mode.

  @Summary
    Defines the IC Mode.

  @Description
    This data type defines the IC Mode of operation.

*/

static uint16_t         gIC1Mode;
int8_t IC1_Interrupt_Count = 0;
uint16_t IC1_InputCapture_first_edge, IC1_InputCapture_second_edge, IC1_period;
bool IC1_flag = false;

/**
  Section: Driver Interface
*/

bool IC1_DataReady()
{
    return IC1_flag;
}

uint16_t getIC1Period()
{
    if(IC1_flag == true)
    {
        IC1_flag = false;
        IC1_Interrupt_Count = 0;
        return IC1_period;
    }
    else
        return 0;
}

void IC1_Initialize (void)
{
    // ICSIDL disabled; ICM Simple Capture mode: Rising; ICOV disabled; ICTSEL TMR3; ICBNE disabled; ICI Every; 
    IC1CON1 = 0x03;
    // SYNCSEL TMR3; TRIGSTAT disabled; IC32 disabled; ICTRIG Sync; 
    IC1CON2 = 0x0D;
    
    gIC1Mode = IC1CON1bits.ICM;
    
    IFS0bits.IC1IF = false;
    IEC0bits.IC1IE = true;
}


void __attribute__ ((weak)) IC1_CallBack(void)
{
    // Add your custom callback code here
    IC1_Interrupt_Count++;
    if (IC1_Interrupt_Count == 1) {
        IC1_InputCapture_first_edge = IC1_CaptureDataRead();
    } else if (IC1_Interrupt_Count == 2) {
        IC1_InputCapture_second_edge = IC1_CaptureDataRead();
        IC1_period = IC1_InputCapture_second_edge - IC1_InputCapture_first_edge;
        IC1_flag = true;
        //IEC0bits.IC1IE = false;
        //IC1_Stop();
    }
}

void __attribute__ ( ( interrupt, no_auto_psv ) ) _ISR _IC1Interrupt( void )
{	
    if(IFS0bits.IC1IF)
    {
		// IC1 callback function 
		IC1_CallBack();
        IFS0bits.IC1IF = 0;
    }
}
void IC1_Start( void )
{
    IC1CON1bits.ICM = gIC1Mode;
}

void IC1_Stop( void )
{
    IC1CON1bits.ICM = 0;
}

uint16_t IC1_CaptureDataRead( void )
{
    return(IC1BUF);
}

void IC1_ManualTriggerSet( void )
{
    IC1CON2bits.TRIGSTAT= true; 
}

bool IC1_TriggerStatusGet( void )
{
    return( IC1CON2bits.TRIGSTAT );
}


void IC1_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    IC1CON2bits.TRIGSTAT = 0;
}
bool IC1_HasCaptureBufferOverflowed( void )
{
    return( IC1CON1bits.ICOV );
}


bool IC1_IsCaptureBufferEmpty( void )
{
    return( ! IC1CON1bits.ICBNE );
}

/**
 End of File
*/
