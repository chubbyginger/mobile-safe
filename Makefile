# Makefile for mobile-safe.

# Cross-Compile options
CROSS_COMPILE=arm-linux-gnueabi-
# The compiler
CC=$(CROSS_COMPILE)gcc

LIBRARY_PATH=./lib
CFLAGS=-g -I$(LIBRARY_PATH)
SRC_LIST=$(wildcard *.c)
TARGET=mobile-safe.elf

default: all

all:
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC_LIST) 

# Simple target to test the environment.
test-env:
	echo int main() {} > dummy.c
	$(CC) $(CFLAGS) -o dummy.elf dummy.c 
	rm dummy.elf dummy.c

clean:
	rm mobile-safe.elf