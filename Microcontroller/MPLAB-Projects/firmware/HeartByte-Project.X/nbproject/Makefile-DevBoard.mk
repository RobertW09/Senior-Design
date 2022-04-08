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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DevBoard
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/config/DevBoard/MAX30102.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/975527002/plib_clk.o.d ${OBJECTDIR}/_ext/975528730/plib_efc.o.d ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d ${OBJECTDIR}/_ext/975539406/plib_pio.o.d ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d ${OBJECTDIR}/_ext/177051549/plib_supc.o.d ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d ${OBJECTDIR}/_ext/1497937361/sys_int.o.d ${OBJECTDIR}/_ext/1790450025/sys_time.o.d ${OBJECTDIR}/_ext/1844592860/initialization.o.d ${OBJECTDIR}/_ext/1844592860/interrupts.o.d ${OBJECTDIR}/_ext/1844592860/exceptions.o.d ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d ${OBJECTDIR}/_ext/1844592860/tasks.o.d ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/975527002/plib_clk.o ${OBJECTDIR}/_ext/975528730/plib_efc.o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ${OBJECTDIR}/_ext/975539406/plib_pio.o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ${OBJECTDIR}/_ext/177051549/plib_supc.o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ${OBJECTDIR}/_ext/1497937361/sys_int.o ${OBJECTDIR}/_ext/1790450025/sys_time.o ${OBJECTDIR}/_ext/1844592860/initialization.o ${OBJECTDIR}/_ext/1844592860/interrupts.o ${OBJECTDIR}/_ext/1844592860/exceptions.o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ${OBJECTDIR}/_ext/1844592860/tasks.o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/DevBoard/peripheral/clk/plib_clk.c ../src/config/DevBoard/peripheral/efc/plib_efc.c ../src/config/DevBoard/peripheral/nvic/plib_nvic.c ../src/config/DevBoard/peripheral/pio/plib_pio.c ../src/config/DevBoard/peripheral/rtc/plib_rtc.c ../src/config/DevBoard/peripheral/rtt/plib_rtt.c ../src/config/DevBoard/peripheral/supc/plib_supc.c ../src/config/DevBoard/peripheral/tc/plib_tc0.c ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c ../src/config/DevBoard/peripheral/usart/plib_usart1.c ../src/config/DevBoard/peripheral/usart/plib_usart0.c ../src/config/DevBoard/stdio/xc32_monitor.c ../src/config/DevBoard/system/cache/sys_cache.c ../src/config/DevBoard/system/int/src/sys_int.c ../src/config/DevBoard/system/time/src/sys_time.c ../src/config/DevBoard/initialization.c ../src/config/DevBoard/interrupts.c ../src/config/DevBoard/exceptions.c ../src/config/DevBoard/startup_xc32.c ../src/config/DevBoard/libc_syscalls.c ../src/config/DevBoard/tasks.c ../src/config/DevBoard/MAX30102.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-DevBoard.mk dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAME70Q21B
MP_LINKER_FILE_OPTION=,--script="../src/config/DevBoard/ATSAME70Q21B.ld"
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
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/53200a76311d6e8f4736050f84c2aa0a0b7231d1 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/f1024c2f44c78ea7c94b2ab115f3e91440fd3757 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/4367aaa9df3086b97f4dc57fe8c4a83fe99d167a .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/870ee0281a9f7d45ecfba7b069d174387320e49b .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/d4b55411ad8fe9565d0575480ce8cf9c9252f4d1 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/6579bc3f9cf6cfb31819c30e71b13f9fcb7811ec .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/6e72a3e73231563a3c11917b80acc2c380ce5d96 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/5449784d2250eb492be4efc9b8c889426fdfc9f7 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/ccf27d5a1726f05bacc3cecd5cf9e51c90f9a65e .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/5c55de41b11024cb6eda1295fbab9e37ca46c117 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/e6423befd7ab498be24d44a279ad6c5cdf96552f .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/2037e08a000267136deee6121c76d42e3d7a8076 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/66d2d8b432f3f99235eb295514feaa8cd50087ec .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/cd9471881a1798d9b85b1e681de0397e28d5451a .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/abb19fbc45e19d42367783b6cda7cc2b72651cb7 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/87a00276c43a9f2475f1e92308df86a4203d6a5 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/9a48124fbe18d2e37ea9b631f5bbc0127d5b66cc .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/533373d70ae9657955918a4a3d1f5a44126aa16a .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/d4d98957825f4e202004828ec3be2f45d5bf2169 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/d2708f79d04dcdfce6b5bec3183ed7bbd12354d .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/7559c16d2cdaf2901f5228402b62d4079b92937d .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/DevBoard/781a5bc29445746957c4057ccd484661da2fe64e .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/a1d83feb01df484a5adbbd09706d0c1f571091a3 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/e5b7489a1c670b592c01bc9e81b8200da3f3f7e .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/975527002/plib_clk.o: ../src/config/DevBoard/peripheral/clk/plib_clk.c  .generated_files/flags/DevBoard/779bc50a8136c6c99c64e0d51760c680fa492414 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975527002" 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/975527002/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975527002/plib_clk.o.d" -o ${OBJECTDIR}/_ext/975527002/plib_clk.o ../src/config/DevBoard/peripheral/clk/plib_clk.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975528730/plib_efc.o: ../src/config/DevBoard/peripheral/efc/plib_efc.c  .generated_files/flags/DevBoard/8e5728cb6b7fa8bf30bca63eec285433923d0d40 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975528730" 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975528730/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975528730/plib_efc.o.d" -o ${OBJECTDIR}/_ext/975528730/plib_efc.o ../src/config/DevBoard/peripheral/efc/plib_efc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/176903338/plib_nvic.o: ../src/config/DevBoard/peripheral/nvic/plib_nvic.c  .generated_files/flags/DevBoard/78cdc29d762d3b10f6231b04f595f5a0d0140f74 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/176903338" 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/176903338/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/176903338/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/176903338/plib_nvic.o ../src/config/DevBoard/peripheral/nvic/plib_nvic.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975539406/plib_pio.o: ../src/config/DevBoard/peripheral/pio/plib_pio.c  .generated_files/flags/DevBoard/d2f2f3b733c1be6e563eff5e744e93cbd6a31790 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975539406" 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/975539406/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975539406/plib_pio.o.d" -o ${OBJECTDIR}/_ext/975539406/plib_pio.o ../src/config/DevBoard/peripheral/pio/plib_pio.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541657/plib_rtc.o: ../src/config/DevBoard/peripheral/rtc/plib_rtc.c  .generated_files/flags/DevBoard/9a27e5e236e16a20aaebf1f50ce884fddeb287a8 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975541657" 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541657/plib_rtc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541657/plib_rtc.o.d" -o ${OBJECTDIR}/_ext/975541657/plib_rtc.o ../src/config/DevBoard/peripheral/rtc/plib_rtc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/975541674/plib_rtt.o: ../src/config/DevBoard/peripheral/rtt/plib_rtt.c  .generated_files/flags/DevBoard/ce5db993432c801f8cb3fb77e9bd764ae6f555be .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/975541674" 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/975541674/plib_rtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/975541674/plib_rtt.o.d" -o ${OBJECTDIR}/_ext/975541674/plib_rtt.o ../src/config/DevBoard/peripheral/rtt/plib_rtt.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/177051549/plib_supc.o: ../src/config/DevBoard/peripheral/supc/plib_supc.c  .generated_files/flags/DevBoard/f836e37ecdf9e6c42d6bb727306f700ed05a610e .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/177051549" 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o.d 
	@${RM} ${OBJECTDIR}/_ext/177051549/plib_supc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/177051549/plib_supc.o.d" -o ${OBJECTDIR}/_ext/177051549/plib_supc.o ../src/config/DevBoard/peripheral/supc/plib_supc.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/522720201/plib_tc0.o: ../src/config/DevBoard/peripheral/tc/plib_tc0.c  .generated_files/flags/DevBoard/e56b6000e0a8c46d6df40b2e1a29fd1ad8330cb5 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/522720201" 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/522720201/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/522720201/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/522720201/plib_tc0.o ../src/config/DevBoard/peripheral/tc/plib_tc0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o: ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c  .generated_files/flags/DevBoard/69aaeda3283c7555a176635608c3abc7432b246d .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/29817896" 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o.d" -o ${OBJECTDIR}/_ext/29817896/plib_twihs0_master.o ../src/config/DevBoard/peripheral/twihs/master/plib_twihs0_master.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart1.o: ../src/config/DevBoard/peripheral/usart/plib_usart1.c  .generated_files/flags/DevBoard/4706cd48394a760ad9f09b9c8790afe6dc9fdbeb .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart1.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart1.o ../src/config/DevBoard/peripheral/usart/plib_usart1.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1195404349/plib_usart0.o: ../src/config/DevBoard/peripheral/usart/plib_usart0.c  .generated_files/flags/DevBoard/f99e8ec9787c8e9e8984af5142c24b0bfd4d981 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1195404349" 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1195404349/plib_usart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1195404349/plib_usart0.o.d" -o ${OBJECTDIR}/_ext/1195404349/plib_usart0.o ../src/config/DevBoard/peripheral/usart/plib_usart0.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1583257634/xc32_monitor.o: ../src/config/DevBoard/stdio/xc32_monitor.c  .generated_files/flags/DevBoard/e89b74b1603e043ee58b3fca0f8499d187bcde0a .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1583257634" 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1583257634/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1583257634/xc32_monitor.o ../src/config/DevBoard/stdio/xc32_monitor.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1973979987/sys_cache.o: ../src/config/DevBoard/system/cache/sys_cache.c  .generated_files/flags/DevBoard/98ef0e531cae7ed66ade6a2670499bf40f9bfa2a .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1973979987" 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1973979987/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1973979987/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1973979987/sys_cache.o ../src/config/DevBoard/system/cache/sys_cache.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1497937361/sys_int.o: ../src/config/DevBoard/system/int/src/sys_int.c  .generated_files/flags/DevBoard/837220c104ea60ce27892d138a672c209df3b2ee .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1497937361" 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1497937361/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1497937361/sys_int.o.d" -o ${OBJECTDIR}/_ext/1497937361/sys_int.o ../src/config/DevBoard/system/int/src/sys_int.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1790450025/sys_time.o: ../src/config/DevBoard/system/time/src/sys_time.c  .generated_files/flags/DevBoard/c9cede720395e66c19610543e3961172d4ecfc12 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1790450025" 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1790450025/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1790450025/sys_time.o.d" -o ${OBJECTDIR}/_ext/1790450025/sys_time.o ../src/config/DevBoard/system/time/src/sys_time.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/initialization.o: ../src/config/DevBoard/initialization.c  .generated_files/flags/DevBoard/94e2453e0b6cad4631f3a653867d79650296e0c4 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/initialization.o.d" -o ${OBJECTDIR}/_ext/1844592860/initialization.o ../src/config/DevBoard/initialization.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/interrupts.o: ../src/config/DevBoard/interrupts.c  .generated_files/flags/DevBoard/1c4186351b9cdef371e2674a1711c0cdbaa43131 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/interrupts.o.d" -o ${OBJECTDIR}/_ext/1844592860/interrupts.o ../src/config/DevBoard/interrupts.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/exceptions.o: ../src/config/DevBoard/exceptions.c  .generated_files/flags/DevBoard/ccfb9b3e722fe4d692ac6d52cdfbbea9afbacba8 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/exceptions.o.d" -o ${OBJECTDIR}/_ext/1844592860/exceptions.o ../src/config/DevBoard/exceptions.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/startup_xc32.o: ../src/config/DevBoard/startup_xc32.c  .generated_files/flags/DevBoard/60561d51106221ae9e52d96be37f26bbfedf9a05 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1844592860/startup_xc32.o ../src/config/DevBoard/startup_xc32.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/libc_syscalls.o: ../src/config/DevBoard/libc_syscalls.c  .generated_files/flags/DevBoard/92d88a54604c3b8e665e2bae27a88f4ddf7b80c7 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1844592860/libc_syscalls.o ../src/config/DevBoard/libc_syscalls.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/tasks.o: ../src/config/DevBoard/tasks.c  .generated_files/flags/DevBoard/f955b92df0b2186c7bee6ee2831060d8020c4706 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/tasks.o.d" -o ${OBJECTDIR}/_ext/1844592860/tasks.o ../src/config/DevBoard/tasks.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1844592860/MAX30102.o: ../src/config/DevBoard/MAX30102.c  .generated_files/flags/DevBoard/5af4fb2f8f95469277a8067a1be949d485abdc29 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1844592860" 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844592860/MAX30102.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844592860/MAX30102.o.d" -o ${OBJECTDIR}/_ext/1844592860/MAX30102.o ../src/config/DevBoard/MAX30102.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/DevBoard/dc0ebf55e570abaaa9d4f0688f9fed60c0675f19 .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/DevBoard/60beb25f13d73815311563f3e67b8305af3baddf .generated_files/flags/DevBoard/8992419dee6e5de4ffe1b100b8948025a65d2d9e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/DevBoard" -I"../src/packs/ATSAME70Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)   ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/DevBoard/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/DevBoard/ATSAME70Q21B.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_DevBoard=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/HeartByte-Project.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/DevBoard
	${RM} -r dist/DevBoard

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
