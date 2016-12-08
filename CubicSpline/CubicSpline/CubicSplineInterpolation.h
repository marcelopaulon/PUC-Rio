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
	CubicSplineInterpolation(Point *points, int n);

	// Realiza contas para interpolação cúbica (spline)
	void calculateSpline();

	// Retorna um ponto no tramo i, com parâmetro t
	Point calculatePoint(int i, double t);
	
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


};

#endif