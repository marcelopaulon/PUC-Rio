/***************************************************************************
*  $MCI Módulo de implementação: Módulo peças finalizadas
*
*  Arquivo gerado:              PECASFINALIZADAS.C
*  Letras identificadoras:      PCF
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   17/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include   <malloc.h>
#include   <stdio.h>

#define PECASFINALIZADAS_OWN
#include "PECASFINALIZADAS.H"
#undef PECASFINALIZADAS_OWN

#include "PECA.H"

#include "LISTA.H"

/***********************************************************************
*
*  $TC Tipo de dados: PCF Descritor da peça finalizada
*
*
***********************************************************************/

typedef struct PCF_tagPecasFinalizadas {

	LIS_tppLista listaPecasBrancas;
	/* Lista de peças brancas finalizadas */

	LIS_tppLista listaPecasPretas;
	/* Lista de peças pretas finalizadas */

} PCF_tpPecasFinalizadas;

/*****  Dados encapsulados no módulo  *****/

/***** Protótipos das funções encapsuladas no módulo *****/

void LiberarPeca(void *pPeca);

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: PCF Criar lista de peças finalizadas
* 
****/
PCF_tpCondRet PCF_CriarListaPecasFinalizadas(PCF_tpPecasFinalizadas **pPecasFinalizadas)
{

	*pPecasFinalizadas = (PCF_tpPecasFinalizadas *) malloc(sizeof(PCF_tpPecasFinalizadas));
	if(*pPecasFinalizadas == NULL)
	{
		return PCF_CondRetFaltouMemoria ;
	} /* if */

	(*pPecasFinalizadas)->listaPecasBrancas = LIS_CriarLista(LiberarPeca);
	(*pPecasFinalizadas)->listaPecasPretas = LIS_CriarLista(LiberarPeca);

	return PCF_CondRetOK ;

} /* Fim função: PCF Criar lista de peças finalizadas */

/***************************************************************************
*
*  Função: PCF Inserir peça
*  
****/
PCF_tpCondRet PCF_InserirPeca(PCF_tpPecasFinalizadas *pPecasFinalizadas, PCA_tpPeca *pPeca)
{
	PCA_tpCorPeca CorPeca;

	if(pPecasFinalizadas == NULL) 
	{
		return PCF_CondRetListaPecasFinalizadasNaoExiste;
	} /* if */

	PCA_ObterCorPeca(pPeca, &CorPeca);	
	
	if(CorPeca == PCA_PecaBranca)
	{
		LIS_InserirElementoAntes(pPecasFinalizadas->listaPecasBrancas, pPeca);
	} /* if */
	else
	{
		LIS_InserirElementoAntes(pPecasFinalizadas->listaPecasPretas, pPeca);
	} /* else */
	
	return PCF_CondRetOK;

} /* Fim função: PCF Inserir peça */

/***************************************************************************
*
*  Função: PCF Conta peças
*  
****/
PCF_tpCondRet PCF_ContarPecas(PCF_tpPecasFinalizadas *pPecasFinalizadas, PCA_tpCorPeca CorPeca, int *pContagem)
{
	LIS_tppLista ListaPecas;

	if(pPecasFinalizadas == NULL) 
	{
		return PCF_CondRetListaPecasFinalizadasNaoExiste;
	} /* if */

	*pContagem = 0;

	if(CorPeca == PCA_PecaBranca)
	{
		ListaPecas = pPecasFinalizadas->listaPecasBrancas;
	} /* if */
	else 
	{
		ListaPecas = pPecasFinalizadas->listaPecasPretas;
	} /* else */

	IrInicioLista(ListaPecas);

	if(LIS_ObterValor(ListaPecas) != NULL)
	{
		do
		{
			(*pContagem)++;
		} while(LIS_AvancarElementoCorrente(ListaPecas, 1) == LIS_CondRetOK); /* do */
	} /* if */

	return PCF_CondRetOK ;

} /* Fim função: PCF Conta peças */

/***************************************************************************
*
*  Função: PCF Destruir lista de peças finalizadas
*  
****/
PCF_tpCondRet PCF_DestruirListaPecasFinalizadas(PCF_tpPecasFinalizadas **pPecasFinalizadas)
{
	if(*pPecasFinalizadas == NULL || ((*pPecasFinalizadas)->listaPecasBrancas == NULL && (*pPecasFinalizadas)->listaPecasPretas == NULL)) 
	{
		return PCF_CondRetListaPecasFinalizadasNaoExiste;
	} /* if */

	if((*pPecasFinalizadas)->listaPecasBrancas != NULL)
	{
		LIS_DestruirLista((*pPecasFinalizadas)->listaPecasBrancas);
	} /* if */

	if((*pPecasFinalizadas)->listaPecasPretas != NULL)
	{
		LIS_DestruirLista((*pPecasFinalizadas)->listaPecasPretas);
	} /* if */

	free(*pPecasFinalizadas);
	*pPecasFinalizadas = NULL;

	return PCF_CondRetOK ;

} /* Fim função: PCF Destruir lista de peças finalizadas */

/*****  Código das funções encapsuladas no módulo  *****/

/***********************************************************************
*
*  $FC Função: Libera peça
*
*  $ED Descrição da função
*     Libera uma peça.
*
***********************************************************************/
void LiberarPeca(PCA_tpPeca *pPeca)
{
	PCA_DestruirPeca(&pPeca);
}

/********** Fim do módulo de implementação: Módulo peças finalizadas **********/