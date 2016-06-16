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
    write(fd[1], "Kek", 4); // 4 bytes (Kek\0)
    printf("'Kek' foi escrito\n");
    return 0;
  }

  // Processo pai

  close(fd[1]); // fd[1] (escrita) desnecessário
  read(fd[0], buffer, 4); // 4 bytes (Kek\0)

  printf("Foi lido: '%s'\n", buffer);
  
  return 0;
}
