#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

int iniciaProcesso(char *nome, char *argv[])
{
  int pid = fork();
  if(pid == 0)
  {
    execve(nome, argv, 0);
    return 0;
  }
  kill(pid, SIGSTOP);
  return pid;
}

void interrompeProcesso(int pid)
{
  kill(pid, SIGSTOP);
}

int main(void)
{
  int pid[3];
  int curProcess = 0;

  char *argv1[] = { "ex3-1", NULL };
  char *argv2[] = { "ex3-2", NULL };
  char *argv3[] = { "ex3-3", NULL };
  
  printf("ROUND ROBIN iniciara em instantes\n");
  pid[0] = iniciaProcesso("./ex3-1", argv1);
  pid[1] = iniciaProcesso("./ex3-2", argv2);
  pid[2] = iniciaProcesso("./ex3-3", argv3);
  sleep(1);

  while(1)
  {
    curProcess++;
    if(curProcess == 1)
    {
      interrompeProcesso(pid[2]);
      kill(pid[0], SIGCONT);
      sleep(1);
    }
    else
    {
      interrompeProcesso(pid[curProcess - 2]);
      kill(pid[curProcess - 1], SIGCONT);
      sleep(2);
    }
    if(curProcess == 3) curProcess = 0;
  }


  return 0;
}
