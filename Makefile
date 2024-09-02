CC := clang
CFLAGS := -Wall -03 -std=c99 -arch arm64
LDFLAGS := -lSDL2 -arch arm64
SRCS := src
OBJS := $(SRCS:.c=.o)
TARGET := chip8

all: $(TARGET)
