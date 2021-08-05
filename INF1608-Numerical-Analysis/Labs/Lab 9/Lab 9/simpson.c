#include "simpson.h"

double S(double a, double b, double (*f) (double x))
{
	double h = b - a;
	return (h/6.0) * (f(a) + 4*f((a+b)/2.0) + f(b));
}

double DoubleSimpson (double a, double b, double (*f) (double x), double *v)
{
	double c = (a+b)/2.0;
	double SacPlusScb = S(a, c, f) + S(c, b, f);

	*v = SacPlusScb;

	return fabs(S(a, b, f) - SacPlusScb) / 15.0;
}

double AdaptiveSimpson (double a, double b, double (*f) (double x), double tol)
{
	double v;
	double error = DoubleSimpson(a, b, f, &v);
	double c;

	if(error <= tol) return v;
	
	c = (a+b)/2.0;

	return AdaptiveSimpson(a, c, f, tol/2.0) + AdaptiveSimpson(c, b, f, tol/2.0);
}