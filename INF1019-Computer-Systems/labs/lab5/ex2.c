#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int main(void)
{
  int fileIN, fileOUT;
  char kek[4];
  int kekCount;

  fileIN = open("entrada.txt", O_RDONLY);
  fileOUT = open("saida.txt", O_CREAT|O_WRONLY|O_APPEND|O_TRUNC, S_IRUSR|S_IRGRP|S_IROTH|S_IWUSR);
  
  if(fileIN < 0) {
    printf("Erro ao abrir arquivo entrada.txt\n");
    exit(-1);
  }

  if(fileOUT < 0) {
    printf("Erro ao abrir arquivo saida.txt\n");
    exit(-2);
  }

  if(dup2(fileIN, 0) == -1)
  {
    printf("Erro ao redirecionar stdin\n");
    exit(-3);
  }

  if(dup2(fileOUT, 1) == -1)
  {
    printf("Erro ao redirecionar stdout\n");
    exit(-1);
  }

  scanf("%s %d", &kek, &kekCount);
  if(strcmp("Kek", kek) != 0)
  {
    printf("[ERRO] - Nao foi encontrada a palavra Kek na entrada\n");
  }
  kekCount++;
  printf("O proximo kek eh %d", kekCount);

  close(fileIN);
  close(fileOUT);

  return 0;
}
