#include <stdio.h>

int main(void)
{
  int i, fat = 1;

  for(i=10; i > 1; i--)
  {
    fat *= i;
  }

  return 0;
}
