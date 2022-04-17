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
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/DevBoard/11e84a22998d38524de9223cd9c0d6d320489cc2 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/DevBoard/6c827175e976a5a7b57d42f45791ebd9e3b28a79 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/DevBoard/6338abb8fc4fa611c36d46e0efef63365a48353b .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/DevBoard/b8e5621c1f11674e6671dd9b5ff8aaf4349c5189 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/DevBoard/bc0c7b01962ef6e032b634f11e7b4c9a528cdda8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/DevBoard/c15912aee4b6d17fcb804e4b6055a95091b0a9c8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/a881a7cfef3285c0dc462c6c52d6d3b719b4969a .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/6749ebb15295a25f3d82143a81ebee9f29299ea1 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/2f1bd009bec14aed332ef89df463da6e64f30061 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/8693b03367c1b5142913452430cc8ebbd31f400d .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/8f281baad8c3e770c0371e7aa5c3bafb0e0db705 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/8e3f0ff8ce046d4f5d8ce698d4ee15e9cec2ecc5 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/8e276d8c2638d92330383b2808475ea03cc589fc .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/498a40f64a1ee30824392cbdab0c7e2a5d008096 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/175a055b7ad0f0be6417ef9def3eb155767b4176 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/23807a98a1fe1d672dc156baf0f2c52e70c489f9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/60d45a0d3801ca10292bc91207d600604ecda029 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/6dc129106f5dbd0aefd0c9a8ea5182538073b087 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/8964b82ac4b902d5559bc6ca9672c915828ab69a .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/ed86a146938ad8ac8c5c07c2b7832e896dc56b9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/4e259c91875156b36e5f2ad7385da702a46c1137 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/5beb5b8dbc19ceae240df5f06164be98bd9c289a .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/1e50db984648227d6321d71d2f868ceba48dd453 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/2d2b635381361a9e11f1659192b11f4ad2d7d830 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/177fa41df23fd1b66fa54071fa431b2a79086db7 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/6f370db15746f49f1d1e6053d8b91e8e922e5d72 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/f7499ea451acab733380bdb3cf85c77b61168ef .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/DevBoard/c9cc170202a014e62ae56c0a00649f7365ef624f .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/cdd9b680a215900ad9a9e16a62abe68fdfed45bc .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/ab7ce64f0cd0fdf7495ca5fca4494f9d5377348 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1164684806/drv_bm71.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c  .generated_files/flags/DevBoard/5cb5524a739571108df605d7ef961f106b638e9f .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c  .generated_files/flags/DevBoard/a1364355416fc894a238c0dda5e9a2dc6ec4bb96 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_ble.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_ble.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c  .generated_files/flags/DevBoard/daefa16a5aea2f461f34043d21dd83c6bbf924db .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_decode.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_decode.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c  .generated_files/flags/DevBoard/89e5a7346e81cc31fdf6770d04d70e8814cff6dd .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_command_send.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_command_send.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c  .generated_files/flags/DevBoard/4b947bb19013785adcf525fe2e535e4828254194 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_gpio.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_gpio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o: ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c  .generated_files/flags/DevBoard/8b13738c33fd76b9aa17c69af44093d7830a8425 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1164684806" 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o.d" -o ${OBJECTDIR}/_ext/1164684806/drv_bm71_uart.o ../src/config/DevBoard/bt/driver/bm71/drv_bm71_uart.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/acff6b96ed834874fdf4517415a12d386e9d5e8f .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/ed56d76bbfcd6aa16e40520f5dd73def296732e3 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/bb30e81bb3e07565004271b9e45bb8cbdb653fbc .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/db70462cee14fb20a52e906c464ccb678c09578 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/c712791127ed3c5df62a1f9d1defc48950707756 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/20448214117e733f2ca67fab395a47891ea1f6a4 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/3cc18a7d3d177f2df55442c49c81556aa5f78a5e .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/e85c627712e3df55fae0dd9a3eec76d72d69e187 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/78ba8a643aa4a30092a13a18b74821f8dcba7f24 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/79b0645e92b2bb19bb995d6059bb8f58cc78145d .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/851a3f3a7f20b5d120202ef36e401cf9ff1b3037 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/8fd830d50791450b0de99d937177b7cb0fc186f8 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/eab53601d2ca1873abcf2a55a764a8dbec01d593 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/63d3f91e736e76ce51be31965afcf6e2248763f6 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/993deec32f14c4049e97757ac7cbee89fe6ac5f3 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/59c5f40ce889716acb63a394fb45e6586781506c .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/769fccac6cd41fcefb26291c227e8ed985b6ac02 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/81dcbe90467dc6ff5a24e21f35fab2c9e2ad0093 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/4c945105c829dd5d3f1b44b591668b3de23a59ba .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/8e40c9d7edec7188fcb8e983b82becd47486af99 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/66663a80228fab0c6eefc2c2f03ed2eb6999ae9 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/DevBoard/2d188e25be04a505aef8b6408cb3e175d5986e60 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/6e1265a1af4ceb47c61f0372db01e70c2b2a12e3 .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/144848ca70487e8dddb7e5f565e0b55321ea243f .generated_files/flags/DevBoard/aa17c397f86b784b2f888fc09182150a1882480e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/same70b" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/same70b"
	
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
