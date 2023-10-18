


test: 
@	echo test
#Makefile options 
SHELL=/bin/bash

# Compiler optoons
COMPILER=gcc
OPTIONS=-Wall -Wextra -g 
COMPILE=$(COMPILER) $(OPTIONS)

# All folders
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
	@echo test

show:
	@echo "$(TEST_FILES)"
	@echo "$(SRC_FILES)"
	@echo "$(FILES_TO_TEST)"


$(TEST)/%.c: 
	$echo "$@"



.PHONY: % show 
