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
	int n = 4;
	Point *points = new Point[n];

	/*points[0] = Point(0,0);
	points[1] = Point(1,1);
	points[2] = Point(2,3);
	points[3] = Point(4,3);
	points[4] = Point(5,6);
	points[5] = Point(6,5);
	points[6] = Point(7,8);*/

	points[0] = Point(0, 0);
	points[1] = Point(5, 5);
	points[2] = Point(10, 0);
	points[3] = Point(15, 5);


	CubicSplineInterpolation *csi = new CubicSplineInterpolation(points, n);

	csi->calculateSpline();
	
	for (int i = 0; i < n -1; i++)
	{
		for (double t = 0.0; t <= 1.0; t += 0.1)
		{
			Point point = csi->calculatePoint(i, t);

			std::cout << point.getX() << ";" << point.getY() << std::endl;

		}
	}

	
	return 0;
}