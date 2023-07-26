//This file contains pin definations and alias

#ifndef PINS_H_
#define PINS_H_

#define _XTAL_FREQ 4000000

#define Transmitter PORTA
#define Keyboard PORTB  //Upper nibble rows ; lower nibble columns ; RB3 column 1; RB4 row 1
#define Address PORTC
#define Display PORTD
#define LED PORTE
#define On 1
#define Off 0

#endif
