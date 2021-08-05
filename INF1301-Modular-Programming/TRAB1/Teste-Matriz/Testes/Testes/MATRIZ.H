#if ! defined(MATRIZ_)
#define MATRIZ_

#include "LISTA.H"

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo matriz
*
*  Arquivo gerado:              MATRIZ.H
*  Letras identificadoras:      MAT
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data          Observações
*       1.00   fmc/mpjv/rfss   22/08/2015 Início do desenvolvimento
*
*  $ED Descrição do módulo
*     Este módulo implementa um conjunto simples de funções para criar e
*     explorar matrizes de listas de caracteres.
*     A matriz possui uma referência para o nó corrente da matriz.
*     O módulo é capaz de trabalhar com n matrizes.
*     Ao iniciar a execução do programa não existe matriz.
*     A matriz poderá estar vazia. Neste caso o nó corrente
*     será nulo, embora a cabeça esteja definida.
*     O nó corrente será nulo se e somente se a matriz estiver vazia.
*
***************************************************************************/
 
#if defined(MATRIZ_OWN)
   #define MATRIZ_EXT
#else
   #define MATRIZ_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para uma matriz */

typedef struct MAT_tagMatriz MAT_tpMatriz;

/***********************************************************************
*
*  $TC Tipo de dados: MAT Condicoes de retorno
*
*
***********************************************************************/

   typedef enum {

         MAT_CondRetOK,
               /* Executou correto */

         MAT_CondRetErroEstrutura,
               /* Estrutura da matriz está errada */

         MAT_CondRetMatrizNaoExiste,
               /* Matriz não existe */

         MAT_CondRetMatrizVazia,
               /* Matriz está vazia */

		 MAT_CondRetCoordenadaInexistente,
				/* Nó corrente não possui adjacente na direção desejada */

         MAT_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } MAT_tpCondRet;


   /***********************************************************************
*
*  $TC Tipo de dados: MAT Coordenadas
*
*
***********************************************************************/

   typedef enum {

         MAT_CoordNorte = 0 ,
               /* Coordenada Norte */

         MAT_CoordNordeste = 1 ,
               /* Coordenada Nordeste */

         MAT_CoordLeste = 2 ,
               /* Coordenada Leste */

         MAT_CoordSudeste = 3 ,
               /* Coordneada Sudeste */

         MAT_CoordSul = 4 ,
               /* Coordenada Sul */

         MAT_CoordSudoeste = 5 ,
               /* Coordenada Sudoeste */

         MAT_CoordOeste = 6 ,
               /* Coordenada Oeste */

         MAT_CoordNoroeste = 7 ,
               /* Coordenada Noroeste */

   } MAT_tpCoord;


/***********************************************************************
*
*  $FC Função: MAT Criar matriz
*
*  $ED Descrição da função
*     Cria uma nova matriz vazia.
*     Caso já exista uma matriz, esta será destruída.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser criada. Passado por referência.
*     $P NumeroLinhas - número de linhas da matriz a ser criada.
*     $P NumeroColunas - número de colunas da matriz a ser criada.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*	  MAT_CondRetErroEstrutura
*     MAT_CondRetFaltouMemoria
*
***********************************************************************/

   MAT_tpCondRet MAT_CriarMatriz(MAT_tpMatriz **pMatriz, int NumeroLinhas, int NumeroColunas);


/***********************************************************************
*
*  $FC Função: MAT Destruir matriz
*
*  $ED Descrição da função
*     Destrói o corpo e a cabeça da matriz, anulando o nó corrente.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser excluída.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*	  MAT_CondRetMatrizNaoExiste
*
***********************************************************************/

   MAT_tpCondRet MAT_DestruirMatriz(MAT_tpMatriz ** pMatriz);


/***********************************************************************
*
*  $FC Função: MAT Inserir valor no nó corrente
*
*  $ED Descrição da função
*     Insere valor no nó corrente.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*     $P ValorParm - valor a ser inserido no nó corrente.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizVazia
*     MAT_CondRetMatrizNaoExiste
*	  MAT_CondRetFaltouMemoria
*
***********************************************************************/

   MAT_tpCondRet MAT_InserirValor(MAT_tpMatriz *pMatriz, char * ValorParm);

   
/***********************************************************************
*
*  $FC Função: MAT Adicionar linha
*
*  $ED Descrição da função
*     Adiciona uma nova linha, ao final da matriz.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetFaltouMemoria
*
***********************************************************************/

   MAT_tpCondRet MAT_AdicionarLinha(MAT_tpMatriz * pMatriz);

/***********************************************************************
*
*  $FC Função: MAT Adicionar coluna
*
*  $ED Descrição da função
*     Adiciona uma nova coluna, ao final da matriz.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetFaltouMemoria
*
***********************************************************************/

   MAT_tpCondRet MAT_AdicionarColuna(MAT_tpMatriz * pMatriz);

/***********************************************************************
*
*  $FC Função: MAT Remover Linha
*
*  $ED Descrição da função
*     Remove a última linha da matriz.
*     Faz nada caso a matriz seja vazia ou não exista.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetMatrizVazia
*
***********************************************************************/

   MAT_tpCondRet MAT_RemoverLinha(MAT_tpMatriz * pMatriz);

/***********************************************************************
*
*  $FC Função: MAT Remover Coluna
*
*  $ED Descrição da função
*     Remove a última coluna da matriz.
*     Faz nada caso a matriz seja vazia ou não exista.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada. Passado por referência.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetMatrizVazia
*
***********************************************************************/

   MAT_tpCondRet MAT_RemoverColuna(MAT_tpMatriz * pMatriz);


/***********************************************************************
*
*  $FC Função: MAT Ir para coordenada
*
*  $ED Descrição da função
*     Move o nó corrente para uma direção (coordenada).
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*     $P Coordenada - coordenada para onde o nó corrente irá avançar.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetMatrizVazia
*	  MAT_CondRetCoordenadaInexistente
*		
***********************************************************************/

   MAT_tpCondRet MAT_IrPara(MAT_tpMatriz * pMatriz, MAT_tpCoord Coordenada);

/***********************************************************************
*
*  $FC Função: MAT Obter Valor Corrente
*
*  $ED Descrição da função
*     Obtem o valor contido no nó corrente.
*
*  $EP Parâmetros
*     $P pMatriz - ponteiro para a matriz a ser utilizada.
*     $P ValorParm - valor do nó corrente. Este parâmetro é 
*					 passado por referência.
*
*  $FV Valor retornado
*     MAT_CondRetOK
*     MAT_CondRetMatrizNaoExiste
*     MAT_CondRetMatrizVazia 
*     
***********************************************************************/

   MAT_tpCondRet MAT_ObterValorCorr(MAT_tpMatriz *pMatriz, char ** ValorParm);

#undef MAT_EXT

/********** Fim do módulo de definição: Módulo matriz **********/

#else
#endif
