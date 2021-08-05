#include <stdio.h>

#include "simpson.h"

#define PI 3.14159265359

#define TOL 0.00000005

double f1(double x)
{
	return x/(sqrt(x*x + 9));
}

double f2(double x)
{
	return exp(-x*x/2);
}

double f3(double x)
{
	return exp(-x*x);
}

int main (void)
{
	double f1S, f2S, f3S;

	f1S = AdaptiveSimpson(0, 1, f1, TOL);
	f2S = (1.0/sqrt(2*PI)) * AdaptiveSimpson(-1, 1, f2, TOL);
	f3S = (2.0/sqrt(PI)) * AdaptiveSimpson(0, 3, f3, TOL);

	printf("AdaptiveSimpson for f1 from 0 to 1 = %.10f\n", f1S);
	printf("AdaptiveSimpson for f2 from -1 to 1 = %.10f\n", f2S);
	printf("AdaptiveSimpson for f3 from 0 to 3 = %.10f\n", f3S);

	return 0;
}