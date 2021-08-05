#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#define NUM_THREADS 2

#define MAXFILA 8

#define NUMPRODUTOS 64

static int fila[MAXFILA];

void *produtor()
{
   int i;
   int prods = 0;

   for(;;)
   {
     for(i=0;i < MAXFILA;i++)
     {
       if(fila[i] == -1)
       {
         prods++;
         fila[i] = rand() % 64 + 1;
         sleep(1);
       }
     }

     if(prods == 64) break;
   }

   printf("Thread produtor terminou\n");

   pthread_exit(NULL);
}

void *consumidor()
{
   int i;
   int prods = 0;

   for(;;)
   {
     for(i=0;i < MAXFILA;i++)
     {
       if(fila[i] != -1)
       {
         printf("%d consumido\n", fila[i]);
         fila[i] = -1;
         prods++;
         sleep(2);
       }
     }

     if(prods == 64) break;
   }

   printf("Thread consumidor terminou\n");
   pthread_exit(NULL);
}

void inicializaFila()
{
  int i;
  for(i = 0; i < MAXFILA; i++)
  {
    fila[i] = -1;
  }
}

int main(void)
{
   srand(time(NULL));
   pthread_t threads[NUM_THREADS];
   int i=0;

   inicializaFila();

   printf("Criando thread %d\n",i);
   pthread_create(&threads[i], NULL, produtor, NULL);
   i++;
   printf("Criando thread %d\n",i);
   pthread_create(&threads[i], NULL, consumidor, NULL);
   
   for(i=0;i<NUM_THREADS;i++)
   {
	pthread_join(threads[i],NULL);
   }
   return 0;
}
