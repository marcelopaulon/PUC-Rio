#Compiler Info
CC=gcc
CFLAGS=-Wall -Wextra -m32

#Files
SOURCES=sim-virtual.c simulation.c lru.c nru.c sec.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=sim-virtual

#Rules
all: $(SOURCES)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(SOURCES) -I.
