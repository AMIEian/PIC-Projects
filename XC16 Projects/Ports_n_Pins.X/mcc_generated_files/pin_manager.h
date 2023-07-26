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

// get/set IN_0 aliases
#define IN_0_TRIS                 TRISAbits.TRISA1
#define IN_0_LAT                  LATAbits.LATA1
#define IN_0_PORT                 PORTAbits.RA1
#define IN_0_ANS                  ANSELbits.ANS1
#define IN_0_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define IN_0_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define IN_0_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define IN_0_GetValue()           PORTAbits.RA1
#define IN_0_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define IN_0_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define IN_0_SetAnalogMode()      do { ANSELbits.ANS1 = 1; } while(0)
#define IN_0_SetDigitalMode()     do { ANSELbits.ANS1 = 0; } while(0)

// get/set OUT_0 aliases
#define OUT_0_TRIS                 TRISAbits.TRISA2
#define OUT_0_LAT                  LATAbits.LATA2
#define OUT_0_PORT                 PORTAbits.RA2
#define OUT_0_ANS                  ANSELbits.ANS2
#define OUT_0_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define OUT_0_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define OUT_0_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define OUT_0_GetValue()           PORTAbits.RA2
#define OUT_0_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define OUT_0_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define OUT_0_SetAnalogMode()      do { ANSELbits.ANS2 = 1; } while(0)
#define OUT_0_SetDigitalMode()     do { ANSELbits.ANS2 = 0; } while(0)

// get/set IN_1 aliases
#define IN_1_TRIS                 TRISAbits.TRISA3
#define IN_1_LAT                  LATAbits.LATA3
#define IN_1_PORT                 PORTAbits.RA3
#define IN_1_ANS                  ANSELbits.ANS3
#define IN_1_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define IN_1_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define IN_1_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define IN_1_GetValue()           PORTAbits.RA3
#define IN_1_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define IN_1_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define IN_1_SetAnalogMode()      do { ANSELbits.ANS3 = 1; } while(0)
#define IN_1_SetDigitalMode()     do { ANSELbits.ANS3 = 0; } while(0)

// get/set OUT_1 aliases
#define OUT_1_TRIS                 TRISAbits.TRISA4
#define OUT_1_LAT                  LATAbits.LATA4
#define OUT_1_PORT                 PORTAbits.RA4
#define OUT_1_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define OUT_1_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define OUT_1_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define OUT_1_GetValue()           PORTAbits.RA4
#define OUT_1_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define OUT_1_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)

// get/set IN_2 aliases
#define IN_2_TRIS                 TRISBbits.TRISB1
#define IN_2_LAT                  LATBbits.LATB1
#define IN_2_PORT                 PORTBbits.RB1
#define IN_2_WPU                  WPUBbits.WPUB1
#define IN_2_ANS                  ANSELHbits.ANS10
#define IN_2_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define IN_2_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define IN_2_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define IN_2_GetValue()           PORTBbits.RB1
#define IN_2_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define IN_2_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define IN_2_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define IN_2_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define IN_2_SetAnalogMode()      do { ANSELHbits.ANS10 = 1; } while(0)
#define IN_2_SetDigitalMode()     do { ANSELHbits.ANS10 = 0; } while(0)

// get/set OUT_2 aliases
#define OUT_2_TRIS                 TRISBbits.TRISB2
#define OUT_2_LAT                  LATBbits.LATB2
#define OUT_2_PORT                 PORTBbits.RB2
#define OUT_2_WPU                  WPUBbits.WPUB2
#define OUT_2_ANS                  ANSELHbits.ANS8
#define OUT_2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define OUT_2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define OUT_2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define OUT_2_GetValue()           PORTBbits.RB2
#define OUT_2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define OUT_2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define OUT_2_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define OUT_2_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define OUT_2_SetAnalogMode()      do { ANSELHbits.ANS8 = 1; } while(0)
#define OUT_2_SetDigitalMode()     do { ANSELHbits.ANS8 = 0; } while(0)

// get/set IN_3 aliases
#define IN_3_TRIS                 TRISBbits.TRISB3
#define IN_3_LAT                  LATBbits.LATB3
#define IN_3_PORT                 PORTBbits.RB3
#define IN_3_WPU                  WPUBbits.WPUB3
#define IN_3_ANS                  ANSELHbits.ANS9
#define IN_3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define IN_3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define IN_3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define IN_3_GetValue()           PORTBbits.RB3
#define IN_3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define IN_3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define IN_3_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define IN_3_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define IN_3_SetAnalogMode()      do { ANSELHbits.ANS9 = 1; } while(0)
#define IN_3_SetDigitalMode()     do { ANSELHbits.ANS9 = 0; } while(0)

// get/set OUT_3 aliases
#define OUT_3_TRIS                 TRISBbits.TRISB4
#define OUT_3_LAT                  LATBbits.LATB4
#define OUT_3_PORT                 PORTBbits.RB4
#define OUT_3_WPU                  WPUBbits.WPUB4
#define OUT_3_ANS                  ANSELHbits.ANS11
#define OUT_3_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define OUT_3_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define OUT_3_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define OUT_3_GetValue()           PORTBbits.RB4
#define OUT_3_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define OUT_3_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define OUT_3_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define OUT_3_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define OUT_3_SetAnalogMode()      do { ANSELHbits.ANS11 = 1; } while(0)
#define OUT_3_SetDigitalMode()     do { ANSELHbits.ANS11 = 0; } while(0)

// get/set IN_4 aliases
#define IN_4_TRIS                 TRISCbits.TRISC1
#define IN_4_LAT                  LATCbits.LATC1
#define IN_4_PORT                 PORTCbits.RC1
#define IN_4_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define IN_4_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define IN_4_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define IN_4_GetValue()           PORTCbits.RC1
#define IN_4_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define IN_4_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)

// get/set OUT_4 aliases
#define OUT_4_TRIS                 TRISCbits.TRISC2
#define OUT_4_LAT                  LATCbits.LATC2
#define OUT_4_PORT                 PORTCbits.RC2
#define OUT_4_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define OUT_4_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define OUT_4_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define OUT_4_GetValue()           PORTCbits.RC2
#define OUT_4_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define OUT_4_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)

// get/set IN_5 aliases
#define IN_5_TRIS                 TRISCbits.TRISC3
#define IN_5_LAT                  LATCbits.LATC3
#define IN_5_PORT                 PORTCbits.RC3
#define IN_5_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define IN_5_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define IN_5_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define IN_5_GetValue()           PORTCbits.RC3
#define IN_5_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define IN_5_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)

// get/set OUT_5 aliases
#define OUT_5_TRIS                 TRISCbits.TRISC4
#define OUT_5_LAT                  LATCbits.LATC4
#define OUT_5_PORT                 PORTCbits.RC4
#define OUT_5_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define OUT_5_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define OUT_5_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define OUT_5_GetValue()           PORTCbits.RC4
#define OUT_5_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define OUT_5_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)

// get/set IN_6 aliases
#define IN_6_TRIS                 TRISDbits.TRISD1
#define IN_6_LAT                  LATDbits.LATD1
#define IN_6_PORT                 PORTDbits.RD1
#define IN_6_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define IN_6_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define IN_6_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define IN_6_GetValue()           PORTDbits.RD1
#define IN_6_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define IN_6_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)

// get/set OUT_6 aliases
#define OUT_6_TRIS                 TRISDbits.TRISD2
#define OUT_6_LAT                  LATDbits.LATD2
#define OUT_6_PORT                 PORTDbits.RD2
#define OUT_6_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define OUT_6_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define OUT_6_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define OUT_6_GetValue()           PORTDbits.RD2
#define OUT_6_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define OUT_6_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)

// get/set IN_7 aliases
#define IN_7_TRIS                 TRISDbits.TRISD3
#define IN_7_LAT                  LATDbits.LATD3
#define IN_7_PORT                 PORTDbits.RD3
#define IN_7_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define IN_7_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define IN_7_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define IN_7_GetValue()           PORTDbits.RD3
#define IN_7_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define IN_7_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)

// get/set OUT_7 aliases
#define OUT_7_TRIS                 TRISDbits.TRISD4
#define OUT_7_LAT                  LATDbits.LATD4
#define OUT_7_PORT                 PORTDbits.RD4
#define OUT_7_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define OUT_7_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define OUT_7_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define OUT_7_GetValue()           PORTDbits.RD4
#define OUT_7_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define OUT_7_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)

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