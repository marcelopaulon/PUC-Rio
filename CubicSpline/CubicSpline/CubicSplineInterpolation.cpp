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

void CubicSplineInterpolation::setupLambda()
{
	_lambda = new double[_n];
	
	//spline aberta:
	_lambda[0] = _lambda[_n - 1] = 0;
	
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
	_mi[0] = _mi[_n - 1] = 0.0;

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



void CubicSplineInterpolation::setup()
{
	setupH();
	setupDelta();
	setupUpsilon();
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

	gauss(_n, _A, tempPX, tempDX);
	gauss(_n, _A, tempPY, tempDY);



	
	//y

	for(int i = 0; i < _n; i++)
	{
		double sum = 2.0 * (_h[i] + _h[i+1]);
		_gamma[i] = sum / (_upsilon[i] * _h[i] * _h[i+1] + sum);
		std::cout << "[" << i << "] h = " << _h[i] << " delta = " << _delta[i] << " upsilon = " << _upsilon[i] << " gamma = " << _gamma[i] <<  " lambda = " << _lambda[i] << "tempDX = " << tempDX[i] << "tempDY = " << tempDY[i] <<std::endl;
	}

	std::cout << "[" << _n << "] h = " << _h[_n] << std::endl;

	printf("matriz:\n");
	printMatriz(_n, _n, _A);
}