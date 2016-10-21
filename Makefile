# Makefile for slide-ansible-for-development.

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget

# Bin scripts
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
GENERATE = $(shell) $(SCRIPT_DIR)/generate.sh
GVM = $(shell) $(SCRIPT_DIR)/gvm.sh
PYENV = $(shell) $(SCRIPT_DIR)/pyenv.sh
SETUP = $(shell) $(SCRIPT_DIR)/setup.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh


clean:
	$(CLEAN)

environment:
	$(GVM)
	$(PYENV)

generate:
	$(GENERATE)

setup:
	$(SETUP)

test:
	$(TEST)
