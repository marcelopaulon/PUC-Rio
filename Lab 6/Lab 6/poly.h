typedef struct sample Sample;

struct sample
{
	int n; /* amount of samples */
	double* x; /* samples x values */
	double* y; /* samples y values */
};

Sample* Chebyshev (int n, double a, double b, double (*f) (double x));

double * NewtonCompute (Sample *s);

double NewtonEval (Sample *s, double *b, double x);