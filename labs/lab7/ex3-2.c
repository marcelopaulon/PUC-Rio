#include <stdio.h>
#include <string.h>
#include <sys/sem.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/wait.h>
#include <ctype.h>

#define SEGNUM 8005

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
   int semId;
   int *x;
   int segmento = shmget(SEGNUM, sizeof(int), S_IRUSR | S_IWUSR);
   if(segmento == -1) {
     printf("Erro!\n");
     exit(-1);	
   }

   x = (int *) shmat(segmento, 0, 0);
   
   semId = semget(SEGNUM, 1, 0666 | IPC_CREAT);
   //setSemValue(semId);
   
   for(i=0; i<10; i++)
   {
	semaforoP(semId);
	printf("%d\n", *x); fflush(stdout);
        *x = *x + 5;
	printf("%d\n", *x); fflush(stdout);
	semaforoV(semId);
	sleep(rand()%2);
   }

   printf("\nProcesso %d terminou\n", getpid());
   delSemValue(semId);

   shmctl(segmento, IPC_RMID, 0);

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

