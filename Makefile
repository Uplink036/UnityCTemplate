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
TEST_LIB=...
TEST=test
SRC=source

# Get Imporant files
TEST_FILES=$(subst test/,,$(wildcard $(TEST)/*))
SRC_FILES=$(subst source/,,$(wildcard $(SRC)/*.c))
FILES_TO_TEST=$(foreach file, $(SRC_FILES), $(findstring $(file), $(TEST_FILES))))
all: help

help: 
	@echo "--------------------------------------------------------"
	@echo "struct 		Make the folders needed for the project"	
	@echo "--------------------------------------------------------"

show:
	@echo "$(TEST_FILES)"
	@echo "$(SRC_FILES)"
	@echo "$(FILES_TO_TEST)"

struct:
	@mkdir -p $(pwd)"/$(BUILD)"
	@mkdir -p $(pwd)"/$(LIB)"
	@mkdir -p $(pwd)"/$(TEST)"
	@mkdir -p $(pwd)"/$(SRC)"

$(TEST)/%.c: 
	$echo "$@"



.PHONY: % show 
