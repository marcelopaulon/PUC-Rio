#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <signal.h>
#include <string.h>
#include <sys/shm.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>

#define NUMPROCESSOS 1024

int PIDList[NUMPROCESSOS][1]; // Lista de processos (PID). O Programa pode ter até 1024 processos na fila

int segmentoNomePrograma; // segmento (shm) para disparo de novos processos no escalonador

int idxProcessoExecutando = -1; // índice (PIDList) do processo em execução

void logInfo(char *message) {
  printf("[INFO] %s\n", message);
  fflush(stdout);
}

void encerra(int signal) {
  int i;
  for(i = 0; i < NUMPROCESSOS; i++) {
    if(PIDList[i][0] != -1) {
      kill(SIGINT, PIDList[i][0]); // Encerra processo
    }
  }

  exit(0);
}

void adicionarProcesso(int signal) {	// Evento de adicionar processo ao escalonador
  char *nomeProcesso; // Nome do novo processo (shm)
  char nomeProcessoArg[100]; // Nome do novo processo
  int pid; // PID do novo processo
  int status;
  int idx = -1; // Indice do novo processo
  int i;
  char msgCriacao[200];

  nomeProcesso = (char *) shmat(segmentoNomePrograma, 0, 0);
  
  strcpy(nomeProcessoArg, nomeProcesso);
  shmdt(nomeProcesso);

  for(i = 0; i < NUMPROCESSOS; i++) {
    if(PIDList[i][0] == -1) { // Local livre na lista para adicionar o processo
      idx = i;
      
      pid = fork();

      if(pid != 0) {
        sprintf(msgCriacao, "Processo %s criado - PID: %d", nomeProcessoArg, pid);
        logInfo(msgCriacao);

        PIDList[i][0] = pid;
      }
      else {
        char * execArgs[] = {nomeProcessoArg, NULL};
        
        raise(SIGSTOP);

        sprintf(msgCriacao, "Iniciando processo de PID %d pela 1a vez", getpid());
        logInfo(msgCriacao);

        execve(nomeProcessoArg, execArgs, 0);
        return;
      }

      break;
    }
  }

  if(idx == -1) {
    logInfo("Ha mais de 1024 processos na lista. Nao foi possivel adicionar o processo.");
    return;
  }
}

void inicializaListaProcessos() {
  int i, j;

  for(i = 0; i < NUMPROCESSOS; i++) {
    for(j = 0; j < 2; j++) {
      PIDList[i][j] = -1;
    }
  }
}

int obtemProcessoAExecutar() {
  int i;

  for(i = idxProcessoExecutando + 1; i < NUMPROCESSOS; i++) {
    if(PIDList[i][0] != -1)
    {
      return i;
    }
  }

  for(i = 0; i < NUMPROCESSOS; i++) {
    if(PIDList[i][0] != -1)
    {
      return i;
    }
  }

  return -1;
}

int main(int argc, char *argv[]) {
  int i, status;
  int processoAExecutar; // índice do processo a executar
  char msgTemp[200];

  logInfo("Escalonador iniciado");
  
  srand(time(NULL)); // Inicializa gerados de números pseudo-aleatórios
  
  inicializaListaProcessos();
  
  segmentoNomePrograma = atoi(argv[1]);
  signal(SIGUSR1, adicionarProcesso); // O sinal SIGUSR1 é usado para notificar o escalonador para criar um novo processo
  signal(SIGINT, encerra);

  logInfo("Escutando...");

  for(;;)
  {
    processoAExecutar = obtemProcessoAExecutar();
    
    if(processoAExecutar == -1) // Nenhum processo na fila
    {
      continue;
    }

    sleep(1);

    if(idxProcessoExecutando != -1 && waitpid(PIDList[idxProcessoExecutando][0], NULL, WNOHANG) != 0) { // Ao término do processo
       sprintf(msgTemp, "Processo de PID %d terminou", PIDList[idxProcessoExecutando][0]);
       logInfo(msgTemp);
       // Remover da lista
       PIDList[idxProcessoExecutando][0] = -1;
       idxProcessoExecutando = -1;
       continue;
    }

    if(idxProcessoExecutando != -1 && PIDList[idxProcessoExecutando][0] != PIDList[processoAExecutar][0]) {
      kill(PIDList[idxProcessoExecutando][0], SIGSTOP); // Interrompe processo que estava em execução
      sprintf(msgTemp, "Processo de PID %d interrompido", PIDList[idxProcessoExecutando][0]);
      logInfo(msgTemp);
    }

    if(PIDList[idxProcessoExecutando][0] != PIDList[processoAExecutar][0]) {
      kill(PIDList[processoAExecutar][0], SIGCONT); // Continua o processo a ser executado
      sprintf(msgTemp, "Processo de PID %d continuado", PIDList[processoAExecutar][0]);
      logInfo(msgTemp);

      idxProcessoExecutando = processoAExecutar;
    }
  }

  return 0;
}


