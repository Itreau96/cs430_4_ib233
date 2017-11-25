# Simple makefile

CC = gcc
CFLAGS = -g -Wall

all: raytrace

# Create raycaster
raytrace: raycast.c raycast.h ib_3dmath.h parser.c parser.h
	$(CC) $(CFLAGS) raycast.c raycast.h ib_3dmath.h parser.c parser.h -o raytrace -lm

# Create clean
clean:
	-rm -rf raytrace *~
