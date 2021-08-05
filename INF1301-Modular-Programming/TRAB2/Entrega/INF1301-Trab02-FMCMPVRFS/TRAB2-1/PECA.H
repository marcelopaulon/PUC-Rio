#if ! defined(PECA_)
#define PECA_

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo peça
*
*  Arquivo gerado:              PECA.H
*  Letras identificadoras:      PCA
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data          Observações
*       1.00   fmc/mpjv/rfss   02/09/2015 Início do desenvolvimento
*
*  $ED Descrição do módulo
*     Este módulo implementa funções para operar uma peça de um jogo, que
*     seja de cor branca ou preta.
*     O módulo é capaz de trabalhar com n peças.
*     Ao iniciar a execução do programa não existe peça.
*
***************************************************************************/
 
#if defined(PECA_OWN)
   #define PECA_EXT
#else
   #define PECA_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para uma peça */

typedef struct PCA_tagPeca PCA_tpPeca;

/***********************************************************************
*
*  $TC Tipo de dados: PCA Condicoes de retorno
*
*
***********************************************************************/

   typedef enum {

         PCA_CondRetOK,
               /* Executou correto */

		 PCA_CondRetPecaNaoExiste,
			   /* Peça não existe */

         PCA_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } PCA_tpCondRet;


/***********************************************************************
*
*  $TC Tipo de dados: PCA Cores das peças
*
*
***********************************************************************/

   typedef enum {

         PCA_PecaBranca = 0 ,
               /* Peça Branca */

         PCA_PecaPreta = 1 ,
               /* Peça Preta */

   } PCA_tpCorPeca;


/***********************************************************************
*
*  $FC Função: PCA Criar peça
*
*  $ED Descrição da função
*     Cria uma nova peça.
*
*  $EP Parâmetros
*     $P pPeca - ponteiro para a peça a ser criada. Passado por referência.
*     $P CorPeca - cor da peça a ser criada.
*
*  $FV Valor retornado
*     PCA_CondRetOK
*     PCA_CondRetFaltouMemoria
*
***********************************************************************/

   PCA_tpCondRet PCA_CriarPeca(PCA_tpPeca **pPeca, PCA_tpCorPeca CorPeca);

/***********************************************************************
*
*  $FC Função: PCA Obter cor da peça
*
*  $ED Descrição da função
*     Obtém a cor da peça.
*
*  $EP Parâmetros
*     $P pPeca - ponteiro para a peça a ser utilizada.
*     $P pCorPeca - ponteiro para a cor a ser obtida.
*
*  $FV Valor retornado
*     PCA_CondRetOK
*     PCA_CondRetPecaNaoExiste
*
***********************************************************************/

   PCA_tpCondRet PCA_ObterCorPeca(PCA_tpPeca *pPeca, PCA_tpCorPeca *pCorPeca);

/***********************************************************************
*
*  $FC Função: PCA Destruir peça
*
*  $ED Descrição da função
*     Destrói a peça.
*
*  $EP Parâmetros
*     $P pPeca - ponteiro para a peça a ser excluída.
*
*  $FV Valor retornado
*     PCA_CondRetOK
*	  PCA_CondRetPecaNaoExiste
*
***********************************************************************/

   PCA_tpCondRet PCA_DestruirPeca(PCA_tpPeca ** pPeca);

#undef PCA_EXT

/********** Fim do módulo de definição: Módulo peça **********/

#else
#endif