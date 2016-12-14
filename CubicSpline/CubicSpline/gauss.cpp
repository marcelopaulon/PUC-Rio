#include "gauss.h"
#include <cstdlib>

// Aviso: A matriz A e o vetor b terão seus valores alterados após a função ser chamada
void gauss(int n, double **D, double *v, double *x)
{
	int i, j, k, p;
	double s, f, temp, *b;

	//copia D para A
	double **A = mat_duplica(D, n, n);
	b = (double*)malloc(n * sizeof(double));
	//copia v para b
	for (i = 0; i < n; i++)
	{
		b[i] = v[i];
	}

	for(j = 0; j < n; j++)
	{
		x[j] = 0.0;
	}

	for(j = 0; j < n - 1; j++)
	{
		// PIVOTAMENTO
		p = j;

		for(k = j + 1; k < n; k++)
		{
			if(fabs(A[k][j]) > fabs(A[p][j]))
			{
				p = k;
			}
		}

		for(k = j; k < n; k++)
		{
			// troca A[j][k] com A[p][k]
			temp = A[p][k];
			A[p][k] = A[j][k];
			A[j][k] = temp;
		}

		// troca b[j] com b[p]
		temp = b[p];
		b[p] = b[j];
		b[j] = temp;
		// FIM PIVOTAMENTO

		

		// Eliminar a coluna j
		for(i = j + 1; i < n; i++)
		{
			// Eliminar A[i][j]
			f = A[i][j] / A[j][j];
			
			for(k = j; k < n; k++)
			{
				A[i][k] = A[i][k] - A[j][k] * f;
			}

			b[i] = b[i] - b[j] * f;
		}
	}

	for(i = n - 1; i >= 0; i--)
	{
		s = 0.0;
		for(j = i + 1; j <= n - 1; j++)
		{
			s = s + A[i][j] * x[j];
		}

		x[i] = (b[i] - s) / A[i][i];
	}

	printMatriz(n, n, A);
}