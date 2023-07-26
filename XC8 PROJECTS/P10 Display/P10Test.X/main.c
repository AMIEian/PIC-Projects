#include<pic.h>
#define _XTAL_FREQ 20000000
__CONFIG(0x3F72);

#include "led_font.h"
#include "uart.h"

#define ON 0
#define OFF 1

#define EN RB4
#define A RB5
#define B RB6

#define CLK RC1
#define SCLK RD3
#define DATA RD2

void P10SelCh(unsigned char);
void clock(void);
void latch(void);
void disp(void); 
void set_data(const char *);
void read_data(void);


char data[80],w=0,ch,s_f=0,sms=0,got=0,status=0;
char val[9][8],len;	
int tmr;


void interrupt isr(){
	if(RCIF && RCIE){
		RCIF = 0;
		ch = RCREG;

		if((got==1)&&(ch==0x0D)){
			s_f = 2;
			got = 0;
			w = 0;
		}

		if((ch=='$')&&(got==1)){
			got = 0;
			data[w] = 0;
			w = 0;
			s_f = 1;	
			CREN = 0;RCIE = 0;
		}

		if(got==1){
			data[w++] = ch;
			if(w>79)
				w = 79;
		}

		if(ch=='*')
		 	got = 1;
		
	}
	if(TMR1IF&& TMR1IE)
	{
		TMR1IF=0;TMR1ON=0;TMR1H=0;TMR1L=0;TMR1ON=1;
		if(tmr++>=4)
		{
			status = 1;
			tmr=0;
		}	
	}
}


void main(){
	int i=0,j=0,k,l;
	char sc,bt,shift=0;
	char u = 0,rs = 0;

	TRISB = 0x00;
	TRISD = 0x00;
	TRISC = 0x80;
	PORTB = 0x00;
	PORTC = 0x00;
	PORTD = 0x00;

	EN = 1;
	
	UART_Init();
	GIE = 1; PEIE = 1;
	RCIE = 1;
	T1CKPS0 = 1;
	TMR1H=0;  TMR1L=0;	
	DATA = OFF;
	
	for(i=0;i<256;i++){
		clock();
	}
	
	for(i=0;i<9;i++){
		for(j=0;j<8;j++){
			val[i][j] = 0xFF;
			__delay_ms(20);
		}
	}
	
	disp();

	TMR1IE=1; TMR1ON=1;

	k = 0;		j = 3;
	for(;;){
		if(s_f==1){
			set_data(data);
			disp();
			s_f = 0;
			u = 0;
		}
		else if(s_f==2){
			disp();
			s_f = 0;
			u = 0;
		}
		SCLK = 1;	SCLK = 0;
		P10SelCh(j);
		j = j>=3?0:(j+1);
		for(k = 0;k<16;k++){
			l = k%2;
			if(!l){
				l = k/2;
				for(i=0;i<8;i++){
					DATA = OFF;
					CLK = 1;CLK = 0;
				}
				for(i=0;i<8;i++){
					DATA = val[l][2*j+1]>>(i);
					CLK = 1;CLK = 0;
				}
			}
			else{
				l = k/2;
				for(i=0;i<8;i++){
					DATA = val[l][2*j]>>(i);
					CLK = 1;CLK = 0;
				}
				for(i=0;i<8;i++){
					DATA = OFF;
					CLK = 1;CLK = 0;
				}

			}
		}
		if(status){
			for(i=0;i<8;i++){
				for(sc=0;sc<8;sc++){
					bt = (val[i+1][sc]&0x01);
					val[i][sc] = (val[i][sc]>>1) | (bt<<7); ;
				}
			}
			status = 0;	 
			if(u<len){
				if(shift++>=7){ 
					for(sc=0;sc<8;sc++){
						val[7][sc] = font[data[u]-' '][sc];
					}
					u++;
					shift = 0;
				}
			}
			else{
				rs++;
				if(rs>70){
					u=0;
					rs = 0;
				}
			}						
		}	
	}			
}



void P10SelCh(unsigned char ch){
	A = 0;
	B = 0;
	switch(ch){
		case 0:
			break;
		case 1:
			A = 1;;
			break;
		case 2:
			B = 1;
			break;
		case 3:
			A = 1; B = 1;
			break;
	}
}



void clock(){
	CLK = 1;
	CLK = 0;
}

void latch(){
	SCLK = 1;
	SCLK = 0;
}

void disp(){
	char col,n=0;
	int let;
	DATA = OFF;
	for(let=0;let<256;let++){
		clock();
	}
	
	for(n=0;n<9;n++){
		for(col=0;col<8;col++){
			val[n][col] = 0xFF;
		}
	}
	
	n = 0;
len = 0;
read_data();
	while(data[len]){
		len++;
	}
	CREN = 1;RCIE = 1; RCIF = 0;
}

void read_data(){
	char pos = 0;

	do{
		data[pos] = eeprom_read(pos);
		pos++;
	}while(data[pos-1]);
}

void set_data(const char * p){
	char pos = 0;
	while(*p){
		eeprom_write(pos++,*p++);	
	}
	eeprom_write(pos,0);
}
