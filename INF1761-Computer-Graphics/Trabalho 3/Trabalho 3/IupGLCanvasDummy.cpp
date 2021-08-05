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

#include "Image.h"

#include "RayTracer.h"

#define FILENAME "rt5/05_color_balls.rt5"


IupGLCanvasDummy::IupGLCanvasDummy( )
{
    //Cria janela e define suas configuracoes.
    createWindow( );
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
	scaleLabel = IupLabel(getScaleInfoString().c_str());
	
	Ihandle *panel = IupVbox(scaleLabel);

	return panel;
}



Ihandle * IupGLCanvasDummy::createModelSelectionToggle()
{
	std::vector<std::string> files;

	DIR *dir;
	struct dirent *ent;
	if ((dir = opendir("rt5")) != NULL) {
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

	return IupVbox(createInfoPanel(), createModelSelectionToggle(), hboxButton, NULL);
}



void IupGLCanvasDummy::createWindow( )
{
	parseRT5(FILENAME);
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
    IupSetAttribute( _dialog, IUP_TITLE, "RayTracing" );
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

	rayTrace();
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
	glClearColor(1.0, 1.0, 1.0, 1.0);
	
    //Aloca shader.
    _shader = new GraphicsShader( );

	vertexShaderStr = readFile("shaders/vertex.vert");
	fragmentShaderStr = readFile("shaders/fragment.frag");
	
	setShading();
}

vec3f IupGLCanvasDummy::readVec3f(std::ifstream *in)
{
	vec3f v;
	(*in) >> v.x >> v.y >> v.z;
	return v;
}



vec3i IupGLCanvasDummy::readVec3i(std::ifstream *in)
{
	vec3i v;
	(*in) >> v.x >> v.y >> v.z;
	return v;
}

pixelPos IupGLCanvasDummy::readPixelPos(std::ifstream *in)
{
	pixelPos p;
	(*in) >> p.x >> p.y;
	return p;
}


RGB IupGLCanvasDummy::readRGB(std::ifstream *in)
{
	RGB rgb;
	(*in) >> rgb.r >> rgb.g >> rgb.b;
	return rgb;
}



Scene IupGLCanvasDummy::parseScene(std::ifstream *in)
{
	Scene scene;

	scene.backgroundColor = readVec3f(in);
	scene.ambientColor = readVec3f(in);
	scene.texture = new Texture();	// TODO delete
	(*in) >> scene.texture->path;

	if (scene.texture->path != "null")
	{
		Image *image = new Image();

		std::string texturePath = "textures/" + scene.texture->path;

		if (image->readBMP(texturePath.c_str()))
		{
			scene.texture->image = image;
		}
		else
		{
			std::cout << "Error loading scene texture " << scene.texture->path << std::endl;
		}
	}

	return scene;
}

Camera IupGLCanvasDummy::parseCamera(std::ifstream *in)
{
	Camera camera;

	camera.eyePos = readVec3f(in);
	camera.refPos = readVec3f(in);
	camera.up = readVec3f(in);
	(*in) >> camera.fovY >> camera.nearPos >> camera.farPos >> camera.imgWidth >> camera.imgHeight;
	
	return camera;
}

Material IupGLCanvasDummy::parseMaterial(std::ifstream *in)
{
	Material material;

	(*in) >> material.name;
	material.kd = readVec3f(in);
	material.ks = readVec3f(in);
	(*in) >> material.n_specular >> material.reflectionCoefficient >> material.refractionCoefficient >> material.opacity;
	
	material.texture = Texture();
	(*in) >> material.texture.path;

	if (material.texture.path != "null")
	{
		Image *image = new Image(); // TODO delete
		
		std::string texturePath = "textures/" + material.texture.path;
		
		if (image->readBMP(texturePath.c_str()))
		{
			material.texture.image = image;
		}
		else
		{
			std::cout << "Error loading material " << material.name << " texture " << material.texture.path << std::endl;
		}
	}
	
	return material;
}

Material * IupGLCanvasDummy::findMaterial(std::string materialName)
{
	if (materialName == "null")
	{
		return nullptr;
	}

	for (int i = 0; i < materialsList.size(); i++)
	{
		if (materialsList[i].name == materialName)
		{
			return &materialsList[i];
		}
	}

	std::cout << "[WARNING]: Material " << materialName << " not found" << std::endl;
	return nullptr;
}

Light IupGLCanvasDummy::parseLight(std::ifstream *in)
{
	Light light;

	light.pos = readVec3f(in);
	light.color = readVec3f(in);

	return light;
}

Sphere IupGLCanvasDummy::parseSphere(std::ifstream *in)
{
	Sphere sphere;

	std::string materialName;
	(*in) >> materialName;
	sphere.material = findMaterial(materialName);
	
	(*in) >> sphere.radius;

	sphere.pos = readVec3f(in);

	return sphere;
}

Box IupGLCanvasDummy::parseBox(std::ifstream *in)
{
	Box box;

	std::string materialName;
	(*in) >> materialName;
	box.material = findMaterial(materialName);

	box.bottomLeft = readVec3f(in);
	box.topRight = readVec3f(in);

	return box;
}

Triangle IupGLCanvasDummy::parseTriangle(std::ifstream *in)
{
	Triangle triangle;

	std::string materialName;
	(*in) >> materialName;
	triangle.material = findMaterial(materialName);

	triangle.v1 = readVec3f(in);
	triangle.v2 = readVec3f(in);
	triangle.v3 = readVec3f(in);

	triangle.v1TexturePos = readPixelPos(in);
	triangle.v2TexturePos = readPixelPos(in);
	triangle.v3TexturePos = readPixelPos(in);

	return triangle;
}


void IupGLCanvasDummy::parseRT5(const char *filename)
{
	std::ifstream in(filename);
	std::string str;
	int curLine = 1;

	scale = 1.0;
	eyeX = 8, eyeY = 3.0, eyeZ = 2.0;

	mouseWheelScrollCounter = 0.0;
	
	if (!in || in.fail())
	{
		printf("Unable to open .rt5 file. Exiting.");
		exit(-1);
	}

	materialsList.clear();
	lightsList.clear();
	spheresList.clear();
	boxesList.clear();
	trianglesList.clear();
	
	while (!in.eof())
	{
		str = "";

		if ((curLine == 1 && (in >> str, str) != "RT") || (curLine == 2 && (in >> str, str) != "5"))
		{
			printf("RT5 header not found. Exiting.");
			exit(-1);
		}
		else if (curLine > 2)
		{
			in >> str;

			if (str == "") continue;

			if (str == "SCENE")
			{
				scene = parseScene(&in);
			}
			else if (str == "CAMERA")
			{
				camera = parseCamera(&in);
			}
			else if (str == "MATERIAL")
			{
				materialsList.push_back(parseMaterial(&in));
			}
			else if (str == "LIGHT")
			{
				lightsList.push_back(parseLight(&in));
			}
			else if (str == "SPHERE")
			{
				spheresList.push_back(parseSphere(&in));
			}
			else if (str == "BOX")
			{
				boxesList.push_back(parseBox(&in));
			}
			else if (str == "TRIANGLE")
			{
				trianglesList.push_back(parseTriangle(&in));
			}
			else
			{
				std::cout << "Unable to parse file" << std::endl;
				return;
			}
		}

		curLine++;
	}
}



void IupGLCanvasDummy::setShading()
{
	_shader->setVertexProgram(vertexShaderStr.c_str(), (int)vertexShaderStr.size());
	_shader->setFragmentProgram(fragmentShaderStr.c_str(), (int)fragmentShaderStr.size());

	shaderUpdated = true;
}



void IupGLCanvasDummy::drawScene( )
{
	//Limpa a janela.
	glClear(GL_COLOR_BUFFER_BIT);
	GLenum err = glGetError();

	if (err != GL_NO_ERROR)
	{
		printf("Error : %s\n", gluErrorString(err));
	}

	float coords[4 * 2] = { 0, 0, 1, 0, 1, 1, 0, 1 };
	unsigned int triangleMesh[6] = { 0, 1, 2, 0, 2, 3 };

	//Aplica uma transformacao de escala.
	_modelViewMatrix.push();
	_modelViewMatrix.scale(5, 5, 0);

	//compila o shader se este nao tiver sido compilado ainda
	if (shaderUpdated || !_shader->isAllocated())
		_shader->compileShader();

	//Carrega o programa na placa.
	_shader->load();

	unsigned int glShader = _shader->getShaderIndex();
	
	//Descarrega o programa da placa.
	_shader->unload();
}



void IupGLCanvasDummy::updatePanelInfo()
{
	IupSetStrAttribute(scaleLabel, "TITLE", getScaleInfoString().c_str());
}



void IupGLCanvasDummy::resizeCanvas( int width, int height )
{
	/* Define o viewport.*/
    glViewport( 0, 0, width, height );

	_projectionMatrix.loadIdentity();
	_projectionMatrix.ortho(-10, 10, -10, 10, -1, 1);
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

int IupGLCanvasDummy::setVertexShading(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");
	
	canvas->redraw();

	return IUP_DEFAULT;
}

void IupGLCanvasDummy::rayTrace()
{
	int width = camera.imgWidth;
	int height = camera.imgHeight;

	image = new Image(width, height);

	vec3f ze = (camera.eyePos - camera.refPos).normalized();
	vec3f xe = vec3f::cross(camera.up, ze).normalized();
	vec3f ye = vec3f::cross(ze, xe);

	double a = 2 * camera.nearPos * tan(camera.fovY * (PI / 180.0) / 2.0);
	double b = ((float)width / (float)height) * a;

	RayTracer rayTracer = RayTracer(&scene, &camera, &camera.eyePos, spheresList, boxesList, trianglesList, lightsList);


	for (int y = 0; y < height; y++)
	{
		std::cout << "Rendering line " << y << "/" << height << std::endl;
		scene.currentY = y;
		
		for (int x = 0; x < width; x++)
		{
			scene.currentX = x;
			Ray ray;
			ray.o = camera.eyePos;
			ray.d = ze * -camera.nearPos + ye * a * ((float)y / (float)height - 0.5) + xe * b * ((float)x / (float)width - 0.5);

			Pixel pixel = rayTracer.trace(ray, 1);
			image->setPixel(x, y, pixel);
		}
	}

	delete scene.texture;
}



int IupGLCanvasDummy::setModel(Ihandle* self, int state)
{
	if (state != 1) return IUP_DEFAULT;

	IupGLCanvasDummy *canvas = (IupGLCanvasDummy *)IupGetAttribute(self, "THIS");

	const std::string filename = IupGetAttribute(self, "TITLE");
	std::string path = "rt5/" + filename;
	canvas->parseRT5(path.c_str());
	canvas->rayTrace();

	path = "output/" + filename;

	canvas->image->writeBMP(path.append(".out.bmp").c_str());
	delete canvas->image;

	canvas->redraw();
	canvas->updatePanelInfo();

	return IUP_DEFAULT;
}

void IupGLCanvasDummy::redraw()
{
	IupRedraw(iupGlCanvas, 0);
}