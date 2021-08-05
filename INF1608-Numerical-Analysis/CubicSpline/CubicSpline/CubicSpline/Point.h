#pragma once
#ifndef _POINT
#define _POINT

class Point 
{
public:
	double getX();
	double getY();

	Point(double x, double y);

	Point();
private:
	double _x;
	double _y;
};

#endif