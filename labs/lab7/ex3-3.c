#include <sys/sem.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/shm.h>
#include <sys/stat.h>

union semun
{
   int val;
   struct semid_ds *buf;
   ushort *array;
};

//inicializa o valor do semáforo
int setSemValue(int semId);
//remove o semáforo
void delSemValue(int semId);
//operação P
int semaforoP(int semId);
//operação V
int semaforoV(int semId);

int main(int argc, char * argv[])
{
   int i;
   int *x;
   int semId;

   int segmento = shmget(8001, sizeof(int), IPC_CREAT);
   if(segmento == -1) {
     printf("Erro!\n");
     exit(-1);	
   }

   x = shmat(segmento, 0, 0);
   *x=0;
   if(argc>1)
   {
	semId = semget(8001, 1, 0666 | IPC_CREAT);
	setSemValue(semId);
	sleep(2);
   }
   else
   {
	while((semId=semget(8001, 1, 0666))<0)
	{
	   
	   fflush(stdout);
	   sleep(1);
	}
   }
   for(i=0; i<10; i++)
   {
	semaforoP(semId);
	//printf("%d\n",*x); fflush(stdout);
	sleep(rand()%3);
	//printf("%d\n",*x);fflush(stdout);
	semaforoV(semId);
	sleep(rand()%2);
   }

   printf("\nProcesso %d terminou\n", getpid());

   if(argc>1)
   {
	sleep(10);
	delSemValue(semId);
   }
   return 0;
}

int setSemValue(int semId)
{
   union semun semUnion;
   semUnion.val = 1;
   return semctl(semId, 0, SETVAL, semUnion);
}

void delSemValue(int semId)
{
   union semun semUnion;
   semctl(semId, 0, IPC_RMID, semUnion);
}

int semaforoP(int semId)
{
   struct sembuf semB;
   semB.sem_num = 0;
   semB.sem_op = -1;
   semB.sem_flg = SEM_UNDO;
   semop(semId, &semB, 1);
   return 0;
}

int semaforoV(int semId)
{
   struct sembuf semB;
   semB.sem_num = 0;
   semB.sem_op = 1;
   semB.sem_flg = SEM_UNDO;
   semop(semId, &semB, 1);
   return 0;
}
