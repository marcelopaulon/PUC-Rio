/* 
 * File:   main.cpp
 * Trabalho de Computa��o Gr�fica - Marcelo Paulon (1411029)
 *
 * Created by jcoelho on September 11, 2016, 2:18 PM
 */

#include <cstdlib>
#include <cstdio>
#include <cmath>
#include <vector>
#include <algorithm>
#include "Image.h"
#include "Cluster.h"

using namespace std;

/**
 * Converte uma imagem rgb em uma imagem Lab.
 * @param rgb - imagem rgb de entrada.
 * @return - imagem em Lab.
 */
Image convertImageFromRGB2Lab( const Image& rgb )
{
	int w = rgb.getW(), h = rgb.getH();
	Image *lab = new Image(w, h);

	for (int i = 0; i < w; i++)
	{
		for (int j = 0; j < h; j++)
		{
			lab->setPixel(i, j, lab->XYZToLab(lab->rgbToXYZ(rgb.getPixel(i, j))));
		}
	}

	return *lab;
}

/**
 * Converte uma imagem Lab em uma imagem em rgb.
 * @param Lab - imagem Lab de entrada.
 * @return - imagem em RGB.
 */
Image convertImageFromLAB2RGB( const Image& Lab )
{
	int w = Lab.getW(), h = Lab.getH();
	Image *rgb = new Image(w, h);

	for (int i = 0; i < w; i++)
	{
		for (int j = 0; j < h; j++)
		{
			rgb->setPixel(i, j, rgb->XYZTorgb(rgb->LabToXYZ(Lab.getPixel(i, j))));
		}
	}
	
	return *rgb;
}

/*
* Find a local gradient minimum of a pixel in a 3x3 neighbourhood.
*
*/
Cluster *findSmallestGradient(Image& Lab, int s, int i, int j) {
	int w = Lab.getW(), h = Lab.getH();

	double min_grad = FLT_MAX;

	double centerX = floor(i + s / 2.0), centerY = floor(j + s / 2.0);
	double minX = centerX, minY = centerY;
	Pixel *min = new Pixel(Lab.getPixel((int)minX, (int)minY));

	for (int sW = (int)centerX - 1; sW < centerX + 2; sW++) {
		for (int sH = (int)centerY - 1; sH < centerY + 2; sH++) {
			Pixel c1 = Lab.getPixel(sW, sH + 1);
			Pixel c2 = Lab.getPixel(sW + 1, sH);
			Pixel c3 = Lab.getPixel(sW, sH);
			/* Convert colour values to grayscale values (Get L coordinate) */
			double i1 = c1[0];
			double i2 = c2[0];
			double i3 = c3[0];

			/* Compute horizontal and vertical gradients and keep track of the
			minimum. */
			if (sqrt(pow(i1 - i3, 2)) + sqrt(pow(i2 - i3, 2)) < min_grad) {
				min_grad = fabs(i1 - i3) + fabs(i2 - i3);
				minX = sW;
				minY = sH;
			}
		}
	}

	return new Cluster(*min, (float)minX, (float)minY);
}

/**
 * Inicializa os clusters.
 * @param clusters - clusters que DEVEM ser alocados e inicializados.
 * @param Lab - imagem em Lab.
 * @param k - numero desejado de superpixels.
 * @return - numero de superpixels.
 */
int initializeClusters( Cluster*& clusters, Image& Lab, int k )
{
	double width = Lab.getW(), height = Lab.getH();
	int s = (int)floor(sqrt(width * height / k));
	int nSuperPixels = (int)floor(width * height / (s*s));
	clusters = new Cluster[nSuperPixels];

	int i=0, j=0;

	for (int c = 0; c < nSuperPixels; c++)
	{
		if (i + s > width)
		{
			i = 0;
			j += s;
		}
		else
		{
			i += s;
		}

		clusters[c] = *findSmallestGradient(Lab, s, i, j);
	}

	return nSuperPixels;
}

int computeLabelPosition(int i, int j, int width)
{
	// i: width, j: height
	return j * width + i;
}

/**
 * Realiza o algoritmo de superpixels.
 * @param Lab - Imagem em lab.
 * @param clusters - clusters inicializados.
 * @param labels - labels inicializadas.
 * @param k - numero de superpixels.
 * @param M - compacidade.
 */
void performSuperPixelsAlgorithm( Image& Lab, Cluster* clusters, int *labels, int k, double M )
{
	double width = Lab.getW(), height = Lab.getH();

	// Calcula o numero de pixels cada superpixel.
	int s = (int)floor(sqrt(width * height / k));

	// Executa por at� 10 itera��es, como especificado pelo algoritmo
	for (int iteration = 0; iteration < 10; iteration++)
	{
		// Para cada superpixel
		for (int i = 0; i < k; i++)
		{
			Cluster c = clusters[i];
			
			// Criar janela de tamanho 2s centrada em X, Y
			int startX = c.getX() - s;
			if (startX < 0) startX = 0;

			int startY = c.getY() - s;
			if (startY < 0) startY = 0;

			int endX = c.getX() + s;
			if (endX > width) endX = width;

			int endY = c.getY() + s;
			if (endY > height) endY = height;

			for (int ii = startX; ii < endX; ii++)
			{
				for (int jj = startY; jj < endY; jj++)
				{
					Pixel p = Lab.getPixel(ii, jj);
					int labelPos = computeLabelPosition(ii, jj, width);
					int curLabel = labels[labelPos];

					if (curLabel == -1 || curLabel == i) // Se a label n�o est� definida ou se est� definida para o superpixel atual
					{
						if (curLabel == -1)
						{
							labels[labelPos] = i; // Seta o cluster para o pixel n�o alocado
						}

						continue; // Pula para a pr�xima itera��o
					}

					double dsPixelToCurCluster = sqrt(pow(c.getX() - ii, 2) + pow(c.getY() - jj, 2));
					Pixel diffCurCluster = p - c.getPixel();
					double dcPixelToCurCluster = sqrt(pow(diffCurCluster[0], 2) + pow(diffCurCluster[1], 2) + pow(diffCurCluster[2], 2));
					double dtPixelToCurCluster = sqrt(dcPixelToCurCluster*dcPixelToCurCluster + (pow(dsPixelToCurCluster / s, 2.0) * (M*M)));

					Cluster existingCluster = clusters[curLabel];
					double dsPixelToExistingCluster = sqrt(pow(existingCluster.getX() - ii, 2) + pow(existingCluster.getY() - jj, 2));
					Pixel diffExistingCluster = p - existingCluster.getPixel();
					double dcPixelToExistingCluster = sqrt(pow(diffExistingCluster[0], 2) + pow(diffExistingCluster[1], 2) + pow(diffExistingCluster[2], 2));
					double dtPixelToExistingCluster = sqrt(dcPixelToExistingCluster*dcPixelToExistingCluster + (pow(dsPixelToExistingCluster / s, 2.0) * (M*M)));

					if (dtPixelToCurCluster < dtPixelToExistingCluster)
					{
						labels[labelPos] = i;
					}
				}
			}
		}
	}
	
}

void drawContoursAroundSegments( Image& rgb, int* labels, Pixel borderColor = Pixel( ) )
{
    int w = rgb.getW( );
    int h = rgb.getH( );

    const int dx8[8] = { -1, -1, 0, 1, 1, 1, 0, -1 };
    const int dy8[8] = { 0, -1, -1, -1, 0, 1, 1, 1 };

    int sz = w * h;
    vector<bool> istaken( sz, false );
    vector<int> contourx( sz );
    vector<int> contoury( sz );
    int mainindex( 0 );
    int cind( 0 );
    for (int j = 0; j < h; j++)
    {
        for (int k = 0; k < w; k++)
        {
            int np( 0 );
            for (int i = 0; i < 8; i++)
            {
                int x = k + dx8[i];
                int y = j + dy8[i];

                if (( x >= 0 && x < w ) && ( y >= 0 && y < h ))
                {
                    int index = y * w + x;

                    if (false == istaken[index])//comment this to obtain internal contours
                    {
                        if (labels[mainindex] != labels[index]) np++;
                    }
                }
            }
            if (np > 1)
            {
                contourx[cind] = k;
                contoury[cind] = j;
                istaken[mainindex] = true;
                //img[mainindex] = color;
                cind++;
            }
            mainindex++;
        }
    }

    int numboundpix = cind; //int(contourx.size());
    for (int j = 0; j < numboundpix; j++)
    {
        for (int n = 0; n < 8; n++)
        {
            int x = contourx[j] + dx8[n];
            int y = contoury[j] + dy8[n];
            if (( x >= 0 && x < w ) && ( y >= 0 && y < h ))
            {
                int ind = rgb.computePosition( x, y );
                if (!istaken[ind])
                {
                    rgb.setPixel( ind, borderColor );
                }
            }
        }
    }
}

void enforceLabelConnectivity( const int* labels, //input labels that need to be corrected to remove stray labels
                               const int width,
                               const int height,
                               int*& nlabels, //new labels
                               int& numlabels, //the number of labels changes in the end if segments are removed
                               const int& K ) //the number of superpixels desired by the user
{
    const int dx4[4] = { -1, 0, 1, 0 };
    const int dy4[4] = { 0, -1, 0, 1 };

    const int sz = width * height;
    const int SUPSZ = sz / K;

    for (int i = 0; i < sz; i++) nlabels[i] = -1;
    int label( 0 );
    int* xvec = new int[sz];
    int* yvec = new int[sz];
    int oindex( 0 );
    int adjlabel( 0 ); //adjacent label
    for (int j = 0; j < height; j++)
    {
        for (int k = 0; k < width; k++)
        {
            if (0 > nlabels[oindex])
            {
                nlabels[oindex] = label;
                //--------------------
                // Start a new segment
                //--------------------
                xvec[0] = k;
                yvec[0] = j;
                //-------------------------------------------------------
                // Quickly find an adjacent label for use later if needed
                //-------------------------------------------------------
                {
                    for (int n = 0; n < 4; n++)
                    {
                        int x = xvec[0] + dx4[n];
                        int y = yvec[0] + dy4[n];
                        if (( x >= 0 && x < width ) && ( y >= 0 && y < height ))
                        {
                            int nindex = y * width + x;
                            if (nlabels[nindex] >= 0) adjlabel = nlabels[nindex];
                        }
                    }
                }

                int count( 1 );
                for (int c = 0; c < count; c++)
                {
                    for (int n = 0; n < 4; n++)
                    {
                        int x = xvec[c] + dx4[n];
                        int y = yvec[c] + dy4[n];

                        if (( x >= 0 && x < width ) && ( y >= 0 && y < height ))
                        {
                            int nindex = y * width + x;

                            if (0 > nlabels[nindex] && labels[oindex] == labels[nindex])
                            {
                                xvec[count] = x;
                                yvec[count] = y;
                                nlabels[nindex] = label;
                                count++;
                            }
                        }

                    }
                }
                //-------------------------------------------------------
                // If segment size is less then a limit, assign an
                // adjacent label found before, and decrement label count.
                //-------------------------------------------------------
                if (count <= SUPSZ >> 2)
                {
                    for (int c = 0; c < count; c++)
                    {
                        int ind = yvec[c] * width + xvec[c];
                        nlabels[ind] = adjlabel;
                    }
                    label--;
                }
                label++;
            }
            oindex++;
        }
    }
    numlabels = label;

    if (xvec) delete [] xvec;
    if (yvec) delete [] yvec;
}

void SuperPixels( Image& rgb, int k, double M )
{
	// Converte a imagem de RGB para Lab
	Image lab = convertImageFromRGB2Lab(rgb);

	double width = lab.getW(), height = lab.getH();

    // Inicializa os os clusters.
    Cluster* clusters;
    k = initializeClusters( clusters, lab, k );

    // aloca e inicializa labels.
	int *labels;
	int size = (int)(width * height);
	labels = new int[size];

	for (int i = 0; i < size; i++)
	{
		labels[i] = -1; // Nenhum cluster alocado
	}

    // Executa o algoritmo.
	performSuperPixelsAlgorithm(lab, clusters, labels, k, M);

    
    //    int* nlabels = new int[size];
    //    enforceLabelConnectivity( labels, w, h, nlabels, k, double(size ) / double( s * s ) );
    //    for (int i = 0; i < size; i++)
    //        labels[i] = nlabels[i];

    //if (nlabels)
    //    delete [] nlabels;

    //TODO: define as novas cores dos pixels.


    //Converte a imagem de volta.
	rgb = convertImageFromLAB2RGB(lab);

    //Desenha os contornos. Deve passar a imagem em rgb e o vetor de labels.
    //drawContoursAroundSegments( rgb, labels );
}



/*
 * 
 */
int main( int argc, char** argv )
{

    Image l;
    if (l.readBMP( "AB_ufv_0675.bmp" ))
    {
        printf( "Leitura executada com sucesso\n" );
    }
    
    SuperPixels( l, 512, 20 );
    
    if (l.writeBMP( "AB_ufv_06752.bmp" ))
    {
        printf( "Escrita executada com sucesso\n" );
    }

    return 0;
}

