/*
*
* Projeto final de INF1608 - Análise Numérica
* 
* Alunos: André Mazal - 1410386; 
*         Marcelo Paulon - 1411029;
*         Renan da Fonte - 1412122
*
*/

#include <vector>
#include <iostream>
#include <fstream>
#include <ctime>
#include "CubicSplineInterpolation.h"

void writeCsv(std::string name, int n, Point *points)
{
	std::ofstream csvFile;
	csvFile.open(name, std::ofstream::out | std::ofstream::trunc);
	
	if (csvFile.is_open())
	{
		csvFile << "X;Y\n";

		for (int i = 0; i < n; i++)
		{
			csvFile << points[i].getX() << ";" << points[i].getY() << "\n";
		}

		csvFile.close();
	}
	else
	{
		std::cout << "Unable to open file " << name.c_str() << std::endl;
	}
}

int main(void)
{
	int n = 10;
	Point *points = new Point[n];

	/*points[0] = Point(0,0);
	points[1] = Point(1,1);
	points[2] = Point(2,3);
	points[3] = Point(4,3);
	points[4] = Point(5,6);
	points[5] = Point(6,5);
	points[6] = Point(7,8);
*/
	/*
	points[0] = Point (102, 0);
	points[1] = Point (0, 102);
	points[2] = Point (-102, 0);
	points[3] = Point (0, -102);
	points[4] = Point(-102, 0);*/
	
	int j = 0;
	for (double i = 0.0; i < 2 * 3.1415; i += 2 * 3.1415 / n) {
		points[j] = Point(sin(i), cos(i));
		j++;
	}
	

	/*points[0] = Point(102, 102);
	points[1] = Point(12, 12);
	points[2] = Point(1.2, 1.2);
	points[3] = Point(0.12, 0.12);
	points[4] = Point(-12, -12);*/

	/*points[0] = Point(0, 0);
	points[1] = Point(5, 5);
	points[2] = Point(10, 0);
	points[3] = Point(15, 5);
*/
	/*srand(time(NULL));

	for (int i = 0; i < n; i++)
	{
		points[i] = Point(100*rand()/RAND_MAX, 100*rand()/RAND_MAX);
	}*/

	CubicSplineInterpolation *csi = new CubicSplineInterpolation(points, n, true, false);

	std::vector<Point> result;

	csi->calculateSpline();
	

	for (int i = 0; i < n - 1; i++)
	{
		for (double t = 0.0; t <= 1.0; t += 0.01)
		{
			result.push_back(csi->calculatePoint(i, t));
		}
	}

	writeCsv("circleOpen.csv", result.size(), &result[0]);

	CubicSplineInterpolation *csiN = new CubicSplineInterpolation(points, n,false, false);

	result.clear();

	csiN->calculateSpline();

	for (int i = 0; i < n - 1; i++)
	{
		for (double t = 0.0; t <= 1.0; t += 0.01)
		{
			result.push_back(csiN->calculatePoint(i, t));

		}
	}

	writeCsv("circleClosed.csv", result.size(), &result[0]);
	
	delete(points);
	return 0;
}