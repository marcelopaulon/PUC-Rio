/* 
 * File:   Pixel.h
 * Author: jcoelho
 *
 * Created on September 11, 2016, 6:03 PM
 */

#ifndef PIXEL_H
#define PIXEL_H

class Pixel
{
public:
    /**
     * Construtor default.
     */
    Pixel( );

	/**
	* Construtor.
	*/
	Pixel(float x, float y, float z)
	{
		_val[0] = x;
		_val[1] = y;
		_val[2] = z;
	}

    /**
     * Sobrecarga do operador [] para acessar as informacoes dos pixels.
     * @param i - posicao a ser acessada.
     * @return - referencia para a posicao.
     */
    float operator[]( unsigned int i ) const;

    /**
     * Sobrecarga do operador [] para acessar as informacoes dos pixels.
     * @param i - posicao a ser acessada.
     * @return - referencia para a posicao.
     */
    float& operator[]( unsigned int i );

    /**
     * Realiza o produto escalar entre dois pixels.
     * @param p - pixel a ser multiplicado pelo pixel corrente.
     * @return - resulatado do produto escalar.
     */
    /*float operator*( const Pixel& p ) const;*/
	
	Pixel Pixel::operator*(double d) const;

	Pixel Pixel::operator*(Pixel p) const;

	Pixel Pixel::operator+(Pixel p) const;

	Pixel Pixel::operator-(Pixel p) const;

	void Pixel::operator+=(Pixel p);
    
    /**
     * Sobrecarga do operador -.
     * @param p - pixel a ser subtraido.
     * @return - resultado da operacao.
     */
	void Pixel::operator-(Pixel p);


private:
    float _val[3];
};

#endif /* PIXEL_H */

