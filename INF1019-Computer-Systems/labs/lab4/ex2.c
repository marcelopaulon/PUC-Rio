#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <time.h>

int onCall = 0;
time_t callStart;

void handleEndCallButton(int signal)
{
  kill(0, SIGUSR2);
}

void sigusr1(int signal)
{
  onCall = 1;
  printf("Ligacao iniciada! Digite Ctrl+C para encerrar.\n");
  callStart = time(NULL);
}

void sigusr2(int signal)
{
  double callTime, callCost;
  int hours, minutes, seconds;

  if(onCall == 0)
  {
    printf("\nNao ha nenhuma ligacao em andamento\n");
    return;
  }

  callTime = difftime(time(NULL), callStart);
  hours =  (int)callTime / 3600;
  minutes = ((int)callTime % 3600) / 60;
  seconds = (int)callTime % 60;
  
  if(callTime > 60.0)
  {
    callCost = callTime + 60;
  }
  else
  {
    callCost = callTime * 2;
  }

  callCost = callCost / 100.0;
  
  onCall = 0;
  printf("Ligacao encerrada. Duracao: %dh:%dm:%ds. Custo da ligacao: R$%.2f\n", (int) hours, minutes, seconds, callCost);
  printf("\nDigite 1 para iniciar uma ligacao, Ou digite Q para sair.\n"); 
}

int main(void)
{
  char command;

  signal(SIGUSR1, sigusr1);
  signal(SIGUSR2, sigusr2);
  signal(SIGINT, handleEndCallButton);

  printf("Digite 1 para iniciar uma ligacao, Ou digite Q para sair.\n");
    
  while(1)
  {
    scanf(" %c", &command);
    if(command == '1')
    {
      kill(0, SIGUSR1);
    }
    else if(command == 'Q')
    {
      if(onCall == 1)
      {
        kill(0, SIGINT);
      }
      exit(0);
    }
    else
    {
      printf("Comando invalido!\n");
    }
  }
  
  return 0;
}
