//This file contains pin definations and alias
/*
Pin Configuration -
PORTA 0,1,2,3 = Audio Address 
PORTA 5 = SBT

PORTB 0 = Interrupt / VT
PORTB 2 = Audio Stop 
PORTB 4,5,6,7 = Receiver Data 

PORTC 0 = Common for Units displaying 7 segment 
PORTC 1 = Common for Tens displaying 7 segment 
PORTC 2 = Common for Hundreds displaying 7 segment
PORTC 4,5,6,7 = BCD To 7 Segments IC
*/

#ifndef PINS_H_
#define PINS_H_

//PORTA all input
#define Receiver PORTA

//PORTB 0-3 inputs 4-7 outputs
// Define 74HC595 connections.
#define TE RB0
#define LED RB4
#define Serial_Data RB5
#define SH_Clk RB6
#define ST_Clk RB7

//PORTC 0-4 outputs 5-7 inputs
#define Audio_Address PORTC   //Lower Nibble of PORTC
#define SBT RC4
#define Audio_Stop RC5

#define ON 1
#define OFF 0

#endif