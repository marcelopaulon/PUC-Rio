#include "matriz.h"

#include <math.h>
#include <stdlib.h>
#include <stdio.h>

void Cholesky (int n, double** A)
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

void printMatriz(int m, int n, double**A){
	int i,j;
	for(i = 0; i < m; i++){
		for(j = 0; j < n; j++){
			printf("%.2f\t",A[i][j]);
		}
		printf("\n");
	}
}

int main(void)
{
	int i, j;
	double **A1, **A2, **M1, **T1;
	double *b1, *b2;

	b1 = (double*) malloc(3 * sizeof(double));
	b2 = (double*) malloc(3 * sizeof(double));

	A1 = mat_cria(3, 3);
	A2 = mat_cria(3, 3);
	M1 = mat_cria(3,3);
	T1 = mat_cria(3,3);

	//Preenchendo matrizes
	A1[0][0] = 1;
	A1[0][1] = -1;
	A1[0][2] = 0;
	A1[1][0] = -1;
	A1[1][1] = 2;
	A1[1][2] = 1;
	A1[2][0] = 0;
	A1[2][1] = 1;
	A1[2][2] = 2;
	printf("A1 Original:\n");
	printMatriz(3, 3, A1);
	

	for(i = 0; i < 3; i++){
		for(j = 0; j < 3; j++){
			A2[i][j] = A1[i][j];
		}
	}

	A2[2][2] = 5;

	b1[0] = 0;
	b1[1] = 2;
	b1[2] = 3;
	b2[0] = 3;
	b2[1] = -3;
	b2[2] = 4;

	printf("Fatorado André:\n");
	
	Cholesky(3, A1);
	printMatriz(3, 3, A1);
	
	mat_transposta(3,3,A1,T1);
	mat_multm(3,3,3, T1, A1, M1);
	
	printf("Remultiplicada:\n");
	printMatriz(3, 3, M1);

	
	return 0;
}