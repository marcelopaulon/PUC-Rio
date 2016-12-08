#include "matriz.h"

#include <math.h>
#include <stdlib.h>
#include <stdio.h>

#define TOL 0.00000001

void Cholesky (int n, double **A)
{
	int k, i, j;

	for(k = 0; k < n; k++)
	{
		double *uT;

		uT = (double *)malloc(sizeof(double) * n);
		if(!uT)
		{
			printf("Error allocating memory for vector uT. Exiting.");
			exit(-1);
		}

		for (j = 0; j < k; j++) {
			A[k][j] = 0;
		}

		A[k][k] = sqrt(A[k][k]);

		for(i = k + 1; i < n; i++)
		{
			uT[i] = 1.0/A[k][k] * A[k][i]; // u^T
		}

		for(i = k+1; i < n; i++)
		{
			for(j = k+1; j < n; j++)
			{
				A[i][j] = A[i][j] - (uT[i] * uT[j]);
			}
		}
	}
}

void printMatriz(int m, int n, double **A)
{
	int i, j;
	for(i = 0; i < m; i++)
	{
		for(j = 0; j < n; j++)
		{
			printf("%.2f\t", A[i][j]);
		}
		printf("\n");
	}
}

void ConjugateGradient (int n, double** A, double* b, double* x)
{
	double *Ax = (double *)malloc(sizeof(double) * n);
	double *r = (double *)malloc(sizeof(double) * n);
	double *nextR = (double *)malloc(sizeof(double) * n);
	double *temp;
	double *d = (double *)malloc(sizeof(double) * n);
	double *Ad = (double *)malloc(sizeof(double) * n);
	int k, j;
	
	if(!Ax || !r || !nextR || !d || !Ad)
	{
		printf("Unable to allocate memory. Exiting.\n");
		exit(-1);
	}

	mat_multv(n, n, A, x, Ax);

	for(k = 0; k < n; k++)
	{
		d[k] = r[k] = b[k] - Ax[k];
	}

	for(k = 0; k < n; k++)
	{
		double alpha = 0.0;
		double beta = 0.0;

		double rNorm = 0;
		for(k = 0; k < n; k++)
		{
			rNorm += r[k] * r[k];
		}

		if(fabs(sqrt(rNorm))  < TOL)
		{
			return;
		}
		
		mat_multv(n, n, A, d, Ad);

		for(j = 0; j < n; j++)
		{
			alpha += (r[j] * r[j]) / (d[j] * Ad[j]);
		}

		for(j = 0; j < n; j++)
		{
			x[j] = x[j] + alpha * d[j];
			nextR[j] = r[j] - alpha * Ad[j];
			beta += (nextR[j] * nextR[j]) / (r[j] * r[j]);
		}

		for(j = 0; j < n; j++)
		{
			d[j] = nextR[j] + beta*d[j];
		}

		temp = r;
		r = nextR;
		nextR = temp;
	}

	free(Ax);
	free(r);
	free(nextR);
	free(d);
	free(Ad);
}

int main(void)
{
	int i, j;
	int n1 = 3, n2 = 3;
	double **A1, **A2, **M1, **T1;
	double *b1, *b2;
	double *x1, *x2;

	b1 = (double*) malloc(3 * sizeof(double));
	b2 = (double*) malloc(3 * sizeof(double));

	x1 = (double*) malloc(3 * sizeof(double));
	x2 = (double*) malloc(3 * sizeof(double));

	for(i = 0; i < n1; i ++) x1[i] = 0;	// x0: 0
	for(i = 0; i < n2; i ++) x2[i] = 0; // x0: 0

	A1 = mat_cria(3, 3);
	A2 = mat_cria(3, 3);
	M1 = mat_cria(3,3);
	T1 = mat_cria(3,3);

	A1[0][0] = 1;  A1[0][1] = -1; A1[0][2] = 0; b1[0] = 0;
	A1[1][0] = -1; A1[1][1] = 2;  A1[1][2] = 1; b1[1] = 2;
	A1[2][0] = 0;  A1[2][1] = 1;  A1[2][2] = 2; b1[2] = 3;
		
	for(i = 0; i < 3; i++){
		for(j = 0; j < 3; j++){
			A2[i][j] = A1[i][j];
		}
	}

	A2[2][2] = 5;

	b2[0] = 3;
	b2[1] = -3;
	b2[2] = 4;
		
	printf("A1:\n");
	printMatriz(n1, n1, A1);

	printf("Cholesky:\n");
	Cholesky(n1, A1);
	printMatriz(n1, n1, A1);

	printf("Conjugate Gradient:\n");
	ConjugateGradient(n1, A1, b1, x1);
	printMatriz(n1, n1 , A1);

	printf("\n\nA2:\n");
	printMatriz(n2, n2, A2);

	printf("Cholesky:\n");
	Cholesky(n2, A2);
	printMatriz(n2, n2, A2);

	printf("Conjugate Gradient:\n");
	ConjugateGradient(n2, A2, b2, x2);
	printMatriz(n2, n2 , A2);
	
	free(b1);
	free(b2);
	free(x1);
	free(x2);

	return 0;
}