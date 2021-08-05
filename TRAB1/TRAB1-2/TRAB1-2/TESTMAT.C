/***************************************************************************
*  $MCI Módulo de implementação: TMAT Teste matriz de lista de símbolos
*
*  Arquivo gerado:              TestMAT.c
*  Letras identificadoras:      TMAT
*
*  Projeto: Disciplina INF 1628

*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   26/08/2015 Início do desenvolvimento
*
***************************************************************************/

#include    <string.h>
#include    <stdio.h>
#include    <malloc.h>

#include    "TST_Espc.h"

#include    "Generico.h"
#include    "LerParm.h"

#include    "MATRIZ.h"

static const char RESET_MATRIZ_CMD        [] = "=resetteste";
static const char CRIAR_MATRIZ_CMD        [] = "=criarmatriz";
static const char DESTRUIR_MATRIZ_CMD     [] = "=destruirmatriz";
static const char INS_VALOR_CMD           [] = "=insvalor";
static const char OBTER_VALOR_CORR_CMD    [] = "=obtervalorcorr";
static const char IR_PARA_COORD_CMD       [] = "=irparacoord";
static const char ADICIONAR_LINHA_CMD     [] = "=adicionarlinha";
static const char ADICIONAR_COLUNA_CMD    [] = "=adicionarcoluna";
static const char REMOVER_LINHA_CMD       [] = "=removerlinha";
static const char REMOVER_COLUNA_CMD      [] = "=removercoluna";

#define TRUE  1
#define FALSE 0

#define VAZIO     0
#define NAO_VAZIO 1

#define DIM_VT_MATRIZ 10
#define DIM_VALOR     100

MAT_tpMatriz  *vtMatriz[DIM_VT_MATRIZ];

/***** Protótipos das funções encapuladas no módulo *****/

   static void DestruirValor(void * pValor);

   static int ValidarInxLista(int inxLista , int Modo);

/*****  Código das funções exportadas pelo módulo  *****/


/***********************************************************************
*
*  $FC Função: TLIS &Testar Matriz
*
*  $ED Descrição da função
*     Podem ser criadas até 10 matrizes, identificadas pelos índices 0 a 10
*
*     Comandos disponíveis:
*
*     =resetteste
*           - anula o vetor de Matriz.
*     =criarmatriz                  inxMatriz  int	 int   CondRetEsp
*     =destruirmatriz               inxMatriz			   CondRetEsp
*     =insvalor	                    inxMatriz  string	   CondRetEsp
*     =obtervalorcorr               inxMatriz  string	   CondretEsp
*     =irparacoord                  inxMatriz  string	   CondRetEsp
*     =adicionarlinha               inxMatriz			   CondRetEsp
*	  =adicionarcoluna				inxMatriz			   CondRetEsp
*     =removerlinha                 inxMatriz			   CondRetEsp
*     =removercoluna                inxMatriz			   CondRetEsp
*
***********************************************************************/

   TST_tpCondRet TST_EfetuarComando(char * ComandoTeste)
   {

      int inxMatriz  = -1 ,
          numLidos   = -1 ,
          CondRetEsp = -1;

	  MAT_tpCondRet CondRetObtido   = MAT_CondRetOK;
      MAT_tpCondRet CondRetEsperado = MAT_CondRetOK;
		/* inicializa para qualquer coisa */

      char   StringDado[DIM_VALOR];
      char * pDado;

      int ValEsp = -1;

      int i;
	  
      int NumElem = -1;

	  int NumLinhas = 0;

	  int NumColunas = 0;

	  MAT_tpCoord NumCoord;

      StringDado[0] = 0;

      /* Efetuar reset de teste de matriz */

         if(strcmp(ComandoTeste , RESET_MATRIZ_CMD) == 0)
         {

            for(i = 0; i < DIM_VT_MATRIZ; i++)
			{
			   CondRetObtido = MAT_DestruirMatriz(&vtMatriz[i]);
               vtMatriz[i] = NULL;
            } /* for */

			 return TST_CompararInt(CondRetEsperado , CondRetObtido ,
                                    "Retorno errado ao destruir matriz.");

         } /* fim ativa: Efetuar reset de teste de matriz */

      /* Testar Criar Matriz */

         else if(strcmp(ComandoTeste , CRIAR_MATRIZ_CMD) == 0)
         {

            numLidos = LER_LerParametros("iiii" ,
                       &inxMatriz, &NumLinhas, &NumColunas, &CondRetEsp);

            if((numLidos != 4)
              || (! ValidarInxLista(inxMatriz , VAZIO)))
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_CriarMatriz(&vtMatriz[inxMatriz], NumLinhas, NumColunas);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro em ponteiro de nova matriz.");

         } /* fim ativa: Testar Criar Matriz */

      /* Testar Destruir Matriz */

         else if(strcmp(ComandoTeste , DESTRUIR_MATRIZ_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                               &inxMatriz, &CondRetEsp);
			
            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 MAT_DestruirMatriz(&vtMatriz[inxMatriz]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao destruir matriz.");

         } /* fim ativa: Testar Destruir Matriz */

      /* Testar Inserir Valor */

         else if(strcmp(ComandoTeste , INS_VALOR_CMD) == 0)
         {
			 numLidos = LER_LerParametros("isi" ,
                               &inxMatriz, StringDado, &CondRetEsp);

            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

			pDado = (char *) malloc(strlen(StringDado) + 1);
            if(pDado == NULL)
            {
               return TST_CondRetMemoria;
            } /* if */

            strcpy(pDado , StringDado);

			CondRetObtido =
                 MAT_InserirValor(vtMatriz[inxMatriz], pDado);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao inserir valor na matriz.");

         } /* fim ativa: Testar Inserir Valor */

		 /* Testar Obter Valor */

		 else if(strcmp(ComandoTeste , OBTER_VALOR_CORR_CMD) == 0)
         {
			 numLidos = LER_LerParametros("isi" ,
                               &inxMatriz, StringDado, &CondRetEsp);

            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

			pDado = (char *) malloc(strlen(StringDado) + 1);
            if(pDado == NULL)
            {
               return TST_CondRetMemoria;
            } /* if */

			CondRetObtido =
                 MAT_ObterValorCorr(vtMatriz[inxMatriz], &pDado);
			
            if(TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao obter valor corrente na matriz.") == TST_CondRetErro)
			{
				return TST_CondRetErro;
			} /* if */

			if(CondRetEsp == MAT_CondRetOK) {
				TST_CompararString(StringDado, pDado,
				"Erro - valor inserido na matriz não foi obtido corretamente");
			} /* if */

			return TST_CondRetOK;
         } /* fim ativa: Testar Obter Valor */

		 /* Testar Adicionar Linha na Matriz */

         else if(strcmp(ComandoTeste , ADICIONAR_LINHA_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxMatriz, &CondRetEsp);

            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_AdicionarLinha(vtMatriz[inxMatriz]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao adicionar linha na matriz.");

         } /* fim ativa: Testar Adicionar Linha na Matriz */

		 /* Testar Adicionar Coluna na Matriz */

         else if(strcmp(ComandoTeste , ADICIONAR_COLUNA_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxMatriz, &CondRetEsp);

            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_AdicionarColuna(vtMatriz[inxMatriz]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao adicionar coluna na matriz.");

         } /* fim ativa: Testar Adicionar Coluna na Matriz */

		 /* Testar Remover Linha da Matriz */

         else if(strcmp(ComandoTeste , REMOVER_LINHA_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxMatriz, &CondRetEsp);

            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_RemoverLinha(vtMatriz[inxMatriz]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao remover linha da matriz.");

         } /* fim ativa: Testar Remover Linha da Matriz */

		 /* Testar Remover Coluna da Matriz */

         else if(strcmp(ComandoTeste , REMOVER_COLUNA_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                       &inxMatriz, &CondRetEsp);

            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_RemoverLinha(vtMatriz[inxMatriz]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao remover coluna da matriz.");

         } /* fim ativa: Testar Remover Coluna da Matriz */

		 /* Testar Ir Para Coordenada */

         else if(strcmp(ComandoTeste , IR_PARA_COORD_CMD) == 0)
         {

            numLidos = LER_LerParametros("iii" ,
                       &inxMatriz, &NumCoord, &CondRetEsp);

            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 MAT_IrPara(vtMatriz[inxMatriz], NumCoord);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao ir para coordenada.");

         } /* fim ativa: Testar Ir Para Coordenada */

      return TST_CondRetNaoConhec;

   } /* fim função: tlis &testar lista */
	


/*****  Código das funções encapsuladas no módulo  *****/


/***********************************************************************
*
*  $FC Função: TLIS -Destruir valor
*
***********************************************************************/

   void DestruirValor(void * pValor)
   {

      free(pValor);

   } /* Fim função: TLIS -Destruir valor */


/***********************************************************************
*
*  $FC Função: TLIS -Validar indice de lista
*
***********************************************************************/

   int ValidarInxLista(int inxLista , int Modo)
   {

      if((inxLista <  0)
        || (inxLista >= DIM_VT_MATRIZ))
      {
         return FALSE;
      } /* if */
         
      if(Modo == VAZIO)
      {
         if(vtMatriz[inxLista] != 0)
         {
            return FALSE;
         } /* if */
      } /* if */
	  else
      {
         if(vtMatriz[inxLista] == 0)
         {
            return FALSE;
         } /* if */
      } /* if */
         
      return TRUE;

   } /* Fim função: TLIS -Validar indice de lista */

/********** Fim do módulo de implementação: TLIS Teste lista de símbolos **********/

