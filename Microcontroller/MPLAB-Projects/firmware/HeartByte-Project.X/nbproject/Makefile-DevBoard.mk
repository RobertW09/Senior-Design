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
ifeq "$(wildcard nbproject/Makefile-local-DevBoard.mk)" "nbproject/Makefile-local-DevBoard.mk"
include nbproject/Makefile-local-DevBoard.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DevBoard
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DevBoard/bt/driver/bm71/drv_bm71.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c ../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1164684806/drv_bm71.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d ${OBJECTDIR}/_ext/975527002/plib_clk.o.d ${OBJECTDIR}/_ext/975528730/plib_efc.o.d ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d ${OBJECTDIR}/_ext/975539406/plib_pio.o.d ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d ${OBJECTDIR}/_ext/177051549/plib_supc.o.d ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d ${OBJECTDIR}/_ext/1497937361/sys_int.o.d ${OBJECTDIR}/_ext/1790450025/sys_time.o.d ${OBJECTDIR}/_ext/1844592860/initialization.o.d ${OBJECTDIR}/_ext/1844592860/interrupts.o.d ${OBJECTDIR}/_ext/1844592860/exceptions.o.d ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d ${OBJECTDIR}/_ext/1844592860/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1164684806/drv_bm71.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/DevBoard/bt/driver/bm71/drv_bm71.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c ../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/main.c ../src/app.c

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
	${MAKE}  -f nbproject/Makefile-DevBoard.mk ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70Q21B
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
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/DevBoard/3abe6f196f1acde11b119c0872b8657f90db7448 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/DevBoard/2ae9771dac498095491afc493dc3cd846bda5ac9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/DevBoard/bbee1df1129c124750c6b1d643b2a1a124a285d8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/DevBoard/2ca64b9913c4371aae3b7d5e604eef59413552b9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/DevBoard/e35845c69c565211191f840202376523eb528145 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/DevBoard/bcf1343d30671ee840ded1ac7a21a16fe070ac76 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/918f88cf6b5fa2194186af83998419159c2ada49 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/77614bbe5b95c5cd2544f2097678c25e2d44c047 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/db35db2a54c5af4699ca82f849468cfa74926087 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/b69e3b170c8b6e0b46c24220c51bfed902bb6a9c .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/bed10abe6723fd07c377aacc40eeefbe0bfba82 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/fef65651f5084f321238724127fdd5ba2d5411a1 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/1bf3f3562de4fe1a7297603c4afca09e577bf7c8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/6617ec9dac4eb2589219d54c651832efc80181d9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/677c003edcebe300ec3465fab099eacd800580a .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/27ef3b5c86c33a8566164d70c5682abab02b3bb8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/469ffe984838bca26ef852c572055038fb782eca .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/2a22297feececfdb9feafbec58cd1b5c1d653ed5 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/5a0e8b7b1b908a71fa1d65b7c0cdd897695dc63e .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/b03190ef507e96e5f1e9d5f67d4df115ffe0f542 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/807e66f6f29ce309986eac1865dafd281e5e2486 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/21d8dd6ed24716821feb4dcba8357896e1f72f57 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/b4324a6cac09c9f59044c206a1ba82971dba1574 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/1100304f13783a6ae62a4a4fa6a34fde14684564 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/59596d64e20d9482270163ba4cff1805e1698839 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/d1fa7c311be3bec103a4f80496d42f596860a6aa .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/5e477a327e8efda577941c7acdfa4d2788bf2588 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/c83ef93b55c772ac8a48d04d7906cd0bd1fad516 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/345def921b2be0411ab26cfd0684b2961e95983f .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/DevBoard/6861e9c91ba9f83b4efc576a6ff60c0b3dd2ad57 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/DevBoard/484a71b4bb8f44e3db4fa01d08eedba3381cb167 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/DevBoard/ce53a52e7d32fbc7e9c7962b8763825d5bd0c204 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/DevBoard/7feee144983eeb05e04a4f590565d6da9c293dbf .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/DevBoard/d090834e2c7e3244e6491ced8fb2cae7907a8ee1 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/DevBoard/5b739f8dd42ed60f468db8b8f7f267694daad49d .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/2b180f4358d5c3e2595f3721ab8354cf98d25592 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/1e88e6b8e43a1a2a9e11fe0d6773351b1a427c74 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/cdeb338d9ab8ba09974dbc80023523e50f27e2 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/f10067136a2ba57ac5ffaaeab754e3e263f79af2 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/d88a935d1f1050ba4df9a60bee43b2a65d3b326b .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/46e947f4df2b65283ad98977950270a40283c5e8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/730e9536b7ebec557a119f09185b9b2b87d25f6b .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/2731e0aac3189c6a9e5683e38767975a721d7499 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/ce6bcfc68bfd68ec6446ffb62be7ff2afbffd285 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/844c6c957a77d6816bb71dbb6b0d95857339318 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/b5e4c5dd6c8e6e30496d7ec36161502a133da31b .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/3d5190f0d7ac21e26557611f89e2852d4c119aad .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/fdc57857d24d44e9c454b9330b9d37048a4642a0 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/f62a7edd9d33af27820206580e035e99c0e2c75d .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/518ec74e77abb9fa213e12e341862bb8b8b9f0a6 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/1f1272ec5a7a9bcfdda80ad224a5ee22ecb02af0 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/25289cc0273249176bede5c897b808fc6c5f0e33 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/1f9285cb3bce5763b96b8121389b8b3a8c415622 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/788a5a9a75a539aceea9be8341f383fdd1a4e06b .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/e855ad5ac6cc6fa7639849064f0d8c483e765a55 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/74fbf09748e6af3b81fb2b07cbfa624ad4482ce1 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/54d9db8da3b74c61c2735f2086e71be89e07c960 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/4635e99eace52950be627528847fe3cf19385f35 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g  -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
else
${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DevBoard/ATSAME70Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
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
