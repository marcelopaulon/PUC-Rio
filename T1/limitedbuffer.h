/*
Limited buffer
*/

#ifndef LBUF_H
#define LBUF_H

#include <pthread.h>
#include <semaphore.h> 

struct t_LBUF {
    int n;
    int p;
    int c;

    int *buffer;
    int **pendingReads;
    int *nextConsume;

    int nextWriteIndex;

    int waitForDeposit;
    int waitForRead;

    sem_t e;
    sem_t sW;
    sem_t sR;
};

typedef struct t_LBUF LBUF;

LBUF * lbuf_create(int nPosition, int pProducers, int cConsumers);

void lbuf_deposit(LBUF * lbuf, int data);

int lbuf_consume(LBUF * lbuf, int threadId);

void lbuf_free(LBUF * lbuf);

#endif
