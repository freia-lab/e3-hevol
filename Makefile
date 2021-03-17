EXCLUDE_ARCHS += eldk
EXCLUDE_VERSIONS += 3.14

include ${EPICS_ENV_PATH}/module.Makefile


PROJECT = ioc_hevol_freia

#USR_DEPENDENCIES += seq
#USR_DEPENDENCIES += asyn,4.31.0+
#USR_DEPENDENCIES += autosave,5.7+
#USR_DEPENDENCIES += modbus,2.9+

#HEADERS += $(wildcard src/main/epics/misc-freiaApp/src/*.h)
#SOURCES += $(wildcard src/main/epics/misc-freiaApp/src/*.c)
#SOURCES += $(wildcard src/main/epics/misc-freiaApp/src/*.cpp)
#SOURCES += $(wildcard src/main/epics/misc-freiaApp/src/*.st)


OPIS = opi
MISCS += misc/ioc-hevol-freia.req
