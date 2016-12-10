/* 
 * File:   IupGLCanvasDummy.h
 * Author: Marcelo Paulon
 *
 * Created by jeferson on August 31, 2014, 9:28 AM
 */

#ifndef IUPGLCANVASDUMMY_H
#define IUPGLCANVASDUMMY_H

#include "OpenGLMatrixManager.h"
#include "GraphicsShader.h"
#include <vector>
#include <iup/iup.h>

#include "structures.h"

#include "SceneObject.h"

#include "Image.h"

#define PI 3.14159265359

class IupGLCanvasDummy
{

public:

    /**
     * Construtor default da classe.
     */
	IupGLCanvasDummy();
		
    /**
     * Destrutor da classe.
     */
    virtual ~IupGLCanvasDummy( );

    /**
     * Exibe a janela.
     */
    void show( );

    /**
     * Oculta a janela.
     */
    void hide( );
	
	/**
	* Redraw canvas
	*/
	void IupGLCanvasDummy::redraw();
	
	unsigned int materialType;
	unsigned int drawSecondLight;
	
	/*
	* Mouse wheel scroll counter
	*/
	float mouseWheelScrollCounter;

	/*
	* Scale
	*/
	float scale;

	void updatePanelInfo();

public:

	/**
	* Componentes da c�mera.
	*/
	float eyeX, eyeY, eyeZ;

private:

    /**
     * Ponteiro para o dialogo.
     */
    Ihandle *_dialog;

	/**
	* Ponteiro para o iupGlCanvas.
	*/
	Ihandle *iupGlCanvas;

    /**
     * Matriz de projecao OpenGL
     */
    OpenGLMatrixManager _projectionMatrix;

	/**
	* Matriz de VIEW OpenGL
	*/
	OpenGLMatrixManager _viewMatrix;

    /**
     * Matriz de MODELVIEW OpenGL
     */
    OpenGLMatrixManager _modelViewMatrix;

    /**
     * A shader pointer.
     */
    GraphicsShader* _shader;

	/*
	* Vertex shader - Phong Vertex Shading
	*/
	std::string phongVVertexShader;

	/*
	* Fragment shader - Phong Vertex Shading
	*/
	std::string phongVFragmentShader;

	/*
	* Indicates if the shader was changed
	*/
	bool shaderUpdated;
		
private:

    /**
     * Cria janela da IUP e define suas configuracoes e callbacks.
     */
    void createWindow( );

	/**
	* Cria o painel de controle
	*/
	Ihandle * createPanel( );
	
	/**
	* Cria o painel de informa��es
	*/
	Ihandle * createInfoPanel();
	
	std::string getScaleInfoString();

	Ihandle *eyeLabel;

	Ihandle *scaleLabel;

	/**
	* Cria o toggle de sele��o de modelos
	*/
	Ihandle * createModelSelectionToggle();

    /**
     * Incializa algumas propriedades do canvas OpenGL.
     */
    void initializeCanvas( );

    /**
     * Realiza o redesenho da cena OpenGL.
     */
    void drawScene( );
	
    /**
     * Trata evento de redimensionar o canvas OpenGL.
     * @param width - nova larguda do canvas.
     * @param height - nova altura do canvas.
     */
    void resizeCanvas( int width, int height );

    /**
     * Le arquivo de shader.
     * @param name - path do arquivo.
     * @return - string com o arquivo.
     */
    std::string readFile( const char* name );
	
private:
	

	Scene scene; // Cena carregada

	Camera camera; // C�mera
	
	/**
	* Lista de tri�ngulos carregados.
	*/
	std::vector<Material> materialsList;

	/**
	* Lista de tri�ngulos carregados.
	*/
	std::vector<Light> lightsList;

	/**
	* Lista de esferas carregados.
	*/
	std::vector<Sphere> spheresList;

	/**
	* Lista de boxes carregados.
	*/
	std::vector<Box> boxesList;

	/**
	* Lista de tri�ngulos carregados.
	*/
	std::vector<Triangle> trianglesList;

	Image * image;

	/**
	* Carrega um arquivo .rt5.
	*/
	void parseRT5(const char *fileName);

	vec3f readVec3f(std::ifstream *in);

	vec3i readVec3i(std::ifstream *in);

	pixelPos readPixelPos(std::ifstream * in);

	RGB readRGB(std::ifstream *in);

	Scene parseScene(std::ifstream *in);
	Camera parseCamera(std::ifstream *in);
	Material parseMaterial(std::ifstream *in);
	Material * findMaterial(std::string materialName);
	Light parseLight(std::ifstream *in);
	Sphere parseSphere(std::ifstream *in);
	Box parseBox(std::ifstream *in);
	Triangle parseTriangle(std::ifstream *in);

    /**
     * Callback do botao de fechar a janela.
     * @param button - ihandle do botao de sair.
     * @return - retorna IUP_CLOSE para que a janela seja fechada.
     */
    static int exitButtonCallback( Ihandle *button );

    /**
     * Callback responsavel por receber evento de redesenho do canvas.
     * @param canvas - ponteiro para o canvas.
     * @return  - IUP_DEFAULT.
     */
    static int actionCanvasCallback( Ihandle *canvas );

    /**
     * Callback responsavel por receber eventos do whell do mouse no canvas para
     * realizar a operacao de Zoom.
     * @param canvas - ponteiro para o canvas.
     * @param delta - vale -1 ou 1 e indica a direcao da rotacao do botao whell.
     * @param x - posicao x do mouse na tela.
     * @param y - posicao y do mouse na tela.
     * @param status - status dos botoes do mouse e certas teclas do teclado no 
     * momento que o evento foi gerado.
     * @return - IUP_DEFAULT.
     */
    static int wheelCanvasCallback( Ihandle *canvas, float delta, int x,
                                    int y, char *status );

    /**
     * Callback responsavel por receber eventos de resize do canvas.
     * @param canvas - ponteiro para o canvas.
     * @param width - nova largura, em pixeis, da janela.
     * @param heigth - nova altura, em pixeis, da janela.
     * @return - IUP_DEFAULT.
     */
    static int resizeCanvasCallback( Ihandle *canvas, int width, int height );

    /**
     * Callback responsavel por receber eventos de teclado do canvas.
     * @param canvas - ponteiro para o canvas.
     * @param button - identificador do botao, podem ser BUTTON_1, BUTTON_2, ...
     * @param pressed - 1 para o caso do botao esta sendo pressionado e 0 caso
     * contrario.
     * @param x - posicao x do mouse na tela.
     * @param y - posiao y do mouse na tela.
     * @param status - status dos botoes do mouse e certas teclas do teclado no 
     * momento que o evento foi gerado.
     * @return - IUP_DEFAULT. 
     */
    static int buttonCanvasCallback( Ihandle* canvas, int button, int pressed,
                                     int x, int y, char* status );

	static int keypressCallback(Ihandle * self, int c, int press);
	
	static int IupGLCanvasDummy::setVertexShading(Ihandle* self, int state);

	void rayTrace();

	static int IupGLCanvasDummy::setModel(Ihandle * self, int state);

};

#endif /* IUPGLCANVASDUMMY_H */

