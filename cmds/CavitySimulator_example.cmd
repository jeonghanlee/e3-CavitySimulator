require CavitySimulator, master
require stream, 2.8.8 
require iocStats, ae5d083


epicsEnvSet "TOP" "$(E3_CMD_TOP)/.."

epicsEnvSet("USER", "LLRF_USER")
epicsEnvSet("PORT", "myConnection")
epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST","NO")
epicsEnvSet("EPICS_CA_ADDR_LIST","10.1.3.192:5064")

epicsEnvSet("STREAM_PROTOCOL_PATH", "$(CavitySimulator_DB)")

drvAsynIPPortConfigure("$(PORT)", "10.1.3.229:7",0,0,0)


iocshLoad("$(iocStats_DIR)/iocStats.iocsh", "IOCNAME=$(USER):IocStats")

dbLoadRecords("Model.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Network.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Calibration.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Status.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Identification.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Expert.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Temperature.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("EEPROM.db", "USER=$(USER), PORT=$(PORT)")
dbLoadRecords("Piezo.db", "USER=$(USER), PORT=$(PORT)")

iocInit()

