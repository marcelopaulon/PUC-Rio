#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
  int fd[2]; // descritor dos pipes
  int pid;
  char buffer[1024];

  if(pipe(fd) < 0) {
    printf("Erro ao abrir os pipes");
    exit(-1);
  }
  
  pid = fork();
  if(pid == 0) { // Processo filho
    close(fd[0]); // fd[0] (leitura) desnecessário
    
    if(dup2(fd[1], 1) == -1) {  // Redireciona stdout para o pipe de escrita
      printf("Erro ao redirecionar stdout\n");
      exit(-2);
    }

    system("ps aux"); // executa ps aux

    return 0;
  }

  // Processo pai

  close(fd[1]); // fd[1] (escrita) desnecessário

  if(dup2(fd[0], 0) == -1) { // Redireciona o stdin para o pipe de leitura
      printf("Erro ao redirecionar stdin\n");
      exit(-3);
  }

  system("grep watchdog"); // executa grep watchdog

  return 0;
}
