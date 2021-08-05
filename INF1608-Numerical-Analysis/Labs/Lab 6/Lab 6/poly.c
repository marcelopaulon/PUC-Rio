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
		printf("Unable to allocate memory for Sample. Exiting.");
		exit(-1);
	}

	s->n = n;

	s->x = (double *) malloc(sizeof(double) * n);
	s->y = (double *) malloc(sizeof(double) * n);

	if(s->x == NULL || s->y == NULL)
	{
		printf("Unable to allocate memory for sample x/y. Exiting.");
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

double * NewtonCompute(Sample *s)
{
	int i, j;
	double *b = (double *) malloc(sizeof(double) * s->n);
	double **MEM = (double **) malloc(sizeof(double *) * s->n);
	
	if(b == NULL || MEM == NULL)
	{
		printf("Unable to allocate memory for b or MEM. Exiting.");
		exit(-1);
	}

	for(i = 0; i < s->n; i++)
	{
		MEM[i] = (double *) malloc(sizeof(double) * s->n);
		if(MEM[i] == NULL)
		{
			printf("Unable to allocate memory for MEM[%d]. Exiting.", i);
			exit(-1);
		}
	}

	for(i = 0; i < s->n; i++)
	{
		MEM[i][i] = s->y[i];
	}

	for(i = 1; i < s->n; i++)
	{
		for(j = i - 1; j >= 0; j--)
		{
			MEM[i][j] = (MEM[i][j + 1] - MEM[i - 1][j])/(s->x[i] - s->x[j]);
		}
	}
	
	for(i = 0; i < s->n; i++)
	{
		b[i] = MEM[i][0];
		free(MEM[i]);
	}

	free(MEM);

	return b;
}

double NewtonEval (Sample *s, double *b, double x)
{
	double Pn1x = 0.0, temp = 1.0;
	int i;

	for(i = 0; i < s->n; i++)
	{
		if(i > 0)
		{
			temp *= (x - s->x[i - 1]);
		}

		Pn1x += b[i] * temp;
	}

	return Pn1x;
}