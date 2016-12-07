#include "CubicSplineInterpolation.h"

CubicSplineInterpolation::CubicSplineInterpolation(Point *points, int n)
{
	_points = new Point[n];

	_n = n;

	for(int i = 0; i < n; i++)
	{
		_points[i] = points[i];
	}
}

Point CubicSplineInterpolation::calculatePoint(int i, double t)
{
	return Point(56,56);
}

void CubicSplineInterpolation::calculateSpline()
{
	setup();
}

void CubicSplineInterpolation::setupH()
{
	_h = new double[_n+1];

	_h[0] = 0;  // Spline aberta
	_h[_n] = 0; // Spline aberta

	// Spline com espaçamento uniforme
	for(int i = 1; i < _n; i++)
	{
		_h[i] = 1;
	}
}

void CubicSplineInterpolation::setupDelta()
{
	_delta = new double[_n];

	for(int i = 0; i < _n; i++)
	{
		_delta[i] = _h[i] / (_h[i] + _h[i+1]);
	}
}

void CubicSplineInterpolation::setupUpsilon()
{
	_upsilon = new double[_n];

	for(int i = 0; i < _n; i++)
	{
		_upsilon[i] = 0;
	}
}

void CubicSplineInterpolation::setupGamma()
{
	_gamma = new double[_n];

	for(int i = 0; i < _n; i++)
	{
		double sum = 2.0 * (_h[i] + _h[i+1]);
		_gamma[i] = sum / (_upsilon[i] * _h[i] * _h[i+1] + sum);
	}
}

void CubicSplineInterpolation::setup()
{
	setupH();
	setupDelta();
	setupUpsilon();
	setupGamma();

	for(int i = 0; i < _n; i++)
	{
		double sum = 2.0 * (_h[i] + _h[i+1]);
		_gamma[i] = sum / (_upsilon[i] * _h[i] * _h[i+1] + sum);
		std::cout << "[" << i << "] h = " << _h[i] << " delta = " << _delta[i] << " upsilon = " << _upsilon[i] << " gamma = " << _gamma[i] << std::endl;
	}

	std::cout << "[" << _n << "] h = " << _h[_n] << std::endl;
}