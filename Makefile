#Makefile options 
SHELL=/bin/bash

# Compiler optoons
COMPILER=gcc
OPTIONS=-Wall -Wextra -g 
COMPILE=$(COMPILER) $(OPTIONS)

# All folders
pwd=$(shell pwd)
BUILD=build
LIB=libraries
TEST_LIB=$(LIB)/Unity
TEST=test
SRC=source

# Get Imporant files
TEST_FILES=$(subst test/,,$(wildcard $(TEST)/*))
SRC_FILES=$(subst source/,,$(wildcard $(SRC)/*.c))
FILES_TO_TEST=$(foreach file, $(SRC_FILES), $(findstring $(file), $(TEST_FILES))))
all: help

help: 
	@echo "------------------------------------------------------------"
	@echo "struct               Make the folders needed for the project"
	@echo "testing_library      Get the unity testing library"
	@echo "------------------------------------------------------------"

show:
	@echo "$(TEST_FILES)"
	@echo "$(SRC_FILES)"
	@echo "$(FILES_TO_TEST)"

struct:
	@mkdir -p $(pwd)"/$(BUILD)"
	@mkdir -p $(pwd)"/$(LIB)"
	@mkdir -p $(pwd)"/$(TEST)"
	@mkdir -p $(pwd)"/$(SRC)"

testing_library:
	@git clone https://github.com/ThrowTheSwitch/Unity.git "$(pwd)/$(LIB)/Unity"


.PHONY: % show 
