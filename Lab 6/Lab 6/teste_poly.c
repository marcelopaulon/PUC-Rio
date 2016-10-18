#include "poly.h"

#define PI 3.14159265359

#include <stdio.h>
#include <math.h>

int main(void)
{
	int n = 6, i;
	Sample * s = Chebyshev(n, 0, PI/2.0, cos);

	for(i = 0; i < n; i++)
	{
		printf("x = %f; y = %f\n", s->x[i], s->y[i]);
	}

	return 0;
}