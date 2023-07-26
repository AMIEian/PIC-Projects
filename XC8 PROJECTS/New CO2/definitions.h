// Configuration bits: selected in the GUI

// CONFIG1H
#pragma config FOSC = INTIO67   // Oscillator Selection bits->Internal oscillator block
#pragma config PLLCFG = OFF    	// 4X PLL Enable->Oscillator multiplied by 4
#pragma config PRICLKEN = ON    // Primary clock enable bit->Primary clock is always enabled
#pragma config FCMEN = OFF    	// Fail-Safe Clock Monitor Enable bit->Fail-Safe Clock Monitor disabled
#pragma config IESO = OFF    	// Internal/External Oscillator Switchover bit->Oscillator Switchover mode disabled

// CONFIG2L
#pragma config PWRTEN = OFF    	// Power-up Timer Enable bit->Power up timer disabled
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits->Brown-out Reset enabled in hardware only (SBOREN is disabled)
#pragma config BORV = 190    	// Brown Out Reset Voltage bits->VBOR set to 1.90 V nominal

// CONFIG2H
#pragma config WDTEN = OFF    	// Watchdog Timer Enable bits->Watch dog timer is always disabled. SWDTEN has no effect.
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits->1:32768

// CONFIG3H
#pragma config CCP2MX = PORTC1  // CCP2 MUX bit->CCP2 input/output is multiplexed with RC1
#pragma config PBADEN = ON    	// PORTB A/D Enable bit->PORTB<5:0> pins are configured as analog input channels on Reset
#pragma config CCP3MX = PORTB5  // P3A/CCP3 Mux bit->P3A/CCP3 input/output is multiplexed with RB5
#pragma config HFOFST = ON    	// HFINTOSC Fast Start-up->HFINTOSC output and ready status are not delayed by the oscillator stable status
#pragma config T3CMX = PORTC0   // Timer3 Clock input mux bit->T3CKI is on RC0
#pragma config P2BMX = PORTD2   // ECCP2 B output mux bit->P2B is on RD2
#pragma config MCLRE = EXTMCLR  // MCLR Pin Enable bit->MCLR pin enabled, RE3 input pin disabled

// CONFIG4L
#pragma config STVREN = ON    	// Stack Full/Underflow Reset Enable bit->Stack full/underflow will cause Reset
#pragma config LVP = ON    		// Single-Supply ICSP Enable bit->Single-Supply ICSP enabled if MCLRE is also 1
#pragma config XINST = OFF    	// Extended Instruction Set Enable bit->Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
#pragma config DEBUG = OFF    	// Background Debug->Disabled

// CONFIG5L
#pragma config CP0 = OFF    	// Code Protection Block 0->Block 0 (000800-003FFFh) not code-protected
#pragma config CP1 = OFF    	// Code Protection Block 1->Block 1 (004000-007FFFh) not code-protected
#pragma config CP2 = OFF    	// Code Protection Block 2->Block 2 (008000-00BFFFh) not code-protected
#pragma config CP3 = OFF    	// Code Protection Block 3->Block 3 (00C000-00FFFFh) not code-protected

// CONFIG5H
#pragma config CPB = OFF    	// Boot Block Code Protection bit->Boot block (000000-0007FFh) not code-protected
#pragma config CPD = OFF    	// Data EEPROM Code Protection bit->Data EEPROM not code-protected

// CONFIG6L
#pragma config WRT0 = OFF    	// Write Protection Block 0->Block 0 (000800-003FFFh) not write-protected
#pragma config WRT1 = OFF    	// Write Protection Block 1->Block 1 (004000-007FFFh) not write-protected
#pragma config WRT2 = OFF    	// Write Protection Block 2->Block 2 (008000-00BFFFh) not write-protected
#pragma config WRT3 = OFF    	// Write Protection Block 3->Block 3 (00C000-00FFFFh) not write-protected

// CONFIG6H
#pragma config WRTC = OFF    	// Configuration Register Write Protection bit->Configuration registers (300000-3000FFh) not write-protected
#pragma config WRTB = OFF    	// Boot Block Write Protection bit->Boot Block (000000-0007FFh) not write-protected
#pragma config WRTD = OFF    	// Data EEPROM Write Protection bit->Data EEPROM not write-protected

// CONFIG7L
#pragma config EBTR0 = OFF    	// Table Read Protection Block 0->Block 0 (000800-003FFFh) not protected from table reads executed in other blocks
#pragma config EBTR1 = OFF    	// Table Read Protection Block 1->Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
#pragma config EBTR2 = OFF    	// Table Read Protection Block 2->Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks
#pragma config EBTR3 = OFF    	// Table Read Protection Block 3->Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks

// CONFIG7H
#pragma config EBTRB = OFF    	// Boot Block Table Read Protection bit->Boot Block (000000-0007FFh) not protected from table reads executed in other blocks


//RD7, RD6, RD5 combinmations for the display selections.	
// curdisp| Bit Combination | DIsplay Set 1  | Display Set 2| Switch  
//--------|-----------------|----------------|--------------|---------
// 0      | 000             |  S-FLL (LEDC11)| VOLL (LEDC7) | FLOW_DOWN
// 1      | 001             |  S-FLH (LEDC10)| VOLM (LEDC6) | FLOW_UP
// 2      | 010             |  S-PRL (LEDC9) | VOLH (LEDC5) | VR_TRO
// 3      | 011             |  S-PRH (LEDC8) | A-FLL (LEDC4)| AIR_CO2
// 4      | 100             |  A-PRL (LEDC2) | A-FLH (LEDC3)| VOL_RESET
// 5      | 101             |  A-PRH (LEDC1) | --           | START_STOP
// NA     | 110             |  --            | --           | --
// NA     | 111             |  --            | --           | --
//Note that the VOLM display has been put upside down on panel, so that the DP (decimal value)
//can be used to show degree point for the temperature thats shown in the two digits before this digit.


#define S_FLL 	0
#define S_FLH	1
#define S_PRL	2
#define S_PRH	3
#define A_FLL	3
#define A_FLH	4
#define A_PRL	4
#define A_PRH	5
#define VOLL	0
#define VOLM	1
#define VOLH	2
//----------------------Addresses of LCDs, sensors, actuators etc------------------------------
#define LEDC11_7 0b00000000
#define LEDC10_6 0b00100000
#define LEDC9_5  0b01000000
#define LEDC8_4  0b01100000
#define LEDC2_3  0b10000000
#define LEDC1_NA 0b10100000

#define LEDR LATD

#define IR_led PORTDbits.RD1
#define temp_snsr PORTDbits.RD0

#define EXHAUST_VALVE_PORT LATEbits.LATE0
#define CONTROL_VALVE_PORT LATEbits.LATE1
#define AIRPUMP_VALVE_PORT LATEbits.LATE2

#define BUZZER_OFF 1
#define BUZZER_ON 0
#define LED_ON 0x01
#define LED_OFF 0x00
#define DISPSET1_DATA	LATB
#define DISPSET2_DATA	LATA
#define SWC PORTCbits.RC4					//Common input from 6 decoded switches. If any of these six
											//switches is pushed, this input will be active (low)
#define PRESSUP_PORT	PORTDbits.RD3
#define PRESSDN_PORT	PORTDbits.RD2

#define HEATER_PORT	LATCbits.LATC0    
#define BUZZER_PORT	LATCbits.LATC1    
#define GAS_LEVEL_INDICATOR_PORT	PORTCbits.RC2   
//----------------------End Addresses of LCDs, sensors, actuators etc.---------------------------								

#define FLW_DN 0x01
#define FLW_UP 0x02
#define VR_TRO 0x03
#define CO2_AIR	0x04
#define VOL_RST 0x05
#define START_STOP 0x06
#define PRESS_UP 0x07
#define PRESS_DN 0x08


#define DP_OFF 0x80				//7th bit of the port connected to dp
#define DP_ON 0x7F					//7th bit of the port connected to dp

#define VRESS 0
#define TROCAR 1
#define CO2 0
#define AIR 1
#define IDLE 0
#define ACTIVE 1

#define OPEN 1
#define CLOSED 0
#define FULL 1
#define EMPTY 0

//Temp
#define PRESSURE_TOLERANCE_FOR_EXHAUST_VALVE 2		//Do not open exaust valve till preessure goes
                                                    //up by 2 above the set pressure.
//#define PRESSURE_TOLERANCE_FOR_EXHAUST_VALVE 0
//End Temp													
#define TEMPERATURE 0
#define VOLUME 1

//Below definitions are based on the 5Msec counter. 
//Temp
//#define VOL_DISP_TEMPDISP_DURATION	12000			//1 min (60000msec / 5msec)
//#define VOL_DISP_VOLDISP_DURATION	2000			//10 sec (10000msec/ 5msec)
#define VOL_DISP_TEMPDISP_DURATION	200			//1 min (60000msec / 5msec)
#define VOL_DISP_VOLDISP_DURATION	200			//10 sec (10000msec/ 5msec)
//Temp
#define ONE_SECOND 200								//1000msec/ 5 msec
#define FIVE_SECOND 600
#define BEEP_TIME 50

extern unsigned char disparray1[];											
extern unsigned char disparray2[];
extern unsigned int set_press_val;					//MMHG (millimeters of mercury).
extern unsigned int act_press_val;					//MMHG (millimeters of mercury).
extern unsigned int set_flw_val;					//ltr/min
extern unsigned int act_flw_val;					//ltr/min
extern unsigned int temperature_val;				//degree centigrade
extern unsigned int volume_val;						//ltrs
extern unsigned char vress_trocar_selection;
extern unsigned char currdisp, disrowc, dispbuff1, dispbuff2;

extern unsigned char segledcc[];
extern unsigned char segledcc_inverse[];
extern unsigned char Er_disp_chars[];
extern unsigned char Pr_disp_chars[];
extern unsigned char GAS_disp_chars[];


extern unsigned char start_stop_led_val;
extern unsigned char gash_led_val;
extern unsigned char gasl_led_val;
extern unsigned char air_led_val;
extern unsigned char vress_led_val;
unsigned char gas_level_status;

extern unsigned char pressedswitch, swpressed;
extern unsigned char flw_dn_pressedonce,flw_up_pressedonce,vr_tro_pressedonce,co2_air_pressedonce;
extern unsigned char vol_rst_pressedonce,start_stop_pressedonce,press_up_pressedonce,press_dn_pressedonce;

extern unsigned char system_state;
extern unsigned char co2_air_selection;
extern unsigned char last_volume_disp_state;
extern unsigned char control_valve_status;
extern unsigned char exaust_valve_status;
extern unsigned char key_beep_on;

extern char temparray[];
extern unsigned int control_valve_open_dur_val;
extern unsigned int control_valve_close_dur_val;
extern unsigned int volume_incr_dur_val;

extern unsigned int control_valve_close_timer_counter;
extern unsigned int control_valve_open_timer_counter;
extern unsigned int volume_display_temp_timer_counter;
extern unsigned int volume_display_vol_timer_counter;
extern unsigned int vol_value_incr_timer_counter;
extern unsigned int key_beep_timer_counter;
extern unsigned int one_sec_counter;
extern unsigned int five_sec_counter;

extern unsigned int control_valve_open_dur[];
extern unsigned int volume_incr_dur[];
extern unsigned char gas_level_status;


extern void init_system(void);

extern void update_set_press_display(void);
extern void update_actual_press_display(void);
extern void update_set_flw_display(void);
extern void update_actual_flw_display(void);
extern void update_actual_zero_flw_display(void);
extern void update_volume_display(void);
extern void update_temp_display(void);
extern void update_volume_GAS_display(void);
extern void update_cylinder_empty_display(void);
extern void switchpress_handler(void);
extern void active_state_handler(void);
extern void reset_variables_at_system_stop(void);

	

extern void read_temeparture(void);
extern void check_process_gas_level(void);
extern void read_values_from_EPROM(void);
extern void check_actual_pressure(void);
extern void init_variables(void);
