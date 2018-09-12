CC=gcc
CFLAGS=-I.
DEPS = limitedbuffer.h
OBJ = main.o limitedbuffer.o 

%.o: %.c $(DEPS)
	$(CC) -Wall -lpthread -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -Wall -lpthread -o $@ $^ $(CFLAGS)
