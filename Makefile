# Makefile for mobile-safe.

# Cross-Compiler
CROSS_COMPILE=arm-linux-gnueabi-
# The compiler and linker
CC=$(CROSS_COMPILE)gcc
LD=$(CROSS_COMPILE)ld

INC=./lib
CFLAGS=-Wall -g -I$(INC)
SRC_LIST = $(wildcard *.c)
OBJ_LIST = $(patsubst %.c,%.o,$(SRC_LIST))

default: all

all:
	$(CC) $(CFLAGS) -c $(SRC_LIST)
	$(LD) -o mobile-safe $(OBJ_LIST)

# Simple target to test the environment.
test-env:
	$(CC) $(CFLAGS) dummy.c -o dummy.o
	$(LD) -o dummy dummy.o
	rm dummy dummy.o dummy.c

clean:
	rm ./mobile-safe *.o