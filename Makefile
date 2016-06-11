# Makefile for slide-git-flow-developer development.
# See INSTALL for details.

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget
# Bin scripts
GENERATE = $(shell) $(SCRIPT_DIR)/generate
SETUP = $(shell) $(SCRIPT_DIR)/setup
TEST = $(shell) $(SCRIPT_DIR)/test

plugins_vagrant:
	$(PLUGINS_VAGRANT)


roles:
	$(ROLES_ANSIBLE)


ansible_provision:
	$(ANSIBLE_PROVISION)


ansible_deploy:
	$(ANSIBLE_DEPLOY)


clean:
	$(CLEAN)


clean_migrations: clean
	$(CLEAN_MIGRATIONS)


setup:
	$(SETUP)


generate:
	$(GENERATE)


test:
	$(TEST)


deploy:
	$(ANSIBLE_PROVISION)
	$(ANSIBLE_DEPLOY)


distclean: clean
	rm -rf $(ROOT_DIR)/lib
	rm -rf $(ROOT_DIR)/*.egg-info
	rm -rf $(ROOT_DIR)/demo/*.egg-info


maintainer-clean: distclean
	rm -rf $(BIN_DIR)
	rm -rf $(ROOT_DIR)/lib/
