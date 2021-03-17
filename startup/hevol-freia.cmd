require autosave,5.7+
epicsEnvSet("AUTOSAVE_SYSM_PV_PREFIX","hevol:")


dbLoadRecords("hevol-freia.db")

requireSnippet(hevol-freia-preSaveRestore.cmd)

#############################################
## IOC initialization                      ##
#############################################

iocInit

requireSnippet(hevol-freia-postSaveRestore.cmd)
