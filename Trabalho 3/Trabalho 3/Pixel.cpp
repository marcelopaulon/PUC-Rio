/* 
 * File:   Pixel.cpp
 * Author: jcoelho
 * 
 * Created on September 11, 2016, 6:03 PM
 */
#include <cstdio>
#include "Pixel.h"



Pixel::Pixel( )
{
    _val[0] = _val[1] = _val[2] = 0.0;
}



float& Pixel::operator[]( unsigned int i )
{
    if (i < 3)
        return _val[i];
    else
        printf( "Erro: posicao de pixel nao existe\n" );

    return _val[0];
}



float Pixel::operator[]( unsigned int i ) const
{
    if (i < 3)
        return _val[i];
    else
        printf( "Erro: posicao de pixel nao existe\n" );

    return _val[0];
}
//
//
//
//float Pixel::operator*( const Pixel& p ) const
//{
//    float product = 0.0;
//    for (int i = 0; i < 3; i++)
//        product += _val[i] * p._val[i];
//    return product;
//}

Pixel Pixel::operator*(double d) const
{
	return Pixel(_val[0] * d, _val[1] * d, _val[2] * d);
}

void Pixel::operator+=(Pixel p)
{
	_val[0] += p[0];
	_val[1] += p[1];
	_val[2] += p[2];
}



void Pixel::operator-( Pixel p )
{
	_val[0] -= p[0];
	_val[1] -= p[1];
	_val[2] -= p[2];
}

Pixel Pixel::operator*(Pixel p) const
{
	return Pixel(_val[0] * p[0], _val[1] * p[1], _val[2] * p[2]);
}

Pixel Pixel::operator+(Pixel p) const
{
	return Pixel(_val[0] + p[0], _val[1] + p[1], _val[2] + p[2]);
}

Pixel Pixel::operator-(Pixel p) const
{
	return Pixel(_val[0] - p[0], _val[1] - p[1], _val[2] - p[2]);
}
