#include "poly.h"

#define PI 3.14159265359

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

unsigned fat(unsigned n)
{
	if (n == 1)
		return 1;
	else
		return n * fat(n - 1);
}

int main(void)
{
	int n = 6, i, pass = 0, fail = 0, signal;
	double ia = 0.0, ib = PI/2.0, *b, Pn1x, error, maxError, cosResult, counter, temp;
	Sample * s = Chebyshev(n, ia, ib, cos);

	maxError = pow((ib-ia)*0.5, n)/pow(2.0, n - 1) * 1/fat(n);

	printf("n = %d; Interval = [%d, %d]\n", n, ia, ib);

	for(i = 0; i < n; i++)
	{
		printf("x = %f; y = %f\n", s->x[i], s->y[i]);
	}
	
	b = NewtonCompute(s);

	for(i = 0; i < n; i++)
	{
		printf("b[%d] = %.16g\n", i, b[i]);
	}

	printf("Max Error: %.16g\n", maxError);

	for(counter = -2 * PI; counter <= 2 * PI; counter += 0.01)
	{
		temp = counter;
		signal = 1;

		while(temp < 0)
		{
			temp += 2 * PI;
		}

		if(temp >= ib && temp < PI) // temp >= 0 && temp < PI
		{
			temp = PI - temp; // cos(PI - x) = -cos(x)
			signal = -1;
		}
		else if(temp >= PI && temp < 1.5*PI) // temp >= PI && temp < 3PI/2
		{
			temp = temp - PI;
			signal = -1;
		}
		else if(temp >= 1.5*PI && temp < 2*PI) // temp >= 3PI/2 && temp < 2PI
		{
			temp = 2*PI - temp;
		}

		Pn1x = NewtonEval(s, b, temp) * signal;
		
		cosResult = cos(counter);
		error = fabs(Pn1x - cosResult);

		printf("P[n-1](%f) = %.12g; cos(x) = %.12g; error = %.6g, Status = %s\n", counter, Pn1x, cosResult, error, error < maxError ? (pass++, "PASS") : (fail++, "FAIL"));
	}

	printf("%d/%d tests passed\n", pass, pass+fail);

	free(b);
	free(s->x);
	free(s->y);
	free(s);

	return 0;
}