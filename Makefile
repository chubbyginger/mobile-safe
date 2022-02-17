# Makefile for mobile-safe.

# Cross-Compile options
CROSS_COMPILE=arm-linux-gnueabi-
# The compiler
XX=$(CROSS_COMPILE)g++

INCLUDE_PATH=./lib
CFLAGS=-g -I$(INCLUDE_PATH)
SRC_LIST=$(wildcard *.cpp)
TARGET=mobile-safe.elf

default: all

all:
	$(XX) $(CFLAGS) -o $(TARGET) lib/ev3dev.cpp $(SRC_LIST)

# Simple target to test the environment.
test-env:
	echo int main() {} > dummy.cpp
	$(XX) $(CFLAGS) -o dummy.elf dummy.cpp
	rm dummy.elf dummy.cpp

clean:
	rm mobile-safe.elf