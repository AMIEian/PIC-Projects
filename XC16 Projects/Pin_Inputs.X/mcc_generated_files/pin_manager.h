/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.76
        Device            :  PIC18F45K20
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.00
        MPLAB 	          :  MPLAB X 5.10	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set IP_0 aliases
#define IP_0_TRIS                 TRISAbits.TRISA0
#define IP_0_LAT                  LATAbits.LATA0
#define IP_0_PORT                 PORTAbits.RA0
#define IP_0_ANS                  ANSELbits.ANS0
#define IP_0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define IP_0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define IP_0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define IP_0_GetValue()           PORTAbits.RA0
#define IP_0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define IP_0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define IP_0_SetAnalogMode()      do { ANSELbits.ANS0 = 1; } while(0)
#define IP_0_SetDigitalMode()     do { ANSELbits.ANS0 = 0; } while(0)

// get/set IP_1 aliases
#define IP_1_TRIS                 TRISAbits.TRISA7
#define IP_1_LAT                  LATAbits.LATA7
#define IP_1_PORT                 PORTAbits.RA7
#define IP_1_SetHigh()            do { LATAbits.LATA7 = 1; } while(0)
#define IP_1_SetLow()             do { LATAbits.LATA7 = 0; } while(0)
#define IP_1_Toggle()             do { LATAbits.LATA7 = ~LATAbits.LATA7; } while(0)
#define IP_1_GetValue()           PORTAbits.RA7
#define IP_1_SetDigitalInput()    do { TRISAbits.TRISA7 = 1; } while(0)
#define IP_1_SetDigitalOutput()   do { TRISAbits.TRISA7 = 0; } while(0)

// get/set IP_2 aliases
#define IP_2_TRIS                 TRISBbits.TRISB0
#define IP_2_LAT                  LATBbits.LATB0
#define IP_2_PORT                 PORTBbits.RB0
#define IP_2_WPU                  WPUBbits.WPUB0
#define IP_2_ANS                  ANSELHbits.ANS12
#define IP_2_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define IP_2_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define IP_2_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define IP_2_GetValue()           PORTBbits.RB0
#define IP_2_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define IP_2_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define IP_2_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define IP_2_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define IP_2_SetAnalogMode()      do { ANSELHbits.ANS12 = 1; } while(0)
#define IP_2_SetDigitalMode()     do { ANSELHbits.ANS12 = 0; } while(0)

// get/set IP_3 aliases
#define IP_3_TRIS                 TRISBbits.TRISB7
#define IP_3_LAT                  LATBbits.LATB7
#define IP_3_PORT                 PORTBbits.RB7
#define IP_3_WPU                  WPUBbits.WPUB7
#define IP_3_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define IP_3_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define IP_3_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define IP_3_GetValue()           PORTBbits.RB7
#define IP_3_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define IP_3_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define IP_3_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define IP_3_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set IP_4 aliases
#define IP_4_TRIS                 TRISCbits.TRISC0
#define IP_4_LAT                  LATCbits.LATC0
#define IP_4_PORT                 PORTCbits.RC0
#define IP_4_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define IP_4_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define IP_4_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define IP_4_GetValue()           PORTCbits.RC0
#define IP_4_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define IP_4_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)

// get/set RXR aliases
#define RXR_TRIS                 TRISCbits.TRISC7
#define RXR_LAT                  LATCbits.LATC7
#define RXR_PORT                 PORTCbits.RC7
#define RXR_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RXR_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RXR_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RXR_GetValue()           PORTCbits.RC7
#define RXR_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RXR_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)

// get/set IP_6 aliases
#define IP_6_TRIS                 TRISDbits.TRISD0
#define IP_6_LAT                  LATDbits.LATD0
#define IP_6_PORT                 PORTDbits.RD0
#define IP_6_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define IP_6_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define IP_6_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define IP_6_GetValue()           PORTDbits.RD0
#define IP_6_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define IP_6_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)

// get/set IP_7 aliases
#define IP_7_TRIS                 TRISDbits.TRISD7
#define IP_7_LAT                  LATDbits.LATD7
#define IP_7_PORT                 PORTDbits.RD7
#define IP_7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define IP_7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define IP_7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define IP_7_GetValue()           PORTDbits.RD7
#define IP_7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define IP_7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)

// get/set IP_5 aliases
#define IP_5_TRIS                 TRISEbits.TRISE0
#define IP_5_LAT                  LATEbits.LATE0
#define IP_5_PORT                 PORTEbits.RE0
#define IP_5_ANS                  ANSELbits.ANS5
#define IP_5_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define IP_5_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define IP_5_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define IP_5_GetValue()           PORTEbits.RE0
#define IP_5_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define IP_5_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define IP_5_SetAnalogMode()      do { ANSELbits.ANS5 = 1; } while(0)
#define IP_5_SetDigitalMode()     do { ANSELbits.ANS5 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/