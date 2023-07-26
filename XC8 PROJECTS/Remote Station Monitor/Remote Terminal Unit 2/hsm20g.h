#ifndef HSM20G_H_
#define HSM20G_H_

//Variables
double t1, h1, t2, h2;
unsigned int Temp1;
unsigned int Hum1;
unsigned int Temp2;
unsigned int Hum2;

//Functions
void get_current_readings();
double voltage_to_temp(float voltage);
double voltage_to_hum(float voltage);
int float_to_int(double value);

#endif
