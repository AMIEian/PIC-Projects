#include <xc.h>
#include <stdio.h>
#include "definitions.h"

void switchpress_handler(void) {

	if (pressedswitch == PRESS_UP) {
		if (((co2_air_selection == CO2) && (gas_level_status == FULL)) || (co2_air_selection == AIR)) {
			if (set_press_val <30) {
				set_press_val++;
				update_set_press_display();
			}//Do nothing if value is already at max pressure. i.e. 30.
		}//Switch not effective in case if CO2 is chosen and Gas level is empty	
	}
	
	else if (pressedswitch == PRESS_DN) {
		if (((co2_air_selection == CO2) && (gas_level_status == FULL)) || (co2_air_selection == AIR)) {
			if (set_press_val > 1) {
				set_press_val--;
					update_set_press_display();
			}//Do nothing if pressure is already at the lowest settings. i.e. 1.
		}//Switch not effective in case if CO2 is chosen and Gas level is empty	
	}
	
	else if (pressedswitch == FLW_UP) {		
		if ((co2_air_selection == CO2) && (gas_level_status == FULL)) {
			if (vress_trocar_selection == TROCAR) {
				if (set_flw_val <40) {
					set_flw_val++;
					update_set_flw_display();
					//Flow decides the control valve open duration.
					control_valve_open_dur_val = control_valve_open_dur[set_flw_val];
					volume_incr_dur_val = volume_incr_dur[set_flw_val];
				}//Do nothing for flow vaue 40. Can not be higher than 40.		
			}//No Flow change in case of VRESS (fixed at 2ltr)	
		}//No flow change in case of Air
	}
	
	else if (pressedswitch == FLW_DN) {
		
		if ((co2_air_selection == CO2)&& (gas_level_status == FULL)) {
			if (vress_trocar_selection == TROCAR) {
				if (set_flw_val > 1) {
					set_flw_val--;
					update_set_flw_display();
					//Flow decides the control valve open duration.
					control_valve_open_dur_val = control_valve_open_dur[set_flw_val];
					volume_incr_dur_val = volume_incr_dur[set_flw_val];					
				}//Do nothing for flow vaue 1. Can not be lower than 1		
			}//No Flow change in case of VRESS (fixed at 2ltr)	
		}//No flow change in case of Air
	}

	else if ((pressedswitch == VOL_RST) && (gas_level_status == FULL)) {
		volume_val = 0;
		update_volume_display();
	}//Switch not effective in case if CO2 is chosen and Gas level is empty. It is also
	 //Switch not effective even when Air is chosen.
	
	else if (pressedswitch == VR_TRO) {
		if (co2_air_selection == CO2) {
			if (gas_level_status == FULL){
				if (vress_trocar_selection == TROCAR) {			
					vress_trocar_selection = VRESS;
					vress_led_val = 1;
					set_flw_val = 2;
					update_set_flw_display();
					control_valve_open_dur_val = control_valve_open_dur[set_flw_val];
					volume_incr_dur_val = volume_incr_dur[set_flw_val];
					update_set_flw_display();
				}
				else {
					vress_trocar_selection = TROCAR;
					vress_led_val = 0;
				}
			}//Switch not effective in case if CO2 is chosen and Gas level is empty	
		}
		else {//in case of air, the CO2/AIR switch would have set the flow to 5ltr. So no change.
			if (vress_trocar_selection == TROCAR) {			
				vress_trocar_selection = VRESS;
				vress_led_val = 1;
			}
			else {
				vress_trocar_selection = TROCAR;
				vress_led_val = 0;
			}			
		}		
	}
	
	else if ((pressedswitch == CO2_AIR) && (system_state == IDLE)){		
			if (co2_air_selection == AIR) {
				co2_air_selection = CO2;			
				air_led_val = 0;
				update_temp_display();			
			}
			else {
				co2_air_selection = AIR;
				air_led_val = 1;
				set_flw_val = 5;
				update_set_flw_display();
				//Update pressure and flow value display as they may have been displaying
				//gas error condition, due to which user might have chosen AIR p[tion.
				update_set_press_display();
				update_actual_press_display();
				update_volume_GAS_display();
			}					
	}//Switch will not work in case system is active/ running.	
	
	else if (pressedswitch == START_STOP)  {
		if (((co2_air_selection == CO2) && (gas_level_status == FULL)) || (co2_air_selection == AIR)) {
			if (system_state == IDLE) {
				system_state = ACTIVE;
				//Temp
				EXHAUST_VALVE_PORT = CLOSED;
				start_stop_led_val = 1;
				if (co2_air_selection == CO2) {
					control_valve_open_timer_counter = 0;
					CONTROL_VALVE_PORT = OPEN;
					update_temp_display();
					volume_display_temp_timer_counter = 0;
					last_volume_disp_state = TEMPERATURE;
				}
				else {
					AIRPUMP_VALVE_PORT = OPEN;
				}	
			}	
			else {// System was active and needs to be stopped now.
				system_state = IDLE;
				start_stop_led_val = 0;
				reset_variables_at_system_stop();
				if (co2_air_selection == CO2) {
					CONTROL_VALVE_PORT = CLOSED;
					EXHAUST_VALVE_PORT = CLOSED;
					update_volume_display();		
				}	
				else { //air
					AIRPUMP_VALVE_PORT = CLOSED;
					//system will continue to display gas
				}	
			}
		}//Switch not effective in case if CO2 is chosen and Gas level is empty	
	}	
}
//-----------------------------------------------------------------------------------------------------


