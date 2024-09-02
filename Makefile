CC := gcc
SRCS := src/*.c
CFLAGS := -g -Wall -O2 -std=c99
LDFLAGS := `sdl2-config --cflags --libs` 

all:
	$(CC) $(SRC) $(CFLAGS) $(LFLAGS) -o ./bin/chip8
