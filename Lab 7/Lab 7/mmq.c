#include "mmq.h"

double * mmq (int m, int n, double **A, double *b)
{
	double **At = mat_cria(n, m);
	double **AtA = mat_cria(n, n);
	double *AtB = (double *) malloc(sizeof(double) * n);
	double *x = (double *) malloc(sizeof(double) * n);

	if(!AtB)
	{
		printf("Error allocating memory for At*B. Exiting.");
		exit(-1);
	}

	if(!x)
	{
		printf("Error allocating memory for x. Exiting.");
		exit(-1);
	}

	mat_transposta(m, n, A, At);
	mat_multm(n, m, n, At, A, AtA);
	mat_multv(n, m, At, b, AtB);

	gauss(n, AtA, AtB, x);
	mat_libera(n, At);
	mat_libera(n, AtA);
	free(AtB);
	return x;
}

double norma2 (int m, int n, double **A, double *b, double *x)
{
	int i;
	double r;
	double *xb = mmq(m, n, A, b);
	double *Axb = (double *) malloc(sizeof(double) * m);
	double e = 0.0;

	if(!Axb)
	{
		printf("Error allocating memory for A*xb. Exiting.");
		exit(-1);
	}

	mat_multv (m, n, A, xb, Axb);

	for(i = 0; i < m; i++)
	{
		r = b[i] - Axb[i];
		e += r*r;
	}

	free(Axb);
	free(xb);

	return sqrt(e);
}