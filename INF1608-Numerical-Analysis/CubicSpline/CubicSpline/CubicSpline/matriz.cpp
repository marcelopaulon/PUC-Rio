#ifndef _MATRIX
#define _MATRIX

#include "matriz.h"

#include <cstdlib>
#include <cstdio>

// Cria a matriz
double** mat_cria (int m, int n)
{
	int i;
	double **mat = (double **) malloc(m * sizeof(double *));

	for(i = 0; i < m; i++)
	{
		mat[i] = (double *) malloc(n * sizeof(double));
	}

	return mat;
}

//duplica a matriz passada como argumento
double** mat_duplica(double** A, int m, int n)
{
	int i, j;
	double **D = mat_cria(m, n);
	for (i = 0; i < m; i++)
	{
		for (j = 0; j < n; j++)
		{
			D[i][j] = A[i][j];
		}
	}
	return D;
}

//printa a matriz. usa fun??es declaradas em stdio.h
void printMatriz(int m, int n, double **A)
{
	int i, j;
	for (i = 0; i < m; i++) 
	{
		for (j = 0; j < n; j++)
		{
			printf("%.2f\t", A[i][j]);
		}
		printf("\n");
	}
	printf("\n");
}

// Libera a matriz
void mat_libera (int m, double** A)
{
	int i;

	for(i = 0; i < m; i++)
	{
		free(A[i]);
	}

	free(A);
}

// Transp?e a matriz (resultado: T)
void mat_transposta (int m, int n, double** A, double** T)
{
	int i, j;
	for(i = 0; i < n; i++)
	{
		for(j = 0; j < m; j++)
		{
			T[i][j] = A[j][i];
		}
	}
}

// Multiplica matriz A (m x n) por vetor v (n) (resultado: w)
void mat_multv (int m, int n, double** A, double* v, double* w)
{
	int i, j;
	
	for(i = 0; i < m; i++)
	{
		w[i] = 0.0;

		for(j = 0; j < n; j++)
		{
			w[i] += v[j] * A[i][j];
		}
	}
}

// Multiplica matriz A (m x n) por matriz B (n x q) (resultado: C (m x q))
void mat_multm (int m, int n, int q, double** A, double** B, double** C)
{
	int i, j, k;

	for(i = 0; i < m; i++)
	{
		for(k = 0; k < q; k++)
		{
			C[i][k] = 0.0;

			for(j = 0; j < n; j++)
			{
				C[i][k] += A[i][j] * B[j][k];
			}
		}
	}
}

#endif