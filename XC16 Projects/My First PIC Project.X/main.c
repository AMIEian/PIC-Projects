/* 
 * File:   main.c
 * Author: Modtronics Australia
 *         www.modtronicsaustralia.com
 *
 * Created on 8 June 2013, 2:55 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include <xc.h>
#include <libpic30.h>

// Microcontroller config words (fuses) - get these wrong and nothing will work correctly, if at all!!
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx1 & FWDTEN_OFF & WINDIS_OFF & FWPSA_PR32 & WDTPS_PS8192)
_CONFIG2(IESO_OFF & FNOSC_FRCPLL & OSCIOFNC_OFF & POSCMOD_NONE & PLL96MHZ_ON & PLLDIV_DIV2 & FCKSM_CSECME & IOL1WAY_OFF)
_CONFIG3(WPFP_WPFP0 & SOSCSEL_IO & WUTSEL_FST & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)
_CONFIG4(DSWDTPS_DSWDTPS3 & DSWDTOSC_LPRC & RTCOSC_LPRC & DSBOREN_OFF & DSWDTEN_OFF)


/*
 * 
 */
int main(int argc, char** argv) {

    //Loop forever and do nothing
    while(1)
    {
    }


    return (EXIT_SUCCESS);
}
