#include "matriz.h"

#include <stdio.h>

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

// Imprime a matriz a partir da 2a linha
void imprime2(double **mat, int m, int n)
{
	int i,j;

	printf("\n");

	for(i=1;i<m;i++)
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
	double **mat, **matT, **matVets, **matMult, **matMultRes;

	printf("Vamos criar a matriz\n");
	mat = mat_cria(2, 3);
	matT = mat_cria(3, 2);
	matMult = mat_cria(3, 5);
	matMultRes = mat_cria(2, 5);

	mat[0][0] = 0.0;
	mat[0][1] = 0.1;
	mat[0][2] = 0.2;
	mat[1][0] = 1.0;
	mat[1][1] = 1.1;
	mat[1][2] = 1.2;

	matMult[0][0] = 0.0;
	matMult[0][1] = 0.1;
	matMult[0][2] = 0.2;
	matMult[0][3] = 0.2;
	matMult[0][4] = 0.2;
	matMult[1][0] = 1.0;
	matMult[1][1] = 1.1;
	matMult[1][2] = 0.2;
	matMult[1][3] = 0.2;
	matMult[1][4] = 1.2;
	matMult[2][0] = 1.0;
	matMult[2][1] = 0.2;
	matMult[2][2] = 0.2;
	matMult[2][3] = 1.1;
	matMult[2][4] = 1.2;

	printf("Vamos imprimir a matriz\n");

	imprime(mat, 2, 3);

	printf("Vamos imprimir a matriz transposta\n");

	mat_transposta(2, 3, mat, matT);

	imprime(matT, 3, 2);

	printf("Vamos multiplicar a matriz pelo vetor: \n");
	matVets = mat_cria(2, 3);

	matVets[0][0] = 1.0;
	matVets[0][1] = 2.0;
	matVets[0][2] = 3.0;

	imprime(matVets, 1, 3);

	mat_multv(2, 3, mat, matVets[0], matVets[1]);

	printf("\nResultado:\n");

	imprime2(matVets, 2, 2);

	printf("Vamos multiplicar a matriz pela matriz: \n");

	imprime(matMult, 3, 5);

	mat_multm(2, 3, 5, mat, matMult, matMultRes);

	printf("\nResultado:\n");

	imprime(matMultRes, 2, 5);

	printf("Vamos liberar a matriz\n");
	mat_libera(2, mat);
	mat_libera(2, matVets);
}