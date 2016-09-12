#include <stdio.h>
#include <math.h>

#include "raiz.h"

double f(double m)
{
	return ((9.8 * m / 15.0) * (1-exp((-15.0/m) * 9))) - 35;
}

double g(double x)
{
	// f(x) = 0; g(x) - x = 0
	return ;
}

int main(void)
{
	double result = bissecao(0, 1000, 6, f);
	printf("m = %.6f\n", result);
	return;
}