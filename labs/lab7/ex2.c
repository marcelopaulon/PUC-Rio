#include <sys/sem.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <ctype.h>

union semun
{
  int val;
  struct semid_ds *buf;
  ushort *array;
};

// inicializa o valor do semáforo
int setSemValue(int semId);

// remove o semáforo
void delSemValue(int semId);

// operação P
int semaforoP(int semId);

// operação V
int semaforoV(int semId);

int main(int argc, char *argv[])
{
  int i;
  int semId;
  int pid;
  int segmento = shmget(IPC_PRIVATE, sizeof(char *) * 16, IPC_CREAT | S_IRUSR | S_IWUSR);
  char *temp;

  semId = semget(8752, 1, 0666 | IPC_CREAT);
  setSemValue(semId);

  pid = fork();

  if(pid == 0)
  {
    // CONSUMIDOR
    for(;;)
    {
      semaforoP(semId);
      
      temp = (char *) shmat(segmento, 0, 0);
      printf("\nConsumidor: %s\n", temp); fflush(stdout);
      shmdt(temp);

      semaforoV(semId);
    }

    return 0;
  }
  
  temp = (char *) shmat(segmento, 0, 0);

  for(;;)
  {
    semaforoP(semId);

    for(i = 0; i < 16; i++)
    {
      scanf(" %c", &temp[i]);
    }

    semaforoV(semId);
  }

  shmdt(temp);

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


