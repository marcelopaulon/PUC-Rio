#include <stdio.h>

#include "matriz.h"

double ** fatoracao (int n, double **A);

double * substituicao (int n, double **A, double **P, double *b);

double * interpola (int n, double *px, double *py);

double avalia (int n, double *c, double x);

double lagrange (int n, double *px, double *py, double x);