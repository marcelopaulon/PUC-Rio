/***************************************************************************
*  $MCI Módulo de implementação: TPCA Teste peça
*
*  Arquivo gerado:              TestPCA.c
*  Letras identificadoras:      TPCA
*
*  Projeto: Disciplina INF 1301

*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   03/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include    <string.h>
#include    <stdio.h>
#include    <malloc.h>

#include    "TST_Espc.h"

#include    "Generico.h"
#include    "LerParm.h"

#include    "PECA.h"

static const char RESET_PECA_CMD        [] = "=resetteste";
static const char CRIAR_PECA_CMD        [] = "=criarpeca";
static const char OBTER_COR_PECA_CMD    [] = "=obtercorpeca";
static const char DESTRUIR_PECA_CMD     [] = "=destruirpeca";

#define TRUE  1
#define FALSE 0

#define VAZIO     0
#define NAO_VAZIO 1

#define DIM_VT_PECA 10
#define DIM_VALOR   100

PCA_tpPeca  *vtPeca[DIM_VT_PECA];

/***** Protótipos das funções encapuladas no módulo *****/

   static int ValidarInxPeca(int inxPeca , int Modo);

/*****  Código das funções exportadas pelo módulo  *****/


/***********************************************************************
*
*  $FC Função: TPCA &Testar Peça
*
*  $ED Descrição da função
*     Podem ser criadas até 10 peças, identificadas pelos índices 0 a 10
*
*     Comandos disponíveis:
*
*     =resetteste
*           - anula o vetor de Peças.
*     =criarpeca                  inxPeca    CorPeca   CondRetEsp
*     =obtercorpeca               inxPeca    CorPeca   CondRetEsp
*     =destruirpeca               inxPeca	           CondRetEsp
*
***********************************************************************/

   TST_tpCondRet TST_EfetuarComando(char * ComandoTeste)
   {

      int inxPeca  = -1 ,
          numLidos   = -1 ,
          CondRetEsp = -1,
		  CorPecaEsp = -1;

	  PCA_tpCondRet CondRetObtido   = PCA_CondRetOK;
      PCA_tpCondRet CondRetEsperado = PCA_CondRetOK;
		/* inicializa para qualquer coisa */

      int i;
	  
	  PCA_tpCorPeca CorPeca;

      /* Efetuar reset de teste de peça */

         if(strcmp(ComandoTeste , RESET_PECA_CMD) == 0)
         {

            for(i = 0; i < DIM_VT_PECA; i++)
			{
			   CondRetObtido = PCA_DestruirPeca(&vtPeca[i]);
               vtPeca[i] = NULL;
            } /* for */

			return TST_CompararInt(CondRetEsperado , CondRetObtido ,
                                    "Retorno errado ao destruir peca.");

         } /* fim ativa: Efetuar reset de teste de peça */

      /* Testar Criar Peça */

         else if(strcmp(ComandoTeste , CRIAR_PECA_CMD) == 0)
         {

            numLidos = LER_LerParametros("iii" ,
                       &inxPeca, &CorPeca, &CondRetEsp);

            if((numLidos != 3)
              || (! ValidarInxPeca(inxPeca , VAZIO)))
            {
               return TST_CondRetParm;
            } /* if */

            CondRetObtido =
                 PCA_CriarPeca(&vtPeca[inxPeca], CorPeca);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro em ponteiro de nova peça.");

         } /* fim ativa: Testar Criar Peça */

		 /* Testar Obter Cor Peça */

		 else if(strcmp(ComandoTeste , OBTER_COR_PECA_CMD) == 0)
         {
			 numLidos = LER_LerParametros("iii" ,
                               &inxPeca, &CorPecaEsp, &CondRetEsp);

            if(numLidos != 3)
            {
               return TST_CondRetParm;
            } /* if */
			
			CondRetObtido =
                 PCA_ObterCorPeca(vtPeca[inxPeca], &CorPeca);
			
            if(TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao obter cor da peça.") == TST_CondRetErro)
			{
				return TST_CondRetErro;
			} /* if */

			if(CondRetEsp == PCA_CondRetOK) {
				TST_CompararInt(CorPeca, CorPecaEsp,
				"Erro - valor inserido na peca nao foi obtido corretamente");
			} /* if */

			return TST_CondRetOK;
         } /* fim ativa: Testar Obter Cor Peça */

      /* Testar Destruir Peça */

         else if(strcmp(ComandoTeste , DESTRUIR_PECA_CMD) == 0)
         {

            numLidos = LER_LerParametros("ii" ,
                               &inxPeca, &CondRetEsp);
			
            if(numLidos != 2)
            {
               return TST_CondRetParm;
            } /* if */

			CondRetObtido =
                 PCA_DestruirPeca(&vtPeca[inxPeca]);

            return TST_CompararInt(CondRetEsp , CondRetObtido ,
               "Erro ao destruir peca.");

         } /* fim ativa: Testar Destruir Peça */
		 
      return TST_CondRetNaoConhec;

   } /* fim função: tpca &testar peça */
	


/*****  Código das funções encapsuladas no módulo  *****/

/***********************************************************************
*
*  $FC Função: TPCA - Validar indice de peça
*
***********************************************************************/

   int ValidarInxPeca(int inxPeca , int Modo)
   {

      if((inxPeca <  0)
        || (inxPeca >= DIM_VT_PECA))
      {
         return FALSE;
      } /* if */
         
      if(Modo == VAZIO)
      {
         if(vtPeca[inxPeca] != 0)
         {
            return FALSE;
         } /* if */
      } /* if */
	  else
      {
         if(vtPeca[inxPeca] == 0)
         {
            return FALSE;
         } /* if */
      } /* if */
         
      return TRUE;

   } /* Fim função: TPCA - Validar indice de peça */

/********** Fim do módulo de implementação: TPCA Teste Peça **********/

