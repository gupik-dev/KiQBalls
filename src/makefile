#
# Copyright 2011-2015 Branimir Karadzic. All rights reserved.
# License: http://www.opensource.org/licenses/BSD-2-Clause
#

PROJECT_DIR=..
RUNTIME_DIR=$(PROJECT_DIR)/runtime
BUILD_DIR=$(PROJECT_DIR)/.build

include $(PROJECT_DIR)/scripts/shader.mk

rebuild:
	@make -s --no-print-directory TARGET=0 clean all
	@make -s --no-print-directory TARGET=1 clean all
	@make -s --no-print-directory TARGET=2 clean all
	@make -s --no-print-directory TARGET=3 clean all
	@make -s --no-print-directory TARGET=4 clean all
