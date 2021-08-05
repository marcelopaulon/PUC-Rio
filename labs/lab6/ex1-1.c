#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

int main(void)
{

  int fpFIFO;
  char ch;

  if(access("fifo1", F_OK) == -1 && mkfifo("fifo1", S_IRUSR | S_IWUSR) != 0)
  {
    printf("Erro na criacao da FIFO!");
    exit(-1);
  }

  printf("Abrindo a FIFO para leitura\n\n");
  if((fpFIFO = open("fifo1", O_RDONLY) ) < 0 )
  {
    printf("Erro ao abrir a FIFO para leitura!");
    exit(-2);
  }
  

  while(read (fpFIFO, &ch, sizeof(ch)) > 0)
    putchar(ch);
 
  printf("\nFim da leitura");
 
  close(fpFIFO);
 
  return 0;
}
