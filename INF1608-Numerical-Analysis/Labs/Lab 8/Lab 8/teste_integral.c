#include "integral.h"

#include <math.h>

#define PI 3.141592653589793238462

double f(double x)
{
	return cos(x) - 2*sin(x);
}

double fl(double x)
{
	return -sin(x) - 2*cos(x);
}

double f1(double x)
{
	return x / (sqrt(x*x + 9));
}

double f2(double x)
{
	return x*x * log(x);
}

double f3(double x)
{
	return x*x * sin(x);
}

int main(void)
{
	int i, n;
	double h, d;
	double flllc, fl0;

	printf("### TESTES DERIVADA ###\n");
	
	// f'(x) = -sin(x) - 2*cos(x)
	// f''(x) = -cos(x) + 2*sin(x)
	// f'''(x) = sin(x) + 2*cos(x)
	// f'''(c) ~= f'''(0) = 2
	flllc = 2;

	fl0 = fl(0);

	for(h = 0.1, i = 1; h >= 0.000000000001; h *= 0.1, i++)
	{
		d = derivada(f, h, 0);
		printf("h = 10^-%d = %.14f; f'(0) = %.16f; Erro = %.16f\n", i, h, d, fabs(d - fl0));
	}

	printf("\n### TESTES INTEGRAL ###\n");

	// Na tabela, h = 10^-6 é o valor que minimiza o erro
	// O valor de h teórico que minimiza o erro é: (3*EMAQ/f'''(c))^-1/3 = 6.9317649567876421313904257062044544312599581266068255... × 10^-6, onde EMAQ = 2^-52
	// Os valores conferem com o esperado, estão na mesma ordem de precisão (10^-6)

	for(i = 1; i < 3; i++)
	{
		n = 16 * i;
		printf("S1 n=%d = %.16f ; M1 n=%d = %.16f\n", n, simpson(f1, 0, 4, n), n, pontomedio(f1, 0, 4, n));
		printf("S2 n=%d = %.16f ; M2 n=%d = %.16f\n", n, simpson(f2, 1, 3, n), n, pontomedio(f2, 1, 3, n));
		printf("S3 n=%d = %.16f ; M3 n=%d = %.16f\n", n, simpson(f3, 0, PI, n), n, pontomedio(f3, 0, PI, n));
	}

	return 0;
}