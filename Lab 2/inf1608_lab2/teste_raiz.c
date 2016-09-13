#include <stdio.h>
#include <math.h>

#include "raiz.h"

double f(double m)
{
	return ((9.8 * m / 15.0) * (1-exp((-15.0/m) * 9))) - 35;
}

double g(double x)
{
	// f(x) = 0 --> g(x) - x = 0
	// f(x) = -x^2+1.8x+2.5
	// -x^2+1.8x+2.5 = 0
	// x^2 = 1.8x + 2.5
	// x = +-sqrt(1.8x + 2.5)
	return sqrt(1.8*x+2.5);
}

int main(void)
{
	double result = bissecao(0, 500, 6, f);
	double result2 = pontofixo(5.0, 0.0005, g);

	printf("Bissecao: m = %.6f\n", result);
	printf("\nPonto fixo: %.6f\n", result2);
	return;
}