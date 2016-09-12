#include "raiz.h"

#include <stdio.h>
#include <stdlib.h>

#include <math.h>

double bissecao (double a, double b, int p, double (*f) (double x))
{
	double error, maxError = 0.5 * pow(10.0, -p);
	double c, temp;
	int n = 0;

	if(f(a) * f(b) >= 0)
	{
		printf("Error. f(a) * f(b) must be less than 0. Exiting.\n");
		exit(-1);
	}

	error = b-a;

	do
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

		error /= 2.0;

		n++;
	} while(error >= maxError);

	return c;
}

double pontofixo (double x0, double epsilon, double (*g) (double x))
{
	return 0.0;
}