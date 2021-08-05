#include "interp.h"

#include <stdlib.h>
#include "matriz.h"
#include <math.h>

double** fatoracao (int n, double** A)
{
	int i, j, k;
	double temp, f;
	double** P = mat_cria(n,n);
	//inicializa matriz permutação
	for(i = 0; i < n; i++)
	{
		for(j = 0; j < n; j++)
		{
			if(i == j) P[i][j] = 1;
			else P[i][j] = 0;
		}
	}
	
	//eliminação de gauss

	
	for(j = 0; j < n-1; j++)
	//para j de 0 até penúltima coluna,
	{
		//pivotamento:

				//acha maior
		int p = j;
		for(k = j+1; k < n; k++)
		{
			if(fabs(A[k][j]) > fabs(A[p][j]))
			{
				p = k;
			}
		}
			//troca posições
		for(k = 0; k < n; k++)
		{
			//troca em A
			temp = A[j][k];
			A[j][k] = A[p][k];
			A[p][k] = temp;
			//troca em P
			temp = P[j][k];
			P[j][k] = P[p][k];
			P[p][k] = temp;
		}

		//faz matriz triangular
		for(i = j+1; i < n; i++)
		//elimina coluna j:
		{
			//elimina Aij, a partir de j+1
			f = A[i][j]/A[j][j];
			//A[i][j] armazena fator usado no método de gauss("comprimindo" a matriz L)
			A[i][j] = f;
			for(k = j+1; k < n;k++)
			{
				A[i][k] = A[i][k] - A[j][k]*f;
			}
			
			
		}
	}

	return P;


}

double* substituicao(int n, double** A, double **P, double* b)
{
	int i, j;
	double *y, *x, sum;
	double *pb = (double*)malloc(n*sizeof(double));
	y = (double*) malloc(n*sizeof(double));
	x = (double*) malloc(n*sizeof(double));
	
	//pb = P*b
	mat_multv(n, n, P, b, pb);

	
	//acha vetor y = Ux através de substituição na matriz triangular inferior
	
	//y[0] = pb[0] / L[0][0](1)
	y[0] = pb[0];
	for(i = 1; i < n; i++)
	{
		sum = 0;
		for(j = i-1; j >=0; j--)
		{
			sum += A[i][j] * y[j];
		}
		//y[i] = sum / A[i][i](1);
		y[i] = pb[i] - sum;
	}

	//acha vetor x usando que Ux = y

	x[n-1] = y[n-1] / A[n-1][n-1];
	for(i = n-2; i >= 0; i--)
	{
		sum = 0;
		for(j = i+1; j < n; j++)
		{
			sum += A[i][j] * x[j];
		}
		//x[i] = sum / A[i][i];
		x[i] = (y[i] - sum) / A[i][i];
	}

	return x;


}