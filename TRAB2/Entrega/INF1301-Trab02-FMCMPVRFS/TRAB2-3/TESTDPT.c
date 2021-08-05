/***************************************************************************
*  $MCI M�dulo de implementa��o: TDPT Teste dado de pontos
*
*  Arquivo gerado:              TestDPT.c
*  Letras identificadoras:      TDPT
*
*  Projeto: Disciplina INF 1301

*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Juc� Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Hist�rico de evolu��o:
*     Vers�o       Autor          Data         Observa��es
*       1.00   fmc/mpjv/rfss   13/09/2015 In�cio do desenvolvimento
*
***************************************************************************/

#include    <string.h>
#include    <stdio.h>
#include    <malloc.h>

#include    "TST_Espc.h"

#include    "Generico.h"
#include    "LerParm.h"

#include    "DADOPONTOS.h"

static const char RESET_DADOPONTOS_CMD           [] = "=resetteste";
static const char CRIAR_DADOPONTOS_CMD           [] = "=criardadopontos";
static const char ATUALIZAR_JOGADOR_DOBRA_CMD    [] = "=atualizarjogadordobra";
static const char DOBRAR_PONTUACAO_PARTIDA_CMD   [] = "=dobrarpontuacaopartida";
static const char OBTER_PONTUACAO_PARTIDA_CMD    [] = "=obterpontuacaopartida";
static const char DESTRUIR_DADOPONTOS_CMD        [] = "=destruirdadopontos";

#define TRUE  1
#define FALSE 0

#define VAZIO     0
#define NAO_VAZIO 1

#define PECA_BRANCA 0
#define PECA_PRETA  1

#define DIM_VT_DADOPONTOS 5
#define DIM_VALOR     100

DPT_tpDadoPontos  *vtDadoPontos[DIM_VT_DADOPONTOS];

/***** Prot�tipos das fun��es encapuladas no m�dulo *****/

   static void DestruirValor(void * pValor);

   static int ValidarInxDadoPontos(int inxDadoPontos , int Modo);

/*****  C�digo das fun��es exportadas pelo m�dulo  *****/


/***********************************************************************
*
*  $FC Fun��o: TDPT &Testar Dado de Pontos
*
*  $ED Descri��o da fun��o
*     Podem ser criados at� 5 dados de pontos, identificados pelos �ndices 0 a 4
*
*     Comandos dispon�veis:
*
*     =resetteste
*           - anula o vetor de Dados de Pontos.
*     =criardadopontos                  inxDadoPontos	   CondRetEsp
*     =atualizarjogadordobra            inxDadoPontos  int  CondRetEsp
*     =dobrarpontuacaopartida	        inxDadoPontos  int  CondRetEsp
*     =obterpontuacaopartida			inxDadoPontos  int  CondretEsp
*     =destruirdadopontos				inxDadoPontos       CondRetEsp
*
***********************************************************************/

   TST_tpCondRet TST_EfetuarComando(char * ComandoTeste)
   {

      int inxDadoPontos  = -1 ,
          numLidos   = -1 ,
          CondRetEsp = -1;
	  
	  int Pontuacao = -1;
	  int ValorEsperado;
	  
	  PCA_tpCorPeca CorPeca;

	  DPT_tpCondRet CondRetObtido   = DPT_CondRetOK;
      DPT_tpCondRet CondRetEsperado = DPT_CondRetOK;
		/* inicializa para qualquer coisa */
	  
      int ValEsp = -1;

	  TST_tpCondRet CondRetTesteEsperado;

      int i;
	  
      /* Efetuar reset de teste do dado de pontos */

         if(strcmp(ComandoTeste , RESET_DADOPONTOS_CMD) == 0)
         {

            for(i = 0; i < DIM_VT_DADOPONTOS; i++)
			{
			   CondRetObtido = DPT_DestruirDadoPontos(&vtDadoPontos[i]);
               vtDadoPontos[i] = NULL;
            } /* for */

			 return TST_CompararInt(CondRetEsperado , CondRetObtido ,
                                    "Retorno errado ao destruir dado de pontos.");

         } /* fim ativa: Efetuar reset de teste de dado de pontos */

      /* Testar Criar Dado de Pontos */

         else if(strcmp(ComandoTeste , CRIAR_DADOPONTOS_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxDadoPontos, &CondRetEsp);

            if((numLidos != 2)
              || (! ValidarInxDadoPontos(inxDadoPontos , VAZIO)))
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 DPT_CriarDadoPontos(&vtDadoPontos[inxDadoPontos]);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro em ponteiro de novo Dado de Pontos.");

         } /* fim ativa: Testar Criar Dado de Pontos */

      /* Testar Destruir Dado de Pontos */

         else if(strcmp(ComandoTeste , DESTRUIR_DADOPONTOS_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                               &inxDadoPontos, &CondRetEsp);
			
            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 DPT_DestruirDadoPontos(&vtDadoPontos[inxDadoPontos]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao destruir Dado de Pontos.");

         } /* fim ativa: Testar Destruir Dado de Pontos */

		/* Testar Atualizar jogador de dobra */

         else if(strcmp(ComandoTeste , ATUALIZAR_JOGADOR_DOBRA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iii" ,
                               &inxDadoPontos, &CorPeca, &CondRetEsp);
			
            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 DPT_AtualizarJogadorDobra(vtDadoPontos[inxDadoPontos], CorPeca);
			
            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao atualizar jogador de dobra.");

         } /* fim ativa: Testar Atualizar jogador de dobra */

		 /* Testar Dobrar pontua��o da partida */

         else if(strcmp(ComandoTeste , DOBRAR_PONTUACAO_PARTIDA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iii" ,
                               &inxDadoPontos, &CorPeca, &CondRetEsp);
			
            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 DPT_DobrarPontuacaoPartida(vtDadoPontos[inxDadoPontos], CorPeca);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao dobrar pontuacao da partida.");

         } /* fim ativa: Dobrar pontua��o da partida */

		 /* Testar Obter pontua��o da partida */

         else if(strcmp(ComandoTeste , OBTER_PONTUACAO_PARTIDA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iii" ,
                               &inxDadoPontos, &ValorEsperado, &CondRetEsp);
			
            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 DPT_ObterPontuacaoPartida(vtDadoPontos[inxDadoPontos], &Pontuacao);
			
			CondRetTesteEsperado = TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao Obter pontua��o da partida.");

			if(CondRetTesteEsperado != TST_CondRetOK || CondRetObtido != DPT_CondRetOK)
			{
				return CondRetTesteEsperado;
			}

			return TST_CompararInt(ValorEsperado , Pontuacao ,
               "Erro ao Obter pontua��o da partida - valor invalido.");

         } /* fim ativa: Testar Obter pontua��o da partida */
		 
      return TST_CondRetNaoConhec;

   } /* fim fun��o: tdpt &testar dado de pontos */
	
/*****  C�digo das fun��es encapsuladas no m�dulo  *****/


/***********************************************************************
*
*  $FC Fun��o: TDPT - Validar indice de dado de pontos
*
***********************************************************************/

   int ValidarInxDadoPontos(int inxDadoPontos , int Modo)
   {

      if((inxDadoPontos <  0)
        || (inxDadoPontos >= DIM_VT_DADOPONTOS))
      {
         return FALSE;
      } /* if */
         
      if(Modo == VAZIO)
      {
         if(vtDadoPontos[inxDadoPontos] != 0)
         {
            return FALSE;
         } /* if */
      } /* if */
	  else
      {
         if(vtDadoPontos[inxDadoPontos] == 0)
         {
            return FALSE;
         } /* if */
      } /* if */
         
      return TRUE;

   } /* Fim fun��o: TDPT - Validar indice de dado de pontos */

/********** Fim do m�dulo de implementa��o: TDPT Teste dado de pontos **********/