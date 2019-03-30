#!../../bin/linux-x86_64/CavitySimulator

## You may have to change CavitySimulator to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/CavitySimulator.dbd"
CavitySimulator_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=llrfuser")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=llrfuser"
