#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main(void) {
  char *argv[] = { "/bin/echo", "alo mundo", NULL };
  int pid = fork();
  int status;

  if(pid == 0) {
    execve("/bin/echo", argv, 0);
  }
  else {
    waitpid(-1, &status, 0);
  }

  return 0;
}
