#include "poly.h"

#define PI 3.14159265359

#include <stdio.h>
#include <math.h>

int main(void)
{
	int n = 6, i;
	double *b, Pn1x;
	Sample * s = Chebyshev(n, 0, PI/2.0, cos);

	for(i = 0; i < n; i++)
	{
		printf("x = %f; y = %f\n", s->x[i], s->y[i]);
	}
	
	b = NewtonCompute(s);

	for(i = 0; i < n; i++)
	{
		printf("b[%d] = %.16g\n", i, b[i]);
	}
	
	Pn1x = NewtonEval(s, b, PI/2.0);

	printf("P[n-1](PI/2) = %.16g\n\n", Pn1x);

	return 0;
}