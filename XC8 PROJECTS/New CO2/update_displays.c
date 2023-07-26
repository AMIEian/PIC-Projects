#include <xc.h>
#include <stdio.h>
#include "definitions.h"

void update_set_press_display(void) {
    
    sprintf(temparray, "%d", set_press_val);
	
	if ( set_press_val <10 ) {
        disparray1[S_PRH] = 0xFF ;
        disparray1[S_PRL] = segledcc [(unsigned int) temparray[0] - '0'];
	} 
	else {
		disparray1[S_PRH] = segledcc [(unsigned int) temparray[0] - '0'];
        disparray1[S_PRL] = segledcc [(unsigned int) temparray[1] - '0'];
   }
    	
}
/*----------------------------------------------------------------------------------------------------*/
void update_actual_press_display(void) {
	
	sprintf(temparray, "%d", act_press_val);

    if (act_press_val < 10) {
        disparray1[A_PRH] = 0x7F;
        disparray1[A_PRL] = segledcc [(unsigned int) temparray[0] - '0'];
	} 
	else {
		disparray1[A_PRH] = segledcc [(unsigned int) temparray[0] - '0'];
        disparray1[A_PRL] = segledcc [(unsigned int) temparray[1] - '0'];
   }
	
}
/*----------------------------------------------------------------------------------------------------*/
void update_set_flw_display(void) {
	
	sprintf(temparray, "%d", set_flw_val);

    if (set_flw_val < 10) {
        disparray1[S_FLH] = 0xFF;
        disparray1[S_FLL] = segledcc [(unsigned int) temparray[0] - '0'];
	} 
	else {
		disparray1[S_FLH] = segledcc [(unsigned int) temparray[0] - '0'];
        disparray1[S_FLL] = segledcc [(unsigned int) temparray[1] - '0'];
   }	
}
/*----------------------------------------------------------------------------------------------------*/
void update_actual_flw_display(void) {

    
	sprintf(temparray, "%d", act_flw_val);

    if (act_flw_val < 10) {
        disparray2[A_FLH] = 0x7F;
        disparray2[A_FLL] = segledcc [(unsigned int) temparray[0] - '0'];
	} 
	else {
		disparray2[A_FLH] = segledcc [(unsigned int) temparray[0] - '0'];
        disparray2[A_FLL] = segledcc [(unsigned int) temparray[1] - '0'];      
   }
	
}
/*----------------------------------------------------------------------------------------------------*/
void update_actual_zero_flw_display(void) {
	
        disparray2[A_FLH] = 0x7F;
        disparray2[A_FLL] = segledcc [0];
}
/*----------------------------------------------------------------------------------------------------*/

//Temperature & Volume Share the same display which is called Volume display.
void update_temp_display(void) {
	
	sprintf(temparray, "%d", temperature_val);

    if (temperature_val < 10) {
		disparray2[VOLH] = 0x7F;		//Blank except DP as per the led value
		disparray2[VOLM] = segledcc [(unsigned int) temparray[0] - '0'];
		disparray2[VOLL] = 0x7F;	//Blank except DP which indicates the degree sign.
	} 
	else {
        disparray2[VOLH] = segledcc [(unsigned int) temparray[0] - '0'];	
		disparray2[VOLM] = segledcc [(unsigned int) temparray[1] - '0'];
   		disparray2[VOLL] = 0x7F;		//Blank except DP which indicates the degree sign.
   }
}
/*----------------------------------------------------------------------------------------------------*/
void update_volume_display(void) {
	
	sprintf(temparray, "%d", volume_val);

    if (volume_val < 10) {
		disparray2[VOLH] = 0x7F;		//Blank except DP as per the led value
		disparray2[VOLM] = 0xFF;
		disparray2[VOLL] = segledcc_inverse[(unsigned int) temparray[0] - '0'];
	} 
	else if (volume_val < 100) {
		disparray2[VOLH] = 0x7F;		//Blank except DP as per the led value
		disparray2[VOLM] = segledcc[(unsigned int) temparray[0] - '0'];
		disparray2[VOLL] = segledcc_inverse[(unsigned int) temparray[1] - '0'];
	} 
	else {
        disparray2[VOLH] = segledcc [(unsigned int) temparray[0] - '0'];	
		disparray2[VOLM] = segledcc [(unsigned int) temparray[1] - '0'];
   		disparray2[VOLL] = segledcc_inverse[(unsigned int) temparray[2] - '0'];
   }
}
/*----------------------------------------------------------------------------------------------------*/
//When air is chosen instead of volume, the display should display letters 'GAS'
void update_volume_GAS_display(void) {
	
	    disparray2[VOLH] = GAS_disp_chars[0];	
		disparray2[VOLM] = GAS_disp_chars[1];
   		disparray2[VOLL] = GAS_disp_chars[2];
	
}
/*----------------------------------------------------------------------------------------------------*/
void update_cylinder_empty_display(void) {
	
	//1. Display Error msg at the pressure displays
	disparray1[S_PRH] = Pr_disp_chars[0];
    disparray1[S_PRL] = Pr_disp_chars[1];

	disparray1[A_PRH] = Er_disp_chars[0];
    disparray1[A_PRL] = Er_disp_chars[1];  	
		
}
//------------------------------------------------------------------------------------------------------
