#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
  int *vet;
  int i, *encontrado;
  int pid, pid2;
  int segmento = shmget (IPC_PRIVATE, sizeof(int) * 6, IPC_CREAT | IPC_EXCL | S_IRUSR | S_IWUSR);

  int segmentoEncontrado = shmget (IPC_PRIVATE, sizeof(int), IPC_CREAT | IPC_EXCL | S_IRUSR | S_IWUSR);

  if(segmento == -1 || segmentoEncontrado == -1) {
    printf("Erro!");
    exit(-1);
  }

  vet = (int *) shmat(segmento, 0, 0);
  encontrado = (int *) shmat(segmentoEncontrado, 0, 0);
  *encontrado = -1;

  vet[0] = 2;
  vet[1]= 4;
  vet[2] = 3;
  vet[3] = 2;
  vet[4] = 5;
  vet[5] = 2;

  pid = fork();

  if(pid == 0) {
    for(i = 3; i < 6; i++) {
      if(vet[i] == 2) {
        *encontrado = 1;
        printf("Valor 2 encontrado na posicao %d!\n", i);
      }
    }
    return 0;
  }

  pid2 = fork();

  if(pid2 == 0) {
    for(i = 0; i < 3; i++) {
      if(vet[i] == 2) {
        *encontrado = 1;
        printf("Valor 2 encontrado na posicao %d!\n", i);
      }
    }
    return 0;
  }

  waitpid(pid, NULL, 0);
  waitpid(pid2, NULL, 0);

  if(*encontrado == -1) {
    printf("Nao encontrado! :(\n");
  }

  shmdt(vet);
  shmctl(segmento, IPC_RMID, 0);

  shmdt(encontrado);
  shmctl(segmentoEncontrado, IPC_RMID, 0);

  return 0;
}
