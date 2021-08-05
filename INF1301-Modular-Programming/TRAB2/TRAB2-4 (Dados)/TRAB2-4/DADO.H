#if ! defined(DADO_)
#define DADO_

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo dado
*
*  Arquivo gerado:              DADO.H
*  Letras identificadoras:      DAD
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data          Observações
*       1.00   fmc/mpjv/rfss   12/09/2015 Início do desenvolvimento
*
*  $ED Descrição do módulo
*     Este módulo implementa funções para operar um par de dados de um jogo
*     de gamão.
*     O módulo é capaz de trabalhar com n pares de dados.
*     Ao iniciar a execução do programa não existe dados.
*
***************************************************************************/
 
#if defined(DADO_OWN)
   #define DADO_EXT
#else
   #define DADO_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para um dado */

typedef struct DAD_tagDado DAD_tpDado;

/***********************************************************************
*
*  $TC Tipo de dados: DAD Condicoes de retorno
*
*
***********************************************************************/

   typedef enum {

         DAD_CondRetOK,
               /* Executou correto */

		 DAD_CondRetDadoNaoExiste,
			   /* Dado não existe */

		 DAD_CondRetDadoNaoLancado,
			   /* Dado não lançado */

         DAD_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } DAD_tpCondRet;

/***********************************************************************
*
*  $FC Função: DAD Criar dados
*
*  $ED Descrição da função
*     Cria um novo par de dados.
*
*  $EP Parâmetros
*     $P pDados - ponteiro para o par de dados a ser criado. Passado por referência.
*
*  $FV Valor retornado
*     DAD_CondRetOK
*     DAD_CondRetFaltouMemoria
*
***********************************************************************/

   DAD_tpCondRet DAD_CriarDados(DAD_tpDado **pDados);

/***********************************************************************
*
*  $FC Função: DAD Jogar dados
*
*  $ED Descrição da função
*     Joga os dados.
*
*  $EP Parâmetros
*     $P pDados - ponteiro para o par de dados a ser utilizado.
*
*  $FV Valor retornado
*     DAD_CondRetOK
*     DAD_CondRetDadoNaoExiste
*
***********************************************************************/

   DAD_tpCondRet DAD_JogarDados(DAD_tpDado *pDados);

/***********************************************************************
*
*  $FC Função: DAD Obter valores
*
*  $ED Descrição da função
*     Obtém os valores do par de dados.
*
*  $EP Parâmetros
*     $P pDados - ponteiro para o par de dados a ser utilizado.
*     $P pValorDado1 - ponteiro para o inteiro que armazenará o valor do dado 1.
*     $P pValorDado2 - ponteiro para o inteiro que armazenará o valor do dado 2.
*
*  $FV Valor retornado
*     DAD_CondRetOK
*	  DAD_CondRetDadoNaoExiste
*	  DAD_CondRetDadoNaoLancado
*
***********************************************************************/

   DAD_tpCondRet DAD_ObterValores(DAD_tpDado *pDados, int *pValorDado1, int *pValorDado2);


/***********************************************************************
*
*  $FC Função: DAD Destruir dado
*
*  $ED Descrição da função
*     Destrói o par de dados.
*
*  $EP Parâmetros
*     $P pDados - ponteiro para o par de dados a ser excluído.
*
*  $FV Valor retornado
*     DAD_CondRetOK
*	  DAD_CondRetDadoNaoExiste
*
***********************************************************************/

   DAD_tpCondRet DAD_DestruirDados(DAD_tpDado **pDados);

#undef DAD_EXT

/********** Fim do módulo de definição: Módulo dado **********/

#else
#endif