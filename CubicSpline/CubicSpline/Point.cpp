#include "Point.h"

Point::Point(double x, double y)
{
	_x = x;
	_y = y;
}

Point::Point()
{
	_x = 0;
	_y = 0;
}

double Point::getX()
{
	return _x;
}

double Point::getY()
{
	return _y;
}