#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

#define BUFFER 1024

int main(void)
{

  int fpFIFO;
  char mensagem[BUFFER];
  
  printf("Abrindo a FIFO para escrita\n");
  if((fpFIFO = open("fifo1", O_WRONLY) ) < 0 )
  {
    printf("Erro ao abrir a FIFO para escrita!");
    exit(-2);
  }

  printf("Pressione ENTER para enviar a mensagem\n\n");
  
  scanf("%[^\n]s", mensagem);

  write(fpFIFO, mensagem, strlen(mensagem) + 1);

  printf("Fim da escrita\n");

  close(fpFIFO);
  return 0;
}
