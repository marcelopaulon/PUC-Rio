#include "CubicSplineInterpolation.h"

CubicSplineInterpolation::CubicSplineInterpolation(Point *points, int n, bool openSpline, bool uniformSpline)
{
	_points = new Point[n];

	_n = n;

	_uniformSpline = uniformSpline;
	_openSpline = openSpline;


	for (int i = 0; i < n; i++)
	{
		_points[i] = points[i];
	}

	setupUpsilon();
}

Point CubicSplineInterpolation::calculatePoint(int i, double t)
{
	double pointX = casteljauB(_points[i].getX(), _R[i].getX(), _L[i].getX(), _points[i + 1].getX(), t);
	double pointY = casteljauB(_points[i].getY(), _R[i].getY(), _L[i].getY(), _points[i + 1].getY(), t);

	return Point(pointX, pointY);
}

void CubicSplineInterpolation::setTension(int i, double tension)
{
	_upsilon[i] = tension;
}

void CubicSplineInterpolation::calculateSpline()
{
	setup();
}

void CubicSplineInterpolation::setupH()
{
	_h = new double[_n+1];

	if (_openSpline)
	{
		_h[0] = 1;
		_h[_n] = 1;
	}
	else
	{
		_h[0] = _h[_n] = norm(_points[_n - 1], _points[0]);
	}

	if(_uniformSpline)
	{
		for (int i = 1; i < _n; i++)
		{
			_h[i] = 1;
		}
	}
	else
	{
		for (int i = 1; i < _n; i++)
		{
			_h[i] = norm(_points[i], _points[i-1]);
		}
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

void CubicSplineInterpolation::setupLambda()
{
	_lambda = new double[_n];
	
	//spline aberta:
	if (_openSpline)
	{
		_lambda[0] = _lambda[_n - 1] = 1.0;
	}
	else
	{
		double num = ((_gamma[_n - 1] * _h[_n - 1]) + _h[0]);
		_lambda[0] = num / (num + _gamma[0] * _h[1]);

		num = ((_gamma[_n - 2] * _h[_n - 2]) + _h[_n-1]);
		_lambda[_n - 1] = num / (num + _gamma[_n - 1] * _h[0]);

	}
	
	
	for (int i = 1; i < _n - 1; i++)
	{
		double num = ((_gamma[i - 1] * _h[i - 1]) + _h[i]);
		_lambda[i] = num / (num + _gamma[i] * _h[i + 1]);
	}
}

void CubicSplineInterpolation::setupMi()
{
	_mi = new double[_n];

	//spline aberta
	if (_openSpline)
	{
		_mi[0] = _mi[_n - 1] = 0.0;
	}
	else
	{
		double num = _gamma[0] * _h[0];
		_mi[0] = num / (num + _h[1] + _gamma[1] * _h[2]);

		num = _gamma[_n-1] * _h[_n-1];
		_mi[_n-1] = num / (num + _h[_n] + _gamma[0] * _h[1]);
	}

	for (int i = 1; i < _n - 1; i++)
	{
		double num = _gamma[i] * _h[i];
		_mi[i] = num / (num + _h[i + 1] + _gamma[i + 1] * _h[i + 2]);
	}

}

double CubicSplineInterpolation::calcA(int i)
{
	return (1 - _delta[i]) * (1 - _lambda[i]);
	
}

double CubicSplineInterpolation::calcB(int i)
{
	return (1 - _delta[i]) * _lambda[i] + _delta[i]*(1 - _mi[i]);
}

double CubicSplineInterpolation::calcC(int i)
{
	return _delta[i] * _mi[i];
}

//calcula castejau de b(3)(i)(t) (usando k = 3), não recursivamente
double CubicSplineInterpolation::casteljauB(double b0, double b1, double b2, double b3, double t)
{
	double c1 = (1 - t)*((1 - t)*((1 - t)*b0 + t*b1) + t*((1 - t)*b1 + t*b2));
	double c2 = t*((1 - t)*((1 - t)*b1 + t*b2) + t*((1 - t)*b2 + t*b3));
	return c1 + c2;
}

//calcula recursivament casteljau de B(k)(i)(t) 
//double CubicSplineInterpolation::casteljauB(double b0, double b1, double b2, double b3, int i, int k, double t)
//{
//	if (k == 0)
//	{
//		switch (i)
//		{
//			case 0:
//				return b0;
//			case 1:
//				return b1;
//			case 2:
//				return b2;
//			case 3:
//				return b3;
//			default:
//				std::cout << "Error - invalid i value on casteljauB." << std::endl;
//				exit(-1);
//		}
//	}
//
//	return (1 - t) * casteljauB(b0, b1, b2, b3, i, k - 1, t) + t * casteljauB(b0, b1, b2, b3, i + 1, k - 1, t);
//}

void CubicSplineInterpolation::setupMatrix()
{
	int k = 0;
	_A = mat_cria(_n, _n);

	//primeira linha
	_A[0][0] = calcB(0);
	_A[0][1] = calcC(0);
	for (int i = 2; i < _n - 1; i++)
	{
		_A[0][i] = 0.0;
	}
	_A[0][_n - 1] = calcA(0);

	//linhas 1 até n-2
	for (int i = 1; i < _n - 1; i++)
	{
		for (int j = 0; j < _n; j++)
		{
			//se está na diagonal, escreve a,b,c
			if (j == i)
			{
				_A[i][j-1]   = calcA(i);
				_A[i][j] = calcB(i);
				_A[i][j+1] = calcC(i);
				//pula pra próxima coluna para não reescrever c
				j++;
			}
			else
			{
				_A[i][j] = 0.0;
			}
		}
	}
	//última linha:
	_A[_n - 1][0] = calcC(_n - 1);
	for (int j = 1; j < _n - 2; j++)
	{
		_A[_n - 1][j] = 0.0;
	}
	_A[_n - 1][_n - 2] = calcA(_n - 1);
	_A[_n - 1][_n - 1] = calcB(_n - 1);

}



double CubicSplineInterpolation::norm(Point p1, Point p2)
{
	double norm2 = (p1.getX() - p2.getX()) * (p1.getX() - p2.getX());
	norm2 += (p1.getY() - p2.getY()) * (p1.getY() - p2.getY());
	return sqrt(norm2);
}

void CubicSplineInterpolation::setup()
{
	setupH();
	setupDelta();
	setupGamma();
	setupLambda();
	setupMi();
	setupMatrix();

	//x
	double* tempDX = new double[_n];
	double *tempPX = new double[_n];
	double *tempDY = new double[_n];
	double *tempPY = new double[_n];

	for (int i = 0; i < _n; i++) 
	{
		tempPX[i] = _points[i].getX();
		tempPY[i] = _points[i].getY();
	}

	printf("GaussX:\n");
	gauss(_n, _A, tempPX, tempDX);
	printf("GaussY:\n");
	gauss(_n, _A, tempPY, tempDY);
		
	//y

	for(int i = 0; i < _n; i++)
	{
		double sum = 2.0 * (_h[i] + _h[i+1]);
		_gamma[i] = sum / (_upsilon[i] * _h[i] * _h[i+1] + sum);
		//std::cout << "[" << i << "] h = " << _h[i] << " delta = " << _delta[i] << " upsilon = " << _upsilon[i] << " gamma = " << _gamma[i] <<  " lambda = " << _lambda[i] << "mi = " << _mi[i] <<std::endl;
		std::cout << tempDX[i] << " " << tempDY[i] << std::endl;
	}

	std::cout << "[" << _n << "] h = " << _h[_n] << std::endl;

	printf("matriz:\n");
	printMatriz(_n, _n, _A);

	// Calcula R e L
	_R = new Point[_n - 1];
	_L = new Point[_n - 1];

	for (int i = 0; i < _n - 1; i++)
	{
		double Rx, Ry, Lx, Ly;

		Rx = (1 - _mi[i]) * tempDX[i] + _mi[i] * tempDX[i + 1];
		Ry = (1 - _mi[i]) * tempDY[i] + _mi[i] * tempDY[i + 1];

		Lx = (1 - _lambda[i + 1]) * tempDX[i] + _lambda[i + 1] * tempDX[i + 1];
		Ly = (1 - _lambda[i + 1]) * tempDY[i] + _lambda[i + 1] * tempDY[i + 1];

		_R[i] = Point(Rx, Ry);
		_L[i] = Point(Lx, Ly);

		std::cout << "R[" << i << "] = " << _R[i].getX() << ", " << _R[i].getY() << std::endl;
		std::cout << "L[" << i << "] = " << _L[i].getX() << ", " << _L[i].getY() << std::endl;
	}

	


}