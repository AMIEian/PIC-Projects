#ifndef ADXL335_H
#define	ADXL335_H

#ifdef	__cplusplus
extern "C" {
#endif

#define X_Input 0
#define Y_Input 1
#define Z_Input 2

float GetXAccl();
float GetYAccl();
float GetZAccl();


#ifdef	__cplusplus
}
#endif

#endif

