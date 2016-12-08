#ifndef _GAUSS
#define _GAUSS

//#include "gauss.h"
//
//// Aviso: A matriz A e o vetor b terão seus valores alterados após a função ser chamada
//void gauss(int n, double **A, double *b, double *x)
//{
//	int i, j, k, p;
//	double s, f, temp;
//	
//	for(j = 0; j < n; j++)
//	{
//		x[j] = 0.0;
//	}
//
//	for(j = 0; j < n - 1; j++)
//	{
//		// PIVOTAMENTO
//		p = j;
//
//		for(k = j + 1; k < n; k++)
//		{
//			if(fabs(A[k][j]) > fabs(A[p][j]))
//			{
//				p = k;
//			}
//		}
//
//		for(k = j; k < n; k++)
//		{
//			// troca A[j][k] com A[p][k]
//			temp = A[p][k];
//			A[p][k] = A[j][k];
//			A[j][k] = temp;
//		}
//
//		// troca b[j] com b[p]
//		temp = b[p];
//		b[p] = b[j];
//		b[j] = temp;
//		// FIM PIVOTAMENTO
//
//		// Eliminar a coluna j
//		for(i = j + 1; i < n; i++)
//		{
//			// Eliminar A[i][j]
//			f = A[i][j] / A[j][j];
//
//			for(k = j; k < n; k++)
//			{
//				A[i][k] = A[i][k] - A[j][k] * f;
//			}
//
//			b[i] = b[i] - b[j] * f;
//		}
//	}
//
//	for(i = n - 1; i >= 0; i--)
//	{
//		s = 0.0;
//		for(j = i + 1; j <= n - 1; j++)
//		{
//			s = s + A[i][j] * x[j];
//		}
//
//		x[i] = (b[i] - s) / A[i][i];
//	}
//}

#include "gauss.h"
#include "matriz.h"

#include <cstdlib>
#include <cmath>

void gauss(int n, double** D, double* b, double* x)
{
	int i, j, k;
	double temp, f;
	double *v;
	//copia D para A
	double **A = mat_duplica(D, n, n);
	v = (double*)malloc(n * sizeof(double));
	//copia b para v
	for (i = 0; i < n; i++)
	{
		v[i] = b[i];
	}

	//faz pivotamento

	//acha maior
	for (i = 0, j = 0; j < n; j++)
	{
		if (fabs(A[j][0]) > fabs(A[i][0]))
		{
			i = j;
		}
	}
	//troca posições
	for (k = 0; k < n; k++)
	{
		temp = A[i][k];
		A[i][k] = A[0][k];
		A[0][k] = temp;
	}
	temp = v[i];
	v[i] = v[0];
	v[0] = temp;



	//faz matriz triangular
	for (j = 0; j < n - 1; j++)
		//para j de 0 até penúltima coluna,
	{
		for (i = j + 1; i < n; i++)
			//elimina coluna j:
		{
			//elimina Aij
			f = A[i][j] / A[j][j];
			for (k = j; k < n; k++)
			{
				A[i][k] = A[i][k] - A[j][k] * f;
			}
			v[i] = v[i] - v[j] * f;
		}
	}



	//obtem x[n-1]
	x[n - 1] = v[n - 1] / A[n - 1][n - 1];
	//usa a matriz triangular para obter x[i]'s:
	for (i = n - 2; i >= 0; i--)
	{
		for (k = i + 1; k < n; k++)
		{
			v[i] -= A[i][k] * x[k];
		}
		x[i] = v[i] / A[i][i];
	}
	return;
}

#endif // !_GAUSS