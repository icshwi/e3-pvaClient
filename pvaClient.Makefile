#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Friday, September 14 10:12:30 CEST 2018
# version : 0.0.2

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))


include $(E3_REQUIRE_TOOLS)/driver.makefile
#include $(where_am_I)/configure/CONFIG_PVACLIENT_VERSION

ifneq ($(strip $(PVDATA_DEP_VERSION)),)
pvdata_VERSION=$(PVDATA_DEP_VERSION)
endif

ifneq ($(strip $(PVACCESS_DEP_VERSION)),)
pvaccess_VERSION=$(PVACCESS_DEP_VERSION)
endif

ifneq ($(strip $(NORMATIVETYPES_DEP_VERSION)),)
normativetypes_VERSION=$(NORMATIVETYPES_DEP_VERSION)
endif

## Exclude linux-ppc64e6500
##EXCLUDE_ARCHS = linux-ppc64e6500


# *** ISSUES
# driver.makefile recursively read all include directories which were installed.
# The only way to exclude header files is....

iocStats_VERSION=
autosave_VERSION=
asyn_VERSION=
busy_VERSION=
modbus_VERSION=
ipmiComm_VERSION=
sequencer_VERSION=
sscan_VERSION=

std_VERSION=
ip_VERSION=
calc_VERSION=
pcre_VERSION=
stream_VERSION=
s7plc_VERSION=
recsync_VERSION=

devlib2_VERSION=
mrfioc2_VERSION=

exprtk_VERSION=
motor_VERSION=
ecmc_VERSION=
EthercatMC_VERSION=
ecmctraining_VERSION=


keypress_VERSION=
sysfs_VERSION=
symbolname_VERSION=
memDisplay_VERSION=
regdev_VERSION=
i2cDev_VERSION=

tosca_VERSION=
tsclib_VERSION=
ifcdaqdrv2_VERSION=

## The main issue is nds3, it is mandatory to disable it
## 
nds3_VERSION=
nds3epics_VERSION=
ifc14edrv_VERSION=
ifcfastint_VERSION=


nds_VERSION=
loki_VERSION=
sis8300drv_VERSION=
sis8300_VERSION=
sis8300llrfdrv_VERSION=
sis8300llrf_VERSION=


ADSupport_VERSION=
ADCore_VERSION=
ADSimDetector_VERSION=
ADAndor_VERSION=
ADAndor3_VERSION=
ADPointGrey_VERSION=
ADProsilica_VERSION=

amcpico8_VERSION=
adpico8_VERSION=
adsis8300_VERSION=
adsis8300bcm_VERSION=
adsis8300bpm_VERSION=
adsis8300fc_VERSION=


pvCommon_VERSION=
#pvData_VERSION=
#pvAccess_VERSION=
pva2pva_VERSION=
pvDatabase_VERSION=
#normativeTypes_VERSION=
#pvaClient_VERSION=







PVACLIENT_SRC:=src

USR_INCLUDES += -I$(COMMON_DIR)
USR_INCLUDES += -I$(where_am_I)$(PVACLIENT_SRC)

HEADERS += $(PVACLIENT_SRC)/pv/pvaClient.h
HEADERS += $(PVACLIENT_SRC)/pv/pvaClientMultiChannel.h

SOURCES += $(PVACLIENT_SRC)/pvaClient.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientPutData.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientGetData.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMonitorData.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientChannel.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientProcess.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientGet.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientPut.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMonitor.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientPutGet.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMultiChannel.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMultiGetDouble.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMultiPutDouble.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientMultiMonitorDouble.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientNTMultiPut.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientNTMultiData.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientNTMultiGet.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientNTMultiMonitor.cpp
SOURCES += $(PVACLIENT_SRC)/pvaClientRPC.cpp

## This RULE should be used in case of inflating DB files 
## db rule is the default in RULES_DB, so add the empty one
## Please look at e3-mrfioc2 for example.

db: 

.PHONY: db 


vlibs:

.PHONY: vlibs


