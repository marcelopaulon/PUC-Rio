#include "gauss.h"

void gauss(int n, double **A, double *b, double *x)
{
	int i, j, k, p;
	double s, f, temp;
	
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
			temp = A[p][k];
			A[p][k] = A[j][k];
			A[j][k] = temp;
		}

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
}