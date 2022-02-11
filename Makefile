# Makefile for mobile-safe.
CC=arm-linux-gnueabi-gcc
LD=arm-linux-gnueabi-ld
CFLAGS=-Wall -g
INC=./lib
default: all
all:
	$(CC) $(CFLAGS) -I$(INC) -c main.c -o main.o
	$(LD) -o mobile-safe main.o
test-env:
	echo "int main() {return 0;}" > dummy.c
	$(CC) $(CFLAGS) -I$(INC) -c dummy.c -o dummy.o
	$(LD) -o dummy dummy.o
	rm dummy dummy.o dummy.c
clean:
	rm ./mobile-safe *.o