/**
  IC3 Generated Driver API Source File

  @Company
    Microchip Technology Inc.

  @File Name
    ic3.c

  @Summary
    This is the generated source file for the IC3 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for driver for IC3.
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

#include "ic3.h"

/**
  IC Mode.

  @Summary
    Defines the IC Mode.

  @Description
    This data type defines the IC Mode of operation.

*/

static uint16_t         gIC3Mode;
int8_t IC3_Interrupt_Count = 0;
uint16_t IC3_InputCapture_first_edge, IC3_InputCapture_second_edge, IC3_period;
bool IC3_flag = false;

/**
  Section: Driver Interface
*/

bool IC3_DataReady()
{
    return IC3_flag;
}

uint16_t getIC3Period()
{
    if(IC3_flag == true)
    {
        IC3_flag = false;
        IC3_Interrupt_Count = 0;
        return IC3_period;
    }
    else
        return 0;
}

void IC3_Initialize (void)
{
    // ICSIDL disabled; ICM Simple Capture mode: Rising; ICOV disabled; ICTSEL TMR3; ICBNE disabled; ICI Every; 
    IC3CON1 = 0x03;
    // SYNCSEL TMR3; TRIGSTAT disabled; IC32 disabled; ICTRIG Sync; 
    IC3CON2 = 0x0D;
    
    gIC3Mode = IC3CON1bits.ICM;
    
    IFS2bits.IC3IF = false;
    IEC2bits.IC3IE = true;
}


void __attribute__ ((weak)) IC3_CallBack(void)
{
    // Add your custom callback code here
    IC3_Interrupt_Count++;

    if( IC3_Interrupt_Count == 1 )
    {
        IC3_InputCapture_first_edge = IC3_CaptureDataRead();
    }
    else if( IC3_Interrupt_Count == 2 )
    {
        IC3_InputCapture_second_edge = IC3_CaptureDataRead();
        IC3_period = IC3_InputCapture_second_edge - IC3_InputCapture_first_edge;
        IC3_flag = true;
        //IEC2bits.IC3IE = false;
        //IC3_Stop();
    }
}

void __attribute__ ( ( interrupt, no_auto_psv ) ) _ISR _IC3Interrupt( void )
{	
    if(IFS2bits.IC3IF)
    {
		// IC3 callback function 
		IC3_CallBack();
        IFS2bits.IC3IF = 0;
    }
}
void IC3_Start( void )
{
    IC3CON1bits.ICM = gIC3Mode;
}

void IC3_Stop( void )
{
    IC3CON1bits.ICM = 0;
}

uint16_t IC3_CaptureDataRead( void )
{
    return(IC3BUF);
}

void IC3_ManualTriggerSet( void )
{
    IC3CON2bits.TRIGSTAT= true; 
}

bool IC3_TriggerStatusGet( void )
{
    return( IC3CON2bits.TRIGSTAT );
}


void IC3_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    IC3CON2bits.TRIGSTAT = 0;
}
bool IC3_HasCaptureBufferOverflowed( void )
{
    return( IC3CON1bits.ICOV );
}


bool IC3_IsCaptureBufferEmpty( void )
{
    return( ! IC3CON1bits.ICBNE );
}

/**
 End of File
*/
