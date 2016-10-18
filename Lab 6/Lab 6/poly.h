typedef struct sample Sample;

struct sample
{
	int n; /* número de amostras */
	double* x; /* valores x das amostras */
	double* y; /* valores y das amostras */
};

Sample* Chebyshev (int n, double a, double b, double (*f) (double x));