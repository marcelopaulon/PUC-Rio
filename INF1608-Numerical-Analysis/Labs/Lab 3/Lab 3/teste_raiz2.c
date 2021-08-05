#include <math.h>
#include <stdio.h>

#include "raiz2.h"

double f(double x)
{
	return cos(x) - pow(x, 3) + x;
}

double fl(double x)
{
	return -sin(x) - 3*pow(x, 2) + 1;
}

int main(void)
{
	double r;
	int n = NR(-5, 6, f, fl, &r);
	printf("NR(-5, 6, f, fl, &r) = %.16f (i = %d)\n", r, n);
	n = IQI(-5, 5, 10, 6, f, &r);
	printf("IQI(-5, 5, 10, 6, f, &r) = %.16f (i = %d)\n", r, n);
	return 0;
}