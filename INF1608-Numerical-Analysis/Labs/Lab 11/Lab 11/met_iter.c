#include "matriz.h"

#include <float.h>
#include <limits.h>

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int Jacobi (int n, double **A, double *b, double *x, double tol)
{
	double curError = DBL_MAX;
	double *xk = x, *xk1 = (double *) malloc(sizeof(double) * n);
	int i, j;
	double **LAndU = mat_cria(n, n);

	int nIter = 0;
	
	if(xk1 == NULL)
	{
		printf("Unable to allocate memory. Exiting.\n");
		exit(-1);
	}

	for(i = 0; i < n; i++)
	{
		for(j = 0; j < n; j++)
		{
			if(i == j)
			{
				LAndU[i][j] = 0.0;
			}
			else
			{
				LAndU[i][j] = A[i][j];
			}
		}
	}

	while(curError > tol)
	{
		nIter++;

		// Calculate x{k+1}
		{
			int i;
			
			mat_multv(n, n, LAndU, xk, xk1);

			for(i = 0; i < n; i++)
			{
				xk1[i] = (b[i] - xk1[i])/A[i][i];				
			}
		}
		
		// Calculate error
		{
			int i;
			curError = 0.0;

			for(i = 0; i < n; i++)
			{
				curError += (xk1[i] - xk[i]) * (xk1[i] - xk[i]);
				xk[i] = xk1[i];
			}
			curError = sqrt(curError);
		}
	}
	
	free(xk1);
	mat_libera(n, LAndU);

	return nIter;
}

int GaussSeidel (int n, double** A, double* b, double* x, double tol)
{
	double curError = DBL_MAX;
	double *xk = x, *xk1 = (double *) malloc(sizeof(double) * n);

	int nIter = 0;
	
	if(xk1 == NULL)
	{
		printf("Unable to allocate memory. Exiting.\n");
		exit(-1);
	}
	
	while(curError > tol)
	{
		nIter++;

		// Calculate xn
		{
			int i, j;
			
			for(i = 0; i < n; i++) // For each line in matrix A
			{
				double sumU = 0.0;
				double sumL = 0.0;

				for(j = 0; j < n; j++) // For each column in matrix A
				{
					if(i > j)
					{
						sumL += A[i][j] * xk1[j];
					}
					else if(i < j)
					{
						sumU += A[i][j] * xk[j];
					}
				}

				xk1[i] = (b[i] - sumU - sumL)/A[i][i];
			}
		}
		
		// Calculate error
		{
			int i;
			curError = 0.0;

			for(i = 0; i < n; i++)
			{
				curError += (xk1[i] - xk[i]) * (xk1[i] - xk[i]);
				xk[i] = xk1[i];
			}
			curError = sqrt(curError);
		}
	}
	
	free(xk1);

	return nIter;
}

int SOR (int n, double **A, double *b, double *x, double tol, double w)
{
	double curError = DBL_MAX;
	double *xk = x, *xk1 = (double *) malloc(sizeof(double) * n);

	int nIter = 0;
	
	if(xk1 == NULL)
	{
		printf("Unable to allocate memory. Exiting.\n");
		exit(-1);
	}
	
	while(curError > tol)
	{
		nIter++;

		// Calculate xn
		{
			int i, j;
			
			for(i = 0; i < n; i++) // For each line in matrix A
			{
				double sumU = 0.0;
				double sumL = 0.0;

				for(j = 0; j < n; j++) // For each column in matrix A
				{
					if(i > j)
					{
						sumL += A[i][j] * xk1[j];
					}
					else if(i < j)
					{
						sumU += A[i][j] * xk[j];
					}
				}

				xk1[i] = (1.0 - w) * xk[i] + w * (b[i] - sumU - sumL)/A[i][i];
			}
		}
		
		// Calculate error
		{
			int i;
			curError = 0.0;

			for(i = 0; i < n; i++)
			{
				curError += (xk1[i] - xk[i]) * (xk1[i] - xk[i]);
				xk[i] = xk1[i];
			}
			curError = sqrt(curError);
		}
	}
	
	free(xk1);

	return nIter;
}

int main(void)
{
	int i, nIter, n1 = 2, n2 = 6;
	double tol = pow(10.0,-7);
	double w = 1.1;
	double *x1 = (double*) malloc(n1*sizeof(double)); 
	double *x2 = (double*) malloc(n2*sizeof(double));
	double **A1 = mat_cria(n1,n1); 
	double **A2 = mat_cria(n2,n2);
	double *b1 = (double*) malloc(n1*sizeof(double));
	double *b2 = (double*) malloc(n2*sizeof(double));

	///////////////////////////////////////////
	A1[0][0] = 3.0; A1[0][1] = 1.0;
	A1[1][0] = 1.0; A1[1][1] = 2.0;

	b1[0] = 5.0; b1[1] = 5.0;
	///////////////////////////////////////////

	///////////////////////////////////////////
	A2[0][0] = 3.0; A2[0][1] = -1.0; A2[0][2] = 0.0; A2[0][3] = 0.0; A2[0][4] = 0.0; A2[0][5] = 0.5;
	A2[1][0] = -1.0; A2[1][1] = 3.0; A2[1][2] = -1.0; A2[1][3] = 0.0; A2[1][4] = 0.5; A2[1][5] = 0.0;
	A2[2][0] = 0.0; A2[2][1] = -1.0; A2[2][2] = 3.0; A2[2][3] = -1.0; A2[2][4] = 0.0; A2[2][5] = 0.0;
	A2[3][0] = 0.0; A2[3][1] = 0.0; A2[3][2] = -1.0; A2[3][3] = 3.0; A2[3][4] = -1.0; A2[3][5] = 0.0;
	A2[4][0] = 0.0; A2[4][1] = 0.5; A2[4][2] = 0.0; A2[4][3] = -1.0; A2[4][4] = 3.0; A2[4][5] = -1.0;
	A2[5][0] = 0.5; A2[5][1] = 0.0; A2[5][2] = 0.0; A2[5][3] = 0.0; A2[5][4] = -1.0; A2[5][5] = 3.0;

	b2[0] = 2.5; b2[1] = 1.5; b2[2] = 1.0; b2[3] = 1.0; b2[4] = 1.5; b2[5] = 2.5;
	///////////////////////////////////////////
	
	///////////////////////////////////////////
	// Jacobi
	///////////////////////////////////////////
	printf("Jacobi:\n");

	for(i = 0; i < n1; i++) x1[i] = 0.0;
	for(i = 0; i < n2; i++) x2[i] = 0.0;
	
	nIter = Jacobi(n1,A1,b1,x1,tol);
	printf("Solution for matrix 1: ( ");
	for(i = 0; i < n1; i++) printf("%.4f ",x1[i]);
	printf(")\tIteration count: %d\n", nIter);

	nIter = Jacobi(n2,A2,b2,x2,tol);
	printf("Solution for matrix 2: ( ");
	for(i = 0; i < n2; i++) printf("%.4f ",x2[2]);
	printf(")\tIteration count: %d\n", nIter);

	///////////////////////////////////////////
	// Gauss-Seidel
	///////////////////////////////////////////
	printf("Gauss-Seidel:\n");
	
	for(i = 0; i < n1; i++) x1[i] = 0.0;
	for(i = 0; i < n2; i++) x2[i] = 0.0;

	nIter = GaussSeidel(n1,A1,b1,x1,tol);
	printf("Solution for matrix 1: ( ");
	for(i = 0; i < n1; i++) printf("%.4f ",x1[i]);
	printf(")\tIteration count: %d\n", nIter);

	nIter = GaussSeidel(n2,A2,b2,x2,tol);
	printf("Solution for matrix 2: ( ");
	for(i = 0; i < n2; i++) printf("%.4f ",x2[2]);
	printf(")\tIteration count: %d\n", nIter);

	///////////////////////////////////////////
	// SOR
	///////////////////////////////////////////
	printf("SOR:\n");
	
	for(i = 0; i < n1; i++) x1[i] = 0.0;
	for(i = 0; i < n2; i++) x2[i] = 0.0;

	nIter = SOR(n1,A1,b1,x1,tol,w);
	printf("Solution for matrix 1: ( ");
	for(i = 0; i < n1; i++) printf("%.4f ",x1[i]);
	printf(")\tIteration count: %d\n", nIter);

	nIter = SOR(n2,A2,b2,x2,tol,w);
	printf("Solution for matrix 2: ( ");
	for(i = 0; i < n2; i++) printf("%.4f ",x2[2]);
	printf(")\tIteration count: %d\n", nIter);

	return 0;
}