#include <stdio.h>

int main(void)
{
  int i, fat = 1;

  for(i=10; i > 1; i--)
  {
    fat *= i;
    sleep(1);
    printf("passo %d: %d\n", 11-i, fat);
    fflush(stdout);
  }

  printf("Fatorial: %d\n", fat);
  fflush(stdout);

  return 0;
}
