#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>
#include <fcntl.h>

int main(void)
{

  int fpFIFO, pid1, pid2, status;
  char ch;
  if(access("fifo2", F_OK) == -1 && mkfifo("fifo2", S_IRUSR | S_IWUSR) != 0)
  {
    printf("Erro na criacao da FIFO!");
    exit(-1);
  }

  printf("Abrindo a FIFO para leitura\n\n");
  if((fpFIFO = open("fifo2", O_RDONLY | O_NONBLOCK) ) < 0 )
  {
    printf("Erro ao abrir a FIFO para leitura!");
    exit(-2);
  }
  
  pid1 = fork();
  if(pid1 == 0)
  {
    printf("Abrindo a FIFO para escrita no processo 1\n\n");
    if((fpFIFO = open("fifo2", O_WRONLY) ) < 0 )
    {
      printf("Erro ao abrir a FIFO para escrita no processo 1!");
      exit(-3);
    }
    write(fpFIFO, "Kek1", 5);
    close(fpFIFO);
    return 0;
  }
  pid2 = fork();
  if(pid2 == 0)
  {
    printf("Abrindo a FIFO para escrita no processo 2\n\n");
    if((fpFIFO = open("fifo2", O_WRONLY) ) < 0 )
    {
      printf("Erro ao abrir a FIFO para escrita no processo 2!");
      exit(-3);
    }
    write(fpFIFO, "Kek2", 5);
    close(fpFIFO);
    return 0;
  }

  waitpid(pid1, &status, 0);
  waitpid(pid2, &status, 0);

  while(read (fpFIFO, &ch, sizeof(ch)) > 0)
    putchar(ch);
 
  printf("\nFim da leitura");
 
  close(fpFIFO);
 
  return 0;
}
