#include <limitedbuffer.h>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

typedef struct consumerInfo_t {
    LBUF *lbuf;
    int threadId;
} consumerInfo;

/* this function is run by the second thread */
void *consume(void *args)
{
  printf("Consume start\n");

  /* increment x to 100 */
  consumerInfo *cInfo = (consumerInfo *)args;

  for(int i = 0; i < 8; i++) {
      int a = lbuf_consume(cInfo->lbuf, cInfo->threadId);
      //sleep(1);
      printf("[%d] Consumed %d \n", cInfo->threadId, a);
  }

  return NULL;
}

void ldebug(LBUF *lbuf) {
    printf("\nn=%d p=%d c=%d\nwaitForDeposit=%d waitForRead=%d\n", lbuf->n, lbuf->p, lbuf->c, lbuf->waitForDeposit, lbuf->waitForRead);
}

int main() {
  // call a function in another file
  LBUF *lbuf = lbuf_create(3, 2, 3);


    printf("Deposit start\n");
    lbuf_deposit(lbuf, 1);
    printf("Deposit 1\n");
    lbuf_deposit(lbuf, 2);
    printf("Deposit 2\n");
    lbuf_deposit(lbuf, 3);
    printf("Deposit 3\n");

  consumerInfo cInfo1;
  cInfo1.lbuf = lbuf;
  cInfo1.threadId = 0;

  /* this variable is our reference to the second thread */
  pthread_t n1_thread;

  if(pthread_create(&n1_thread, NULL, consume, &cInfo1)) {
    fprintf(stderr, "Error creating thread\n");
    return 1;
  }

    consumerInfo cInfo2;
    cInfo2.lbuf = lbuf;
    cInfo2.threadId = 1;

    /* this variable is our reference to the third thread */
    pthread_t n2_thread;
sleep(2);
    if(pthread_create(&n2_thread, NULL, consume, &cInfo2)) {
        fprintf(stderr, "Error creating thread\n");
        return 1;
    }

    consumerInfo cInfo3;
    cInfo3.lbuf = lbuf;
    cInfo3.threadId = 2;

    /* this variable is our reference to the third thread */
    pthread_t n3_thread;
sleep(3);
    if(pthread_create(&n3_thread, NULL, consume, &cInfo3)) {
        fprintf(stderr, "Error creating thread\n");
        return 1;
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