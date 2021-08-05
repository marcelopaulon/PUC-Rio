#include "mmq.h"

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void)
{
	int i;
	double t;

	double **A1 = mat_cria(5, 3), **A2 = mat_cria(5, 4);
	double *x1, *x2, e1, e2;
	double *b1 = (double *) malloc(sizeof(double) * 5);
	double *b2 = (double *) malloc(sizeof(double) * 5);
	double aa;
	double **AA = mat_cria(8, 2);
	double *xx = (double *) malloc(sizeof(double) * 8);
	double *bb = (double *) malloc(sizeof(double) * 8);

	if(!b1 || !b2)
	{
		printf("Unable to allocate memory for b1 and b2. Exiting.");
		exit(-1);
	}

	A1[0][0] = 3; A1[0][1] =-1; A1[0][2] = 2;
	A1[1][0] = 4; A1[1][1] = 1; A1[1][2] = 0;
	A1[2][0] =-3; A1[2][1] = 2; A1[2][2] = 1;
	A1[3][0] = 1; A1[3][1] = 1; A1[3][2] = 5;
	A1[4][0] =-2; A1[4][1] = 0; A1[4][2] = 3;

	b1[0] = 10; b1[1] = 10; b1[2] = -5; b1[3] = 15; b1[4] = 0;

	A2[0][0] = 4; A2[0][1] = 2; A2[0][2] = 3; A2[0][3] = 0;
	A2[1][0] =-2; A2[1][1] = 3; A2[1][2] =-1; A2[1][3] = 1;
	A2[2][0] = 1; A2[2][1] = 3; A2[2][2] =-4; A2[2][3] = 2;
	A2[3][0] = 1; A2[3][1] = 0; A2[3][2] = 1; A2[3][3] = -1;
	A2[4][0] = 3; A2[4][1] = 1; A2[4][2] = 3; A2[4][3] = -2;

	b2[0] = 10; b2[1] = 0; b2[2] = 2; b2[3] = 0; b2[4] = 5;

	x1 = mmq(5, 3, A1, b1);
	e1 = norma2(5, 3, A1, b1, x1);

	x2 = mmq(5, 4, A2, b2);
	e2 = norma2(5, 4, A2, b2, x2);

	printf("1 - a) %.6g %.6g %.6g\t\te = %.6g\n", x1[0], x1[1], x1[2], e1);
	printf("b) %.6g %.6g %.6g %.6g\t\te = %.6g\n", x2[0], x2[1], x2[2], x2[3], e2);

	printf("\n2 -\n");
	
	bb[0] = 8; bb[1] = 12.3; bb[2] = 15.5; bb[3] = 16.8; bb[4] = 17.1; bb[5] = 15.8; bb[6] = 15.2; bb[7] = 14;
	
	for(i = 0; i < 8; i++)
	{
		AA[i][0] = 1;
		AA[i][1] = i + 1;
		bb[i] = log(bb[i]) - log((double)i + 1);
	}

	xx = mmq(8, 2, AA, bb);
	aa = exp(xx[0]); // a' = log(a)... a = exp(a')
	
	for(t = 0.0; t <= 16.0; t += 0.1)
	{
		printf("%.2f,%.16g\n", t, aa * t * exp(xx[1] * t));
	}

	mat_libera(5, A1);
	mat_libera(5, A2);
	free(b1);
	free(b2);
	free(x1);
	free(x2);

	return 0;
}