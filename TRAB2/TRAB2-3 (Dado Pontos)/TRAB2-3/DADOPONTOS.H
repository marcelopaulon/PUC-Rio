#if ! defined(DADOPONTOS_)
#define DADOPONTOS_

#include "PECA.H"

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo dado pontos
*
*  Arquivo gerado:              DADOPONTOS.H
*  Letras identificadoras:      DPT
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data          Observações
*       1.00   fmc/mpjv/rfss   13/09/2015 Início do desenvolvimento
*
*  $ED Descrição do módulo
*     Este módulo implementa funções para operar um dado de pontos de um jogo.
*     O módulo é capaz de trabalhar com n dados de pontos.
*     Ao iniciar a execução do programa não existe dado de pontos.
*
***************************************************************************/
 
#if defined(DADOPONTOS_OWN)
   #define DADOPONTOS_EXT
#else
   #define DADOPONTOS_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para uma peça */

typedef struct DPT_tagDadoPontos DPT_tpDadoPontos;

/***********************************************************************
*
*  $TC Tipo de dados: DPT Condicoes de retorno
*
*
***********************************************************************/

   typedef enum {

         DPT_CondRetOK,
               /* Executou correto */

		 DPT_CondRetDadoPontosNaoExiste,
			   /* Dado de pontos não existe */

		 DPT_CondRetJogadorNaoPossuiDadoPontos,
			   /* Jogador não possui dado de pontos no momento */

		 DPT_CondRetNaoHaJogadorDadoPontos,
			   /* Não há jogador atual do dado de pontos */

         DPT_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } DPT_tpCondRet;
   
/***********************************************************************
*
*  $FC Função: DPT Criar dado de pontos
*
*  $ED Descrição da função
*     Cria um novo dado de pontos.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser criado. Passado por referência.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*     DPT_CondRetFaltouMemoria
*
***********************************************************************/

   DPT_tpCondRet DPT_CriarDadoPontos(DPT_tpDadoPontos **pDadoPontos);

/***********************************************************************
*
*  $FC Função: DPT Atualizar jogador que pode dobrar a partida
*
*  $ED Descrição da função
*     Atualiza o jogador que pode dobrar a partida.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser utilizado.
*     $P CorPeca - cor do jogador.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*	  DPT_CondRetDadoPontosNaoExiste
*
***********************************************************************/

   DPT_tpCondRet DPT_AtualizarJogadorDobra(DPT_tpDadoPontos *pDadoPontos, PCA_tpCorPeca CorPeca);

/***********************************************************************
*
*  $FC Função: DPT Dobrar pontuação da partida
*
*  $ED Descrição da função
*     Dobra a pontuação da partida.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser utilizado.
*     $P CorPeca - cor do jogador.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*	  DPT_CondRetDadoPontosNaoExiste
*	  DPT_CondRetJogadorNaoPossuiDadoPontos
*
***********************************************************************/

   DPT_tpCondRet DPT_DobrarPontuacaoPartida(DPT_tpDadoPontos *pDadoPontos, PCA_tpCorPeca CorPeca);

/***********************************************************************
*
*  $FC Função: DPT Obter jogador que pode dobrar partida
*
*  $ED Descrição da função
*     Obtém o jogador que pode dobrar a partida.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser utilizado.
*     $P pCorPeca - ponteiro que receberá, por referência, a cor da peça do jogador.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*	  DPT_CondRetDadoPontosNaoExiste
*	  DPT_CondRetNaoHaJogadorDadoPontos
*
***********************************************************************/

   DPT_tpCondRet DPT_ObterJogadorDobraPartida(DPT_tpDadoPontos *pDadoPontos, PCA_tpCorPeca *pCorPeca);

/***********************************************************************
*
*  $FC Função: DPT Obter pontuação da partida
*
*  $ED Descrição da função
*     Obtém a pontuação da partida.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser utilizado.
*     $P pPontuacao - ponteiro que receberá, por referência, a pontuação da partida.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*	  DPT_CondRetDadoPontosNaoExiste
*
***********************************************************************/

   DPT_tpCondRet DPT_ObterPontuacaoPartida(DPT_tpDadoPontos *pDadoPontos, int *pPontuacao);

/***********************************************************************
*
*  $FC Função: DPT Destruir dado de pontos
*
*  $ED Descrição da função
*     Destrói a peça.
*
*  $EP Parâmetros
*     $P pDadoPontos - ponteiro para o dado de pontos a ser destruído. Passado por referência.
*
*  $FV Valor retornado
*     DPT_CondRetOK
*	  DPT_CondRetDadoPontosNaoExiste
*
***********************************************************************/

   DPT_tpCondRet DPT_DestruirDadoPontos(DPT_tpDadoPontos **pDadoPontos);

#undef DPT_EXT

/********** Fim do módulo de definição: Módulo dado de pontos **********/

#else
#endif