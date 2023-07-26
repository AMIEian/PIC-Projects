#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/memory/flash.s mcc_generated_files/memory/flash_demo.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/tmr5.c mcc_generated_files/i2c1.c mcc_generated_files/i2c2.c main.c AI.c DI.c RelayOut.c comm.c mcp4922.c storage.c variables.c AO.c sht3x.c mcp4728.c sm93x.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/tmr5.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/AI.o ${OBJECTDIR}/DI.o ${OBJECTDIR}/RelayOut.o ${OBJECTDIR}/comm.o ${OBJECTDIR}/mcp4922.o ${OBJECTDIR}/storage.o ${OBJECTDIR}/variables.o ${OBJECTDIR}/AO.o ${OBJECTDIR}/sht3x.o ${OBJECTDIR}/mcp4728.o ${OBJECTDIR}/sm93x.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/tmr5.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/i2c2.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/AI.o.d ${OBJECTDIR}/DI.o.d ${OBJECTDIR}/RelayOut.o.d ${OBJECTDIR}/comm.o.d ${OBJECTDIR}/mcp4922.o.d ${OBJECTDIR}/storage.o.d ${OBJECTDIR}/variables.o.d ${OBJECTDIR}/AO.o.d ${OBJECTDIR}/sht3x.o.d ${OBJECTDIR}/mcp4728.o.d ${OBJECTDIR}/sm93x.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/tmr5.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/i2c2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/AI.o ${OBJECTDIR}/DI.o ${OBJECTDIR}/RelayOut.o ${OBJECTDIR}/comm.o ${OBJECTDIR}/mcp4922.o ${OBJECTDIR}/storage.o ${OBJECTDIR}/variables.o ${OBJECTDIR}/AO.o ${OBJECTDIR}/sht3x.o ${OBJECTDIR}/mcp4728.o ${OBJECTDIR}/sm93x.o

# Source Files
SOURCEFILES=mcc_generated_files/memory/flash.s mcc_generated_files/memory/flash_demo.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/tmr5.c mcc_generated_files/i2c1.c mcc_generated_files/i2c2.c main.c AI.c DI.c RelayOut.c comm.c mcp4922.c storage.c variables.c AO.c sht3x.c mcp4728.c sm93x.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA310
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA310.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/364ff97aa731284cf611ce09cee391a57a91d286 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/49ce549f7baeed8b914efc7c1701490168b6390 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/f91bab2d60b49d57eef28aba1baae20e7f7e0656 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/3d31cbbed027f3c448393b88096939e21fd00c73 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/1d6d35bf27cafdd6ba24b2209805e70ca47eb0cd .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/792b4c22aac3389929affdc3425479e28fa912fd .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/d088497e1e1f8e0efc1a84524115fd4ad9866cc .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/96ab1356d5fde6c10db928319ed8de952d3a6804 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/6a6e5cdb62d289041f15c45b4e583215ef30774e .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr5.o: mcc_generated_files/tmr5.c  .generated_files/flags/default/87d41c66d39621dee1ac16fdb649b71eac4632c2 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr5.c  -o ${OBJECTDIR}/mcc_generated_files/tmr5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr5.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/345eda73d5fd1132527c7e221e9b28272ff4b751 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/flags/default/fdc5632e8626cc3bb3eeadba194db714e9a172d .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4202c21bd8e4f3051890d3589d46ab9f42b88d6e .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AI.o: AI.c  .generated_files/flags/default/e70e882e89dacb2d53937b18da0b0a75409ceb35 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AI.o.d 
	@${RM} ${OBJECTDIR}/AI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AI.c  -o ${OBJECTDIR}/AI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AI.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DI.o: DI.c  .generated_files/flags/default/c8b841cf272735203b34769d3b57501268077933 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DI.o.d 
	@${RM} ${OBJECTDIR}/DI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DI.c  -o ${OBJECTDIR}/DI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DI.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/RelayOut.o: RelayOut.c  .generated_files/flags/default/917ed832701017cafd8856fe75a59a53d9f661b3 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RelayOut.o.d 
	@${RM} ${OBJECTDIR}/RelayOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  RelayOut.c  -o ${OBJECTDIR}/RelayOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/RelayOut.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/comm.o: comm.c  .generated_files/flags/default/c9dc64776a8e6110cd3fd5759cb85cb3d71c9eef .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/comm.o.d 
	@${RM} ${OBJECTDIR}/comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  comm.c  -o ${OBJECTDIR}/comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/comm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4922.o: mcp4922.c  .generated_files/flags/default/7be528b92e528874cbb5a2b7915c606eeab2e5c9 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4922.o.d 
	@${RM} ${OBJECTDIR}/mcp4922.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4922.c  -o ${OBJECTDIR}/mcp4922.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4922.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/storage.o: storage.c  .generated_files/flags/default/332a1bbebb28d5553663955ebd10b1c49d00e3ad .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/storage.o.d 
	@${RM} ${OBJECTDIR}/storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  storage.c  -o ${OBJECTDIR}/storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/storage.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/variables.o: variables.c  .generated_files/flags/default/f54cb62b1e8d044cd769f57a7df837f18e669948 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/variables.o.d 
	@${RM} ${OBJECTDIR}/variables.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  variables.c  -o ${OBJECTDIR}/variables.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/variables.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AO.o: AO.c  .generated_files/flags/default/e6b899f3d18ae9f529dd8749091db600eef0c61e .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AO.o.d 
	@${RM} ${OBJECTDIR}/AO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AO.c  -o ${OBJECTDIR}/AO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AO.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sht3x.o: sht3x.c  .generated_files/flags/default/bde4a114456677ee5d208189db7f361172a1e17a .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sht3x.o.d 
	@${RM} ${OBJECTDIR}/sht3x.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sht3x.c  -o ${OBJECTDIR}/sht3x.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sht3x.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4728.o: mcp4728.c  .generated_files/flags/default/ac940bdcf6548539787c9273b8ac2564e1bdb191 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4728.o.d 
	@${RM} ${OBJECTDIR}/mcp4728.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4728.c  -o ${OBJECTDIR}/mcp4728.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4728.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sm93x.o: sm93x.c  .generated_files/flags/default/41e1695bf756c4af74653358818d58c16f2ca945 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sm93x.o.d 
	@${RM} ${OBJECTDIR}/sm93x.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sm93x.c  -o ${OBJECTDIR}/sm93x.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sm93x.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/b685801fd66208bd4d0bf9bc033a6a59c169e954 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/50504cd609c5235fb0fb44b306beb9eb6d544d15 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/c97d0226b824e84db6649d8c194b972fe5701609 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/3c874e1821610f54464b7f60c4a6c2dd96ae3c32 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/1a21836408ff12a93fc10980b3714932a78713b0 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/5dbf8ed5a29f75a44224b7a04711231282e4cf41 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/cc13aa0f2bd5ca1d382d89f7a05b52cf123c4f34 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/eae181ee8c41c47efe5bcd4773b78b2ebfc3eb8d .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/6911796b08b20f21b38dc06520f835ca3bccc60c .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr5.o: mcc_generated_files/tmr5.c  .generated_files/flags/default/6060f4d2ac26fee18a7eae34195cc99107cdadb0 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr5.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr5.c  -o ${OBJECTDIR}/mcc_generated_files/tmr5.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr5.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/c6382c3c6903420ea888cfae57dc0f1b4113a278 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2.o: mcc_generated_files/i2c2.c  .generated_files/flags/default/77546f0e5b6ca3971b964308579102bceccdc39e .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1b666da87ae289c1a144959bc5141fda815a2efa .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AI.o: AI.c  .generated_files/flags/default/fe2f32e410ddc224b86ff6b6c273acd5e750536e .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AI.o.d 
	@${RM} ${OBJECTDIR}/AI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AI.c  -o ${OBJECTDIR}/AI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AI.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/DI.o: DI.c  .generated_files/flags/default/94a73a0b47cca03f07a59adb9d21cbafe2cf66d2 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/DI.o.d 
	@${RM} ${OBJECTDIR}/DI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  DI.c  -o ${OBJECTDIR}/DI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/DI.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/RelayOut.o: RelayOut.c  .generated_files/flags/default/90c5ca0cbd9c299645ad29fef2f7984a4914b727 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RelayOut.o.d 
	@${RM} ${OBJECTDIR}/RelayOut.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  RelayOut.c  -o ${OBJECTDIR}/RelayOut.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/RelayOut.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/comm.o: comm.c  .generated_files/flags/default/882bd48bc93ff8a5bc0bc939248b0ed64afdb0df .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/comm.o.d 
	@${RM} ${OBJECTDIR}/comm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  comm.c  -o ${OBJECTDIR}/comm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/comm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4922.o: mcp4922.c  .generated_files/flags/default/c33fc387aef932b3f1d0466d5e9ba57a8f5305f1 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4922.o.d 
	@${RM} ${OBJECTDIR}/mcp4922.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4922.c  -o ${OBJECTDIR}/mcp4922.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4922.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/storage.o: storage.c  .generated_files/flags/default/6aac01cf74311a1cc8f4fcd1549af8c2a861c278 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/storage.o.d 
	@${RM} ${OBJECTDIR}/storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  storage.c  -o ${OBJECTDIR}/storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/storage.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/variables.o: variables.c  .generated_files/flags/default/8e0e4c8ae76c846b6aa6dd2f90179bbe37a5b273 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/variables.o.d 
	@${RM} ${OBJECTDIR}/variables.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  variables.c  -o ${OBJECTDIR}/variables.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/variables.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/AO.o: AO.c  .generated_files/flags/default/99030269a1e2c3e8ef222f3be598fa61b5e316c .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AO.o.d 
	@${RM} ${OBJECTDIR}/AO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  AO.c  -o ${OBJECTDIR}/AO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/AO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sht3x.o: sht3x.c  .generated_files/flags/default/f08501e9a9212130ac9b8689dba15edfeae43a23 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sht3x.o.d 
	@${RM} ${OBJECTDIR}/sht3x.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sht3x.c  -o ${OBJECTDIR}/sht3x.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sht3x.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcp4728.o: mcp4728.c  .generated_files/flags/default/d534547d2e67101ec556ec1575c809beee35208d .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mcp4728.o.d 
	@${RM} ${OBJECTDIR}/mcp4728.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcp4728.c  -o ${OBJECTDIR}/mcp4728.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcp4728.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sm93x.o: sm93x.c  .generated_files/flags/default/f80a4771292e489e6fa51bb6e091ac951142e30 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sm93x.o.d 
	@${RM} ${OBJECTDIR}/sm93x.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sm93x.c  -o ${OBJECTDIR}/sm93x.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sm93x.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/4531feaba341a54585d9f62cd3cdf35599f583cd .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/7bdddcc92cb933612a189ed3e583271985855739 .generated_files/flags/default/a8ea93172b531e6d469a59cb65566629108f0abb
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/AHU_IO_Board.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
