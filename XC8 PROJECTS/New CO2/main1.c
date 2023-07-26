//------------------------------------------------------------------------------------------------------
//File name: main.c
//AUthor Name : Sanjay Dalvi
//Date Created : Sep2021
//Customer Name : Diamond Enterprises
// Version Info : This is the very first file created before receiving the hardware.
//Controller Used : PIC18F46K22

//Questions : If set to AIR, should the VR-TRO key work ?
//            What should be the minimum value of pressure and flow ?
//DEfect : System starts pumping air even when set pressure is 0;
//Defect : For air, it is 1 sec on, one sec off.
//------------------------------------------------------------------------------------------------------
#include <xc.h>
#include "definitions.h"
#include "memory.h"

#define _XTAL_FREQ 64000000
//------ Variable Declarations below this line ---------------------------------------------------------------
union adcbuff {
    unsigned int adcbufi;

    struct adcchar {
        unsigned char adclchar;
        unsigned char adcuchar;
    } adcchar;
} adcbuff;

//Display related vbariables, arrays
char temparray[4];
unsigned char disparray1[6];				//disp 0,1
											//disp 2,3
											//disp 4,5
											
unsigned char disparray2[5];				//disp 0,1
											//disp 2,3
											//disp 4

unsigned int set_press_val;					//MMHG (millimeters of mercury).
unsigned int act_press_val;					//MMHG (millimeters of mercury).
unsigned int set_flw_val;					//ltr/min
unsigned int act_flw_val;					//ltr/min
unsigned int temperature_val;				//degree centigrade
unsigned int volume_val;					//ltrs
float temp_value;

unsigned char vress_trocar_selection;
unsigned char co2_air_selection;

unsigned char currdisp, disrowc, dispbuff1, dispbuff2;
//Below values are for common anode seven segment. These are the byte values if applied to
//seven segment data bus, will display digits 0 to 9
unsigned char segledcc[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
unsigned char segledcc_inverse[] = {0xC0, 0xCF, 0xA4, 0x86, 0x8B, 0x92, 0x90, 0xC7, 0x80, 0x82};



//leds through dp assignment
unsigned char start_stop_led_val = 0;		//dp of A-PRH (LEDC1) display, currdisp 5
unsigned char gash_led_val = 0;			//dp of A-PRL (LEDC2) display, currdisp 4
unsigned char gasl_led_val = 0;			//dp of A-FLL (LEDC4) display, currdisp 3
unsigned char air_led_val = 0;				//dp of A-FLH (LEDC3) display, currdisp 4
unsigned char vress_led_val = 0;			//dp of VOLH (LEDC5) display, currdisp 2

//switches
unsigned char pressedswitch, swpressed;
unsigned char flw_dn_pressedonce,flw_up_pressedonce,vr_tro_pressedonce,co2_air_pressedonce;
unsigned char vol_rst_pressedonce,start_stop_pressedonce,press_up_pressedonce,press_dn_pressedonce;


unsigned char system_state;		//Two states. Active and Idle
unsigned char last_volume_disp_state;
unsigned char control_valve_status;
unsigned char exhaust_valve_status;
unsigned char gas_level_status;
unsigned char key_beep_on;


//All the counters
unsigned int control_valve_close_timer_counter;
unsigned int control_valve_open_timer_counter;
unsigned int volume_display_temp_timer_counter;
unsigned int volume_display_vol_timer_counter;
unsigned int vol_value_incr_timer_counter;
unsigned int key_beep_timer_counter;
unsigned int one_sec_counter;
unsigned int five_sec_counter;

//temp
unsigned int last_press_val = 0;
	

//Below variables, definitions are based on the 5Msec counter
//Valve open duration for a specific set value of flow is stored in the below array in terms of
// no. of 5msecs.
unsigned int control_valve_open_dur[] = {220,240,260,280,300,320,340,360,380,400,420,440,460,
										480,500,520,540,560,580,600,620,640,660,680,700,720,
										740,760,780,800,820,840,860,880,900,920,940,960,980,1000,1000};
//Below variables, definitions are based on the 5Msec counter
//Valve increment for a specific value of flow is stored in the below array in terms of no. of 5Msecs.
unsigned int volume_incr_dur[] = {4800,4800,4800,4800,4800,2400,2400,2400,2400,2400,2400,2400,
								2400,2400,2000,2000,2000,2000,2000,2000,2000,2000,2000,2000,2000,
								1800,1800,1800,1800,1800,1800,1800,1800,1400,1400,1400,1400,1400,
								1400,1400,1400};				
								//Note that the volume passed is not detected
								//by any sensor, instead it is calculated based on the flow value set.
unsigned char GAS_disp_chars[] = {0x82,0x88,0x92};
unsigned char Er_disp_chars[] = {0x86,0xAF};
unsigned char Pr_disp_chars[] = {0x8C,0xAF};

unsigned int control_valve_open_dur_val;
unsigned int control_valve_close_dur_val;
unsigned int volume_incr_dur_val;	


unsigned int flash_read_buffer[FLASH_READ_BUFFER_SIZE];
unsigned int *flash_read_buffer_addrress;
												
/*-----------------------------------------------------------------------------------------------------*/
void main(void) {
	
	init_system();
	init_variables();
	
	//Temp
	/**
	while(1) {
	CONTROL_VALVE_PORT= OPEN;
	__delay_ms(2000);
	CONTROL_VALVE_PORT = CLOSED;
	__delay_ms(2000);

	}	
	
	*/
	//End temp

	while(1) {
		
		if(key_beep_on) {
			if(key_beep_timer_counter > BEEP_TIME) {
				key_beep_on = 0;

				BUZZER_PORT= BUZZER_OFF;
			}
		}
			
		if(swpressed) {
			swpressed = 0;
			switchpress_handler();				
		}		
				
		if(one_sec_counter >= ONE_SECOND) {
			one_sec_counter = 0;
			read_temeparture();

//Temp			
//			if(co2_air_selection == CO2) {
				check_process_gas_level();
//			}
			
			if((system_state == IDLE) && (((co2_air_selection == CO2) && (gas_level_status == FULL)) || (co2_air_selection == AIR))) {				
				check_actual_pressure();
				update_actual_press_display();
			}//When syetem is active, gas pressure is being checked under the active_state_handler() routine
			
		}
				
		if(five_sec_counter >= FIVE_SECOND) {
			five_sec_counter = 0;
			flash_read_buffer[0] = set_press_val;
			flash_read_buffer[1] = set_flw_val;
			FLASH_WriteBlock(FLASH_BUFFER_ADDR, (uint8_t *)flash_read_buffer_addrress);			
		}
		
		
		if (system_state == ACTIVE) {			
			active_state_handler();	
		}
		
		
	
	}//while loop
}
/*------------------------------------------------------------------------------------*/
void __interrupt() INTERRUPT_InterruptManager (void) {
    // interrupt handler
    if(INTCONbits.PEIE == 1) {
   
		if(INTCONbits.TMR0IE == 1 && INTCONbits.TMR0IF == 1) {
			INTCONbits.TMR0IF = 0;
			TMR0H = 0x63;
			//TMR0L = 0xBF;
			TMR0L = 0xC0;
			
			//Temp
			LATCbits.LATC6 = 1;
			//End Temp
						
			//Increment all the counters.
			control_valve_close_timer_counter++;
			control_valve_open_timer_counter++;
			volume_display_temp_timer_counter++;
			volume_display_vol_timer_counter++;
			vol_value_incr_timer_counter++;
			key_beep_timer_counter++;
			one_sec_counter++;
			five_sec_counter++;
			
            disrowc = LEDR;										//Read PORTD data       
			
            switch (currdisp) {
                case 0:
                    disrowc = ((disrowc & 0x1F) | LEDC11_7);		//Chooses disp 11 & 7
                    
					LEDR = disrowc;									//Write PORTD latch with the address for the displays
																	//Note that two 138s get addressed by the same address bits. 
					__delay_us(10);
					if (SWC == 0) {
                        if (flw_dn_pressedonce == 0) {
                            flw_dn_pressedonce = 1;
                        }
                    } else {
                        if (flw_dn_pressedonce == 1) {
                            swpressed = 1;
                            flw_dn_pressedonce = 0;
                            pressedswitch = FLW_DN;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;
							
                        } else {
                            flw_dn_pressedonce = 0;
                            swpressed = 0;
                        }
                    }										
					dispbuff1 = disparray1[currdisp];
					dispbuff2 = disparray2[currdisp];
                    DISPSET1_DATA = dispbuff1;
					DISPSET2_DATA = dispbuff2;
                    break;
							
				case 1:
					disrowc = (disrowc & 0x1F) | LEDC10_6;		//Chooses disp 11 & 7
                    LEDR = disrowc;								//Write PORTD latch with the address for the displays
																//Note that two 138s get addressed by the same address bits.
					__delay_us(10);																
                    if (SWC == 0) {
                        if (flw_up_pressedonce == 0) {
                            flw_up_pressedonce = 1;
                        }
                    } else {
                        if (flw_up_pressedonce == 1) {
                            swpressed = 1;
                            flw_up_pressedonce = 0;
                            pressedswitch = FLW_UP;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;							
							
                        } else {
                            flw_up_pressedonce = 0;
                            swpressed = 0;
                        }
                    }
					dispbuff1 = disparray1[currdisp];
					if(vress_led_val) {
						dispbuff1 &= DP_ON;
					}
					else {
						dispbuff1 |= DP_OFF;
					}
					dispbuff2 = disparray2[currdisp];
                    DISPSET1_DATA = dispbuff1;
					DISPSET2_DATA = dispbuff2;
                    break;
					
				case 2:
					disrowc = (disrowc & 0x1F) | LEDC9_5;		//Chooses disp 11 & 7
                    LEDR = disrowc;								//Write PORTD latch with the address for the displays
																//Note that two 138s get addressed by the same address bits.
					__delay_us(10);																
                    if (SWC == 0) {
                        if (vr_tro_pressedonce == 0) {
                            vr_tro_pressedonce = 1;
                        }
                    } else {
                        if (vr_tro_pressedonce == 1) {
                            swpressed = 1;
                            vr_tro_pressedonce = 0;
                            pressedswitch = VR_TRO;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;
							
                        } else {
                            vr_tro_pressedonce = 0;
                            swpressed = 0;
                        }
                    }	
					dispbuff1 = disparray1[currdisp];
					if(gasl_led_val) {
						dispbuff1 &= DP_ON;
					}
					else {
						dispbuff1 |= DP_OFF;
					}
					dispbuff2 = disparray2[currdisp];
                    DISPSET1_DATA = dispbuff1;
					DISPSET2_DATA = dispbuff2;
                    break;
					
				case 3:
					disrowc = (disrowc & 0x1F) | LEDC8_4;		//Chooses disp 11 & 7
                    LEDR = disrowc;								//Write PORTD latch with the address for the displays
																//Note that two 138s get addressed by the same address bits.
					__delay_us(10);																
                    if (SWC == 0) {
                        if (co2_air_pressedonce == 0) {
                           co2_air_pressedonce = 1;
                        }
                    } else {
                        if (co2_air_pressedonce == 1) {
                            swpressed = 1;
                            co2_air_pressedonce = 0;
                            pressedswitch = CO2_AIR;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;
							
                        } else {
                           co2_air_pressedonce = 0;
                            swpressed = 0;
                        }
                    }	
					dispbuff1 = disparray1[currdisp];
					if(air_led_val) {
						dispbuff1 &= DP_ON;
					}
					else {
						dispbuff1 |= DP_OFF;
					}
					
					dispbuff2 = disparray2[currdisp];
                    DISPSET1_DATA = dispbuff1;
					DISPSET2_DATA = dispbuff2;
                    break;
					
				case 4:
					disrowc = (disrowc & 0x1F) | LEDC2_3;		//Chooses disp 11 & 7
                    
					LEDR = disrowc;								//Write PORTD latch with the address for the displays
																//Note that two 138s get addressed by the same address bits.
					__delay_us(10);																
                    
					if (SWC == 0) {
                        if (vol_rst_pressedonce == 0) {
                            vol_rst_pressedonce = 1;
                        }
                    } else {
                        if (vol_rst_pressedonce == 1) {
                            swpressed = 1;
                            vol_rst_pressedonce = 0;
                            pressedswitch = VOL_RST;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;
							
                        } else {
                            vol_rst_pressedonce = 0;
                            swpressed = 0;
                        }
                    }	
					dispbuff1 = disparray1[currdisp];
					if(gash_led_val) {
						dispbuff1 &= DP_ON;
					}
					else {
						dispbuff1 |= DP_OFF;
					}
					dispbuff2 = disparray2[currdisp] |= DP_OFF;	
                    DISPSET1_DATA = dispbuff1;
					DISPSET2_DATA = dispbuff2;
                    break;
					
				case 5:
					disrowc = (disrowc & 0x1F) | LEDC1_NA;		//Chooses disp 11 & 7
                    LEDR = disrowc;								//Write PORTD latch with the address for the displays
																//Note that two 138s get addressed by the same address bits.
					__delay_us(10);																
					if (SWC == 0) {
                        if (start_stop_pressedonce == 0) {
                            start_stop_pressedonce = 1;
                        }
                    } else {
                        if (start_stop_pressedonce == 1) {
                            swpressed = 1;
                            start_stop_pressedonce = 0;
                            pressedswitch = START_STOP;
							key_beep_on = 1;
							key_beep_timer_counter = 0;
							BUZZER_PORT = BUZZER_ON;
							
                        } else {
                            start_stop_pressedonce = 0;
                            swpressed = 0;
                        }
                    }	
					dispbuff1 = disparray1[currdisp];
					if(start_stop_led_val) {
						dispbuff1 &= DP_ON;
					}
					else {
						dispbuff1 |= DP_OFF;
					}
                    DISPSET1_DATA = dispbuff1;
                    break;					
				
				default:
					break;			
			}

			currdisp++;			
            if (currdisp > 5)
                currdisp = 0;
			
			if (PRESSUP_PORT == 0) {
                    press_up_pressedonce = 1;               
            }
                    
			if ((press_up_pressedonce == 1) && (PRESSUP_PORT == 1)) {
                swpressed = 1;
                press_up_pressedonce = 0;
                pressedswitch = PRESS_UP;
				key_beep_on = 1;
				key_beep_timer_counter = 0;
				BUZZER_PORT = BUZZER_ON;
            }
			
			if (PRESSDN_PORT == 0) {
                    press_dn_pressedonce = 1;                
            }
                    
			if ((press_dn_pressedonce == 1)&& (PRESSDN_PORT == 1)) {
                swpressed = 1;
                press_dn_pressedonce = 0;
                pressedswitch = PRESS_DN;
				key_beep_on = 1;
				key_beep_timer_counter = 0;
				BUZZER_PORT = BUZZER_ON;
			}
			
			//Temp
			LATCbits.LATC6 = 0;
			//End Temp
		} 
       
        else {
			//Unhandled Interrupt
        }
    }
}
/*------------------------------------------------------------------------------------*/
void active_state_handler(void) {
	
	if (act_press_val <= set_press_val) {
		EXHAUST_VALVE_PORT = CLOSED;
		exhaust_valve_status = CLOSED;

		if (co2_air_selection == CO2) {
			if (control_valve_status == OPEN) {
				if (control_valve_open_timer_counter >= control_valve_open_dur[set_flw_val]) {
					CONTROL_VALVE_PORT = CLOSED;
					control_valve_status = CLOSED;
					//temp
					act_flw_val = set_flw_val;
					update_actual_zero_flw_display();
					control_valve_close_timer_counter = 0;
				}//else let the Control valve continue to be open
			}
			else { //Control valve is closed..
				if (control_valve_close_timer_counter >= ONE_SECOND) {
					//Check pressure just before opening the Control valve again.
					//This is the best time to ensure that the pressure checked is indeed
					//that of the abdomen and not the pressure from the cylinder.
					check_actual_pressure();
					//Temp
					update_actual_press_display();
					if (act_press_val <= set_press_val) {						
						update_actual_press_display();
						update_actual_flw_display();
						CONTROL_VALVE_PORT = OPEN;
						control_valve_status = OPEN;
						control_valve_open_timer_counter = 0;
					} //If pressure has exceeded the set value, do not open the valve;
				}//else continue to keep control valve closed.
			}
			
			if (vol_value_incr_timer_counter > volume_incr_dur_val) {
				volume_val++;
				vol_value_incr_timer_counter = 0;
			}
			
			if (last_volume_disp_state == TEMPERATURE) {
				if (volume_display_temp_timer_counter > VOL_DISP_TEMPDISP_DURATION) {
					update_volume_display();
					last_volume_disp_state = VOLUME;
					volume_display_vol_timer_counter = 0;
				}//Else continue displaying temperature					
			}
			else if (volume_display_vol_timer_counter > VOL_DISP_VOLDISP_DURATION) {
					update_temp_display();
					last_volume_disp_state = TEMPERATURE;
					volume_display_temp_timer_counter = 0;
			}//Else continue displaying temperature		
		}				
		else { //air			
			AIRPUMP_VALVE_PORT = OPEN;
			act_flw_val = set_flw_val;
			update_actual_flw_display();
			check_actual_pressure();
			if (act_press_val <= set_press_val) {	
				update_actual_press_display();
			}			
		}
	}	
	else {
		//Keep checking pressure as it willl slowly slide down in case any leakages.
		check_actual_pressure();
		//Temp
		update_actual_press_display();
		
		if( co2_air_selection == CO2) {
			CONTROL_VALVE_PORT = CLOSED;
			control_valve_status = CLOSED;
			update_volume_display();
			last_volume_disp_state = VOLUME;
			volume_display_vol_timer_counter = 0;
			vol_value_incr_timer_counter = 0;

		}
		else {//air
			AIRPUMP_VALVE_PORT = CLOSED;
			act_flw_val = 0;
			update_actual_zero_flw_display();
		}			
		if (act_press_val >= (set_press_val + PRESSURE_TOLERANCE_FOR_EXHAUST_VALVE)) {
			EXHAUST_VALVE_PORT = OPEN;
			exhaust_valve_status = OPEN;
		}//allow the pressure to go couple of pointes beyond set pressure.
	}	
}
/*------------------------------------------------------------------------------------*/
void init_variables(void) {

	read_values_from_EPROM();			//This should set the set_press_val & set_flw_val
	read_temeparture();				//sets the temperature_val

	act_press_val =0;					//MMHG (millimeters of mercury).
	act_flw_val = 0;					//ltr/min	
	volume_val = 0;						//liters
	
	currdisp = 0;
	
	key_beep_on = 0;

	vress_trocar_selection = TROCAR;
	co2_air_selection = CO2;
	start_stop_led_val = 0;
	
	air_led_val = 0;				//defailt is CO2. So Air led is off
	vress_led_val = 0;				//default is TROCAR. So this led is off.

	pressedswitch = 0;					//irrelavent till switch is pressed.
	swpressed = 0;						//default is no switch pressed
	
	flw_dn_pressedonce = 0;
	flw_up_pressedonce = 0;
	vr_tro_pressedonce = 0;
	co2_air_pressedonce = 0;
	vol_rst_pressedonce = 0;
	start_stop_pressedonce = 0;
	press_up_pressedonce = 0;
	press_dn_pressedonce =0;

	system_state = IDLE;
	last_volume_disp_state = TEMPERATURE;
	control_valve_status = CLOSED;
	exhaust_valve_status = CLOSED;

	control_valve_close_timer_counter = 0;
	control_valve_open_timer_counter = 0;
	volume_display_temp_timer_counter = 0;
	volume_display_vol_timer_counter = 0;
	vol_value_incr_timer_counter = 0;
	one_sec_counter = 0;	

	control_valve_open_dur_val = control_valve_open_dur[set_flw_val];
	control_valve_close_dur_val = ONE_SECOND;
	volume_incr_dur_val = volume_incr_dur[set_flw_val];

	//Close all the valves/Actuators.
	EXHAUST_VALVE_PORT = CLOSED;
	CONTROL_VALVE_PORT = CLOSED;
	AIRPUMP_VALVE_PORT = CLOSED;
	
	BUZZER_PORT = BUZZER_OFF;
	
	//Display default display values on all the seven segments.	
	check_process_gas_level();		//THis should update the pressure displays as well.
	update_set_flw_display();
	update_actual_flw_display();
	
	update_temp_display();			//Defaul should be the temperature display.
	
}
//----------------------------------------------------------------------------------------------------

void read_temeparture(void) {
	
	//This function should set temperature_val;
	
	temperature_val = 38;
}
//----------------------------------------------------------------------------------------------------
void check_process_gas_level(void) {
	
	//Temp
	
	gas_level_status = GAS_LEVEL_INDICATOR_PORT;
    
	if (gas_level_status == EMPTY) {
		if (co2_air_selection == CO2) {
			//display error condition.
			gash_led_val = 0;
			gasl_led_val = 1;
			system_state = IDLE;
			reset_variables_at_system_stop();
			update_cylinder_empty_display();
		}
		else {
			gash_led_val = 0;
			gasl_led_val = 0;
		}
	}
	else {//Gas level is full
		if (co2_air_selection == CO2) {
			
			gash_led_val = 1;
			gasl_led_val = 0;
			//do below to ensure that the error display on pressure value displays is removed.
			update_set_press_display();
			update_actual_press_display();
		}
		else {
			gash_led_val = 0;
			gasl_led_val = 0;
		}
	}
	
}
//----------------------------------------------------------------------------------------------------
void read_values_from_EPROM(void) {
	
	//This should set the set_press_val & set_flw_val
	
	
	flash_read_buffer_addrress = &flash_read_buffer[0];
	
	
	set_press_val = FLASH_ReadWord(FLASH_PRESSURE_ADDR);
	set_flw_val = FLASH_ReadWord(FLASH_FLOW_ADDR);
	
	if (set_press_val > 0xff) {
		set_press_val = 0;
		set_flw_val = 0;		
	}
}
//----------------------------------------------------------------------------------------------------
//Pressure sensor is 5152 - 015- D
//Maximum PSI supported is 1.5 PSI.
//At zero PSI output will be 2.5V while at 1.5PSI, output will be 4.5V
//With conversion of this into MMFG scale 0 to 77.5MMFG
//2.5V corresponds to ADC output value of 512, while 4.5 corresponds to 922
//So zero MMFG corresponds to 512 while 77.5 corresponds to 922.
//Each MMFG increment is shown by the increments of  5.3 points((922 - 512) / 77.5)
//----------------------------------------------------------------------------------------------------
void check_actual_pressure(void) {
		
	ADCON0 = 0x3F;	//Channel 15, ADC enabled, Start Conversion.
	while (ADCON0bits.GO_nDONE) {
	};

	// read the adc here
	adcbuff.adcchar.adcuchar = ADRESH;
	adcbuff.adcchar.adclchar = ADRESL;
	
	temp_value = (float) adcbuff.adcbufi;
	
	if (temp_value <= 512 ) {
		act_press_val = 0;
	}
	else if (temp_value >= 922) {
		act_press_val = 77;
    }
	else {
		temp_value = (float)((temp_value - 512) / 5.3);
		act_press_val = (unsigned int) temp_value;
	}
	//Temp
	//if((act_press_val - last_press_val) > 3) {
	//	act_press_val = last_press_val;
	//}
	//End Temp
	
}
//----------------------------------------------------------------------------------------------------
void reset_variables_at_system_stop(void) {
	
	system_state = IDLE;
	act_flw_val = 0;
	update_actual_zero_flw_display();
	
	start_stop_led_val = 0;
	
	last_volume_disp_state = TEMPERATURE;
	//TEmp
	CONTROL_VALVE_PORT = 0;
	EXHAUST_VALVE_PORT = 0;
	//ENd Temp
	control_valve_status = CLOSED;
	exhaust_valve_status = CLOSED;

	control_valve_close_timer_counter = 0;
	control_valve_open_timer_counter = 0;
	volume_display_temp_timer_counter = 0;
	volume_display_vol_timer_counter = 0;
	vol_value_incr_timer_counter = 0;
	one_sec_counter = 0;

	system_state = IDLE;
				
}

