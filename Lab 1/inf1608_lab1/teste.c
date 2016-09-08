#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "fcos.h"

#define MAX 0.07969262624616703

#define DEBUG 1

int main(void)
{
	double i;
	int countTests = 0, countErrors = 0;
	double error, residue, difference, fcosResult, cosResult;
	
	printf("1) ");

	if(DEBUG == 1) printf("fcos(x):\n");

	// Testa para alguns valores do intervalo x pertence a [0,Pi]
	for(i = 0.0; i < 3.14159265; countTests++, i += 0.001)
	{
		fcosResult = fcos(i);
		cosResult = cos(i);

		difference = i - PI_2;

		// Erro = |cos(x)-fcos(x)|
		error = fabs(fcosResult - cosResult);

		// Resíduo = -(x-x0)^5 / 120
		residue = -(difference * difference * difference * difference * difference) / 120;

		if(error > MAX)
		{
			printf("Value exceeded maximum error. Exiting.\n");
			exit(-1);
		}

		// Verifica se erro > |-(x-x0)^5 / 120|
		if(error > fabs(residue)) {
			if(DEBUG == 1) printf("FAIL: ");
			countErrors++;
		}
		else {
			if(DEBUG == 1) printf("PASS: ");
		}

		if(DEBUG == 1) printf("fcos(%.4g) = %.16g (error = %.16g; residue = %.16g)\n", i, fcosResult, error, residue);
	}

	if(DEBUG == 1) printf("\n");
	
	printf("%d/%d tests passed", countTests-countErrors, countTests);
	printf("\n2) %.16g\n", 9.4 - 9 - 0.4);

	return 0;
}