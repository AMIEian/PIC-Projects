#ifndef HSM20G_H_
#define HSM20G_H_

//Variables
unsigned int Temp1;
unsigned int Hum1;
unsigned int Temp2;
unsigned int Hum2;

//Functions
void get_current_readings();
unsigned int voltage_to_temp(float voltage);
unsigned int voltage_to_hum(float voltage);

#endif
