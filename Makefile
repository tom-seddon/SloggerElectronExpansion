ifeq ($(OS),Windows_NT)
PYTHON:=py -3
else
PYTHON:=python3
endif

TASS:=64tass

##########################################################################
##########################################################################

PWD:=$(shell $(PYTHON) submodules/shellcmd.py/shellcmd.py realpath .)

SHELLCMD:=$(PYTHON) "$(PWD)/submodules/shellcmd.py/shellcmd.py"

BUILD:=$(PWD)/build

##########################################################################
##########################################################################

_V:=$(if $(VERBOSE),,@)

##########################################################################
##########################################################################

.PHONY:build
build:
	$(_V)$(SHELLCMD) mkdir $(BUILD)

	$(_V)64tass --quiet --nostart --case-sensitive -Wall "--list=$(BUILD)/Electron-Expansion-v2.02.lst" "--output=$(BUILD)/Electron-Expansion-v2.02.rom" Electron-Expansion-v2.02.s65

# Don't print full paths
	$(_V)$(SHELLCMD) sha1 "build/Electron-Expansion-v2.02.rom"
	$(_V)$(SHELLCMD) sha1 "originals/Electron-Expansion-v2.02.rom"

.PHONY:clean
clean:
	$(_V)$(SHELLCMD) rm-tree "$(BUILD)"
