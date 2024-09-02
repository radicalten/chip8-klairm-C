CC := gcc
SRCS := src/*.c
CFLAGS := -g -Wall -O2 -std=c99
LDFLAGS := -lSDL2

all:
	$(CC) $(SRC) $(CFLAGS) $(LDFLAGS) -o ./chip8
