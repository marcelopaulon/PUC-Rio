/***************************************************************************
*  $MCI Módulo de implementação: Módulo dado
*
*  Arquivo gerado:              DADO.C
*  Letras identificadoras:      DAD
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   12/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include   <malloc.h>
#include   <stdio.h>
#include   <stdlib.h>
#include   <time.h>

#define DADO_OWN
#include "DADO.H"
#undef DADO_OWN

/***********************************************************************
*
*  $TC Tipo de dados: DAD Descritor do dado
*
*
***********************************************************************/

typedef struct DAD_tagDado {

	int ValorDado1;
	/* Valor do dado 1 */

	int ValorDado2;
	/* Valor do dado 2 */

} DAD_tpDado;

/*****  Dados encapsulados no módulo  *****/

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: DAD Criar par de dados
* 
****/
DAD_tpCondRet DAD_CriarDados(DAD_tpDado **pDados)
{
	*pDados = (DAD_tpDado *) malloc(sizeof(DAD_tpDado));
	if(*pDados == NULL)
	{
		return DAD_CondRetFaltouMemoria ;
	} /* if */

	(*pDados)->ValorDado1 = -1;
	(*pDados)->ValorDado2 = -1;

	return DAD_CondRetOK ;

} /* Fim função: PCA Criar par de dados */

/***************************************************************************
*
*  Função: DAD Jogar dados
*  
****/
DAD_tpCondRet DAD_JogarDados(DAD_tpDado *pDados)
{
	if(pDados == NULL) 
	{
		return DAD_CondRetDadoNaoExiste;
	} /* if */

	srand((unsigned int) time(0));

	rand();

	pDados->ValorDado1 = (rand() % 6 + 1);
	pDados->ValorDado2 = (rand() % 6 + 1);

	return DAD_CondRetOK ;

} /* Fim função: DAD Jogar dados */

/***************************************************************************
*
*  Função: DAD Obter valores
*  
****/
DAD_tpCondRet DAD_ObterValores(DAD_tpDado *pDados, int *pValorDado1, int *pValorDado2)
{
	if(pDados == NULL) 
	{
		return DAD_CondRetDadoNaoExiste;
	} /* if */

	*pValorDado1 = pDados->ValorDado1;
	*pValorDado2 = pDados->ValorDado2;

	if(pDados->ValorDado1 < 0 || pDados->ValorDado2 < 0)
	{
		return DAD_CondRetDadoNaoLancado;
	} /* if */

	return DAD_CondRetOK ;

} /* Fim função: DAD Obter valores */

/***************************************************************************
*
*  Função: DAD Destruir dados
*  
****/
DAD_tpCondRet DAD_DestruirDados(DAD_tpDado **pDados)
{
	if(*pDados == NULL) 
	{
		return DAD_CondRetDadoNaoExiste;
	} /* if */

	free(*pDados);
	*pDados = NULL;

	return DAD_CondRetOK ;

} /* Fim função: DAD Destruir dados */

/********** Fim do módulo de implementação: Módulo dado **********/