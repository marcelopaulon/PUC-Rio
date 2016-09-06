#include "fcos.h"

double fcos(double x)
{
	double x0 = PI_2;
	double difference = x - x0;

	double square3 = difference * difference * difference;

	// term 1 -> f(x0) ==> f(PI_2) ==> cos(PI_2) ==> 0.0
	double t2 = -1.0; // term 2 -> f'(x0)/1! ==> f'(PI_2) ==> -sin(PI_2) ==> -1.0
	// term 3 -> f''(x0)/2! ==> f''(PI_2)/2 ==> -cos(PI_2)/2 ==> 0.0
	double t4 =  0.1666666666666666666666666666667; //  term 4 -> f'''(x0)/3! ==> f'''(PI_2)/6 ==> sin(PI_2)/6 ==> 0.16666666666666666667
	// term 5 -> f''''(x0)/4! ==> f''''(PI_2)/24 ==> cos(PI_2)/24 ==> 0.0

	// f'(x0)/1! * (x-x0) + f'''(x0)/3! * (x-x0)^3
	return t2 * difference + t4 * square3;
}