#if ! defined(PECASFINALIZADAS_)
#define PECASFINALIZADAS_

#include "PECA.H"

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo peças finalizadas
*
*  Arquivo gerado:              PECASFINALIZADAS.H
*  Letras identificadoras:      PCF
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data          Observações
*       1.00   fmc/mpjv/rfss   17/09/2015 Início do desenvolvimento
*
*  $ED Descrição do módulo
*     Este módulo implementa funções para operar uma lista de peças, finalizadas
*     O módulo é capaz de trabalhar com n peças.
*     Ao iniciar a execução do programa não existe lista de peças.
*
***************************************************************************/
 
#if defined(PECASFINALIZADAS_OWN)
   #define PECASFINALIZADAS_EXT
#else
   #define PECASFINALIZADAS_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para uma lista de peças finalizadas */

typedef struct PCF_tagPecasFinalizadas PCF_tpPecasFinalizadas;

/***********************************************************************
*
*  $TC Tipo de dados: PCF Condicoes de retorno
*
*
***********************************************************************/

   typedef enum {

         PCF_CondRetOK,
               /* Executou correto */

		 PCF_CondRetListaPecasFinalizadasNaoExiste,
			   /* Lista de peças finalizadas não existe */

         PCF_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } PCF_tpCondRet;


/***********************************************************************
*
*  $FC Função: PCF Criar lista de peças finalizadas
*
*  $ED Descrição da função
*     Cria uma nova lista de peças finalizadas.
*
*  $EP Parâmetros
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas a ser criada. Passado por referência.
*
*  $FV Valor retornado
*     PCF_CondRetOK
*     PCF_CondRetFaltouMemoria
*
***********************************************************************/

   PCF_tpCondRet PCF_CriarListaPecasFinalizadas(PCF_tpPecasFinalizadas **pPecasFinalizadas);

/***********************************************************************
*
*  $FC Função: PCF Inserir peça
*
*  $ED Descrição da função
*     Insere uma peça na lista de peças finalizadas.
*
*  $EP Parâmetros
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas a ser utilizada.
*     $P pPeca - ponteiro para a peça a ser utilizada.
*
*  $FV Valor retornado
*     PCF_CondRetOK
*     PCF_CondRetListaPecasFinalizadasNaoExiste
*	  PCF_CondRetFaltouMemoria
*
***********************************************************************/

   PCF_tpCondRet PCF_InserirPeca(PCF_tpPecasFinalizadas *pPecasFinalizadas, PCA_tpPeca *pPeca);

/***********************************************************************
*
*  $FC Função: PCF Contar peças
*
*  $ED Descrição da função
*     Conta as peças de uma determinada cor na lista de peças finalizadas
*
*  $EP Parâmetros
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas a ser utilizada.
*     $P CorPeca - cor das peças a serem contadas.
*     $P pContagem - ponteiro para o inteiro onde será armazenado o número de peças.
*
*  $FV Valor retornado
*     PCF_CondRetOK
*	  PCF_CondRetListaPecasFinalizadasNaoExiste
*
***********************************************************************/

   PCF_tpCondRet PCF_ContarPecas(PCF_tpPecasFinalizadas *pPecasFinalizadas, PCA_tpCorPeca CorPeca, int *pContagem);

/***********************************************************************
*
*  $FC Função: PCF Destruir lista de peças finalizadas
*
*  $ED Descrição da função
*     Destrói a lista de peças finalizadas.
*
*  $EP Parâmetros
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas a ser utilizada. Passado por referência.
*
*  $FV Valor retornado
*     PCF_CondRetOK
*	  PCF_CondRetListaPecasFinalizadasNaoExiste
*
***********************************************************************/

   PCF_tpCondRet PCF_DestruirListaPecasFinalizadas(PCF_tpPecasFinalizadas **pPecasFinalizadas);

#undef PCF_EXT

/********** Fim do módulo de definição: Módulo peças finalizadas **********/

#else
#endif