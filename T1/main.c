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

typedef struct consumerInfo_t {
    LBUF *lbuf;
    int threadId;
    int mode;
    int nDeposits;
} consumerInfo;

/* this function is run by the second thread */
void *consume(void *args)
{
  printf("Consume start\n");

  /* increment x to 100 */
  consumerInfo *cInfo = (consumerInfo *)args;

  for(int i = 0; i < cInfo->nDeposits; i++) {
      int a = lbuf_consume(cInfo->lbuf, cInfo->threadId);
      printf("[%d] Consumed %d \n", cInfo->threadId, a);
      if(cInfo->mode & (SLEEP_ALL | SLEEP_CONSUMERS)) {
        sleep(1);
      }
  }

  return NULL;
}

void ldebug(LBUF *lbuf) {
    printf("\nn=%d p=%d c=%d\nwaitForDeposit=%d waitForRead=%d\n", lbuf->n, lbuf->p, lbuf->c, lbuf->waitForDeposit, lbuf->waitForRead);
}

int main(int argc, char **argv) {
    if(argc < 4) {
        printf("USAGE: lbuf nPositions nProducers nConsumers [ mode] \n");
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
        ret = sscanf(argv[3], "%s", modeStr);
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


    printf("Deposit start\n");
    lbuf_deposit(lbuf, 1);
    printf("Deposit 1\n");
    lbuf_deposit(lbuf, 2);
    printf("Deposit 2\n");
    lbuf_deposit(lbuf, 3);
    printf("Deposit 3\n");

    for(int i = 0; i < nConsumers; i++) {
        consumerInfo cInfo;
        cInfo.lbuf = lbuf;
        cInfo.threadId = i;
        cInfo.mode = mode;
        cInfo.nDeposits = 8;

        pthread_t thread;

        if(pthread_create(&thread, NULL, consume, &cInfo)) {
            fprintf(stderr, "Error creating thread\n");
            return 1;
        }

        sleep(1 + i);
    }

    lbuf_deposit(lbuf, 4);
    printf("Deposit 4\n");
    lbuf_deposit(lbuf, 5);
    printf("Deposit 5\n");
    sleep(3);
    lbuf_deposit(lbuf, 6);
    printf("Deposit 6\n");
    lbuf_deposit(lbuf, 7);
    printf("Deposit 7\n");
    lbuf_deposit(lbuf, 8);
    printf("Deposit 8\n");

    ldebug(lbuf);
    while(1) {
        printf("Waiting...");
        ldebug(lbuf);
        sleep(1);
    }
    
    return(0);
}
