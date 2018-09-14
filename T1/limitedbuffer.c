#include <limitedbuffer.h>

#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

LBUF * lbuf_create(int nPosition, int pProducers, int cConsumers) {
  LBUF *lbuf = (LBUF *) malloc(sizeof(LBUF));
  lbuf->n = nPosition;
  lbuf->p = pProducers;
  lbuf->c = cConsumers;

  lbuf->buffer = (int *) malloc(sizeof(int) * lbuf->n);

  lbuf->pendingReads = (int **) malloc(sizeof(int *) * lbuf->n);
  for(int i = 0 ; i < lbuf->n; i++) {
    lbuf->pendingReads[i] = (int *) malloc(sizeof(int) * lbuf->c);
    for(int j = 0; j < lbuf->c; j++) {
      lbuf->pendingReads[i][j] = 0;
    }
  }

  lbuf->nextConsume = (int *) malloc(sizeof(int) * lbuf->c);
  for(int i = 0 ; i < lbuf->c; i++) {
    lbuf->nextConsume[i] = 0;
  }

  lbuf->nextWriteIndex = 0;
  lbuf->waitForDeposit = 0;

  lbuf->nW = 0;

  sem_init(&lbuf->e, 0, 1);
  sem_init(&lbuf->sW, 0, 0);

  lbuf->sR = (sem_t *) malloc(sizeof(sem_t) * lbuf->n);
  lbuf->waitForRead = (int *) malloc(sizeof(int) * lbuf->n);
  lbuf->nR = (int *) malloc(sizeof(int) * lbuf->n);

  for(int i = 0; i < lbuf->n; i++) {
    sem_init(&lbuf->sR[i], 0, 0);
    lbuf->waitForRead[i] = 0;
    lbuf->nR[i] = 0;
  }

  return lbuf;
}

void SIGNAL(LBUF * lbuf) {
  int freeSlot = 1;
  for(int j = 0; j < lbuf->c; j++) {
    if(lbuf->pendingReads[lbuf->nextWriteIndex][j] != 0) {
      freeSlot = 0;
      break;
    }
  }

  for(int i = 0; i < lbuf->n; i++) {
    for(int j = 0; j < lbuf->c; j++) {
      if(lbuf->nW == 0 && lbuf->waitForRead[i] > 0) {
        lbuf->waitForRead[i]--;
        sem_post(&lbuf->sR[i]);
        return;
      }
    }
  }

  if(freeSlot == 1 && lbuf->nW == 0 && lbuf->nR[lbuf->nextWriteIndex] == 0 && lbuf->waitForDeposit > 0) {
    lbuf->waitForDeposit--;
    sem_post(&lbuf->sW);
    return;
  }

  sem_post(&lbuf->e);
}

void lbuf_deposit(LBUF * lbuf, int data) {
  // await lbuf->pendingReads[lbuf->nextWriteIndex] == 0:
  sem_wait(&lbuf->e);
  int shouldWait = 0;
  for(int i = 0; i < lbuf->c; i++) {
    if(lbuf->pendingReads[lbuf->nextWriteIndex][i] != 0) {
      shouldWait = 1;
      break;
    }
  }

  if(shouldWait == 1) {
    lbuf->waitForDeposit++;
    sem_post(&lbuf->e);
    sem_wait(&lbuf->sW);
  }

  lbuf->nW++;

  // SIGNAL
  SIGNAL(lbuf);

  int writeIndex = lbuf->nextWriteIndex;

  // Write to the buffer
  lbuf->buffer[writeIndex] = data;

  sem_wait(&lbuf->e);

  lbuf->nW--;

  for(int j = 0; j < lbuf->c; j++) {
    lbuf->pendingReads[writeIndex][j] = 1;
  }

  lbuf->nextWriteIndex++;
  if(lbuf->nextWriteIndex == lbuf->n) {
    lbuf->nextWriteIndex = 0;
  }

  // SIGNAL
  SIGNAL(lbuf);
}

int getAndAdvanceNextReadIndex(LBUF * lbuf, int threadId) {
  int readIndex = lbuf->nextConsume[threadId]; // Get next read index

  lbuf->nextConsume[threadId]++; // Setup for next consume call
  if(lbuf->nextConsume[threadId] == lbuf->n)
    lbuf->nextConsume[threadId] = 0;

  return readIndex;
}

int lbuf_consume(LBUF * lbuf, int threadId) {
  // await lbuf->pendingReads[readIndex][threadId] > 0
  sem_wait(&lbuf->e);

  int readIndex = getAndAdvanceNextReadIndex(lbuf, threadId);

  if(lbuf->pendingReads[readIndex][threadId] == 0) {
    // There are not any pending reads on this index
    lbuf->waitForRead[readIndex]++;
    sem_post(&lbuf->e);
    sem_wait(&lbuf->sR[readIndex]); // wait before reading
  }

  lbuf->nR[readIndex]++;

  // SIGNAL
  SIGNAL(lbuf);

  int data = lbuf->buffer[readIndex];

  sem_wait(&lbuf->e);

  lbuf->nR[readIndex]--;

  lbuf->pendingReads[readIndex][threadId]--;

  // SIGNAL
  SIGNAL(lbuf);

  return data;
}

void lbuf_free(LBUF * lbuf) {
  free(lbuf->buffer);
  free(lbuf->pendingReads);
  free(lbuf->nextConsume);
  sem_destroy(&lbuf->sW);
  for(int i = 0; i < lbuf->n; i++) {
    sem_destroy(&lbuf->sR[i]);
  }
  free(lbuf);
}
