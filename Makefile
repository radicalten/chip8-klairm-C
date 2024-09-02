OBJS := src/chip8.c
HEADERS := src/chip8.h
CC := gcc
C_FLAGS := -w -pedantic -std=c99 -march arm64
L_FLAGS := -lSDL2 -march arm64
OBJ_NAME := chip8

all: $(OBJS)
	$(CC) $(OBJS) $(HEADERS) $(C_FLAGS) $(L_FLAGS) -o $(OBJ_NAME) 

