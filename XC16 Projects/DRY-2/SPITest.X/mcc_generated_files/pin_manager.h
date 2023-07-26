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
    Sets the GPIO pin, RG12, high using LATG12.

  @Description
    Sets the GPIO pin, RG12, high using LATG12.

  @Preconditions
    The RG12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG12 high (1)
    DAC2_SetHigh();
    </code>

*/
#define DAC2_SetHigh()          _LATG12 = 1
/**
  @Summary
    Sets the GPIO pin, RG12, low using LATG12.

  @Description
    Sets the GPIO pin, RG12, low using LATG12.

  @Preconditions
    The RG12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG12 low (0)
    DAC2_SetLow();
    </code>

*/
#define DAC2_SetLow()           _LATG12 = 0
/**
  @Summary
    Toggles the GPIO pin, RG12, using LATG12.

  @Description
    Toggles the GPIO pin, RG12, using LATG12.

  @Preconditions
    The RG12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG12
    DAC2_Toggle();
    </code>

*/
#define DAC2_Toggle()           _LATG12 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG12.

  @Description
    Reads the value of the GPIO pin, RG12.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG12
    postValue = DAC2_GetValue();
    </code>

*/
#define DAC2_GetValue()         _RG12
/**
  @Summary
    Configures the GPIO pin, RG12, as an input.

  @Description
    Configures the GPIO pin, RG12, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG12 as an input
    DAC2_SetDigitalInput();
    </code>

*/
#define DAC2_SetDigitalInput()  _TRISG12 = 1
/**
  @Summary
    Configures the GPIO pin, RG12, as an output.

  @Description
    Configures the GPIO pin, RG12, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG12 as an output
    DAC2_SetDigitalOutput();
    </code>

*/
#define DAC2_SetDigitalOutput() _TRISG12 = 0
/**
  @Summary
    Sets the GPIO pin, RG13, high using LATG13.

  @Description
    Sets the GPIO pin, RG13, high using LATG13.

  @Preconditions
    The RG13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG13 high (1)
    DAC3_SetHigh();
    </code>

*/
#define DAC3_SetHigh()          _LATG13 = 1
/**
  @Summary
    Sets the GPIO pin, RG13, low using LATG13.

  @Description
    Sets the GPIO pin, RG13, low using LATG13.

  @Preconditions
    The RG13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG13 low (0)
    DAC3_SetLow();
    </code>

*/
#define DAC3_SetLow()           _LATG13 = 0
/**
  @Summary
    Toggles the GPIO pin, RG13, using LATG13.

  @Description
    Toggles the GPIO pin, RG13, using LATG13.

  @Preconditions
    The RG13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG13
    DAC3_Toggle();
    </code>

*/
#define DAC3_Toggle()           _LATG13 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG13.

  @Description
    Reads the value of the GPIO pin, RG13.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG13
    postValue = DAC3_GetValue();
    </code>

*/
#define DAC3_GetValue()         _RG13
/**
  @Summary
    Configures the GPIO pin, RG13, as an input.

  @Description
    Configures the GPIO pin, RG13, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG13 as an input
    DAC3_SetDigitalInput();
    </code>

*/
#define DAC3_SetDigitalInput()  _TRISG13 = 1
/**
  @Summary
    Configures the GPIO pin, RG13, as an output.

  @Description
    Configures the GPIO pin, RG13, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG13 as an output
    DAC3_SetDigitalOutput();
    </code>

*/
#define DAC3_SetDigitalOutput() _TRISG13 = 0
/**
  @Summary
    Sets the GPIO pin, RG6, high using LATG6.

  @Description
    Sets the GPIO pin, RG6, high using LATG6.

  @Preconditions
    The RG6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG6 high (1)
    SCL_SetHigh();
    </code>

*/
#define SCL_SetHigh()          _LATG6 = 1
/**
  @Summary
    Sets the GPIO pin, RG6, low using LATG6.

  @Description
    Sets the GPIO pin, RG6, low using LATG6.

  @Preconditions
    The RG6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG6 low (0)
    SCL_SetLow();
    </code>

*/
#define SCL_SetLow()           _LATG6 = 0
/**
  @Summary
    Toggles the GPIO pin, RG6, using LATG6.

  @Description
    Toggles the GPIO pin, RG6, using LATG6.

  @Preconditions
    The RG6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG6
    SCL_Toggle();
    </code>

*/
#define SCL_Toggle()           _LATG6 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG6.

  @Description
    Reads the value of the GPIO pin, RG6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG6
    postValue = SCL_GetValue();
    </code>

*/
#define SCL_GetValue()         _RG6
/**
  @Summary
    Configures the GPIO pin, RG6, as an input.

  @Description
    Configures the GPIO pin, RG6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG6 as an input
    SCL_SetDigitalInput();
    </code>

*/
#define SCL_SetDigitalInput()  _TRISG6 = 1
/**
  @Summary
    Configures the GPIO pin, RG6, as an output.

  @Description
    Configures the GPIO pin, RG6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG6 as an output
    SCL_SetDigitalOutput();
    </code>

*/
#define SCL_SetDigitalOutput() _TRISG6 = 0
/**
  @Summary
    Sets the GPIO pin, RG8, high using LATG8.

  @Description
    Sets the GPIO pin, RG8, high using LATG8.

  @Preconditions
    The RG8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG8 high (1)
    SDO_SetHigh();
    </code>

*/
#define SDO_SetHigh()          _LATG8 = 1
/**
  @Summary
    Sets the GPIO pin, RG8, low using LATG8.

  @Description
    Sets the GPIO pin, RG8, low using LATG8.

  @Preconditions
    The RG8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG8 low (0)
    SDO_SetLow();
    </code>

*/
#define SDO_SetLow()           _LATG8 = 0
/**
  @Summary
    Toggles the GPIO pin, RG8, using LATG8.

  @Description
    Toggles the GPIO pin, RG8, using LATG8.

  @Preconditions
    The RG8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG8
    SDO_Toggle();
    </code>

*/
#define SDO_Toggle()           _LATG8 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG8.

  @Description
    Reads the value of the GPIO pin, RG8.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG8
    postValue = SDO_GetValue();
    </code>

*/
#define SDO_GetValue()         _RG8
/**
  @Summary
    Configures the GPIO pin, RG8, as an input.

  @Description
    Configures the GPIO pin, RG8, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG8 as an input
    SDO_SetDigitalInput();
    </code>

*/
#define SDO_SetDigitalInput()  _TRISG8 = 1
/**
  @Summary
    Configures the GPIO pin, RG8, as an output.

  @Description
    Configures the GPIO pin, RG8, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG8 as an output
    SDO_SetDigitalOutput();
    </code>

*/
#define SDO_SetDigitalOutput() _TRISG8 = 0
/**
  @Summary
    Sets the GPIO pin, RG9, high using LATG9.

  @Description
    Sets the GPIO pin, RG9, high using LATG9.

  @Preconditions
    The RG9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG9 high (1)
    DAC1_SetHigh();
    </code>

*/
#define DAC1_SetHigh()          _LATG9 = 1
/**
  @Summary
    Sets the GPIO pin, RG9, low using LATG9.

  @Description
    Sets the GPIO pin, RG9, low using LATG9.

  @Preconditions
    The RG9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RG9 low (0)
    DAC1_SetLow();
    </code>

*/
#define DAC1_SetLow()           _LATG9 = 0
/**
  @Summary
    Toggles the GPIO pin, RG9, using LATG9.

  @Description
    Toggles the GPIO pin, RG9, using LATG9.

  @Preconditions
    The RG9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RG9
    DAC1_Toggle();
    </code>

*/
#define DAC1_Toggle()           _LATG9 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RG9.

  @Description
    Reads the value of the GPIO pin, RG9.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RG9
    postValue = DAC1_GetValue();
    </code>

*/
#define DAC1_GetValue()         _RG9
/**
  @Summary
    Configures the GPIO pin, RG9, as an input.

  @Description
    Configures the GPIO pin, RG9, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG9 as an input
    DAC1_SetDigitalInput();
    </code>

*/
#define DAC1_SetDigitalInput()  _TRISG9 = 1
/**
  @Summary
    Configures the GPIO pin, RG9, as an output.

  @Description
    Configures the GPIO pin, RG9, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RG9 as an output
    DAC1_SetDigitalOutput();
    </code>

*/
#define DAC1_SetDigitalOutput() _TRISG9 = 0

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
