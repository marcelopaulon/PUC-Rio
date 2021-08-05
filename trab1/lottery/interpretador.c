#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <sys/shm.h>
#include <fcntl.h>

int fileExec, fileIN, fileOUT; // arquivos de execução, entrada e saída
int pidEscalonador = -1;  // PID do escalonador

int segmentoNomePrograma; // segmento para disparo de novos processos no escalonador
int segmentoNumBilhetes;  // segmento para número de bilhetes de novos processos no escalonador

int openFile(char *name, int type) {
  int file;
  file = open(name, type, S_IRWXU|S_IRWXG|S_IRWXO);
  if(file == -1) {
    printf("[ERRO] Nao foi possivel abrir o arquivo %s", name);
    fflush(stdout);
    exit(-1);
  }
  return file;
}

void encerra(int signal) {
  if(pidEscalonador != -1) {
    kill(SIGINT, pidEscalonador); // Encerra escalonador
  }

  close(fileExec);  // Fecha arquivo de execução
  close(fileIN);  // Fecha arquivo de entrada
  close(fileOUT); // Fecha arquivo de saída

  shmctl(segmentoNomePrograma, IPC_RMID, 0); // Libera memória compartilhada
  shmctl(segmentoNumBilhetes, IPC_RMID, 0);   // Libera memória compartilhada

  exit(0);
}

void criaProcessoEscalonador(int fd[2]) {
  char argNomePrograma[11], argNumBilhetes[11];
  
  segmentoNomePrograma = shmget(IPC_PRIVATE, sizeof(char) * 1024, IPC_CREAT|IPC_EXCL|S_IRUSR|S_IWUSR);
  segmentoNumBilhetes = shmget(IPC_PRIVATE, sizeof(int), IPC_CREAT|IPC_EXCL|S_IRUSR|S_IWUSR);

  pidEscalonador = fork(); // cria processo para o escalonador
  if(pidEscalonador == 0) // escalonador
  {
    close(fd[0]); // fecha pipe de leitura
    dup2(fd[1], 1); // redireciona stdout para pipe de escrita
    
    snprintf(argNomePrograma, 11, "%d", segmentoNomePrograma);
    snprintf(argNumBilhetes, 11, "%d", segmentoNumBilhetes);
    char * execEscalonador[] = {"./escalonador", argNomePrograma, argNumBilhetes, NULL};
    execve("./escalonador", execEscalonador, 0);
    exit(0);
  }
  else
  {
    dup2(fd[0], 0); // redireciona stdin para pipe de leitura
  }
  
  sleep(1);
}

void adicionaProcessos() {
  char buffer[2048];
  int counter = 0;
  char *nomeProcesso;
  int *numBilhetes;

  nomeProcesso = (char *) shmat(segmentoNomePrograma, 0, 0);
  numBilhetes = (int *) shmat(segmentoNumBilhetes, 0, 0);

  while(read(fileExec,&buffer[counter],1) != 0) {
    if(buffer[counter] == '\n') {
      buffer[counter] = '\0';
      sscanf(buffer, "exec %s numtickets=%d", nomeProcesso, numBilhetes);
      printf("[INFO] Processo %s - numtickets=%d enviado ao escalonador\n", nomeProcesso, *numBilhetes);
      fflush(stdout);
      kill(pidEscalonador, SIGUSR1);
      sleep(3);
      buffer[0] = '\0';
      counter = 0;
      continue;
    }

    counter++;
  }

  shmdt(nomeProcesso);
  shmdt(numBilhetes);
}

int main(void) {
  int fd[2]; // pipe
  
  fileExec = openFile("exec.txt", O_RDONLY); // Abre arquivo para leitura
  fileIN = openFile("entrada.txt", O_RDONLY); // Abre arquivo para leitura
  fileOUT = openFile("saida.txt", O_CREAT|O_RDWR|O_TRUNC); // Abre arquivo para escrita

  signal(SIGINT, encerra);

  if(pipe(fd) < 0) { // abre pipe
    printf("[ERRO] Nao foi possivel abrir o pipe\n");
    fflush(stdout);
    exit(-1);
  }

  if(dup2(fileIN, 0) == -1) { // redireciona stdin para arquivo de entrada
    printf("[ERRO] Nao foi possivel redirecionar o stdin para arquivo de entrada\n");
    fflush(stdout);
    exit(-1);
  }

  if(dup2(fileOUT, 1) == -1) { // redireciona stdout para arquivo de saída
    printf("[ERRO] Nao foi possivel redirecionar o stdout para arquivo de saida\n");
    fflush(stdout);
    exit(-1);
  }

  close(fd[1]);  // fecha pipe de escrita

  criaProcessoEscalonador(fd);
  adicionaProcessos(); // adiciona processos ao escalonador
  for(;;) sleep(1);
  waitpid(pidEscalonador, NULL, 0);
  
  close(fileExec);  // Fecha arquivo de execução
  close(fileIN);  // Fecha arquivo de entrada
  close(fileOUT); // Fecha arquivo de saída
  
  shmctl(segmentoNomePrograma, IPC_RMID, 0); // Libera memória compartilhada
  shmctl(segmentoNumBilhetes, IPC_RMID, 0);   // Libera memória compartilhada

  return 0;
}
