/***************************************************************************
*  $MCI Módulo de implementação: TTAB Teste tabuleiro
*
*  Arquivo gerado:              TestTAB.c
*  Letras identificadoras:      TTAB
*
*  Projeto: Disciplina INF 1301

*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   05/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include    <string.h>
#include    <stdio.h>
#include    <malloc.h>

#include    "TST_Espc.h"

#include    "Generico.h"
#include    "LerParm.h"

#include    "TABULEIRO.h"

static const char RESET_TABULEIRO_CMD     [] = "=resetteste";
static const char CRIAR_TABULEIRO_CMD     [] = "=criartabuleiro";
static const char DESTRUIR_TABULEIRO_CMD  [] = "=destruirtabuleiro";
static const char INSERIR_PECA_CMD        [] = "=inserirpeca";
static const char REMOVER_PECA_CMD        [] = "=removerpeca";
static const char MOVER_PECA_CMD          [] = "=moverpeca";
static const char CONTAR_PECAS_CMD        [] = "=contarpecas";

#define TRUE  1
#define FALSE 0

#define VAZIO     0
#define NAO_VAZIO 1

#define PECA_BRANCA 0
#define PECA_PRETA  1

#define DIM_VT_TABULEIRO 5
#define DIM_VALOR     100

TAB_tpTabuleiro  *vtTabuleiro[DIM_VT_TABULEIRO];

/***** Protótipos das funções encapuladas no módulo *****/

   static void DestruirValor(void * pValor);

   static int ValidarInxTabuleiro(int inxTabuleiro , int Modo);

/*****  Código das funções exportadas pelo módulo  *****/


/***********************************************************************
*
*  $FC Função: TTAB &Testar Tabuleiro
*
*  $ED Descrição da função
*     Podem ser criados até 5 tabuleiros, identificados pelos índices 0 a 4
*
*     Comandos disponíveis:
*
*     =resetteste
*           - anula o vetor de Tabuleiros.
*     =criartabuleiro                  inxTabuleiro				   CondRetEsp
*     =destruirtabuleiro               inxTabuleiro				   CondRetEsp
*     =inserirpeca	                   inxTabuleiro  int int 	   CondRetEsp
*     =removerpeca					   inxTabuleiro  int int   	   CondretEsp
*     =moverpeca					   inxTabuleiro  int int int   CondRetEsp
*     =contarpecas					   inxTabuleiro	 int int       CondRetEsp
*
***********************************************************************/

   TST_tpCondRet TST_EfetuarComando(char * ComandoTeste)
   {

      int inxTabuleiro  = -1 ,
          numLidos   = -1 ,
          CondRetEsp = -1;

	  int NumeroCasa,
		  NumeroCasaOrigem,
		  NumeroCasaDestino;

	  int Contagem;
	  int ValorEsperado;

	  PCA_tpPeca *pPeca;

	  PCA_tpCorPeca CorPeca;

	  TAB_tpCondRet CondRetObtido   = TAB_CondRetOK;
      TAB_tpCondRet CondRetEsperado = TAB_CondRetOK;
		/* inicializa para qualquer coisa */
	  
      int ValEsp = -1;

	  TST_tpCondRet CondRetTesteEsperado;

      int i;
	  
      /* Efetuar reset de teste do tabuleiro */

         if(strcmp(ComandoTeste , RESET_TABULEIRO_CMD) == 0)
         {

            for(i = 0; i < DIM_VT_TABULEIRO; i++)
			{
			   CondRetObtido = TAB_DestruirTabuleiro(&vtTabuleiro[i]);
               vtTabuleiro[i] = NULL;
            } /* for */

			 return TST_CompararInt(CondRetEsperado , CondRetObtido ,
                                    "Retorno errado ao destruir tabuleiro.");

         } /* fim ativa: Efetuar reset de teste de tabuleiro */

      /* Testar Criar Tabuleiro */

         else if(strcmp(ComandoTeste , CRIAR_TABULEIRO_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxTabuleiro, &CondRetEsp);

            if((numLidos != 2)
              || (! ValidarInxTabuleiro(inxTabuleiro , VAZIO)))
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 TAB_CriarTabuleiro(&vtTabuleiro[inxTabuleiro]);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro em ponteiro de novo Tabuleiro.");

         } /* fim ativa: Testar Criar Tabuleiro */

      /* Testar Destruir Tabuleiro */

         else if(strcmp(ComandoTeste , DESTRUIR_TABULEIRO_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                               &inxTabuleiro, &CondRetEsp);
			
            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 TAB_DestruirTabuleiro(&vtTabuleiro[inxTabuleiro]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao destruir Tabuleiro.");

         } /* fim ativa: Testar Destruir Tabuleiro */

		/* Testar Inserir Peça */

         else if(strcmp(ComandoTeste , INSERIR_PECA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iiii" ,
                               &inxTabuleiro, &CorPeca, &NumeroCasa, &CondRetEsp);
			
            if(numLidos != 4)
            {
               return TST_CondRetParm;
            } /* if */

			PCA_CriarPeca(&pPeca, CorPeca);

			CondRetObtido =
                 TAB_InserirPeca(vtTabuleiro[inxTabuleiro], pPeca, NumeroCasa);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao inserir Peça.");

         } /* fim ativa: Testar Inserir Peça */

		 /* Testar Remover Peça */

         else if(strcmp(ComandoTeste , REMOVER_PECA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iiii" ,
                               &inxTabuleiro, &CorPeca, &NumeroCasa, &CondRetEsp);
			
            if(numLidos != 4)
            {
               return TST_CondRetParm;
            } /* if */

			PCA_CriarPeca(&pPeca, CorPeca);

			CondRetObtido =
                 TAB_RemoverPeca(vtTabuleiro[inxTabuleiro], CorPeca, &pPeca, NumeroCasa);

			PCA_DestruirPeca(&pPeca);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao remover peca.");

         } /* fim ativa: Testar Remover Peça */

		 /* Testar Mover Peça */

         else if(strcmp(ComandoTeste , MOVER_PECA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iiiii" ,
                               &inxTabuleiro, &CorPeca, &NumeroCasaOrigem, &NumeroCasaDestino, &CondRetEsp);
			
            if(numLidos != 5)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 TAB_MoverPeca(vtTabuleiro[inxTabuleiro], CorPeca, NumeroCasaOrigem, NumeroCasaDestino);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao mover Peça.");

         } /* fim ativa: Testar Mover Peça */

		 /* Testar Contar Peças */

         else if(strcmp(ComandoTeste , CONTAR_PECAS_CMD) == 0)
         {

            numLidos = LER_LerParametros("iiiii" ,
                               &inxTabuleiro, &CorPeca, &NumeroCasa, &ValorEsperado, &CondRetEsp);
			
            if(numLidos != 5)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 TAB_ContarPecas(vtTabuleiro[inxTabuleiro], NumeroCasa, CorPeca, &Contagem);

			CondRetTesteEsperado = TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao contar pecas.");

			if(CondRetTesteEsperado != TST_CondRetOK)
			{
				return CondRetTesteEsperado;
			} /* if */

            return TST_CompararInt(ValorEsperado , Contagem ,
               "Erro ao contar pecas. Contagem incorreta.");
         } /* fim ativa: Testar Contar Peças */

		 
      return TST_CondRetNaoConhec;

   } /* fim função: ttab &testar tabuleiro */
	
/*****  Código das funções encapsuladas no módulo  *****/


/***********************************************************************
*
*  $FC Função: TTAB -Destruir valor
*
***********************************************************************/

   void DestruirValor(void * pValor)
   {

      free(pValor);

   } /* Fim função: TTAB - Destruir valor */


/***********************************************************************
*
*  $FC Função: TTAB - Validar indice de tabuleiro
*
***********************************************************************/

   int ValidarInxTabuleiro(int inxTabuleiro , int Modo)
   {

      if((inxTabuleiro <  0)
        || (inxTabuleiro >= DIM_VT_TABULEIRO))
      {
         return FALSE;
      } /* if */
         
      if(Modo == VAZIO)
      {
         if(vtTabuleiro[inxTabuleiro] != 0)
         {
            return FALSE;
         } /* if */
      } /* if */
	  else
      {
         if(vtTabuleiro[inxTabuleiro] == 0)
         {
            return FALSE;
         } /* if */
      } /* if */
         
      return TRUE;

   } /* Fim função: TTAB - Validar indice de tabuleiro */

/********** Fim do módulo de implementação: TTAB Teste tabuleiro **********/