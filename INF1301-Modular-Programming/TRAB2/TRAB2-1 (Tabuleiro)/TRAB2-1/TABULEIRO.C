/***************************************************************************
*  $MCI Módulo de implementação: Módulo tabuleiro
*
*  Arquivo gerado:              TABULEIRO.C
*  Letras identificadoras:      TAB
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   02/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include   <malloc.h>
#include   <stdio.h>

#include "LISTA.H"
#include "PECA.H"

#define TABULEIRO_OWN
#include "TABULEIRO.H"
#undef TABULEIRO_OWN

/***********************************************************************
*
*  $TC Tipo de dados: TAB Descritor do tabuleiro
*
*
*  $ED Descrição do tipo
*     Descreve a organização do tabuleiro
*
***********************************************************************/
typedef struct tgNoTabuleiro tpNoTabuleiro;
struct tgNoTabuleiro {

	int NumeroCasa;
	/* Número da casa (nó) corrente */

	LIS_tppLista Pecas;
	/* Lista das peças na casa (nó) corrente */

};

/***********************************************************************
*
*  $TC Tipo de dados: TAB Descritor da cabeça do tabuleiro
*
*
***********************************************************************/

typedef struct TAB_tagTabuleiro 
{

	LIS_tppLista ListaCasas;
	/* Ponteiro para a lista de casas do tabuleiro */

} TAB_tpTabuleiro;

/*****  Dados encapsulados no módulo  *****/

/***** Protótipos das funções encapsuladas no módulo *****/

tpNoTabuleiro * ObtemCasa(TAB_tpTabuleiro *pTabuleiro, int NumeroCasa);

void LiberaPecas(LIS_tppLista Pecas);

void ExcluirCasa(void *pCasa);

void ExcluirPeca(void *pPeca);

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: TAB Criar Tabuleiro
* 
****/
TAB_tpCondRet TAB_CriarTabuleiro(TAB_tpTabuleiro **pTabuleiro)
{
	tpNoTabuleiro *pCasaTemp;
	/* Ponteiro auxiliar que percorre as casas do tabuleiro, durante a criação do mesmo */

	int CasaAtual; 
	/* Contador auxiliar que percorre as casas do tabuleiro, durante a criação do mesmo */

	*pTabuleiro = (TAB_tpTabuleiro *) malloc(sizeof(TAB_tpTabuleiro));
	if(*pTabuleiro == NULL)
	{
		return TAB_CondRetFaltouMemoria;
	} /* if */

	(*pTabuleiro)->ListaCasas = LIS_CriarLista(ExcluirCasa);

	for(CasaAtual = 1; CasaAtual <= 24; CasaAtual++)
	{
		pCasaTemp = (tpNoTabuleiro *) malloc (sizeof(tpNoTabuleiro));

		if(pCasaTemp == NULL)
		{
			return TAB_CondRetFaltouMemoria;
		} /* if */

		pCasaTemp->NumeroCasa = CasaAtual;
		pCasaTemp->Pecas = LIS_CriarLista(ExcluirPeca);

		if(LIS_InserirElementoAntes((*pTabuleiro)->ListaCasas, pCasaTemp) == LIS_CondRetFaltouMemoria)
		{
			return TAB_CondRetFaltouMemoria;
		} /* if */
	} /* for */

	return TAB_CondRetOK;
} /* Fim função: TAB Criar Tabuleiro */

/***************************************************************************
*
*  Função: TAB Inserir Peça
*  
****/
TAB_tpCondRet TAB_InserirPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpPeca *pPeca, int NumeroCasa)
{
	tpNoTabuleiro * pCasa;

	if(pTabuleiro == NULL)
	{
		return TAB_CondRetTabuleiroNaoExiste;
	} /* if */

	pCasa = ObtemCasa(pTabuleiro, NumeroCasa);

	if(pCasa == NULL)
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	if(LIS_InserirElementoAntes(pCasa->Pecas, pPeca) == LIS_CondRetFaltouMemoria)
	{
		return TAB_CondRetFaltouMemoria;
	} /* if */

	return TAB_CondRetOK;	
} /* Fim função: TAB Inserir Peça */

/***************************************************************************
*
*  Função: TAB Remover Peça
*  
****/
TAB_tpCondRet TAB_RemoverPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpCorPeca CorPeca, PCA_tpPeca **pPeca, int NumeroCasa)
{
	PCA_tpCorPeca pCorPecaTemp;
	PCA_tpPeca * pPecaTemp;
	tpNoTabuleiro * pCasa;

	if(pTabuleiro == NULL)
	{
		return TAB_CondRetTabuleiroNaoExiste;
	} /* if */

	pCasa = ObtemCasa(pTabuleiro, NumeroCasa);

	if(pCasa == NULL)
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	IrInicioLista(pCasa->Pecas);

	do {
		pPecaTemp = (PCA_tpPeca *) LIS_ObterValor(pCasa->Pecas);
		if(pPecaTemp == NULL)
		{
			return TAB_CondRetPecaNaoExiste;
		} /* if */

		PCA_ObterCorPeca(pPecaTemp, &pCorPecaTemp);
		if(pCorPecaTemp == CorPeca)
		{
			*pPeca = pPecaTemp;
			LIS_ExcluirElemento(pCasa->Pecas);
			return TAB_CondRetOK;
		} /* if */
	} /* do */
	while(LIS_AvancarElementoCorrente(pCasa->Pecas, 1) == LIS_CondRetOK);

	return TAB_CondRetPecaNaoExiste;
} /* Fim função: TAB Remover Peça */

/***************************************************************************
*
*  Função: TAB Mover Peça
* 
****/
TAB_tpCondRet TAB_MoverPeca(TAB_tpTabuleiro *pTabuleiro, PCA_tpCorPeca CorPeca, int NumeroCasaOrigem, int NumeroCasaDestino)
{
	PCA_tpPeca * pPecaTemp;
	TAB_tpCondRet CondRetRemovePeca, CondRetInserePeca;
	tpNoTabuleiro * pCasa;

	if(pTabuleiro == NULL)
	{
		return TAB_CondRetTabuleiroNaoExiste;
	} /* if */

	pCasa = ObtemCasa(pTabuleiro, NumeroCasaDestino);

	if(pCasa == NULL)
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	CondRetRemovePeca = TAB_RemoverPeca(pTabuleiro, CorPeca, &pPecaTemp, NumeroCasaOrigem);

	if(CondRetRemovePeca == TAB_CondRetCasaNaoExiste) 
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	if(CondRetRemovePeca == TAB_CondRetPecaNaoExiste)
	{
		return TAB_CondRetPecaNaoExiste;
	} /* if */

	CondRetInserePeca = TAB_InserirPeca(pTabuleiro, pPecaTemp, NumeroCasaDestino);

	if(CondRetInserePeca == TAB_CondRetCasaNaoExiste) 
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	if(CondRetInserePeca == TAB_CondRetFaltouMemoria)
	{
		return TAB_CondRetFaltouMemoria;
	} /* if */

	return TAB_CondRetOK;
} /* Fim função: TAB Mover Peça */

/***************************************************************************
*
*  Função: TAB Contar Peças
* 
****/
TAB_tpCondRet TAB_ContarPecas(TAB_tpTabuleiro *pTabuleiro, int NumeroCasa, PCA_tpCorPeca CorPeca, int *pContagem)
{
	tpNoTabuleiro * pCasa;
	PCA_tpPeca * pPecaTemp;
	PCA_tpCorPeca pCorPecaTemp;
	*pContagem = 0;
		
	if(pTabuleiro == NULL)
	{
		return TAB_CondRetTabuleiroNaoExiste;
	} /* if */

	pCasa = ObtemCasa(pTabuleiro, NumeroCasa);

	if(pCasa == NULL)
	{
		return TAB_CondRetCasaNaoExiste;
	} /* if */

	IrInicioLista(pCasa->Pecas);

	do {
		pPecaTemp = (PCA_tpPeca *) LIS_ObterValor(pCasa->Pecas);
		if(pPecaTemp == NULL)
		{
			return TAB_CondRetPecaNaoExiste;
		} /* if */

		PCA_ObterCorPeca(pPecaTemp, &pCorPecaTemp);
		if(pCorPecaTemp == CorPeca)
		{
			(*pContagem)++;
		} /* if */
	} /* do */ 
	while(LIS_AvancarElementoCorrente(pCasa->Pecas, 1) == LIS_CondRetOK);
	
	return TAB_CondRetOK;
} /* Fim função: TAB Contar Peças */

/***************************************************************************
*
*  Função: TAB Destruir Tabuleiro
* 
****/
TAB_tpCondRet TAB_DestruirTabuleiro(TAB_tpTabuleiro **pTabuleiro)
{
	if(*pTabuleiro == NULL)
	{
		return TAB_CondRetTabuleiroNaoExiste;
	} /* if */

	LIS_DestruirLista((*pTabuleiro)->ListaCasas);

	free(*pTabuleiro);
	*pTabuleiro = NULL;

	return TAB_CondRetOK;

} /* Fim função: TAB Destruir Tabuleiro */

/*****  Código das funções encapsuladas no módulo  *****/

/***********************************************************************
*
*  $FC Função: Obtém casa do tabuleiro
*
*  $ED Descrição da função
*     Obtém uma casa do tabuleiro.
*
*  $FV Valor retornado
*     Ponteiro para a casa.
*     NULL caso a casa não exista.
*
***********************************************************************/
tpNoTabuleiro * ObtemCasa(TAB_tpTabuleiro *pTabuleiro, int NumeroCasa)
{
	tpNoTabuleiro * pNoTemp;

	IrInicioLista(pTabuleiro->ListaCasas);

	pNoTemp = (tpNoTabuleiro *) LIS_ObterValor(pTabuleiro->ListaCasas);

	if(pNoTemp->NumeroCasa == NumeroCasa)
	{
		return pNoTemp;
	} /* if */

	while(LIS_AvancarElementoCorrente(pTabuleiro->ListaCasas, 1) == LIS_CondRetOK)
	{
		pNoTemp = (tpNoTabuleiro *) LIS_ObterValor(pTabuleiro->ListaCasas);

		if(pNoTemp->NumeroCasa == NumeroCasa)
		{
			return pNoTemp;
		} /* if */
	} /* while */

	return NULL;
}

/***********************************************************************
*
*  $FC Função: Libera peças
*
*  $ED Descrição da função
*     Libera uma lista de peças.
*
***********************************************************************/
void LiberaPecas(LIS_tppLista Pecas)
{
	PCA_tpPeca * pPecaTemp;

	IrInicioLista(Pecas);

	do
	{
		pPecaTemp = (PCA_tpPeca *) LIS_ObterValor(Pecas);
		PCA_DestruirPeca(&pPecaTemp);
	} /* do */
	while(LIS_ExcluirElemento(Pecas) == LIS_CondRetOK);

	free(Pecas);

	Pecas = NULL;
}

/***********************************************************************
*
*  $FC Função: Função chamada ao remover uma Peça de uma lista
*
*  $ED Descrição da função
*     Função chamada ao remover uma peça de uma lista.
*
*  $EP Parâmetros
*     $P pPeca - é o ponteiro para a peça armazenada
*				 na lista.
*
***********************************************************************/
void ExcluirPeca(void *pPeca)
{
	return;
}

/***********************************************************************
*
*  $FC Função: Função chamada ao remover uma Casa de uma lista
*
*  $ED Descrição da função
*     Função chamada ao remover uma casa de uma lista.
*
*  $EP Parâmetros
*     $P pCasa - é o ponteiro para a casa armazenada
*				 na lista.
*
***********************************************************************/
void ExcluirCasa(void *pCasa)
{
	tpNoTabuleiro * pCasaTemp = (tpNoTabuleiro *) pCasa;
	LiberaPecas(pCasaTemp->Pecas);
	free(pCasa);
}

/********** Fim do módulo de implementação: Módulo tabuleiro **********/