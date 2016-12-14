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

std::vector<Point> readCsv(std::string name) {
	std::ifstream in(name);
	std::vector<Point> points;

	while (!in.eof()) {
		float a, b;
		char separator;
		in >> a;
		in >> separator;
		in >> b;

		points.push_back(Point(a, b));
	}

	in.close();
	return points;
}

int main(void)
{
	std::cout << "Arquivo .csv: " << std::endl;
	char path[1024];
	std::cin >> path;
	int isOpen, isUniform;

	std::cout << std::endl << "Aberto? ";
	std::cin >> isOpen;
	std::cout << std::endl << "Uniforme? ";
	std::cin >> isUniform;

	if (isOpen > 0) isOpen = 1;
	
	std::vector<Point> points = readCsv(path);

	//print teste leitura
	for (unsigned int i = 0; i < points.size(); i++) {
		std::cout << points[i].getX() << "; " << points[i].getY() << std::endl;
	}
	
	int n = points.size();

	CubicSplineInterpolation csi = CubicSplineInterpolation(&points[0], points.size(),isOpen > 0, isUniform);

	std::vector<Point> result;
	
	csi.calculateSpline();
	
	//se for open, há n-1 tramos.
	for (unsigned int i = 0; i < points.size() - isOpen; i++)
	{
		for (double t = 0.0; t <= 1.0; t += 0.1)
		{
			result.push_back(csi.calculatePoint(i, t));
		}
	}

	std::string csvName = "out";
	csvName = csvName.append(path);

	writeCsv(csvName.c_str(), result.size(), &result[0]);
	
	return 0;
}