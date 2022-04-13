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
ifeq "$(wildcard nbproject/Makefile-local-SMD.mk)" "nbproject/Makefile-local-SMD.mk"
include nbproject/Makefile-local-SMD.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=SMD
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DevBoard/bt/driver/bm71/drv_bm71.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c ../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/config/DevBoard/MAX30102.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1164684806/drv_bm71.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d ${OBJECTDIR}/_ext/975527002/plib_clk.o.d ${OBJECTDIR}/_ext/975528730/plib_efc.o.d ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d ${OBJECTDIR}/_ext/975539406/plib_pio.o.d ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d ${OBJECTDIR}/_ext/177051549/plib_supc.o.d ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d ${OBJECTDIR}/_ext/1497937361/sys_int.o.d ${OBJECTDIR}/_ext/1790450025/sys_time.o.d ${OBJECTDIR}/_ext/1844592860/initialization.o.d ${OBJECTDIR}/_ext/1844592860/interrupts.o.d ${OBJECTDIR}/_ext/1844592860/exceptions.o.d ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d ${OBJECTDIR}/_ext/1844592860/tasks.o.d ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1164684806/drv_bm71.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/DevBoard/bt/driver/bm71/drv_bm71.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c ../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/config/DevBoard/MAX30102.c ../src/main.c ../src/app.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-SMD.mk ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70J19B
MP_LINKER_FILE_OPTION=,--script="..\src\config\DevBoard\ATSAME70Q21B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/SMD/8fb8f082b054d7244e8fc36564ac892c03efcb .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/SMD/d0e5fb2cb5df5e8d09a9d04b22e2fd97ebe8ff2a .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/SMD/d49ada5ccb33a78ee8925a21e06429e6ecac8bb9 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/SMD/46c5b504bb0952e2c86a4f68de3c4f2f2f22d51d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/SMD/6bbd607c78eba70cc1f65fc9c574656ed2753ff0 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/SMD/d7e85ab697f669bf07a7c1ad43cfcb3cb9f4fff4 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/SMD/a680cd3242ffddf56cf333e7cf25bd0161a21e0d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/SMD/5b5f7b804c2433aa4c0e51fd2ee16ff8e7f20982 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/SMD/4fa538db622999df2ff7a7c0f176aec980f29b07 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/SMD/726f15ce8aab6ecb66d15aa238dc7c2fef0d52b9 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/SMD/4de39ab2115ab6530f402ba0270bebc4beb5afff .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/SMD/79e1d90d913f5a9938f84c1c489c898a229d1af0 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/SMD/1cb043bc3cc1a90c84b09e0cee191bdb1ddf2319 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/SMD/2e157eb7ddcdd496ea80aa051ac2d57b161c32b4 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/SMD/1237868b81bfae02310e035a39610be028615a7d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/SMD/bd80f7023777b7b61e53a01e15b19c8ce08d8195 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/SMD/b795bd83df6019d482889fa979d4c0d6dd8e139d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/SMD/35112c7bb5f29eb37901405475081a70b346117d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/SMD/9ad9fb2701f5f1c4083a9e42ed3dcc3371f4bd46 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/SMD/d732057cfb3b9bbed7fec6e18c51fa9813268e00 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/SMD/b2fae7b5a073e5823e239508a1ecc88501f2fde2 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/SMD/fa086bd6ff547a9f167e59d9b2eb9695b7d27801 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/SMD/6efaac29f9fe98aec6d5dcbbbeb9efc5d4e79833 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/SMD/114ab85d181ac0b59ea5dd830a29bea16a703c0f .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/SMD/d82028079804bd8867692eb79d3f3e19e2e4d09e .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/SMD/b32d5e0317ecbb6a6277d7282d311f86891899f6 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/SMD/6ee7158805b0b81bff414ebc54e389a94d22eb31 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/SMD/cbd0fa4df2a526445a4ef48148e62d0183040fdd .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SMD/500d336738df85775dd14e48d29ea4473ef0d6ec .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/SMD/3d656c65011afb5e10582d3e576cb5ac92a5509 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/SMD/20423e9e709c73e04a7f98bdacb1c856b2f7179 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/SMD/58723e48461d510aabdd22df01a08b7f3c9434df .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/SMD/162ce721da68b2a41306f84e21466662b6d82a7a .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/SMD/e7322bebd21f5b829aee5fb86dc294b75c55c041 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/SMD/67862c6460c58f84780ee3bcf966aaf5fca2b4ab .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/SMD/bc336fdd3304878221440edf2f7582edda959bed .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/SMD/bc8457d710d6f6b508794a551ab85ea587e36372 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/SMD/13338cd09f75c1e49058e6656d554c154629c6bf .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/SMD/c7af799584b4760f4c4fb936435f652bc7d7cb3e .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/SMD/1ebe40e5f83288955f704d8ec3ff9b249436fe77 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/SMD/767822735d17881514ac00cac5c8af5f17f2a2ce .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/SMD/849f5c843c19db13adb2fa3a1d8f96524311d5fe .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/SMD/f5fa330a46d099da2664884aefffa8dd64ffffd1 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/SMD/53c47ba176fc943d95451c81b4f9f9e3d8802ecb .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/SMD/c94efa1cadcd8025650daefe5366e2034fbe87b5 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/SMD/c25505cf124ee6e27f8cb9e959d2787f3745e92f .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/SMD/9addab701d3221ef342a7987e0fd158f474554dd .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/SMD/6998af26aea3cc63f11a1472182c967ab0b57f7a .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/SMD/bbab52969bb86df54e1756d40b299c5c8b8fa167 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/SMD/9ee0ea20b85c31be689ceeb7f84ba3d42a42bda1 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/SMD/bb93fde5a2eb29e68cf44aa9edf51831086e4d6a .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/SMD/aa9a389dc29a3fdace7f19c47839f3eae7c6a1a7 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/SMD/5fa779ae5e00e4ab641caf26d77157b83aca846c .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/SMD/8c2a0b622c3e8d8bc705c87cb4981e33673f4523 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/SMD/4b1831acb6cd4a9723f33bed2fb09ef4cdca710b .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/SMD/92351721f2a029369875ad3a0292cfb215ae5695 .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/SMD/c641cd4fbae246c5972bead51006733eafec53d .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/SMD/9f4f5770fed987059fb9eeeddbb91ce042dfbfef .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SMD/75cfce93ceaea5a7cf53151d6bcdbfc17bb3418b .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/SMD/e5cc6e7d6e70b72e161c2722979247ca5a573f1b .generated_files/flags/SMD/3225207bf41c78d4bf060761f057f7bc55efea89
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/DevBoard/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DevBoard/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_SMD=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
