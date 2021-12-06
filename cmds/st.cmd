# This should be a test or example startup script

epicsEnvSet ("IOCNAME", "ioc18-hevol")

require hevol
iocshLoad("$(hevol_DIR)/hevol.iocsh", "TOP=/opt/epics/autosave")

