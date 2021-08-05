#include "interp.h"

int main(void)
{
	int i;
	int n = 11;

	double px[] = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5};
	double py[] = {5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 42};
	double x[] = {-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1};
	
	double *c = interpola(n, px, py);

	printf("Testes: \n");

	for(i = 0; i < n; i++)
	{
		printf("lagrange(%d, [px], [py], %.6f) = %.16g \n", n, x[i], lagrange(n, px, py, x[i]));
		printf("avalia(%d, [c], %.6f) = %.16g\n\n\n", n, x[i], avalia(n, c, x[i]));
	}

	return 0;
}