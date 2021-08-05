#include "gauss.h"
#include "matriz.h"

#include <stdio.h>
#include <stdlib.h>

double * mmq (int m, int n, double **A, double *b);

double norma2 (int m, int n, double **A, double *b, double *x);