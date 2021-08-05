#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

int op(int n1, int n2)
{
  printf("soma: %d\n", n1+n2);
  printf("subtracao: %d\n", n1-n2);
  printf("multiplicacao: %d\n", n1*n2);
  printf("divisao: %d\n", n1/n2);
}

void fpehandler(int signal)
{
  printf("\nSinal SIGFPE capturado.\n");
  exit(-1);
}

int main(void)
{
  int n1, n2;
  signal(SIGFPE, fpehandler);
  printf("Digite dois numeros: ");
  scanf("%d %d", &n1, &n2);
  printf("\n");
  op(n1,n2);
  return 0;
}
