# Define the compiler and flags
CC := clang
CFLAGS := -Wall -O3 -std=c99 -arch arm64
LDFLAGS := -lSDL2

# Define the source files and the target executable
SRCS := src/chip8.c src/chip8.h
OBJS := $(SRCS:.c=.o)
TARGET := chip8

# Default target to build
all: $(TARGET)

# Rule to link the object files into the executable
$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

# Rule to compile the source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Rule to clean up the build artifacts
clean:
	rm -f $(OBJS) $(TARGET)

# Rule to remove all files created by Makefile
distclean: clean
	rm -f *~

# Phony targets
.PHONY: all clean distclean
