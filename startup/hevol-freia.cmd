require autosave,5.7+
epicsEnvSet("AUTOSAVE_SYSM_PV_PREFIX","hevol:")


dbLoadRecords("hevol-freia.db")

requireSnippet(hevol-freia-preSaveRestore.cmd)

#############################################
## IOC initialization                      ##
#############################################

iocInit

requireSnippet(hevol-freia-postSaveRestore.cmd)

# Wait for connecting to Env-Container:TT001:sRdV and
# set Cryo-HeVol:HPstorage:InOut = 0 in order to process
# Cryo-HeVol:HPstorage:dMassHe without changing its value
# and change the severity from INVALID to NO_ALARM

epicsThreadSleep 3
dbpf Cryo-HeVol:HPstorage:InOut 0

