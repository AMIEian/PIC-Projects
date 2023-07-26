/**
  PIN MANAGER Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for PIN MANAGER.
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

#ifndef _PIN_MANAGER_H
#define _PIN_MANAGER_H
/**
    Section: Includes
*/
#include <xc.h>

/**
    Section: Device Pin Macros
*/
/**
  @Summary
    Sets the GPIO pin, RA0, high using LATA0.

  @Description
    Sets the GPIO pin, RA0, high using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA0 high (1)
    D0_SetHigh();
    </code>

*/
#define D0_SetHigh()          _LATA0 = 1
/**
  @Summary
    Sets the GPIO pin, RA0, low using LATA0.

  @Description
    Sets the GPIO pin, RA0, low using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA0 low (0)
    D0_SetLow();
    </code>

*/
#define D0_SetLow()           _LATA0 = 0
/**
  @Summary
    Toggles the GPIO pin, RA0, using LATA0.

  @Description
    Toggles the GPIO pin, RA0, using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA0
    D0_Toggle();
    </code>

*/
#define D0_Toggle()           _LATA0 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA0.

  @Description
    Reads the value of the GPIO pin, RA0.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA0
    postValue = D0_GetValue();
    </code>

*/
#define D0_GetValue()         _RA0
/**
  @Summary
    Configures the GPIO pin, RA0, as an input.

  @Description
    Configures the GPIO pin, RA0, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA0 as an input
    D0_SetDigitalInput();
    </code>

*/
#define D0_SetDigitalInput()  _TRISA0 = 1
/**
  @Summary
    Configures the GPIO pin, RA0, as an output.

  @Description
    Configures the GPIO pin, RA0, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA0 as an output
    D0_SetDigitalOutput();
    </code>

*/
#define D0_SetDigitalOutput() _TRISA0 = 0
/**
  @Summary
    Sets the GPIO pin, RA1, high using LATA1.

  @Description
    Sets the GPIO pin, RA1, high using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 high (1)
    D1_SetHigh();
    </code>

*/
#define D1_SetHigh()          _LATA1 = 1
/**
  @Summary
    Sets the GPIO pin, RA1, low using LATA1.

  @Description
    Sets the GPIO pin, RA1, low using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 low (0)
    D1_SetLow();
    </code>

*/
#define D1_SetLow()           _LATA1 = 0
/**
  @Summary
    Toggles the GPIO pin, RA1, using LATA1.

  @Description
    Toggles the GPIO pin, RA1, using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA1
    D1_Toggle();
    </code>

*/
#define D1_Toggle()           _LATA1 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA1.

  @Description
    Reads the value of the GPIO pin, RA1.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA1
    postValue = D1_GetValue();
    </code>

*/
#define D1_GetValue()         _RA1
/**
  @Summary
    Configures the GPIO pin, RA1, as an input.

  @Description
    Configures the GPIO pin, RA1, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an input
    D1_SetDigitalInput();
    </code>

*/
#define D1_SetDigitalInput()  _TRISA1 = 1
/**
  @Summary
    Configures the GPIO pin, RA1, as an output.

  @Description
    Configures the GPIO pin, RA1, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an output
    D1_SetDigitalOutput();
    </code>

*/
#define D1_SetDigitalOutput() _TRISA1 = 0
/**
  @Summary
    Sets the GPIO pin, RA14, high using LATA14.

  @Description
    Sets the GPIO pin, RA14, high using LATA14.

  @Preconditions
    The RA14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA14 high (1)
    ROW1_SetHigh();
    </code>

*/
#define ROW1_SetHigh()          _LATA14 = 1
/**
  @Summary
    Sets the GPIO pin, RA14, low using LATA14.

  @Description
    Sets the GPIO pin, RA14, low using LATA14.

  @Preconditions
    The RA14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA14 low (0)
    ROW1_SetLow();
    </code>

*/
#define ROW1_SetLow()           _LATA14 = 0
/**
  @Summary
    Toggles the GPIO pin, RA14, using LATA14.

  @Description
    Toggles the GPIO pin, RA14, using LATA14.

  @Preconditions
    The RA14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA14
    ROW1_Toggle();
    </code>

*/
#define ROW1_Toggle()           _LATA14 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA14.

  @Description
    Reads the value of the GPIO pin, RA14.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA14
    postValue = ROW1_GetValue();
    </code>

*/
#define ROW1_GetValue()         _RA14
/**
  @Summary
    Configures the GPIO pin, RA14, as an input.

  @Description
    Configures the GPIO pin, RA14, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA14 as an input
    ROW1_SetDigitalInput();
    </code>

*/
#define ROW1_SetDigitalInput()  _TRISA14 = 1
/**
  @Summary
    Configures the GPIO pin, RA14, as an output.

  @Description
    Configures the GPIO pin, RA14, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA14 as an output
    ROW1_SetDigitalOutput();
    </code>

*/
#define ROW1_SetDigitalOutput() _TRISA14 = 0
/**
  @Summary
    Sets the GPIO pin, RA15, high using LATA15.

  @Description
    Sets the GPIO pin, RA15, high using LATA15.

  @Preconditions
    The RA15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA15 high (1)
    ROW2_SetHigh();
    </code>

*/
#define ROW2_SetHigh()          _LATA15 = 1
/**
  @Summary
    Sets the GPIO pin, RA15, low using LATA15.

  @Description
    Sets the GPIO pin, RA15, low using LATA15.

  @Preconditions
    The RA15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA15 low (0)
    ROW2_SetLow();
    </code>

*/
#define ROW2_SetLow()           _LATA15 = 0
/**
  @Summary
    Toggles the GPIO pin, RA15, using LATA15.

  @Description
    Toggles the GPIO pin, RA15, using LATA15.

  @Preconditions
    The RA15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA15
    ROW2_Toggle();
    </code>

*/
#define ROW2_Toggle()           _LATA15 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA15.

  @Description
    Reads the value of the GPIO pin, RA15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA15
    postValue = ROW2_GetValue();
    </code>

*/
#define ROW2_GetValue()         _RA15
/**
  @Summary
    Configures the GPIO pin, RA15, as an input.

  @Description
    Configures the GPIO pin, RA15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA15 as an input
    ROW2_SetDigitalInput();
    </code>

*/
#define ROW2_SetDigitalInput()  _TRISA15 = 1
/**
  @Summary
    Configures the GPIO pin, RA15, as an output.

  @Description
    Configures the GPIO pin, RA15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA15 as an output
    ROW2_SetDigitalOutput();
    </code>

*/
#define ROW2_SetDigitalOutput() _TRISA15 = 0
/**
  @Summary
    Sets the GPIO pin, RA2, high using LATA2.

  @Description
    Sets the GPIO pin, RA2, high using LATA2.

  @Preconditions
    The RA2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA2 high (1)
    D2_SetHigh();
    </code>

*/
#define D2_SetHigh()          _LATA2 = 1
/**
  @Summary
    Sets the GPIO pin, RA2, low using LATA2.

  @Description
    Sets the GPIO pin, RA2, low using LATA2.

  @Preconditions
    The RA2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA2 low (0)
    D2_SetLow();
    </code>

*/
#define D2_SetLow()           _LATA2 = 0
/**
  @Summary
    Toggles the GPIO pin, RA2, using LATA2.

  @Description
    Toggles the GPIO pin, RA2, using LATA2.

  @Preconditions
    The RA2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA2
    D2_Toggle();
    </code>

*/
#define D2_Toggle()           _LATA2 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA2.

  @Description
    Reads the value of the GPIO pin, RA2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA2
    postValue = D2_GetValue();
    </code>

*/
#define D2_GetValue()         _RA2
/**
  @Summary
    Configures the GPIO pin, RA2, as an input.

  @Description
    Configures the GPIO pin, RA2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA2 as an input
    D2_SetDigitalInput();
    </code>

*/
#define D2_SetDigitalInput()  _TRISA2 = 1
/**
  @Summary
    Configures the GPIO pin, RA2, as an output.

  @Description
    Configures the GPIO pin, RA2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA2 as an output
    D2_SetDigitalOutput();
    </code>

*/
#define D2_SetDigitalOutput() _TRISA2 = 0
/**
  @Summary
    Sets the GPIO pin, RA3, high using LATA3.

  @Description
    Sets the GPIO pin, RA3, high using LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA3 high (1)
    D3_SetHigh();
    </code>

*/
#define D3_SetHigh()          _LATA3 = 1
/**
  @Summary
    Sets the GPIO pin, RA3, low using LATA3.

  @Description
    Sets the GPIO pin, RA3, low using LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA3 low (0)
    D3_SetLow();
    </code>

*/
#define D3_SetLow()           _LATA3 = 0
/**
  @Summary
    Toggles the GPIO pin, RA3, using LATA3.

  @Description
    Toggles the GPIO pin, RA3, using LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA3
    D3_Toggle();
    </code>

*/
#define D3_Toggle()           _LATA3 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA3.

  @Description
    Reads the value of the GPIO pin, RA3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA3
    postValue = D3_GetValue();
    </code>

*/
#define D3_GetValue()         _RA3
/**
  @Summary
    Configures the GPIO pin, RA3, as an input.

  @Description
    Configures the GPIO pin, RA3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA3 as an input
    D3_SetDigitalInput();
    </code>

*/
#define D3_SetDigitalInput()  _TRISA3 = 1
/**
  @Summary
    Configures the GPIO pin, RA3, as an output.

  @Description
    Configures the GPIO pin, RA3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA3 as an output
    D3_SetDigitalOutput();
    </code>

*/
#define D3_SetDigitalOutput() _TRISA3 = 0
/**
  @Summary
    Sets the GPIO pin, RA4, high using LATA4.

  @Description
    Sets the GPIO pin, RA4, high using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 high (1)
    D4_SetHigh();
    </code>

*/
#define D4_SetHigh()          _LATA4 = 1
/**
  @Summary
    Sets the GPIO pin, RA4, low using LATA4.

  @Description
    Sets the GPIO pin, RA4, low using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 low (0)
    D4_SetLow();
    </code>

*/
#define D4_SetLow()           _LATA4 = 0
/**
  @Summary
    Toggles the GPIO pin, RA4, using LATA4.

  @Description
    Toggles the GPIO pin, RA4, using LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA4
    D4_Toggle();
    </code>

*/
#define D4_Toggle()           _LATA4 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA4.

  @Description
    Reads the value of the GPIO pin, RA4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA4
    postValue = D4_GetValue();
    </code>

*/
#define D4_GetValue()         _RA4
/**
  @Summary
    Configures the GPIO pin, RA4, as an input.

  @Description
    Configures the GPIO pin, RA4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an input
    D4_SetDigitalInput();
    </code>

*/
#define D4_SetDigitalInput()  _TRISA4 = 1
/**
  @Summary
    Configures the GPIO pin, RA4, as an output.

  @Description
    Configures the GPIO pin, RA4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an output
    D4_SetDigitalOutput();
    </code>

*/
#define D4_SetDigitalOutput() _TRISA4 = 0
/**
  @Summary
    Sets the GPIO pin, RA5, high using LATA5.

  @Description
    Sets the GPIO pin, RA5, high using LATA5.

  @Preconditions
    The RA5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA5 high (1)
    D5_SetHigh();
    </code>

*/
#define D5_SetHigh()          _LATA5 = 1
/**
  @Summary
    Sets the GPIO pin, RA5, low using LATA5.

  @Description
    Sets the GPIO pin, RA5, low using LATA5.

  @Preconditions
    The RA5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA5 low (0)
    D5_SetLow();
    </code>

*/
#define D5_SetLow()           _LATA5 = 0
/**
  @Summary
    Toggles the GPIO pin, RA5, using LATA5.

  @Description
    Toggles the GPIO pin, RA5, using LATA5.

  @Preconditions
    The RA5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA5
    D5_Toggle();
    </code>

*/
#define D5_Toggle()           _LATA5 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA5.

  @Description
    Reads the value of the GPIO pin, RA5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA5
    postValue = D5_GetValue();
    </code>

*/
#define D5_GetValue()         _RA5
/**
  @Summary
    Configures the GPIO pin, RA5, as an input.

  @Description
    Configures the GPIO pin, RA5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA5 as an input
    D5_SetDigitalInput();
    </code>

*/
#define D5_SetDigitalInput()  _TRISA5 = 1
/**
  @Summary
    Configures the GPIO pin, RA5, as an output.

  @Description
    Configures the GPIO pin, RA5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA5 as an output
    D5_SetDigitalOutput();
    </code>

*/
#define D5_SetDigitalOutput() _TRISA5 = 0
/**
  @Summary
    Sets the GPIO pin, RA6, high using LATA6.

  @Description
    Sets the GPIO pin, RA6, high using LATA6.

  @Preconditions
    The RA6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA6 high (1)
    D6_SetHigh();
    </code>

*/
#define D6_SetHigh()          _LATA6 = 1
/**
  @Summary
    Sets the GPIO pin, RA6, low using LATA6.

  @Description
    Sets the GPIO pin, RA6, low using LATA6.

  @Preconditions
    The RA6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA6 low (0)
    D6_SetLow();
    </code>

*/
#define D6_SetLow()           _LATA6 = 0
/**
  @Summary
    Toggles the GPIO pin, RA6, using LATA6.

  @Description
    Toggles the GPIO pin, RA6, using LATA6.

  @Preconditions
    The RA6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA6
    D6_Toggle();
    </code>

*/
#define D6_Toggle()           _LATA6 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA6.

  @Description
    Reads the value of the GPIO pin, RA6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA6
    postValue = D6_GetValue();
    </code>

*/
#define D6_GetValue()         _RA6
/**
  @Summary
    Configures the GPIO pin, RA6, as an input.

  @Description
    Configures the GPIO pin, RA6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA6 as an input
    D6_SetDigitalInput();
    </code>

*/
#define D6_SetDigitalInput()  _TRISA6 = 1
/**
  @Summary
    Configures the GPIO pin, RA6, as an output.

  @Description
    Configures the GPIO pin, RA6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA6 as an output
    D6_SetDigitalOutput();
    </code>

*/
#define D6_SetDigitalOutput() _TRISA6 = 0
/**
  @Summary
    Sets the GPIO pin, RA7, high using LATA7.

  @Description
    Sets the GPIO pin, RA7, high using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 high (1)
    D7_SetHigh();
    </code>

*/
#define D7_SetHigh()          _LATA7 = 1
/**
  @Summary
    Sets the GPIO pin, RA7, low using LATA7.

  @Description
    Sets the GPIO pin, RA7, low using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 low (0)
    D7_SetLow();
    </code>

*/
#define D7_SetLow()           _LATA7 = 0
/**
  @Summary
    Toggles the GPIO pin, RA7, using LATA7.

  @Description
    Toggles the GPIO pin, RA7, using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA7
    D7_Toggle();
    </code>

*/
#define D7_Toggle()           _LATA7 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA7.

  @Description
    Reads the value of the GPIO pin, RA7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA7
    postValue = D7_GetValue();
    </code>

*/
#define D7_GetValue()         _RA7
/**
  @Summary
    Configures the GPIO pin, RA7, as an input.

  @Description
    Configures the GPIO pin, RA7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an input
    D7_SetDigitalInput();
    </code>

*/
#define D7_SetDigitalInput()  _TRISA7 = 1
/**
  @Summary
    Configures the GPIO pin, RA7, as an output.

  @Description
    Configures the GPIO pin, RA7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an output
    D7_SetDigitalOutput();
    </code>

*/
#define D7_SetDigitalOutput() _TRISA7 = 0
/**
  @Summary
    Sets the GPIO pin, RB2, high using LATB2.

  @Description
    Sets the GPIO pin, RB2, high using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 high (1)
    AN1_SetHigh();
    </code>

*/
#define AN1_SetHigh()          _LATB2 = 1
/**
  @Summary
    Sets the GPIO pin, RB2, low using LATB2.

  @Description
    Sets the GPIO pin, RB2, low using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 low (0)
    AN1_SetLow();
    </code>

*/
#define AN1_SetLow()           _LATB2 = 0
/**
  @Summary
    Toggles the GPIO pin, RB2, using LATB2.

  @Description
    Toggles the GPIO pin, RB2, using LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB2
    AN1_Toggle();
    </code>

*/
#define AN1_Toggle()           _LATB2 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB2.

  @Description
    Reads the value of the GPIO pin, RB2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB2
    postValue = AN1_GetValue();
    </code>

*/
#define AN1_GetValue()         _RB2
/**
  @Summary
    Configures the GPIO pin, RB2, as an input.

  @Description
    Configures the GPIO pin, RB2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an input
    AN1_SetDigitalInput();
    </code>

*/
#define AN1_SetDigitalInput()  _TRISB2 = 1
/**
  @Summary
    Configures the GPIO pin, RB2, as an output.

  @Description
    Configures the GPIO pin, RB2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an output
    AN1_SetDigitalOutput();
    </code>

*/
#define AN1_SetDigitalOutput() _TRISB2 = 0
/**
  @Summary
    Sets the GPIO pin, RB3, high using LATB3.

  @Description
    Sets the GPIO pin, RB3, high using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 high (1)
    AN2_SetHigh();
    </code>

*/
#define AN2_SetHigh()          _LATB3 = 1
/**
  @Summary
    Sets the GPIO pin, RB3, low using LATB3.

  @Description
    Sets the GPIO pin, RB3, low using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 low (0)
    AN2_SetLow();
    </code>

*/
#define AN2_SetLow()           _LATB3 = 0
/**
  @Summary
    Toggles the GPIO pin, RB3, using LATB3.

  @Description
    Toggles the GPIO pin, RB3, using LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB3
    AN2_Toggle();
    </code>

*/
#define AN2_Toggle()           _LATB3 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB3.

  @Description
    Reads the value of the GPIO pin, RB3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB3
    postValue = AN2_GetValue();
    </code>

*/
#define AN2_GetValue()         _RB3
/**
  @Summary
    Configures the GPIO pin, RB3, as an input.

  @Description
    Configures the GPIO pin, RB3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an input
    AN2_SetDigitalInput();
    </code>

*/
#define AN2_SetDigitalInput()  _TRISB3 = 1
/**
  @Summary
    Configures the GPIO pin, RB3, as an output.

  @Description
    Configures the GPIO pin, RB3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an output
    AN2_SetDigitalOutput();
    </code>

*/
#define AN2_SetDigitalOutput() _TRISB3 = 0
/**
  @Summary
    Sets the GPIO pin, RB4, high using LATB4.

  @Description
    Sets the GPIO pin, RB4, high using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 high (1)
    AN3_SetHigh();
    </code>

*/
#define AN3_SetHigh()          _LATB4 = 1
/**
  @Summary
    Sets the GPIO pin, RB4, low using LATB4.

  @Description
    Sets the GPIO pin, RB4, low using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 low (0)
    AN3_SetLow();
    </code>

*/
#define AN3_SetLow()           _LATB4 = 0
/**
  @Summary
    Toggles the GPIO pin, RB4, using LATB4.

  @Description
    Toggles the GPIO pin, RB4, using LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB4
    AN3_Toggle();
    </code>

*/
#define AN3_Toggle()           _LATB4 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB4.

  @Description
    Reads the value of the GPIO pin, RB4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB4
    postValue = AN3_GetValue();
    </code>

*/
#define AN3_GetValue()         _RB4
/**
  @Summary
    Configures the GPIO pin, RB4, as an input.

  @Description
    Configures the GPIO pin, RB4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an input
    AN3_SetDigitalInput();
    </code>

*/
#define AN3_SetDigitalInput()  _TRISB4 = 1
/**
  @Summary
    Configures the GPIO pin, RB4, as an output.

  @Description
    Configures the GPIO pin, RB4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an output
    AN3_SetDigitalOutput();
    </code>

*/
#define AN3_SetDigitalOutput() _TRISB4 = 0
/**
  @Summary
    Sets the GPIO pin, RB5, high using LATB5.

  @Description
    Sets the GPIO pin, RB5, high using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 high (1)
    AN4_SetHigh();
    </code>

*/
#define AN4_SetHigh()          _LATB5 = 1
/**
  @Summary
    Sets the GPIO pin, RB5, low using LATB5.

  @Description
    Sets the GPIO pin, RB5, low using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 low (0)
    AN4_SetLow();
    </code>

*/
#define AN4_SetLow()           _LATB5 = 0
/**
  @Summary
    Toggles the GPIO pin, RB5, using LATB5.

  @Description
    Toggles the GPIO pin, RB5, using LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB5
    AN4_Toggle();
    </code>

*/
#define AN4_Toggle()           _LATB5 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB5.

  @Description
    Reads the value of the GPIO pin, RB5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB5
    postValue = AN4_GetValue();
    </code>

*/
#define AN4_GetValue()         _RB5
/**
  @Summary
    Configures the GPIO pin, RB5, as an input.

  @Description
    Configures the GPIO pin, RB5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an input
    AN4_SetDigitalInput();
    </code>

*/
#define AN4_SetDigitalInput()  _TRISB5 = 1
/**
  @Summary
    Configures the GPIO pin, RB5, as an output.

  @Description
    Configures the GPIO pin, RB5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an output
    AN4_SetDigitalOutput();
    </code>

*/
#define AN4_SetDigitalOutput() _TRISB5 = 0
/**
  @Summary
    Sets the GPIO pin, RB6, high using LATB6.

  @Description
    Sets the GPIO pin, RB6, high using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 high (1)
    AN5_SetHigh();
    </code>

*/
#define AN5_SetHigh()          _LATB6 = 1
/**
  @Summary
    Sets the GPIO pin, RB6, low using LATB6.

  @Description
    Sets the GPIO pin, RB6, low using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 low (0)
    AN5_SetLow();
    </code>

*/
#define AN5_SetLow()           _LATB6 = 0
/**
  @Summary
    Toggles the GPIO pin, RB6, using LATB6.

  @Description
    Toggles the GPIO pin, RB6, using LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB6
    AN5_Toggle();
    </code>

*/
#define AN5_Toggle()           _LATB6 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB6.

  @Description
    Reads the value of the GPIO pin, RB6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB6
    postValue = AN5_GetValue();
    </code>

*/
#define AN5_GetValue()         _RB6
/**
  @Summary
    Configures the GPIO pin, RB6, as an input.

  @Description
    Configures the GPIO pin, RB6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an input
    AN5_SetDigitalInput();
    </code>

*/
#define AN5_SetDigitalInput()  _TRISB6 = 1
/**
  @Summary
    Configures the GPIO pin, RB6, as an output.

  @Description
    Configures the GPIO pin, RB6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an output
    AN5_SetDigitalOutput();
    </code>

*/
#define AN5_SetDigitalOutput() _TRISB6 = 0
/**
  @Summary
    Sets the GPIO pin, RB7, high using LATB7.

  @Description
    Sets the GPIO pin, RB7, high using LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB7 high (1)
    AN6_SetHigh();
    </code>

*/
#define AN6_SetHigh()          _LATB7 = 1
/**
  @Summary
    Sets the GPIO pin, RB7, low using LATB7.

  @Description
    Sets the GPIO pin, RB7, low using LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB7 low (0)
    AN6_SetLow();
    </code>

*/
#define AN6_SetLow()           _LATB7 = 0
/**
  @Summary
    Toggles the GPIO pin, RB7, using LATB7.

  @Description
    Toggles the GPIO pin, RB7, using LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB7
    AN6_Toggle();
    </code>

*/
#define AN6_Toggle()           _LATB7 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB7.

  @Description
    Reads the value of the GPIO pin, RB7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB7
    postValue = AN6_GetValue();
    </code>

*/
#define AN6_GetValue()         _RB7
/**
  @Summary
    Configures the GPIO pin, RB7, as an input.

  @Description
    Configures the GPIO pin, RB7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB7 as an input
    AN6_SetDigitalInput();
    </code>

*/
#define AN6_SetDigitalInput()  _TRISB7 = 1
/**
  @Summary
    Configures the GPIO pin, RB7, as an output.

  @Description
    Configures the GPIO pin, RB7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB7 as an output
    AN6_SetDigitalOutput();
    </code>

*/
#define AN6_SetDigitalOutput() _TRISB7 = 0
/**
  @Summary
    Sets the GPIO pin, RE0, high using LATE0.

  @Description
    Sets the GPIO pin, RE0, high using LATE0.

  @Preconditions
    The RE0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE0 high (1)
    RELAY1_SetHigh();
    </code>

*/
#define RELAY1_SetHigh()          _LATE0 = 1
/**
  @Summary
    Sets the GPIO pin, RE0, low using LATE0.

  @Description
    Sets the GPIO pin, RE0, low using LATE0.

  @Preconditions
    The RE0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE0 low (0)
    RELAY1_SetLow();
    </code>

*/
#define RELAY1_SetLow()           _LATE0 = 0
/**
  @Summary
    Toggles the GPIO pin, RE0, using LATE0.

  @Description
    Toggles the GPIO pin, RE0, using LATE0.

  @Preconditions
    The RE0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE0
    RELAY1_Toggle();
    </code>

*/
#define RELAY1_Toggle()           _LATE0 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE0.

  @Description
    Reads the value of the GPIO pin, RE0.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE0
    postValue = RELAY1_GetValue();
    </code>

*/
#define RELAY1_GetValue()         _RE0
/**
  @Summary
    Configures the GPIO pin, RE0, as an input.

  @Description
    Configures the GPIO pin, RE0, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE0 as an input
    RELAY1_SetDigitalInput();
    </code>

*/
#define RELAY1_SetDigitalInput()  _TRISE0 = 1
/**
  @Summary
    Configures the GPIO pin, RE0, as an output.

  @Description
    Configures the GPIO pin, RE0, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE0 as an output
    RELAY1_SetDigitalOutput();
    </code>

*/
#define RELAY1_SetDigitalOutput() _TRISE0 = 0
/**
  @Summary
    Sets the GPIO pin, RE1, high using LATE1.

  @Description
    Sets the GPIO pin, RE1, high using LATE1.

  @Preconditions
    The RE1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE1 high (1)
    RELAY2_SetHigh();
    </code>

*/
#define RELAY2_SetHigh()          _LATE1 = 1
/**
  @Summary
    Sets the GPIO pin, RE1, low using LATE1.

  @Description
    Sets the GPIO pin, RE1, low using LATE1.

  @Preconditions
    The RE1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE1 low (0)
    RELAY2_SetLow();
    </code>

*/
#define RELAY2_SetLow()           _LATE1 = 0
/**
  @Summary
    Toggles the GPIO pin, RE1, using LATE1.

  @Description
    Toggles the GPIO pin, RE1, using LATE1.

  @Preconditions
    The RE1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE1
    RELAY2_Toggle();
    </code>

*/
#define RELAY2_Toggle()           _LATE1 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE1.

  @Description
    Reads the value of the GPIO pin, RE1.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE1
    postValue = RELAY2_GetValue();
    </code>

*/
#define RELAY2_GetValue()         _RE1
/**
  @Summary
    Configures the GPIO pin, RE1, as an input.

  @Description
    Configures the GPIO pin, RE1, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE1 as an input
    RELAY2_SetDigitalInput();
    </code>

*/
#define RELAY2_SetDigitalInput()  _TRISE1 = 1
/**
  @Summary
    Configures the GPIO pin, RE1, as an output.

  @Description
    Configures the GPIO pin, RE1, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE1 as an output
    RELAY2_SetDigitalOutput();
    </code>

*/
#define RELAY2_SetDigitalOutput() _TRISE1 = 0
/**
  @Summary
    Sets the GPIO pin, RE2, high using LATE2.

  @Description
    Sets the GPIO pin, RE2, high using LATE2.

  @Preconditions
    The RE2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE2 high (1)
    RELAY3_SetHigh();
    </code>

*/
#define RELAY3_SetHigh()          _LATE2 = 1
/**
  @Summary
    Sets the GPIO pin, RE2, low using LATE2.

  @Description
    Sets the GPIO pin, RE2, low using LATE2.

  @Preconditions
    The RE2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE2 low (0)
    RELAY3_SetLow();
    </code>

*/
#define RELAY3_SetLow()           _LATE2 = 0
/**
  @Summary
    Toggles the GPIO pin, RE2, using LATE2.

  @Description
    Toggles the GPIO pin, RE2, using LATE2.

  @Preconditions
    The RE2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE2
    RELAY3_Toggle();
    </code>

*/
#define RELAY3_Toggle()           _LATE2 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE2.

  @Description
    Reads the value of the GPIO pin, RE2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE2
    postValue = RELAY3_GetValue();
    </code>

*/
#define RELAY3_GetValue()         _RE2
/**
  @Summary
    Configures the GPIO pin, RE2, as an input.

  @Description
    Configures the GPIO pin, RE2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE2 as an input
    RELAY3_SetDigitalInput();
    </code>

*/
#define RELAY3_SetDigitalInput()  _TRISE2 = 1
/**
  @Summary
    Configures the GPIO pin, RE2, as an output.

  @Description
    Configures the GPIO pin, RE2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE2 as an output
    RELAY3_SetDigitalOutput();
    </code>

*/
#define RELAY3_SetDigitalOutput() _TRISE2 = 0
/**
  @Summary
    Sets the GPIO pin, RE3, high using LATE3.

  @Description
    Sets the GPIO pin, RE3, high using LATE3.

  @Preconditions
    The RE3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE3 high (1)
    RELAY4_SetHigh();
    </code>

*/
#define RELAY4_SetHigh()          _LATE3 = 1
/**
  @Summary
    Sets the GPIO pin, RE3, low using LATE3.

  @Description
    Sets the GPIO pin, RE3, low using LATE3.

  @Preconditions
    The RE3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE3 low (0)
    RELAY4_SetLow();
    </code>

*/
#define RELAY4_SetLow()           _LATE3 = 0
/**
  @Summary
    Toggles the GPIO pin, RE3, using LATE3.

  @Description
    Toggles the GPIO pin, RE3, using LATE3.

  @Preconditions
    The RE3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE3
    RELAY4_Toggle();
    </code>

*/
#define RELAY4_Toggle()           _LATE3 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE3.

  @Description
    Reads the value of the GPIO pin, RE3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE3
    postValue = RELAY4_GetValue();
    </code>

*/
#define RELAY4_GetValue()         _RE3
/**
  @Summary
    Configures the GPIO pin, RE3, as an input.

  @Description
    Configures the GPIO pin, RE3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE3 as an input
    RELAY4_SetDigitalInput();
    </code>

*/
#define RELAY4_SetDigitalInput()  _TRISE3 = 1
/**
  @Summary
    Configures the GPIO pin, RE3, as an output.

  @Description
    Configures the GPIO pin, RE3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE3 as an output
    RELAY4_SetDigitalOutput();
    </code>

*/
#define RELAY4_SetDigitalOutput() _TRISE3 = 0
/**
  @Summary
    Sets the GPIO pin, RE4, high using LATE4.

  @Description
    Sets the GPIO pin, RE4, high using LATE4.

  @Preconditions
    The RE4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE4 high (1)
    RELAY5_SetHigh();
    </code>

*/
#define RELAY5_SetHigh()          _LATE4 = 1
/**
  @Summary
    Sets the GPIO pin, RE4, low using LATE4.

  @Description
    Sets the GPIO pin, RE4, low using LATE4.

  @Preconditions
    The RE4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE4 low (0)
    RELAY5_SetLow();
    </code>

*/
#define RELAY5_SetLow()           _LATE4 = 0
/**
  @Summary
    Toggles the GPIO pin, RE4, using LATE4.

  @Description
    Toggles the GPIO pin, RE4, using LATE4.

  @Preconditions
    The RE4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE4
    RELAY5_Toggle();
    </code>

*/
#define RELAY5_Toggle()           _LATE4 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE4.

  @Description
    Reads the value of the GPIO pin, RE4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE4
    postValue = RELAY5_GetValue();
    </code>

*/
#define RELAY5_GetValue()         _RE4
/**
  @Summary
    Configures the GPIO pin, RE4, as an input.

  @Description
    Configures the GPIO pin, RE4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE4 as an input
    RELAY5_SetDigitalInput();
    </code>

*/
#define RELAY5_SetDigitalInput()  _TRISE4 = 1
/**
  @Summary
    Configures the GPIO pin, RE4, as an output.

  @Description
    Configures the GPIO pin, RE4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE4 as an output
    RELAY5_SetDigitalOutput();
    </code>

*/
#define RELAY5_SetDigitalOutput() _TRISE4 = 0
/**
  @Summary
    Sets the GPIO pin, RE5, high using LATE5.

  @Description
    Sets the GPIO pin, RE5, high using LATE5.

  @Preconditions
    The RE5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE5 high (1)
    RELAY6_SetHigh();
    </code>

*/
#define RELAY6_SetHigh()          _LATE5 = 1
/**
  @Summary
    Sets the GPIO pin, RE5, low using LATE5.

  @Description
    Sets the GPIO pin, RE5, low using LATE5.

  @Preconditions
    The RE5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE5 low (0)
    RELAY6_SetLow();
    </code>

*/
#define RELAY6_SetLow()           _LATE5 = 0
/**
  @Summary
    Toggles the GPIO pin, RE5, using LATE5.

  @Description
    Toggles the GPIO pin, RE5, using LATE5.

  @Preconditions
    The RE5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE5
    RELAY6_Toggle();
    </code>

*/
#define RELAY6_Toggle()           _LATE5 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE5.

  @Description
    Reads the value of the GPIO pin, RE5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE5
    postValue = RELAY6_GetValue();
    </code>

*/
#define RELAY6_GetValue()         _RE5
/**
  @Summary
    Configures the GPIO pin, RE5, as an input.

  @Description
    Configures the GPIO pin, RE5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE5 as an input
    RELAY6_SetDigitalInput();
    </code>

*/
#define RELAY6_SetDigitalInput()  _TRISE5 = 1
/**
  @Summary
    Configures the GPIO pin, RE5, as an output.

  @Description
    Configures the GPIO pin, RE5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE5 as an output
    RELAY6_SetDigitalOutput();
    </code>

*/
#define RELAY6_SetDigitalOutput() _TRISE5 = 0
/**
  @Summary
    Sets the GPIO pin, RE6, high using LATE6.

  @Description
    Sets the GPIO pin, RE6, high using LATE6.

  @Preconditions
    The RE6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE6 high (1)
    RELAY7_SetHigh();
    </code>

*/
#define RELAY7_SetHigh()          _LATE6 = 1
/**
  @Summary
    Sets the GPIO pin, RE6, low using LATE6.

  @Description
    Sets the GPIO pin, RE6, low using LATE6.

  @Preconditions
    The RE6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE6 low (0)
    RELAY7_SetLow();
    </code>

*/
#define RELAY7_SetLow()           _LATE6 = 0
/**
  @Summary
    Toggles the GPIO pin, RE6, using LATE6.

  @Description
    Toggles the GPIO pin, RE6, using LATE6.

  @Preconditions
    The RE6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE6
    RELAY7_Toggle();
    </code>

*/
#define RELAY7_Toggle()           _LATE6 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE6.

  @Description
    Reads the value of the GPIO pin, RE6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE6
    postValue = RELAY7_GetValue();
    </code>

*/
#define RELAY7_GetValue()         _RE6
/**
  @Summary
    Configures the GPIO pin, RE6, as an input.

  @Description
    Configures the GPIO pin, RE6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE6 as an input
    RELAY7_SetDigitalInput();
    </code>

*/
#define RELAY7_SetDigitalInput()  _TRISE6 = 1
/**
  @Summary
    Configures the GPIO pin, RE6, as an output.

  @Description
    Configures the GPIO pin, RE6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE6 as an output
    RELAY7_SetDigitalOutput();
    </code>

*/
#define RELAY7_SetDigitalOutput() _TRISE6 = 0
/**
  @Summary
    Sets the GPIO pin, RE7, high using LATE7.

  @Description
    Sets the GPIO pin, RE7, high using LATE7.

  @Preconditions
    The RE7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE7 high (1)
    RELAY8_SetHigh();
    </code>

*/
#define RELAY8_SetHigh()          _LATE7 = 1
/**
  @Summary
    Sets the GPIO pin, RE7, low using LATE7.

  @Description
    Sets the GPIO pin, RE7, low using LATE7.

  @Preconditions
    The RE7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE7 low (0)
    RELAY8_SetLow();
    </code>

*/
#define RELAY8_SetLow()           _LATE7 = 0
/**
  @Summary
    Toggles the GPIO pin, RE7, using LATE7.

  @Description
    Toggles the GPIO pin, RE7, using LATE7.

  @Preconditions
    The RE7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE7
    RELAY8_Toggle();
    </code>

*/
#define RELAY8_Toggle()           _LATE7 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE7.

  @Description
    Reads the value of the GPIO pin, RE7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE7
    postValue = RELAY8_GetValue();
    </code>

*/
#define RELAY8_GetValue()         _RE7
/**
  @Summary
    Configures the GPIO pin, RE7, as an input.

  @Description
    Configures the GPIO pin, RE7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE7 as an input
    RELAY8_SetDigitalInput();
    </code>

*/
#define RELAY8_SetDigitalInput()  _TRISE7 = 1
/**
  @Summary
    Configures the GPIO pin, RE7, as an output.

  @Description
    Configures the GPIO pin, RE7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE7 as an output
    RELAY8_SetDigitalOutput();
    </code>

*/
#define RELAY8_SetDigitalOutput() _TRISE7 = 0
/**
  @Summary
    Sets the GPIO pin, RE8, high using LATE8.

  @Description
    Sets the GPIO pin, RE8, high using LATE8.

  @Preconditions
    The RE8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE8 high (1)
    ROW3_SetHigh();
    </code>

*/
#define ROW3_SetHigh()          _LATE8 = 1
/**
  @Summary
    Sets the GPIO pin, RE8, low using LATE8.

  @Description
    Sets the GPIO pin, RE8, low using LATE8.

  @Preconditions
    The RE8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE8 low (0)
    ROW3_SetLow();
    </code>

*/
#define ROW3_SetLow()           _LATE8 = 0
/**
  @Summary
    Toggles the GPIO pin, RE8, using LATE8.

  @Description
    Toggles the GPIO pin, RE8, using LATE8.

  @Preconditions
    The RE8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE8
    ROW3_Toggle();
    </code>

*/
#define ROW3_Toggle()           _LATE8 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE8.

  @Description
    Reads the value of the GPIO pin, RE8.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE8
    postValue = ROW3_GetValue();
    </code>

*/
#define ROW3_GetValue()         _RE8
/**
  @Summary
    Configures the GPIO pin, RE8, as an input.

  @Description
    Configures the GPIO pin, RE8, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE8 as an input
    ROW3_SetDigitalInput();
    </code>

*/
#define ROW3_SetDigitalInput()  _TRISE8 = 1
/**
  @Summary
    Configures the GPIO pin, RE8, as an output.

  @Description
    Configures the GPIO pin, RE8, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE8 as an output
    ROW3_SetDigitalOutput();
    </code>

*/
#define ROW3_SetDigitalOutput() _TRISE8 = 0
/**
  @Summary
    Sets the GPIO pin, RE9, high using LATE9.

  @Description
    Sets the GPIO pin, RE9, high using LATE9.

  @Preconditions
    The RE9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE9 high (1)
    ROW4_SetHigh();
    </code>

*/
#define ROW4_SetHigh()          _LATE9 = 1
/**
  @Summary
    Sets the GPIO pin, RE9, low using LATE9.

  @Description
    Sets the GPIO pin, RE9, low using LATE9.

  @Preconditions
    The RE9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RE9 low (0)
    ROW4_SetLow();
    </code>

*/
#define ROW4_SetLow()           _LATE9 = 0
/**
  @Summary
    Toggles the GPIO pin, RE9, using LATE9.

  @Description
    Toggles the GPIO pin, RE9, using LATE9.

  @Preconditions
    The RE9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RE9
    ROW4_Toggle();
    </code>

*/
#define ROW4_Toggle()           _LATE9 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RE9.

  @Description
    Reads the value of the GPIO pin, RE9.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RE9
    postValue = ROW4_GetValue();
    </code>

*/
#define ROW4_GetValue()         _RE9
/**
  @Summary
    Configures the GPIO pin, RE9, as an input.

  @Description
    Configures the GPIO pin, RE9, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE9 as an input
    ROW4_SetDigitalInput();
    </code>

*/
#define ROW4_SetDigitalInput()  _TRISE9 = 1
/**
  @Summary
    Configures the GPIO pin, RE9, as an output.

  @Description
    Configures the GPIO pin, RE9, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RE9 as an output
    ROW4_SetDigitalOutput();
    </code>

*/
#define ROW4_SetDigitalOutput() _TRISE9 = 0
/**
  @Summary
    Sets the GPIO pin, RG15, high using LATG15.

  @Description
    Sets the GPIO pin, RG15, high using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG15 high (1)
    ROW5_SetHigh();
    </code>

*/
#define ROW5_SetHigh()          _LATG15 = 1
/**
  @Summary
    Sets the GPIO pin, RG15, low using LATG15.

  @Description
    Sets the GPIO pin, RG15, low using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG15 low (0)
    ROW5_SetLow();
    </code>

*/
#define ROW5_SetLow()           _LATG15 = 0
/**
  @Summary
    Toggles the GPIO pin, RG15, using LATG15.

  @Description
    Toggles the GPIO pin, RG15, using LATG15.

  @Preconditions
    The RG15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG15
    ROW5_Toggle();
    </code>

*/
#define ROW5_Toggle()           _LATG15 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG15.

  @Description
    Reads the value of the GPIO pin, RG15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG15
    postValue = ROW5_GetValue();
    </code>

*/
#define ROW5_GetValue()         _RG15
/**
  @Summary
    Configures the GPIO pin, RG15, as an input.

  @Description
    Configures the GPIO pin, RG15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG15 as an input
    ROW5_SetDigitalInput();
    </code>

*/
#define ROW5_SetDigitalInput()  _TRISG15 = 1
/**
  @Summary
    Configures the GPIO pin, RG15, as an output.

  @Description
    Configures the GPIO pin, RG15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG15 as an output
    ROW5_SetDigitalOutput();
    </code>

*/
#define ROW5_SetDigitalOutput() _TRISG15 = 0

/**
    Section: Function Prototypes
*/
/**
  @Summary
    Configures the pin settings of the PIC24FJ128GA310
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    void SYSTEM_Initialize(void)
    {
        // Other initializers are called from this function
        PIN_MANAGER_Initialize();
    }
    </code>

*/
void PIN_MANAGER_Initialize (void);


#endif
