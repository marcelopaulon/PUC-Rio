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
#include <string>
#include <vector>
#include <iup/iup.h>

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
	* Set shaders
	*/
	void IupGLCanvasDummy::setShading();

	/**
	* Redraw canvas
	*/
	void IupGLCanvasDummy::redraw();

	/*
	* Should use Phong Fragment Shading
	*/
	bool fragmentShading;

public:

	/**
	* Componentes da câmera.
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
	* Vertex shader - Phong Fragment Shading
	*/
	std::string phongFVertexShader;

	/*
	* Fragment shader - Phong Fragment Shading
	*/
	std::string phongFFragmentShader;

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
	
	/**
	* OpenGL vec3
	*/
	struct vec3
	{
		float x, y, z;
	};

	/**
	* Triângulo de um arquivo .off (índices dos vértices)
	*/
	struct offTriangle
	{
		unsigned int v1, v2, v3;
	};

	/**
	* Lista de vértices carregados.
	*/
	std::vector<vec3> vertexList;

	/**
	* Lista de triângulos carregados.
	*/
	std::vector<offTriangle> trianglesList;
	
	/**
	* Vetor de normais dos vértices.
	*/
	vec3 *vertexNormal;

	/**
	* Quantidade de vértices carregados
	*/
	int nVertex;
		
	/**
	* Quantidade de triângulos carregados.
	*/
	int nTriangles;

	/**
	* Carrega um arquivo .off.
	*/
	void parseOff(char *fileName);

	/**
	* Calcula as normais dos vértices.
	*/
	void calcNormals();

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

	static int IupGLCanvasDummy::setFragmentShading(Ihandle* self, int state);

	static int IupGLCanvasDummy::setVertexShading(Ihandle* self, int state);

};

#endif /* IUPGLCANVASDUMMY_H */

