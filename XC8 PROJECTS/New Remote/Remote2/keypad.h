#ifndef KEYPAD_H_
#define KEYPAD_H_

//Constants
char Keyboard_Keys [4][4] = {
                              0x01, 0x04, 0x07, 0x0B,
                              0x02, 0x05, 0x08, 0x00,
                              0x03, 0x06, 0x09, 0x0C,
                              2, 3, 4, 5
                            };                             

//Public functions to handel audiio IC
void initKeyboard();
char getKeyboardInput();

#endif
