#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin_4.x-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/AddressSpace.o \
	${OBJECTDIR}/Log.o \
	${OBJECTDIR}/MMU.o \
	${OBJECTDIR}/Message.o \
	${OBJECTDIR}/ProcessingUnit.o \
	${OBJECTDIR}/ReadyQueue.o \
	${OBJECTDIR}/SystemCall_IF.o \
	${OBJECTDIR}/Thread.o \
	${OBJECTDIR}/ThreadMap.o \
	${OBJECTDIR}/UserApp.o \
	${OBJECTDIR}/VirtualRegister.o \
	${OBJECTDIR}/WaitingThreadSet.o \
	${OBJECTDIR}/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/utah03.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/utah03.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/utah03 ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/AddressSpace.o: AddressSpace.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/AddressSpace.o AddressSpace.cpp

${OBJECTDIR}/Log.o: Log.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Log.o Log.cpp

${OBJECTDIR}/MMU.o: MMU.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MMU.o MMU.cpp

${OBJECTDIR}/Message.o: Message.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Message.o Message.cpp

${OBJECTDIR}/ProcessingUnit.o: ProcessingUnit.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ProcessingUnit.o ProcessingUnit.cpp

${OBJECTDIR}/ReadyQueue.o: ReadyQueue.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ReadyQueue.o ReadyQueue.cpp

${OBJECTDIR}/SystemCall_IF.o: SystemCall_IF.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SystemCall_IF.o SystemCall_IF.cpp

${OBJECTDIR}/Thread.o: Thread.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Thread.o Thread.cpp

${OBJECTDIR}/ThreadMap.o: ThreadMap.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ThreadMap.o ThreadMap.cpp

${OBJECTDIR}/UserApp.o: UserApp.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UserApp.o UserApp.cpp

${OBJECTDIR}/VirtualRegister.o: VirtualRegister.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/VirtualRegister.o VirtualRegister.cpp

${OBJECTDIR}/WaitingThreadSet.o: WaitingThreadSet.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/WaitingThreadSet.o WaitingThreadSet.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/UserApp1testclass.o ${TESTDIR}/tests/UserApp1testrunner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} `cppunit-config --libs`   


${TESTDIR}/tests/UserApp1testclass.o: tests/UserApp1testclass.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/UserApp1testclass.o tests/UserApp1testclass.cpp


${TESTDIR}/tests/UserApp1testrunner.o: tests/UserApp1testrunner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/UserApp1testrunner.o tests/UserApp1testrunner.cpp


${OBJECTDIR}/AddressSpace_nomain.o: ${OBJECTDIR}/AddressSpace.o AddressSpace.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/AddressSpace.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/AddressSpace_nomain.o AddressSpace.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/AddressSpace.o ${OBJECTDIR}/AddressSpace_nomain.o;\
	fi

${OBJECTDIR}/Log_nomain.o: ${OBJECTDIR}/Log.o Log.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Log.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Log_nomain.o Log.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Log.o ${OBJECTDIR}/Log_nomain.o;\
	fi

${OBJECTDIR}/MMU_nomain.o: ${OBJECTDIR}/MMU.o MMU.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/MMU.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/MMU_nomain.o MMU.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/MMU.o ${OBJECTDIR}/MMU_nomain.o;\
	fi

${OBJECTDIR}/Message_nomain.o: ${OBJECTDIR}/Message.o Message.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Message.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Message_nomain.o Message.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Message.o ${OBJECTDIR}/Message_nomain.o;\
	fi

${OBJECTDIR}/ProcessingUnit_nomain.o: ${OBJECTDIR}/ProcessingUnit.o ProcessingUnit.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/ProcessingUnit.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ProcessingUnit_nomain.o ProcessingUnit.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/ProcessingUnit.o ${OBJECTDIR}/ProcessingUnit_nomain.o;\
	fi

${OBJECTDIR}/ReadyQueue_nomain.o: ${OBJECTDIR}/ReadyQueue.o ReadyQueue.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/ReadyQueue.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ReadyQueue_nomain.o ReadyQueue.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/ReadyQueue.o ${OBJECTDIR}/ReadyQueue_nomain.o;\
	fi

${OBJECTDIR}/SystemCall_IF_nomain.o: ${OBJECTDIR}/SystemCall_IF.o SystemCall_IF.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/SystemCall_IF.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SystemCall_IF_nomain.o SystemCall_IF.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/SystemCall_IF.o ${OBJECTDIR}/SystemCall_IF_nomain.o;\
	fi

${OBJECTDIR}/Thread_nomain.o: ${OBJECTDIR}/Thread.o Thread.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Thread.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Thread_nomain.o Thread.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Thread.o ${OBJECTDIR}/Thread_nomain.o;\
	fi

${OBJECTDIR}/ThreadMap_nomain.o: ${OBJECTDIR}/ThreadMap.o ThreadMap.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/ThreadMap.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ThreadMap_nomain.o ThreadMap.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/ThreadMap.o ${OBJECTDIR}/ThreadMap_nomain.o;\
	fi

${OBJECTDIR}/UserApp_nomain.o: ${OBJECTDIR}/UserApp.o UserApp.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/UserApp.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UserApp_nomain.o UserApp.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/UserApp.o ${OBJECTDIR}/UserApp_nomain.o;\
	fi

${OBJECTDIR}/VirtualRegister_nomain.o: ${OBJECTDIR}/VirtualRegister.o VirtualRegister.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/VirtualRegister.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/VirtualRegister_nomain.o VirtualRegister.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/VirtualRegister.o ${OBJECTDIR}/VirtualRegister_nomain.o;\
	fi

${OBJECTDIR}/WaitingThreadSet_nomain.o: ${OBJECTDIR}/WaitingThreadSet.o WaitingThreadSet.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/WaitingThreadSet.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/WaitingThreadSet_nomain.o WaitingThreadSet.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/WaitingThreadSet.o ${OBJECTDIR}/WaitingThreadSet_nomain.o;\
	fi

${OBJECTDIR}/main_nomain.o: ${OBJECTDIR}/main.o main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main_nomain.o main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/main.o ${OBJECTDIR}/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/utah03.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
