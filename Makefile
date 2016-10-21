# Makefile for slide-git-flow-developer development.
# See INSTALL for details.

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget
PIP = PIP
# Bin scripts
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
GENERATE = $(shell) $(SCRIPT_DIR)/generate.sh
SETUP = $(shell) $(SCRIPT_DIR)/setup.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh


clean:
    $(CLEAN)


setup:
    $(SETUP)


generate:
    $(GENERATE)


test:
    $(TEST)
