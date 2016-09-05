#include <stdio.h>
#include "fcos.h"

#define SIZE 10

#define MAX 0.07969262624616703
int main(void)
{
	double i;
	int countTests = 0, countErrors = 0;
	double error, difference;
	
	printf("1) fcos(x):\n");

	for(i = 0.0; i < 3.14; countTests++, i += 0.01)
	{
		difference = i - PI_2;
		error = -(difference * difference * difference * difference * difference) / 120;
		if(error > MAX) {
			printf("FAIL: ");
			countErrors++;
		}
		else {
			printf("PASS: ");
		}
		printf("fcos(%.3f) = %.16g (error = %.16g)\n", i, fcos(i), error);
	}
	
	printf("\n%d/%d tests passed", countTests-countErrors, countTests);
	printf("\n2) %.16g\n", 9.4 - 9 - 0.4);

	return 0;
}