#include <stdio.h>
#include <stdlib.h>

double derivada (double (*f) (double x), double h, double x);

double simpson (double (*f) (double), double a, double b, int n);

double pontomedio (double (*f) (double), double a, double b, int n);