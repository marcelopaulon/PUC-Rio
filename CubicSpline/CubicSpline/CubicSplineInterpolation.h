#pragma once
#ifndef _CSI
#define _CSI

#include "Point.h"
#include "matriz.h"
#include "gauss.h"

#include <cstdlib>
#include <iostream>

class CubicSplineInterpolation 
{
public:

	// Constructor recebe array de pontos e num de pontos = dimensão do problema
	CubicSplineInterpolation(Point *points, int n) : CubicSplineInterpolation(points, n, true, true) {};
	
	// Constructor recebe array de pontos e num de pontos = dimensão do problema
	CubicSplineInterpolation(Point *points, int n, bool openSpline, bool uniformSpline);

	// Realiza contas para interpolação cúbica (spline)
	void calculateSpline();

	// Retorna um ponto no tramo i, com parâmetro t
	Point calculatePoint(int i, double t);

	void setTension(int i, double tension);
	
private:
	
	int _n;
		
	// Sistema (A*D = P)
	double ** _A;
	double * _D;
	Point *_points;

	double * _delta;
	double * _lambda;
	double * _mi;
	double * _h;
	double * _gamma;
	double * _upsilon;
	Point * _R;
	Point * _L;

	bool _openSpline;
	bool _uniformSpline;

	double norm(Point x, Point y);
	void setup();
	void setupH();
	void setupDelta();
	void setupUpsilon();
	void setupGamma();
	void setupLambda();
	void setupMi();
	void setupMatrix();
	double calcA(int i);
	double calcB(int i);
	double calcC(int i);

	double casteljauB(double b0, double b1, double b2, double b3, double t);

	//resolve o sistema linear tridiagonal usando o método de Thomas.
	void Thomas(int n, double *a, double *b, double *c, double *dX, double *dY, double *x, double *y);

};

#endif