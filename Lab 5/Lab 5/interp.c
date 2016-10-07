#include <math.h>

#include "interp.h"

double** fatoracao (int n, double** A)
{
	int i, j, k, p;
	double f, temp;
	
	double **P = mat_cria(n, n);

	for(i = 0; i < n; i++)
	{
		for(j = 0; j < n; j++)
		{
			if(i != j)
			{
				P[i][j] = 0.0;
			}
			else
			{
				P[i][j] = 1.0;
			}
		}
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

			// troca P[j][k] com P[p][k]
			temp = P[p][k];
			P[p][k] = P[j][k];
			P[j][k] = temp;
		}

		// FIM PIVOTAMENTO

		for(i = j + 1; i < n; i++)
		{
			f = A[i][j] / A[j][j];

			A[i][j] = f;

			for(k = j + 1; k < n; k++)
			{
				A[i][k] = A[i][k] - A[j][k] * f;
			}
		}
	}

	return P;
}

double * substituicao (int n, double **LU, double **P, double *b)
{
	int i, j;
	double *x = mat_cria(1, n)[0];
	double *Pb = b;	// b will be replaced by P*b

	// b = P*b
	mat_multv(n, n, P, b, Pb);

	// L*y = P*b, y
	for(j = 0; j < n - 1; j++)
	{
		for(i = j + 1; i < n; i++)
		{
			Pb[i] = Pb[i] - Pb[j] * LU[i][j];
		}
	}

	// L*y = L*U*x = P*b
	for(i = n - 1; i >= 0; i--)
	{
		x[i] = Pb[i];

		for(j = n - 1; j > i; j--)
		{
			x[i] = x[i] - LU[i][j] * x[j];
		}

		x[i] = x[i] / LU[i][j];
	}

	return x;
}

double * interpola(int n, double *px, double *py)
{
	double **A, **P, *c;
	int i, j;

	A = mat_cria(n,n);

	for(i = 0; i < n; i++)
	{
		for(j = 0; j < n; j++)
		{
			A[i][j] = pow(px[i], j);
		}
	}

	P = fatoracao(n, A);
	c = substituicao(n, A, P, py);
	
	mat_libera(n, P);
	mat_libera(n, A);

	return c;
}

double avalia(int n, double *c, double x)
{
	double result = 0, xn = 1;
	int i;
	
	for(i = 0; i < n; xn *= x, i++)
	{
		result += c[i] * xn;
	}

	return result;
}

double lagrange (int n, double *px, double *py, double x)
{
	int i, j;
	double Lk, result = 0.0;

	for(i = 0; i < n; i++)
	{
		Lk = 1.0;

		for(j = 0; j < n; j++)
		{
			if(i == j) continue;

			Lk *= (x - px[j]) / (px[i] - px[j]);
		}

		result += py[i] * Lk;
	}

	return result;
}