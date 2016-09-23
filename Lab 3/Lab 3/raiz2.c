#include "raiz2.h"

int NR(double x0, int p, double (*f)(double x), double (*fl)(double x), double* r)
{
	double error = 0.5 * pow(10.0, -p);
	double xi = x0;

	int i;

	for(i = 1; fabs(f(xi)) >= error; i++)
	{
		xi = xi - (f(xi) / fl(xi));

		if(i > 100)
		{
			return 0;
		}
	}

	*r = xi;

	return i;
}

double calc_C_Coefficient(double x0, double x1, double x2, double (*f)(double x))
{
	double fx0 = f(x0), fx0_2 = fx0 * fx0;
	double fx1 = f(x1), fx1_2 = fx1 * fx1;
	double fx2 = f(x2), fx2_2 = fx2 * fx2;
	
	double detA = fx0_2*fx1 + fx0*fx2_2 + fx1_2*fx2 - fx1*fx2_2 - fx0_2*fx2 - fx0*fx1_2;
	double detAc = fx0_2*fx1*x2 + fx0*x1*fx2_2 + x0*fx1_2*fx2 - x0*fx1*fx2_2 - fx0_2*x1*fx2 - fx0*fx1_2*x2;
	
	return detAc/detA; // No enunciado está incorreto, deve ser detAc/detA
}

int IQI(double x0, double x1, double x2, int p, double (*f)(double x), double *r)
{
	double error = 0.5 * pow(10.0, -p);
	double xi = x0;
	int i;

	for(i = 1; fabs(f(xi)) >= error; i++)
	{
		xi = calc_C_Coefficient(x0, x1, x2, f);
		x0 = x1;
		x1 = x2;
		x2 = xi;

		if(i > 100)
		{
			return 0;
		}
	}

	*r = xi;

	return i;
}