#Compiler Info
CC=gcc
CFLAGS=-Wall -m32

#Files
SOURCES=sim-virtual.c simulation.c lru.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=sim-virtual

#Rules
all: $(SOURCES)
	$(CC) -o $(EXECUTABLE) $(SOURCES) -I.
