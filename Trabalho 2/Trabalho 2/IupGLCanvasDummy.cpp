/* 
 * File:   IupGLCanvasDummy.cpp
 * Author: Marcelo Paulon
 * 
 * Created by jeferson on August 31, 2014, 9:28 AM
 */

#include "IupGLCanvasDummy.h"

#include <iostream>
#include <iomanip>
#include <sstream>

#include "dirent.h"

#include <cstdlib>
#include <cstdio>
#include <GL/gl.h>
#include <GL/glu.h>

#include <iup/iup.h>
#include <iup/iupgl.h>
#include <iosfwd>
#include <string>
#include <fstream>

#define FILENAME "models/bunny.off"


IupGLCanvasDummy::IupGLCanvasDummy( )
{
	vertexNormal = nullptr;

    //Cria janela e define suas configuracoes.
    createWindow( );
}


std::string IupGLCanvasDummy::getEyeInfoString()
{
	std::stringstream os;
	os.precision(2);
	os << "\t\tEyeX = " << eyeX << " EyeY = " << eyeY << " EyeZ = " << eyeZ << "\t\t";

	return os.str();
}



std::string IupGLCanvasDummy::getScaleInfoString()
{
	std::stringstream os;
	os.precision(2);
	os << "Scale = " << scale << "\t\t";

	return os.str();
}



Ihandle * IupGLCanvasDummy::createInfoPanel()
{
	eyeLabel = IupLabel(getEyeInfoString().c_str());
	scaleLabel = IupLabel(getScaleInfoString().c_str());
	
	Ihandle *panel = IupVbox(eyeLabel, scaleLabel);

	return panel;
}



Ihandle * IupGLCanvasDummy::createShaderSelectionToggle()
{
	Ihandle *vertexShadingToggle = IupToggle("Phong - Vertex", "setVertexShading");
	Ihandle *fragmentShadingToggle = IupToggle("Phong - Fragment", "setFragmentShading");
	Ihandle *togglesVbox = IupVbox(vertexShadingToggle, fragmentShadingToggle, NULL);
	Ihandle *shadingSelector = IupRadio(togglesVbox);

	//Define callbacks dos toggles.
	IupSetCallback(vertexShadingToggle, IUP_ACTION, (Icallback)setVertexShading);
	IupSetCallback(fragmentShadingToggle, IUP_ACTION, (Icallback)setFragmentShading);

	// Cria frame de seleção de iluminação
	Ihandle *shadingPane = IupFrame(shadingSelector);
	IupSetStrAttribute(shadingPane, "TITLE", "Shading type");

	return shadingPane;
}



Ihandle * IupGLCanvasDummy::createModelSelectionToggle()
{
	std::vector<std::string> files;

	DIR *dir;
	struct dirent *ent;
	if ((dir = opendir("models")) != NULL) {
		/* print all the files and directories within directory */
		while ((ent = readdir(dir)) != NULL) {
			if (strcmp(ent->d_name, ".") && strcmp(ent->d_name, ".."))
			{
				files.push_back(ent->d_name);
			}
		}
		closedir(dir);
	}

	Ihandle *togglesVbox = IupVbox(NULL);

	for (int i = 0; i < files.size(); i++)
	{
		Ihandle *toggle = IupToggle(files.at(i).c_str(), "setModel");
		IupSetCallback(toggle, IUP_ACTION, (Icallback)setModel);
		IupAppend(togglesVbox, toggle);
	}
	
	Ihandle *modelSelector = IupRadio(togglesVbox);

	// Cria frame de seleção de iluminação
	Ihandle *panel = IupFrame(modelSelector);
	IupSetStrAttribute(panel, "TITLE", "Model");
	
	return panel;
}



Ihandle * IupGLCanvasDummy::createLightsPanel()
{
	Ihandle *l1toggle = IupToggle("One light (eye)", "setMaterial");
	Ihandle *l2toggle = IupToggle("Two lights (eye and near to eye)", "setMaterial");
	Ihandle *togglesVbox = IupVbox(l1toggle, l2toggle, NULL);
	Ihandle *lightsSelector = IupRadio(togglesVbox);

	//Define callbacks dos toggles.
	IupSetCallback(l1toggle, IUP_ACTION, (Icallback)set1Light);
	IupSetCallback(l2toggle, IUP_ACTION, (Icallback)set2Lights);

	// Cria frame de seleção de iluminação
	Ihandle *lightsPane = IupFrame(lightsSelector);
	IupSetStrAttribute(lightsPane, "TITLE", "Lights");

	return lightsPane;
}



Ihandle * IupGLCanvasDummy::createMaterialPanel()
{
	Ihandle *blackPlasticToggle = IupToggle("Black plastic", "setMaterial");
	Ihandle *blackIvoryToggle = IupToggle("Black ivory", "setMaterial");
	Ihandle *bronzeToggle = IupToggle("Bronze", "setMaterial");
	Ihandle *togglesVbox = IupVbox(blackPlasticToggle, blackIvoryToggle, bronzeToggle, NULL);
	Ihandle *materialSelector = IupRadio(togglesVbox);

	//Define callbacks dos toggles.
	IupSetCallback(blackPlasticToggle, IUP_ACTION, (Icallback)setBlackPlasticMaterial);
	IupSetCallback(blackIvoryToggle, IUP_ACTION, (Icallback)setBlackIvoryMaterial);
	IupSetCallback(bronzeToggle, IUP_ACTION, (Icallback)setBronzeMaterial);

	// Cria frame de seleção de iluminação
	Ihandle *materialPane = IupFrame(materialSelector);
	IupSetStrAttribute(materialPane, "TITLE", "Material type");

	return materialPane;
}



Ihandle * IupGLCanvasDummy::createPanel()
{
	
	//Cria botao de sair.
	Ihandle *exitButton = IupButton("Exit", NULL);

	//Define os atributos do botao
	IupSetAttribute(exitButton, IUP_RASTERSIZE, "80x32");
	IupSetAttribute(exitButton, IUP_TIP, "Fecha a janela.");

	//Cria composicao para o botao.
	Ihandle *hboxButton = IupHbox(exitButton, NULL);

	//Define callbacks do botao.
	IupSetCallback(exitButton, IUP_ACTION, (Icallback)exitButtonCallback);

	return IupVbox(createInfoPanel(), createShaderSelectionToggle(), createMaterialPanel(), createLightsPanel(), createModelSelectionToggle(), hboxButton, NULL);
}



void IupGLCanvasDummy::createWindow( )
{
	parseOff(FILENAME);
	materialType = 1;
	drawSecondLight = 0;
	
    //Cria canvas.
	iupGlCanvas = IupGLCanvas( NULL );
	
	Ihandle *vboxPanel = createPanel();
	
	//Cria composicao final.
	Ihandle *hbox = IupHbox(iupGlCanvas, vboxPanel, NULL);

    //Cria dialogo.
    _dialog = IupDialog(hbox);
	
    //Define os atributos do canvas.
    IupSetAttribute(iupGlCanvas, IUP_RASTERSIZE, "800x600");
    IupSetAttribute(iupGlCanvas, IUP_BUFFER, IUP_DOUBLE);
    IupSetAttribute(iupGlCanvas, IUP_EXPAND, IUP_YES);

    //Define propriedades do dialogo.
    IupSetAttribute( _dialog, IUP_MARGIN, "10x10" );
    IupSetAttribute( _dialog, IUP_TITLE, "OpenGL Phong Shading" );
    IupSetAttribute( _dialog, "THIS", ( char* ) this );
	
    //Define as callbacks do canvas.
    IupSetCallback(iupGlCanvas, IUP_ACTION, ( Icallback ) actionCanvasCallback);
    IupSetCallback(iupGlCanvas, IUP_RESIZE_CB, ( Icallback ) resizeCanvasCallback);
    IupSetCallback(iupGlCanvas, IUP_BUTTON_CB, ( Icallback ) buttonCanvasCallback);
	IupSetCallback(iupGlCanvas, IUP_WHEEL_CB, ( Icallback )wheelCanvasCallback);
	IupSetCallback(iupGlCanvas, IUP_KEYPRESS_CB, ( Icallback )keypressCallback);
	
    //Mapeia o dialogo.
    IupMap( _dialog );

    //Torna o canvas como corrente.
    IupGLMakeCurrent(iupGlCanvas);

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



void IupGLCanvasDummy::setShading()
{
	if (!fragmentShading)
	{
		_shader->setVertexProgram(phongVVertexShader.c_str(), (int)phongVVertexShader.size());
		_shader->setFragmentProgram(phongVFragmentShader.c_str(), (int)phongVFragmentShader.size());
	}
	else
	{
		_shader->setVertexProgram(phongFVertexShader.c_str(), (int)phongFVertexShader.size());
		_shader->setFragmentProgram(phongFFragmentShader.c_str(), (int)phongFFragmentShader.size());
	}

	shaderUpdated = true;
}



void IupGLCanvasDummy::initializeCanvas( )
{
    glClearColor( 1.0, 1.0, 1.0, 1.0 );
	glEnable(GL_DEPTH_TEST);
	
    //Aloca shader.
    _shader = new GraphicsShader( );

	phongVVertexShader = readFile("shaders/vertex.vert");

	phongVFragmentShader = readFile("shaders/vertex.frag");

	phongFVertexShader = readFile("shaders/fragment.vert");

	phongFFragmentShader = readFile("shaders/fragment.frag");

	fragmentShading = false;

	setShading();
}

void IupGLCanvasDummy::parseOff(const char *filename)
{
	std::ifstream in(filename);
	std::string str;
	int curLine = 1;
	int itemp;
	double ftemp;

	scale = 1.0;
	eyeX = 8, eyeY = 3.0, eyeZ = 2.0;

	mouseWheelScrollCounter = 0.0;
	
	if (!in || in.fail())
	{
		printf("Unable to open .off file. Exiting.");
		exit(-1);
	}

	vertexList.clear();
	trianglesList.clear();

	while (!in.eof())
	{
		if (curLine == 1 && (in >> str, str) != "OFF")
		{
			printf("OFF header not found. Exiting.");
			exit(-1);
		}
			
		if (curLine == 2)
		{
			in >> nVertex >> nTriangles >> itemp;
		}
		else if(curLine > 1)
		{
			if (curLine < 2 + nVertex + 1)
			{
				vec3 vertex;
				in >> vertex.x >> vertex.y >> vertex.z;
				vertexList.push_back(vertex);
			}
			else
			{
				in >> itemp;

				if (itemp == 3)
				{
					offTriangle triangle;
					in >> triangle.v1 >> triangle.v2 >> triangle.v3;
					trianglesList.push_back(triangle);
				}
				else
				{
					printf("Warning: This program can only parse triangles in off files. Skipping entry.\n");
					
					nTriangles--;

					for (int i = 0; i < itemp; i++)
					{
						in >> ftemp;
					}
				}
			}
		}

		curLine++;
	}

	calcNormals();
}

void IupGLCanvasDummy::calcNormals()
{
	if (vertexNormal != nullptr) delete[] vertexNormal;

	vertexNormal = new vec3[nVertex];

	// 1. Initialize every vertex normal to (0,0,0)
	for (int i = 0; i < nVertex; i++) vertexNormal[i].x = vertexNormal[i].y = vertexNormal[i].z = 0.0;

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
		vertexNormal[triangle.v1].x += FNx;
		vertexNormal[triangle.v1].y += FNy;
		vertexNormal[triangle.v1].z += FNz;

		vertexNormal[triangle.v2].x += FNx;
		vertexNormal[triangle.v2].y += FNy;
		vertexNormal[triangle.v2].z += FNz;

		vertexNormal[triangle.v3].x += FNx;
		vertexNormal[triangle.v3].y += FNy;
		vertexNormal[triangle.v3].z += FNz;
	}

	// 4. Normalize every vertex normal
	for (int i = 0; i < nTriangles; i++)
	{
		offTriangle triangle = trianglesList[i];
		
		float v1Norm = sqrt(vertexNormal[triangle.v1].x*vertexNormal[triangle.v1].x + vertexNormal[triangle.v1].y*vertexNormal[triangle.v1].y + vertexNormal[triangle.v1].z*vertexNormal[triangle.v1].z);
		vertexNormal[triangle.v1].x /= v1Norm;
		vertexNormal[triangle.v1].y /= v1Norm;
		vertexNormal[triangle.v1].z /= v1Norm;

		float v2Norm = sqrt(vertexNormal[triangle.v2].x*vertexNormal[triangle.v2].x + vertexNormal[triangle.v2].y*vertexNormal[triangle.v2].y + vertexNormal[triangle.v2].z*vertexNormal[triangle.v2].z);
		vertexNormal[triangle.v2].x /= v2Norm;
		vertexNormal[triangle.v2].y /= v2Norm;
		vertexNormal[triangle.v2].z /= v2Norm;

		float v3Norm = sqrt(vertexNormal[triangle.v3].x*vertexNormal[triangle.v3].x + vertexNormal[triangle.v3].y*vertexNormal[triangle.v3].y + vertexNormal[triangle.v3].z*vertexNormal[triangle.v3].z);
		vertexNormal[triangle.v3].x /= v3Norm;
		vertexNormal[triangle.v3].y /= v3Norm;
		vertexNormal[triangle.v3].z /= v3Norm;
	}
}


void IupGLCanvasDummy::drawScene( )
{
    //Limpa a janela.
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    GLenum err = glGetError( );

    if (err != GL_NO_ERROR)
    {
        printf( "Error : %s\n", gluErrorString( err ) );
    }
	
    _modelViewMatrix.push( );
	
	_modelViewMatrix.lookAt(eyeX, eyeY, eyeZ, 0, 0, 0, 0, 1, 0);
	
	//Aplica uma transformacao de escala.
	_modelViewMatrix.scale(scale, scale, scale);
	
	//compila o shader se este estiver sido alterado ou nao tiver sido compilado ainda
	if (shaderUpdated || !_shader->isAllocated())
	{
		_shader->compileShader();
		shaderUpdated = false;
	}

    //Carrega o programa na placa.
    _shader->load( );

    unsigned int glShader = _shader->getShaderIndex( );
	
	/*std::vector<float> colorList;

	for (int i = 0; i < nVertex; i++)
	{
		colorList.push_back(0.5f);
		colorList.push_back(0.1f);
		colorList.push_back(0.7f);
		colorList.push_back(1.0f);
	}*/
	
	// Transfere lightPosition e Eye para a placa (lightPosition = Eye)
	int lightPositionParam = glGetUniformLocation(glShader, "lightPosition");
	glUniform3f(lightPositionParam, eyeX, eyeY, eyeZ);

	int eyeParam = glGetUniformLocation(glShader, "eye");
	glUniform3f(eyeParam, eyeX, eyeY, eyeZ);
	

	// Transfere o tipo do material para a placa
	int mtParam = glGetUniformLocation(glShader, "materialType");
	glUniform1ui(mtParam, materialType);
	
	int lightParam = glGetUniformLocation(glShader, "drawSecondLight");
	glUniform1ui(lightParam, drawSecondLight);

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
	/*int colorParam = glGetAttribLocation(glShader, "color");
	glVertexAttribPointer(colorParam, 4, GL_FLOAT, GL_FALSE, 0, &colorList[0]);
	glEnableVertexAttribArray(colorParam);*/
	
	// Send normals to the video card
	int vertexNormalParam = glGetAttribLocation(glShader, "vertexNormal");
	glVertexAttribPointer(vertexNormalParam, 3, GL_FLOAT, GL_FALSE, 0, &vertexNormal[0]);
	glEnableVertexAttribArray(vertexNormalParam);
    
    //Desempilha a matriz que foi empilhada para fazer a transformacao de escala.
    _modelViewMatrix.pop( );

    //Desenha os elementos.
    glDrawElements( GL_TRIANGLES, 3*nTriangles, GL_UNSIGNED_INT, &trianglesList[0] );
	
    //Descarrega o programa da placa.
    _shader->unload( );
}



void IupGLCanvasDummy::updatePanelInfo()
{
	IupSetStrAttribute(eyeLabel, "TITLE", getEyeInfoString().c_str());
	IupSetStrAttribute(scaleLabel, "TITLE", getScaleInfoString().c_str());
}



void IupGLCanvasDummy::resizeCanvas( int width, int height )
{
    //Define o viewport.
    glViewport( 0, 0, width, height );
	
    _projectionMatrix.loadIdentity( );
    //_projectionMatrix.ortho( -10, 10, -10, 10, -1, 1 );

	if (height == 0) height = 1;                        // To prevent divide by 0
	GLfloat aspect = (GLfloat)width / (GLfloat)height; // Compute aspect ratio

	_projectionMatrix.perspective(60, aspect, 1.0, 36.0);
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



int IupGLCanvasDummy::wheelCanvasCallback( Ihandle* self, float delta, int x,
                                           int y, char* status )
{
	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	float factor = 0.5;

	if (canvas->scale < 1) factor = 0.1f;
	if (canvas->scale < 0.2) factor = 0.01f;

	canvas->mouseWheelScrollCounter += delta;
	
	if (canvas->mouseWheelScrollCounter > 0.0)
	{
		canvas->mouseWheelScrollCounter = 0.0;
		canvas->scale += factor;
		canvas->redraw();
	}
	else if (canvas->mouseWheelScrollCounter < 0.0)
	{
		canvas->mouseWheelScrollCounter = 0.0;

		if (canvas->scale - factor > 0)
		{
			canvas->scale -= factor;
			canvas->redraw();
		}
	}

	canvas->updatePanelInfo();

    return IUP_DEFAULT;
}

int IupGLCanvasDummy::keypressCallback(Ihandle * self, int c, int press)
{
	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *) IupGetAttribute(self, "THIS");

	if (c == K_W || c == K_w)
	{
		canvas->eyeX += 0.1f;
	}
	else if (c == K_S || c == K_s)
	{
		canvas->eyeX -= 0.1f;
	}
	else if (c == K_A || c == K_a)
	{
		canvas->eyeY += 0.1f;
	}
	else if (c == K_D || c == K_d)
	{
		canvas->eyeY -= 0.1f;
	}
	else if (c == K_R || c == K_r)
	{
		canvas->eyeZ += 0.1f;
	}
	else if (c == K_F || c == K_f)
	{
		canvas->eyeZ -= 0.1f;
	}
	
	canvas->redraw();
	canvas->updatePanelInfo();

	return IUP_DEFAULT;
}

int IupGLCanvasDummy::setFragmentShading(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->fragmentShading = true;
	canvas->setShading();

	canvas->redraw();

	return IUP_DEFAULT;
}

int IupGLCanvasDummy::setVertexShading(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->fragmentShading = false;
	canvas->setShading();

	canvas->redraw();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::setModel(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	std::string filename = IupGetAttribute(self, "TITLE");
	filename = "models/" + filename;
	canvas->parseOff(filename.c_str());

	canvas->redraw();
	canvas->updatePanelInfo();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::setBlackPlasticMaterial(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->materialType = 1;
	canvas->redraw();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::setBlackIvoryMaterial(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->materialType = 2;
	canvas->redraw();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::setBronzeMaterial(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->materialType = 3;
	canvas->redraw();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::set1Light(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->drawSecondLight = 0;
	canvas->redraw();

	return IUP_DEFAULT;
}



int IupGLCanvasDummy::set2Lights(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	canvas->drawSecondLight = 1;
	canvas->redraw();

	return IUP_DEFAULT;
}



void IupGLCanvasDummy::redraw()
{
	IupRedraw(iupGlCanvas, 0);
}