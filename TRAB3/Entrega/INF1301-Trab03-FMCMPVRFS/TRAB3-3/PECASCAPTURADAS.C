/***************************************************************************
*  $MCI Módulo de implementação: Módulo peças capturadas
*
*  Arquivo gerado:              PECASCAPTURADAS.C
*  Letras identificadoras:      BAR
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   20/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include   <malloc.h>
#include   <stdio.h>

#define PECASCAPTURADAS_OWN
#include "PECASCAPTURADAS.H"
#undef PECASCAPTURADAS_OWN

#include "PECA.H"

#include "LISTA.H"

/***********************************************************************
*
*  $TC Tipo de dados: BAR Descritor da peça capturadas
*
*
***********************************************************************/

typedef struct BAR_tagPecasCapturadas {

	LIS_tppLista listaPecas;
	/* Lista de peças capturadas */

} BAR_tpPecasCapturadas;

/*****  Dados encapsulados no módulo  *****/

/***** Protótipos das funções encapsuladas no módulo *****/

void RemoverPeca(void *pPeca);

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: BAR Criar lista de peças capturadas
* 
****/
BAR_tpCondRet BAR_CriarListaPecasCapturadas(BAR_tpPecasCapturadas **pPecasCapturadas)
{

	*pPecasCapturadas = (BAR_tpPecasCapturadas *) malloc(sizeof(BAR_tpPecasCapturadas));
	if(*pPecasCapturadas == NULL)
	{
		return BAR_CondRetFaltouMemoria ;
	} /* if */

	(*pPecasCapturadas)->listaPecas = LIS_CriarLista(RemoverPeca);

	return BAR_CondRetOK ;

} /* Fim função: BAR Criar lista de peças capturadas */

/***************************************************************************
*
*  Função: BAR Inserir peça
*  
****/
BAR_tpCondRet BAR_InserirPeca(BAR_tpPecasCapturadas *pPecasCapturadas, PCA_tpPeca *pPeca)
{
	if(pPecasCapturadas == NULL) 
	{
		return BAR_CondRetListaPecasCapturadasNaoExiste;
	} /* if */
	
	LIS_InserirElementoAntes(pPecasCapturadas->listaPecas, pPeca);
	
	return BAR_CondRetOK;

} /* Fim função: BAR Inserir peça */

/***************************************************************************
*
*  Função: BAR Remover peça
*  
****/
BAR_tpCondRet BAR_RemoverPeca(BAR_tpPecasCapturadas *pPecasCapturadas, PCA_tpCorPeca CorPeca, PCA_tpPeca **pPeca)
{
	PCA_tpCorPeca CorPecaTemp;
	PCA_tpPeca * pPecaTemp;

	if(pPecasCapturadas == NULL)
	{
		return BAR_CondRetListaPecasCapturadasNaoExiste;
	} /*if*/

	IrInicioLista(pPecasCapturadas->listaPecas);

	do
	{
		pPecaTemp = (PCA_tpPeca *) LIS_ObterValor(pPecasCapturadas->listaPecas);

		PCA_ObterCorPeca(pPecaTemp, &CorPecaTemp);

		if(CorPecaTemp == CorPeca)
		{
			*pPeca = pPecaTemp;
			LIS_ExcluirElemento(pPecasCapturadas->listaPecas);

			return BAR_CondRetOK;
		} /* if */
	} while(LIS_AvancarElementoCorrente(pPecasCapturadas->listaPecas, 1) == LIS_CondRetOK); /* do */

	return BAR_CondRetPecaNaoExiste;

} /* Fim função: BAR Remover peça */

/***************************************************************************
*
*  Função: BAR Conta peças
*  
****/
BAR_tpCondRet BAR_ContarPecas(BAR_tpPecasCapturadas *pPecasCapturadas, PCA_tpCorPeca CorPeca, int *pContagem)
{
	PCA_tpCorPeca CorPecaTemp;
	PCA_tpPeca *pPecaTemp;

	if(pPecasCapturadas == NULL) 
	{
		return BAR_CondRetListaPecasCapturadasNaoExiste;
	} /* if */

	*pContagem = 0;

	IrInicioLista(pPecasCapturadas->listaPecas);

	if(LIS_ObterValor(pPecasCapturadas->listaPecas) != NULL)
	{
		do
		{
			pPecaTemp = (PCA_tpPeca *) LIS_ObterValor(pPecasCapturadas->listaPecas);

			PCA_ObterCorPeca(pPecaTemp, &CorPecaTemp);

			if(CorPecaTemp == CorPeca)
			{
				(*pContagem)++;
			} /* if */
		} while(LIS_AvancarElementoCorrente(pPecasCapturadas->listaPecas, 1) == LIS_CondRetOK); /* do */
	} /* if */

	return BAR_CondRetOK ;

} /* Fim função: BAR Conta peças */

/***************************************************************************
*
*  Função: BAR Destruir lista de peças capturadas
*  
****/
BAR_tpCondRet BAR_DestruirListaPecasCapturadas(BAR_tpPecasCapturadas **pPecasCapturadas)
{
	PCA_tpPeca *pPecaTemp;

	if(*pPecasCapturadas == NULL) 
	{
		return BAR_CondRetListaPecasCapturadasNaoExiste;
	} /* if */

	IrInicioLista((*pPecasCapturadas)->listaPecas);

	pPecaTemp = (PCA_tpPeca *) LIS_ObterValor((*pPecasCapturadas)->listaPecas);
	
	while(pPecaTemp != NULL)
	{
		PCA_DestruirPeca(&pPecaTemp);
		
		if(LIS_AvancarElementoCorrente((*pPecasCapturadas)->listaPecas, 1) != PCA_CondRetOK)
		{
			break;
		} /* if */

		pPecaTemp = (PCA_tpPeca *) LIS_ObterValor((*pPecasCapturadas)->listaPecas);
	} /* while */

	free(*pPecasCapturadas);
	*pPecasCapturadas = NULL;

	return BAR_CondRetOK ;

} /* Fim função: BAR Destruir lista de peças capturadas */

/*****  Código das funções encapsuladas no módulo  *****/

/***********************************************************************
*
*  $FC Função: Remove peça
*
*  $ED Descrição da função
*     Função chamada ao remover uma peça da lista.
*
***********************************************************************/
void RemoverPeca(PCA_tpPeca *pPeca)
{
	return;
}

/********** Fim do módulo de implementação: Módulo peças capturadas **********/