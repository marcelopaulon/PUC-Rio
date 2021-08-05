#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

int main (void) 
{ 
  int pid1 = fork(), pid2;
  int i, countSig=10;
  if(pid1 < 0)
  {
    printf("Nao foi possivel criar o processo filho 1.. :(\n");
    return 0;
  }
  else if(pid1 == 0)
  {
    raise(SIGSTOP);
    // PROCESSO 1
    while(1) {
      printf("\rO processo 1 esta sendo executado...                                     ");
    }
    return 0;
  }

  pid2 = fork();

  if(pid2 < 0)
  {
    printf("Nao foi possivel criar o processo filho 2.. :(\n");
    return 0;
  }
  else if(pid2 == 0)
  {
    raise(SIGSTOP);
    // PROCESSO 2
    while(1) {
      printf("\rO processo 2 esta sendo executado...                                     ");
    }
    return 0;
  }

  for(i = countSig; i > 0; i--)
  {
    if(i % 2 == 0)
    {
      kill(pid2, SIGSTOP);
      kill(pid1, SIGCONT);
    }
    else
    {
      kill(pid1, SIGSTOP);
      kill(pid2, SIGCONT);
    }

    sleep(2);
  }

  return 0;
}
