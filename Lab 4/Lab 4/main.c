#include <stdio.h>
#include <stdlib.h>

#include "gauss.h"

// Imprime a matriz
void imprime(double **mat, int m, int n)
{
	int i,j;

	printf("\n");

	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			printf("%.2f\t", mat[i][j]);
		}
		printf("\n");
	}

	printf("\n");
}

int main(void)
{
	int i;
	int n1, n2;
	double **A1, *b1, *x1;
	double **A2, *b2, *x2;
	
	n1 = 3;
	A1 = mat_cria(n1, n1);
	b1 = mat_cria(1, n1)[0];
	x1 = mat_cria(1, n1)[0];
	
	A1[0][0] = 1.0; A1[0][1] = 2.0; A1[0][2] = -1.0; b1[0] = 3.0;
	A1[1][0] = 2.0; A1[1][1] = 1.0; A1[1][2] = -2.0; b1[1] = 3.0;
	A1[2][0] = -3.0; A1[2][1] = 1.0; A1[2][2] = 1.0; b1[2] = -6.0;

	printf("A1:\n");

	imprime(A1, n1, n1);

	gauss(n1, A1, b1, x1);

	printf("Gauss:\n");

	imprime(A1, n1, n1);

	for(i = 0; i < n1; i++)
	{
		printf("%.2f ", x1[i]);
	}

	n2 = 6;
	A2 = mat_cria(n2, n2);
	b2 = mat_cria(1, n2)[0];
	x2 = mat_cria(1, n2)[0];

	A2[0][0] = 3.0; A2[0][1] = -1.0; A2[0][2] = 0.0; A2[0][3] = 0.0; A2[0][4] = 0.0; A2[0][5] = 0.5; b2[0] = 2.5;
	A2[1][0] = -1.0; A2[1][1] = 3.0; A2[1][2] = -1.0; A2[1][3] = 0.0; A2[1][4] = 0.5; A2[1][5] = 0.0; b2[1] = 1.5;
	A2[2][0] = 0.0; A2[2][1] = -1.0; A2[2][2] = 3.0; A2[2][3] = -1.0; A2[2][4] = 0.0; A2[2][5] = 0.0; b2[2] = 1.0;
	A2[3][0] = 0.0; A2[3][1] = 0.0; A2[3][2] = -1.0; A2[3][3] = 3.0; A2[3][4] = -1.0; A2[3][5] = 0.0; b2[3] = 1.0;
	A2[4][0] = 0.0; A2[4][1] = 0.5; A2[4][2] = 0.0; A2[4][3] = -1.0; A2[4][4] = 3.0; A2[4][5] = -1.0; b2[4] = 1.5;
	A2[5][0] = 0.5; A2[5][1] = 0.0; A2[5][2] = 0.0; A2[5][3] = 0.0; A2[5][4] = -1.0; A2[5][5] = 3.0; b2[5] = 2.5;
	
	printf("\n\nA2:\n");

	imprime(A2, n2, n2);

	gauss(n2, A2, b2, x2);

	printf("Gauss:\n");

	imprime(A2, n2, n2);

	for(i = 0; i < n2; i++)
	{
		printf("%.2f ", x2[i]);
	}

	return 0;
}