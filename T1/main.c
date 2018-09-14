#include <limitedbuffer.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define NO_SLEEP 0
#define SLEEP_ALL 0x1
#define SLEEP_PRODUCERS 0x10
#define SLEEP_CONSUMERS 0x100

#define N_DEPOSITS_PER_THREAD 10
#define DEBUG 0

typedef struct consumerInfo_t {
    LBUF *lbuf;
    int threadId;
    int mode;
    int nDeposits;
} consumerInfo;

typedef struct producerInfo_t {
    LBUF *lbuf;
    int threadId;
    int nDeposits;
} producerInfo;

typedef struct threadInfo_t {
    pthread_t thread;
    char name[64];
} threadInfo;

void *consume(void *args)
{
  consumerInfo *cInfo = (consumerInfo *)args;

  printf("Consumer %d start\n", cInfo->threadId);

  for(int i = 0; i < cInfo->nDeposits; i++) {
      int a = lbuf_consume(cInfo->lbuf, cInfo->threadId);
      printf("[C%d] Consumed %d \n", cInfo->threadId, a);
      if(cInfo->mode & (SLEEP_ALL | SLEEP_CONSUMERS)) {
        sleep(1);
      }
  }

  return NULL;
}

void *deposit(void *args)
{
    producerInfo *pInfo = (producerInfo *)args;

    printf("Producer %d start\n", pInfo->threadId);

    for(int i = 0; i < pInfo->nDeposits; i++) {
        printf("[D%d] Will deposit %d\n", pInfo->threadId, i);
        lbuf_deposit(pInfo->lbuf, i);
        printf("[D%d] Deposited %d\n", pInfo->threadId, i);
    }

    return NULL;
}

void ldebug(LBUF *lbuf) {
    printf("\nn=%d p=%d c=%d\nwaitForDeposit=%d waitForRead=%d\n", lbuf->n, lbuf->p, lbuf->c, lbuf->waitForDeposit, lbuf->waitForRead);
}

int main(int argc, char **argv) {
    if(argc < 4) {
        printf("USAGE: lbuf nPositions nProducers nConsumers [ mode = NO_SLEEP] \n");
        printf("  mode: SLEEP_ALL - each consumer and producer will sleep for 1 second between requests \n");
        printf("        SLEEP_PRODUCERS - each producer will sleep for 1 second between requests \n");
        printf("        SLEEP_CONSUMERS - each consumer will sleep for 1 second between requests \n");
        printf("        NO_SLEEP - (default) each consumer and producer will execute without any sleep calls\n");
        printf("\n Description: simulates de limited buffer (limitedbuffer.h) for a specified number of producers/consumers\n\n");
        exit(0);
    }

    int nPositions = -1;
    int nProducers = -1;
    int nConsumers = -1;

    int ret = 0;
    ret = sscanf(argv[1], "%d", &nPositions);
    if (ret != 1) return -1;
    ret = sscanf(argv[2], "%d", &nProducers);
    if (ret != 1) return -1;
    ret = sscanf(argv[3], "%d", &nConsumers);
    if (ret != 1) return -1;

    if(nPositions < 1 || nProducers < 1 || nConsumers < 1) {
        printf("Error: nPositions, nProducers and nConsumers should be greater than 0");
        exit(-1);
    }

    int mode = NO_SLEEP;

    if(argc == 5) {
        char *modeStr = (char *) malloc(1024 * sizeof(char));
        ret = sscanf(argv[4], "%s", modeStr);
        if (ret != 1) return -1;

        if(strcmp(modeStr, "NO_SLEEP") == 0)
            mode = NO_SLEEP;
        else if(strcmp(modeStr, "SLEEP_ALL") == 0)
            mode = SLEEP_ALL;
        else if(strcmp(modeStr, "SLEEP_PRODUCERS") == 0)
            mode = SLEEP_PRODUCERS;
        else if(strcmp(modeStr, "SLEEP_CONSUMERS") == 0)
            mode = SLEEP_CONSUMERS;
        else {
            free(modeStr);
            printf("Invalid mode\n");
            exit(-1);
        }

        free(modeStr);
    }
    else if(argc != 4) {
        printf("Unknown combination of parameters\n");
        exit(-1);
    }

    // call a function in another file
    LBUF *lbuf = lbuf_create(nPositions, nProducers, nConsumers);


    printf("Deposit 0 start\n");
    int counter = 0;

    for(counter = 1; counter <= lbuf->n; counter++) {
        printf("[D0] Will deposit %d\n", counter);
        lbuf_deposit(lbuf, counter);
        printf("[D0] Deposited %d\n", counter);
    }

    int threadCount = 0;
    threadInfo threads[1024];

    consumerInfo *cInfo = (consumerInfo *) malloc(sizeof(consumerInfo) * nConsumers);
    for(int i = 0; i < nConsumers; i++) {
        cInfo[i].lbuf = lbuf;
        cInfo[i].threadId = i;
        cInfo[i].mode = mode;
        cInfo[i].nDeposits = N_DEPOSITS_PER_THREAD;

        int threadIdx = threadCount++;
        if(threadIdx >= 1024) {
            printf("Maximum number of threads reached. Exiting.\n");
            exit(-1);
        }
        threadInfo *thread = &threads[threadIdx];
        sprintf(thread->name, "C%d", i);

        if(pthread_create(&thread->thread, NULL, consume, cInfo + i)) {
            fprintf(stderr, "Error creating thread\n");
            return 1;
        }
    }

    producerInfo *pInfo = (producerInfo *) malloc(sizeof(producerInfo) * nProducers);
    for(int i = 1; i < nProducers; i++) { // Create additional producers
        pInfo[i].lbuf = lbuf;
        pInfo[i].threadId = i;
        pInfo[i].nDeposits = N_DEPOSITS_PER_THREAD;

        int threadIdx = threadCount++;
        if(threadIdx >= 1024) {
            printf("Maximum number of threads reached. Exiting.\n");
            exit(-1);
        }
        threadInfo *thread = &threads[threadIdx];
        sprintf(thread->name, "P%d", i);

        if(pthread_create(&thread->thread, NULL, deposit, pInfo + i)) {
            fprintf(stderr, "Error creating thread\n");
            return 1;
        }
    }

    for(; counter <= N_DEPOSITS_PER_THREAD; counter++) {
        printf("[D0] Will deposit %d\n", counter);
        lbuf_deposit(lbuf, counter);
        printf("[D0] Deposited %d\n", counter);
    }

    printf("[D0] Ended (in main thread)\n");

#if (DEBUG == 1)
    ldebug(lbuf);
    int i = 0;
    while(i++ < 30) { // 30 seconds execution time
        printf("Waiting... (%d seconds until finished)", 30-i);
        ldebug(lbuf);
        sleep(1);
    }
#endif

    for(int i = 0; i < threadCount; i++) {
        threadInfo *thread = &threads[i];
        pthread_join(thread->thread, NULL);
        printf("Ended %s\n", thread->name);
    }

    printf("Main thread will end\n");

    lbuf_free(lbuf);
    free(pInfo);
    free(cInfo);

    return(0);
}
