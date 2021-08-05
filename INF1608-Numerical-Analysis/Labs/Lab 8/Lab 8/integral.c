#include "integral.h"

double derivada (double (*f) (double x), double h, double x)
{
	return (f(x + h) - f(x - h)) / (2.0*h);
}

double simpson (double (*f) (double), double a, double b, int n)
{
	int i;
	double h = (b - a)/n;
	double htemp = a;
	double result = 0.0;

	for(i = 0; i < n; i++)
	{
		result += (h/6.0) * (f(htemp) + 4*f(htemp + (h/2)) + f(htemp + h));
		htemp += h;
	}

	return result;
}

double pontomedio (double (*f) (double), double a, double b, int n)
{
	int i;
	double h = (b - a)/n;
	double htemp = a;
	double result = 0.0;

	for(i = 0; i < n; i++)
	{
		result += h * f((2*htemp + h)*0.5);
		htemp += h;
	}

	return result;
}
