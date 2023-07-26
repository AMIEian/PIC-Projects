//This file contains function definations for cautery operations

#ifndef CAUTERY_H_
#define CAUTERY_H_

int Cut_Power;
int Coag_Power;
int Bi_Power;

char Cut_Mode;
char Coag_Mode;
char Bi_Mode;

unsigned char train;

void init_Values();
void cut_Operation();
void coag_Operation();
void bi_Operation();
void liga_Operation();
void load_Digipot(int Power, char Mode);

#endif
