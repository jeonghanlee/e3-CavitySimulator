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
# Author  : llrfuser
# email   : llrfuser@esss.se
# Date    : generated by 2019Mar30-1131-48CET
# version : 0.0.0 
#
# template file is generated by ./e3TemplateGenerator.bash with 2cb7de6
# Please look at many other _module_.Makefile in e3-* repository
# 

## The following lines are mandatory, please don't change them.
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile
include $(E3_REQUIRE_CONFIG)/DECOUPLE_FLAGS


# If one would like to use the module dependency restrictly,
# one should look at other modules makefile to add more
# In most case, one should ignore the following lines:

#ifneq ($(strip $(ASYN_DEP_VERSION)),)
#asyn_VERSION=$(ASYN_DEP_VERSION)
#endif

#ifneq ($(strip $(SEQUENCER_DEP_VERSION)),)
#sequencer_VERSION=$(SEQUENCER_DEP_VERSION)
#endif


EXCLUDE_ARCHS = linux-ppc64e6500
EXCLUDE_ARCHS += linux-corei7-poky

APP:=CavitySimulatorApp
APPDB:=$(APP)/Db
APPSRC:=$(APP)/src


USR_INCLUDES += -I$(where_am_I)$(APPSRC)

# TEMPLATES += $(wildcard $(APPDB)/*.db)
TEMPLATES += $(wildcard $(APPDB)/Calibration.db)
TEMPLATES += $(wildcard $(APPDB)/Expert.db)
TEMPLATES += $(wildcard $(APPDB)/EEPROM.db)
TEMPLATES += $(wildcard $(APPDB)/Network.db)
TEMPLATES += $(wildcard $(APPDB)/Status.db)
TEMPLATES += $(wildcard $(APPDB)/Identification.db)
TEMPLATES += $(wildcard $(APPDB)/Temperature.db)
TEMPLATES += $(wildcard $(APPDB)/Model.db)
TEMPLATES += $(wildcard $(APPDB)/Piezo.db)

TEMPLATES += $(wildcard $(APPDB)/*.proto)
# TEMPLATES += $(wildcard $(APPDB)/*.template)



SCRIPTS += $(wildcard ../iocsh/*.iocsh)


## This RULE should be used in case of inflating DB files 
## db rule is the default in RULES_DB, so add the empty one
## Please look at e3-mrfioc2 for example.

db: 

.PHONY: db 

vlibs:

.PHONY: vlibs


