TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = CavitySimulator
# CavitySimulator.dbd will be created and installed
DBD += CavitySimulator.dbd

# CavitySimulator.dbd will be made up from these files:
CavitySimulator_DBD += base.dbd

# Include dbd files from all support applications:
#CavitySimulator_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#CavitySimulator_LIBS += xxx

# CavitySimulator_registerRecordDeviceDriver.cpp derives from CavitySimulator.dbd
CavitySimulator_SRCS += CavitySimulator_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
CavitySimulator_SRCS_DEFAULT += CavitySimulatorMain.cpp
CavitySimulator_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#CavitySimulator_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
CavitySimulator_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

