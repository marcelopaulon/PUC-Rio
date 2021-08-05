#include <stdio.h>

int main(void)
{
  int i;
  for(i=0; i < 20; i++)
  {
    printf("kek\n");
    fflush(stdout);
    sleep(1);
  }

  return 0;
}
