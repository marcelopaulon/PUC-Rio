#include <stdio.h>
#include <stdlib.h>

#define m 20.0
#define k 20.0

#define C 5.0

double force(double saux[2], double c)
{
	return (-k*saux[0] - c*saux[1])/m;
}

void Runge_Kutta(double h, double s[2], double c, double *sres)
{
	double saux[2];
	double s1[2], s2[2], s3[2], s4[2];
		
	s1[0] = h * s[1];
	s1[1] = h * force(s, c);
	
	saux[0] = s[0] + (s1[0]/2.0);
	saux[1] = s[1] + (s1[1]/2.0);

	s2[0] = h * saux[1];
	s2[1] = h * force(saux, c);
	
	saux[1] = s[1] + (s2[1]/2.0);

	s3[0] = h * saux[1];
	s3[1] = h * force(saux, c);

	saux[0] = s[0] + (s1[0]/2.0);
	saux[1] = s[1] + s3[1];

	s4[0] = h * saux[1];
	s4[1] = h * force(saux, c);

	sres[0] = s[0] + (s1[0] + 2*s2[0] + 2*s3[0] + s4[0])/6.0;
	sres[1] = s[1] + (s1[1] + 2*s2[1] + 2*s3[1] + s4[1])/6.0;
}

int main(void)
{
	double i;
	double *s, *sres, *stemp;
	double h = 0.1;

	double c = C;

	s = stemp = (double *) malloc(sizeof(double) * 2);
	sres = (double *) malloc(sizeof(double) * 2);

	if(!s || !sres)
	{
		printf("Unable to allocate memory. Exiting.\n");
		exit(-1);
	}

	s[0] = 1.0;
	s[1] = 0.0;
	
	printf("%.16f;%.16f\n", 0.0, s[0]);

	for(i = 0; i < 15.0; i += h)
	{
		Runge_Kutta(h, stemp, c, sres);
		stemp = sres;
		printf("%.16f;%.16f\n", i, sres[0]);
	}

	free(s);
	free(sres);

	return 0;
}