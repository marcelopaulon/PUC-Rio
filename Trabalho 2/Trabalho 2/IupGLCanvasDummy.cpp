/* 
 * File:   IupGLCanvasDummy.cpp
 * Author: jeferson
 * 
 * Created on August 31, 2014, 9:28 AM
 */

#include "IupGLCanvasDummy.h"

#include <iostream>

#include <cstdlib>
#include <cstdio>
#include <GL/gl.h>
#include <GL/glu.h>

#include <iup/iup.h>
#include <iup/iupgl.h>
#include <iosfwd>
#include <string>
#include <fstream>



IupGLCanvasDummy::IupGLCanvasDummy( )
{
    //Cria janela e define suas configuracoes.
    createWindow( );
}



void IupGLCanvasDummy::createWindow( )
{
	parseOff();

    //Cria botao de sair.
    Ihandle *exitButton = IupButton( "Sair", NULL );

    //Cria canvas.
    Ihandle *canvas = IupGLCanvas( NULL );

    //Cria composicao para o botao.
    Ihandle *hboxButton = IupHbox( IupFill( ), exitButton, NULL );

    //Cria composicao final.
    Ihandle *vboxFinal = IupVbox( canvas, hboxButton, NULL );

    //Cria dialogo.
    _dialog = IupDialog( vboxFinal );

    //Define os atributos do botao
    IupSetAttribute( exitButton, IUP_RASTERSIZE, "80x32" );
    IupSetAttribute( exitButton, IUP_TIP, "Fecha a janela." );

    //Define os atributos do canvas.
    IupSetAttribute( canvas, IUP_RASTERSIZE, "600x600" );
    IupSetAttribute( canvas, IUP_BUFFER, IUP_DOUBLE );
    IupSetAttribute( canvas, IUP_EXPAND, IUP_YES );

    //Define propriedades do dialogo.
    IupSetAttribute( _dialog, IUP_MARGIN, "10x10" );
    IupSetAttribute( _dialog, IUP_TITLE, "OpenGL + Canvas Dummy" );
    IupSetAttribute( _dialog, "THIS", ( char* ) this );

    //Define callbacks do botao.
    IupSetCallback( exitButton, IUP_ACTION, ( Icallback ) exitButtonCallback );

    //Define as callbacks do canvas.
    IupSetCallback( canvas, IUP_ACTION, ( Icallback ) actionCanvasCallback );
    IupSetCallback( canvas, IUP_RESIZE_CB, ( Icallback ) resizeCanvasCallback );
    IupSetCallback( canvas, IUP_BUTTON_CB, ( Icallback ) buttonCanvasCallback );
    IupSetCallback( canvas, IUP_WHEEL_CB, ( Icallback ) wheelCanvasCallback );

    //Mapeia o dialogo.
    IupMap( _dialog );

    //Torna o canvas como corrente.
    IupGLMakeCurrent( canvas );

    //Incialia propriedades dos canvas.
    initializeCanvas( );
}



IupGLCanvasDummy::~IupGLCanvasDummy( )
{
    IupDestroy( _dialog );
}



void IupGLCanvasDummy::show( )
{
    IupShow( _dialog );
}



void IupGLCanvasDummy::hide( )
{
    IupHide( _dialog );
}



std::string IupGLCanvasDummy::readFile( const char* name )
{
    std::ifstream in( name );
    std::string shader;

    if (in.fail( ))
    {
        return "";
    }

    char a;
    while (in.get( a ) && a != EOF)
    {
        shader += a;
    }
    shader += '\0';
    return shader;
}



void IupGLCanvasDummy::initializeCanvas( )
{
    glClearColor( 1.0, 1.0, 1.0, 1.0 );

    //Aloca shader.
    _shader = new GraphicsShader( );

    std::string vertexShader = readFile( "example.vert" );
    _shader->setVertexProgram( vertexShader.c_str( ), vertexShader.size( ) );

    std::string fragmentShader = readFile( "example.frag" );
    _shader->setFragmentProgram( fragmentShader.c_str( ), fragmentShader.size( ) );
}

void IupGLCanvasDummy::parseOff()
{
	std::ifstream in("bunny_0.off");
	std::string line;
	int curLine = 1;
	
	if (in.fail())
	{
		printf("Unable to open .off file. Exiting.");
		exit(-1);
	}

	vertexList.clear();
	trianglesList.clear();

	char a;
	while (in.get(a) && a != EOF)
	{
		if (a == '\n')
		{
			if (curLine == 1 && line != "OFF")
			{
				printf("OFF header not found. Exiting.");
				exit(-1);
			}
			
			if (curLine == 2)
			{
				sscanf(line.c_str(), "%d %d 0", &nVertex, &nTriangles);
			}
			else if(curLine > 1)
			{
				if (curLine < 2 + nVertex + 1)
				{
					vec3 vertex;
					sscanf(line.c_str(), "%f %f %f", &vertex.x, &vertex.y, &vertex.z);
					vertexList.push_back(vertex);
				}
				else
				{
					offTriangle triangle;
					sscanf(line.c_str(), "3 %u %u %u", &triangle.v1, &triangle.v2, &triangle.v3);
					trianglesList.push_back(triangle);
				}
			}
						
			line.clear();
			curLine++;
		}
		else
		{
			line += a;
		}
	}

	calcNormals();
}

void IupGLCanvasDummy::calcNormals()
{
	vertexNormals = new vec3[nVertex];

	// 1. Initialize every vertex normal to (0,0,0)
	for (int i = 0; i < nVertex; i++) vertexNormals[i].x = vertexNormals[i].y = vertexNormals[i].z = 0.0;

	// 2. For every face compute face normal fn
	for (int i = 0; i < nTriangles; i++)
	{
		offTriangle triangle = trianglesList[i];
		vec3 U, V;
		vec3 v1 = vertexList[triangle.v1], v2 = vertexList[triangle.v2], v3 = vertexList[triangle.v3];
		U.x = v2.x - v1.x;
		U.y = v2.y - v1.y;
		U.z = v2.z - v1.z;

		V.x = v3.x - v1.x;
		V.y = v3.y - v1.y;
		V.z = v3.z - v1.z;

		float FNx, FNy, FNz;

		FNx = U.y*V.z - U.z*V.y;

		FNy = U.z*V.x - U.x*V.z;

		FNz = U.x*V.y - U.y*V.x;

		// 3. For every vertex of the face add fn to the vertex normal
		vertexNormals[triangle.v1].x += FNx;
		vertexNormals[triangle.v1].y += FNy;
		vertexNormals[triangle.v1].z += FNz;

		vertexNormals[triangle.v2].x += FNx;
		vertexNormals[triangle.v2].y += FNy;
		vertexNormals[triangle.v2].z += FNz;

		vertexNormals[triangle.v3].x += FNx;
		vertexNormals[triangle.v3].y += FNy;
		vertexNormals[triangle.v3].z += FNz;

		//printf("FNx=%.6f, FNy=%.6f, FNz=%.6f\n", FNx, FNy, FNz);
	}

	// 4. Normalize every vertex normal (done in glsl)
}


void IupGLCanvasDummy::drawScene( )
{
    //Limpa a janela.
    glClear( GL_COLOR_BUFFER_BIT );
    GLenum err = glGetError( );

    if (err != GL_NO_ERROR)
    {
        printf( "Error : %s\n", gluErrorString( err ) );
    }
	
    _modelViewMatrix.push( );
	
	float eyeX = 6, eyeY = 2.0, eyeZ = 0;

	_modelViewMatrix.lookAt(eyeX, eyeY, eyeZ, 0, 0, 0, 1, 1, 0);
	
	//Aplica uma transformacao de escala.
	_modelViewMatrix.scale(20, 20, 20);

    //compila o shader se este nao tiver sido compilado ainda
    if (!_shader->isAllocated( ))
        _shader->compileShader( );

    //Carrega o programa na placa.
    _shader->load( );

    unsigned int glShader = _shader->getShaderIndex( );
	
	std::vector<float> colorList;

	for (int i = 0; i < trianglesList.size(); i++)
	{
		colorList.push_back(1);
		colorList.push_back(0);
		colorList.push_back(0);
		colorList.push_back(1);

		//colorList.push_back(0);
		colorList.push_back(1);
		colorList.push_back(0); // remove
		colorList.push_back(0);
		colorList.push_back(1);

		colorList.push_back(1); // remove
		colorList.push_back(0);
		colorList.push_back(0);
		//colorList.push_back(1);
		colorList.push_back(1);
	}
	
	//Transfere a matriz modelview para a placa.
	int mvmatrixParam = glGetUniformLocation(glShader, "mv");
	glUniformMatrix4fv(mvmatrixParam, 1, GL_FALSE, (float*)_modelViewMatrix);

    //Obtem a modelview projection (mvp)
    {
		_projectionMatrix.push();
		
        //Multiplica a modelview pela projection.
        _projectionMatrix.multMatrix( ( float* ) _modelViewMatrix );

        //Transfere a matriz modelview projection para a placa.
        int mvpmatrixParam = glGetUniformLocation( glShader, "mvp" );
        glUniformMatrix4fv(mvpmatrixParam, 1, GL_FALSE, ( float* ) _projectionMatrix );

        _projectionMatrix.pop( );
    }

	// Calculate normalMatrix
	{
		_modelViewMatrix.push();

		float *normalMatrix = new float[3*3];
		_modelViewMatrix.getMatrixInverseTransposed(normalMatrix);

		// Send normalMatrix to the video card
		int normalMatrixParam = glGetUniformLocation(glShader, "normalMatrix");
		glUniformMatrix3fv(normalMatrixParam, 1, GL_FALSE, (float*)normalMatrix);
		delete[] normalMatrix;

		_modelViewMatrix.pop();
	}

	//Transfere os vertices para a placa.
	int vertexParam = glGetAttribLocation(glShader, "vtx");
	glVertexAttribPointer(vertexParam, 3, GL_FLOAT, GL_FALSE, 0, &vertexList[0]);
	glEnableVertexAttribArray(vertexParam);

	//Transfere as cores para a placa.
	int colorParam = glGetAttribLocation(glShader, "color");
	glVertexAttribPointer(colorParam, 4, GL_FLOAT, GL_FALSE, 0, &colorList[0]);
	glEnableVertexAttribArray(colorParam);

	// Transfere lightPosition e Eye para a placa (lightPosition = Eye)
	int lightPositionParam = glGetUniformLocation(glShader, "lightPosition");
	glUniform3f(lightPositionParam, eyeX, eyeY, eyeZ);

	int eyeParam = glGetUniformLocation(glShader, "eye");
	glUniform3f(eyeParam, eyeX, eyeY, eyeZ);

	// Send normals to the video card
	int vertexNormalParam = glGetAttribLocation(glShader, "vertexNormal");
	glVertexAttribPointer(vertexNormalParam, 3, GL_FLOAT, GL_FALSE, 0, &vertexNormals[0]);
	glEnableVertexAttribArray(vertexNormalParam);
    
    //Desempilha a matriz que foi empilhada para fazer a transformacao de escala.
    _modelViewMatrix.pop( );

    //Desenha os elementos.
    glDrawElements( GL_TRIANGLES, 3*nTriangles, GL_UNSIGNED_INT, &trianglesList[0] );
	
    //Descarrega o programa da placa.
    _shader->unload( );
}



void IupGLCanvasDummy::resizeCanvas( int width, int height )
{
    //Define o viewport.
    glViewport( 0, 0, width, height );
	
    _projectionMatrix.loadIdentity( );
    //_projectionMatrix.ortho( -10, 10, -10, 10, -1, 1 );

	if (height == 0) height = 1;                        // To prevent divide by 0
	GLfloat aspect = (GLfloat)width / (GLfloat)height; // Compute aspect ratio

	_projectionMatrix.perspective(90, aspect, 1.0, 11.0);
}



int IupGLCanvasDummy::exitButtonCallback( Ihandle* button )
{
    return IUP_CLOSE;
}



int IupGLCanvasDummy::actionCanvasCallback( Ihandle* canvas )
{
    //Torna o canvas como corrente.
    IupGLMakeCurrent( canvas );

    //Obtem ponteiro para o this.
    IupGLCanvasDummy *window = ( IupGLCanvasDummy* ) IupGetAttribute( canvas, "THIS" );

    //Redesenha a janela.
    window->drawScene( );

    //Troca os buffers.
    IupGLSwapBuffers( canvas );

    return IUP_DEFAULT;
}



int IupGLCanvasDummy::resizeCanvasCallback( Ihandle *canvas, int width, int height )
{
    //Torna o canvas como corrente.
    IupGLMakeCurrent( canvas );

    //Obtem ponteiro para o this.
    IupGLCanvasDummy *window = ( IupGLCanvasDummy* ) IupGetAttribute( canvas, "THIS" );

    //Redesenha a janela.
    window->resizeCanvas( width, height );

    //Marca o canvas para ser redesenhado.
    IupUpdate( canvas );

    return IUP_DEFAULT;
}



int IupGLCanvasDummy::buttonCanvasCallback( Ihandle* canvas, int button, int pressed,
                                            int x, int y, char* status )
{
	printf("Button pressed\n");
    return IUP_DEFAULT;
}



int IupGLCanvasDummy::wheelCanvasCallback( Ihandle* canvas, float delta, int x,
                                           int y, char* status )
{
    return IUP_DEFAULT;
}