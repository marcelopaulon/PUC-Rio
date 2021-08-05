#include <stdio.h>

int main(void)
{
  int i;
  for(i=0; i < 10; i++)
  {
    printf("nelson %d\n", i);
    fflush(stdout);
    sleep(2);
  }

  return 0;
}
