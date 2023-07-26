#ifndef MOTOR_H_
#define MOTOR_H_

//Variables to indicate motor's status
unsigned char MOTOR_FLAG, LP_FLAG;

//Functions to handel motor related tasks
char phase_check();
void motor_start();
void motor_stop();

#endif