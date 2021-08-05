#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#define NUM_THREADS 2

static int var=0;

void *contCrescente()
{
   int i;
   for(i=1;i<=20;i++)
   {
	var++;
	printf("%d - %d\n",var, i);
	sleep(1);
   }
   pthread_exit(NULL);
}

void *contDecrescente()
{
   int i;
   for(i=30;i>=1;i--)
   {
	var++;
	printf("%d - %d\n",var, i);
	sleep(2);
   }
   pthread_exit(NULL);
}



int main(void)
{
   pthread_t threads[NUM_THREADS];
   int i=0;
   printf("Criando thread %d\n",i);
   pthread_create(&threads[i], NULL, contCrescente, NULL);
   i++;
   printf("Criando thread %d\n",i);
   pthread_create(&threads[i], NULL, contDecrescente, NULL);
   
   for(i=0;i<NUM_THREADS;i++)
   {
	pthread_join(threads[i],NULL);
   }
   return 0;
}
