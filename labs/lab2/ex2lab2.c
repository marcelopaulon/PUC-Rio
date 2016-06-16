#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
  char *str = "Olar, sou o gustavo fring";
  char *shmString;
  int segmento = shmget(8752, sizeof(char) * (strlen(str) + 1), IPC_CREAT | IPC_EXCL | S_IRUSR | S_IWUSR);

  if(segmento == -1) {
    printf("Erro!\n");
    exit(-1);
  }

  shmString = (char *) shmat(segmento, 0, 0);
  sprintf(shmString, str);
  
  shmdt(shmString);

  return 0;
}
