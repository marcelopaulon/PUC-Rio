#if ! defined(TABULEIRO_)
#define TABULEIRO_

#include "PECA.H"

/***************************************************************************
*
*  $MCD Módulo de definição: Módulo tabuleiro
*
*  Arquivo gerado:              TABULEIRO.H
*  Letras identificadoras:      TAB
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
*     Este módulo implementa um tabuleiro de gamão.
*     O tabuleiro possui uma referência para a casa corrente do tabuleiro.
*     O módulo é capaz de trabalhar com n tabuleiros.
*     Ao iniciar a execução do programa não existe tabuleiro.
*     O tabuleiro poderá estar vazio. Neste caso a casa corrente
*     será nula, embora a cabeça esteja definida.
*     A casa corrente será nula se e somente se o tabuleiro estiver vazio.
*
***************************************************************************/
 
#if defined(TABULEIRO_OWN)
   #define TABULEIRO_EXT
#else
   #define TABULEIRO_EXT extern
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para um tabuleiro */

typedef struct TAB_tagTabuleiro TAB_tpTabuleiro;

/***********************************************************************
*
*  $TC Tipo de dados: TAB Condições de retorno
*
*
***********************************************************************/

   typedef enum {

         TAB_CondRetOK,
               /* Executou correto */

         TAB_CondRetTabuleiroNaoExiste,
               /* Tabuleiro não existe */

		 TAB_CondRetCasaNaoExiste,
				/* Casa desejada não existe */

		 TAB_CondRetPecaNaoExiste,
				/* Peça desejada não existe */

         TAB_CondRetFaltouMemoria
               /* Faltou memória ao alocar dados */

   } TAB_tpCondRet;

/***********************************************************************
*
*  $FC Função: TAB Criar Tabuleiro
*
*  $ED Descrição da função
*     Cria um novo tabuleiro vazio.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro a ser criado. Passado por referência.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*     TAB_CondRetFaltouMemoria
*
***********************************************************************/

   TAB_tpCondRet TAB_CriarTabuleiro(TAB_tpTabuleiro **pTabuleiro);


/***********************************************************************
*
*  $FC Função: TAB Inserir Peça
*
*  $ED Descrição da função
*     Insere uma peça em um tabuleiro.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro no qual a peça será inserida.
*     $P pPeca - contém o tipo (cor) da peça a ser inserida.
*     $P NumeroCasa - contém o número da casa na qual a peça será inserida.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*	  TAB_CondRetTabuleiroNaoExiste
*	  TAB_CondRetCasaNaoExiste
*	  TAB_CondRetFaltouMemoria
*
***********************************************************************/

   TAB_tpCondRet TAB_InserirPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpPeca *pPeca, int NumeroCasa);


/***********************************************************************
*
*  $FC Função: TAB Remover Peça
*
*  $ED Descrição da função
*     Remove uma peça de um tabuleiro.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro da onde a peça será removida.
*	  $P CorPeca - cor da peça a ser removida.
*     $P pPeca - ponteiro para a colocar a peça a ser removida. Passado por referência.
*     $P NumeroCasa - número da casa onde a peça a ser removida está localizada.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*     TAB_CondRetTabuleiroNaoExiste
*     TAB_CondRetCasaNaoExiste
*	  TAB_CondRetPecaNaoExiste
*
***********************************************************************/

   TAB_tpCondRet TAB_RemoverPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpCorPeca CorPeca, PCA_tpPeca **pPeca, int NumeroCasa);

   
/***********************************************************************
*
*  $FC Função: TAB Mover Peça
*
*  $ED Descrição da função
*     Move uma peça de uma casa para outra em um tabuleiro
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro onde se localiza a peça a ser movida.
*     $P CorPeca - cor da peça a ser movida.
*     $P NumeroCasaOrigem - número da casa onde se localiza a peça a ser movida.
*     $P NumeroCasaDestino - número da casa para onde a peça será movida.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*     TAB_CondRetTabuleiroNaoExiste
*     TAB_CondRetCasaNaoExiste
*	  TAB_CondRetPecaNaoExiste
*	  TAB_CondRetFaltouMemoria
*
***********************************************************************/

   TAB_tpCondRet TAB_MoverPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpCorPeca CorPeca, int NumeroCasaOrigem, int NumeroCasaDestino);

/***********************************************************************
*
*  $FC Função: TAB Contar Peças
*
*  $ED Descrição da função
*     Conta o número de peças presentes em uma casa de um tabuleiro
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro aonde está a casa que terá suas peças contadas
*     $P NumeroCasa - número da casa que terá suas peças contadas
*     $P CorPeca - cor das peças a serem contadas
*     $P pContagem - ponteiro que receberá, por referência, o número de peças da cor escolhida na casa indicada.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*     TAB_CondRetTabuleiroNaoExiste
*	  TAB_CondRetCasaNaoExiste
*	  TAB_CondRetPecaNaoExiste
*
***********************************************************************/

   TAB_tpCondRet TAB_ContarPecas(TAB_tpTabuleiro *pTabuleiro, int NumeroCasa, PCA_tpCorPeca CorPeca, int *pContagem);

/***********************************************************************
*
*  $FC Função: TAB Destruir Tabuleiro
*
*  $ED Descrição da função
*     Destrói o tabuleiro, anulando o nó que aponta para o mesmo.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro a ser destruído.
*
*  $FV Valor retornado
*     TAB_CondRetOK
*     TAB_CondRetTabuleiroNaoExiste
*
***********************************************************************/

   TAB_tpCondRet TAB_DestruirTabuleiro(TAB_tpTabuleiro **pTabuleiro);

#undef TAB_EXT

/********** Fim do módulo de definição: Módulo matriz **********/

#else
#endif