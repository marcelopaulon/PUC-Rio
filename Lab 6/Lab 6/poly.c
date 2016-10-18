#include "poly.h"

#define PI 3.14159265359

#include <math.h>
#include <stdlib.h>
#include <stdio.h>

Sample* Chebyshev (int n, double a, double b, double (*f) (double x))
{
	int i, beta = 1;
	double bMa_2 = (b-a)*0.5, bPa_2 = (b+a)*0.5;
	Sample * s = (Sample *) malloc(sizeof(Sample));

	if(s == NULL)
	{
		printf("Unable to allocate memory to Sample. Exiting.");
		exit(-1);
	}

	s->n = n;

	s->x = (double *) malloc(sizeof(double) * n);
	s->y = (double *) malloc(sizeof(double) * n);

	if(s->x == NULL || s->y == NULL)
	{
		printf("Unable to allocate memory to Sample. Exiting.");
		exit(-1);
	}

	for(i = 0; i < n; i++)
	{
		s->x[i] = bMa_2 * cos((beta * PI) / (2*n)) + bPa_2;
		s->y[i] = f(s->x[i]);
		
		beta += 2;
	}

	return s;
}