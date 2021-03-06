#include "raiz.h"

#include <stdio.h>
#include <stdlib.h>

#include <math.h>

double bissecao (double a, double b, int p, double (*f) (double x))
{
	int i, n = ceil((log((b-a)/(0.5 * pow(10.0, -p)))/log(2.0)) - 1);
	
	double c = -1, temp;

	if(f(a) * f(b) >= 0)
	{
		printf("Error. f(a) * f(b) must be less than 0. Exiting.\n");
		exit(-1);
	}

	for(i = 0; i < n; i++)
	{
		c = (a+b)/2.0;
		temp = f(c);

		if(temp == 0) break;

		if(f(a) * temp < 0)
		{
			b = c;
		}
		else
		{
			a = c;
		}
	}

	return c;
}

double pontofixo (double x0, double epsilon, double (*g) (double x))
{
	double xn1, xn = x0;

	do
	{
		xn1 = xn;
		xn = g(xn);
	} while (fabs(xn - xn1) >= epsilon);

	return xn;
}