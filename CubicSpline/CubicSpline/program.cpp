/*
*
* Projeto final de INF1608 - Análise Numérica
* 
* Alunos: André Mazal - 1410386; 
*         Marcelo Paulon - 1411029;
*         Renan da Fonte - 1412122
*
*/

#include <iostream>

#include "CubicSplineInterpolation.h"

int main(void)
{
	int n = 7;
	Point *points = new Point[n];

	points[0] = Point(0,0);
	points[1] = Point(1,1);
	points[2] = Point(2,3);
	points[3] = Point(4,3);
	points[4] = Point(5,6);
	points[5] = Point(6,5);
	points[6] = Point(7,8);

	CubicSplineInterpolation *csi = new CubicSplineInterpolation(points, n);

	csi->calculateSpline();
	
	csi->calculatePoint(1, 2.0);
	return 0;
}