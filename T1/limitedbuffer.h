/*
Limited buffer
*/

#ifndef LBUF_H
#define LBUF_H

#include <pthread.h>
#include <semaphore.h> 

struct t_LBUF {
    int n; // Size of the buffer
    int p; // Number of producers
    int c; // Number of consumers

    int *buffer; // Buffer of size n
    int **pendingReads; // Matrix that indicates for each position which consumers have pending reads (n x c)
    int *nextConsume; // Next position the consumer will read from (c)

    int nextWriteIndex; // Next index the writer should deposit the data

    int waitForDeposit; // Number of threads on hold to write
    int *waitForRead; // Number of threads on hold to read, for each position (n)

    int nW; // Number of active writers
    int *nR; // Number of active readers for each position (n)

    sem_t e;
    sem_t sW;
    sem_t *sR;
};

typedef struct t_LBUF LBUF;

LBUF * lbuf_create(int nPosition, int pProducers, int cConsumers);

void lbuf_deposit(LBUF * lbuf, int data);

int lbuf_consume(LBUF * lbuf, int threadId);

void lbuf_free(LBUF * lbuf);

#endif
