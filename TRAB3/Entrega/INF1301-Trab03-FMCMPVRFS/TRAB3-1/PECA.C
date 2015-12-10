/***************************************************************************
*  $MCI Módulo de implementação: Módulo peça
*
*  Arquivo gerado:              PECA.C
*  Letras identificadoras:      PCA
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

#define PECA_OWN
#include "PECA.H"
#undef PECA_OWN

/***********************************************************************
*
*  $TC Tipo de dados: PCA Descritor da peça
*
*
***********************************************************************/

typedef struct PCA_tagPeca {

	PCA_tpCorPeca CorPeca;
	/* Cor da peça */

} PCA_tpPeca;

/*****  Dados encapsulados no módulo  *****/

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: PCA Criar peça
* 
****/
PCA_tpCondRet PCA_CriarPeca(PCA_tpPeca **pPeca, PCA_tpCorPeca CorPeca)
{

	*pPeca = (PCA_tpPeca *) malloc(sizeof(PCA_tpPeca));
	if(*pPeca == NULL)
	{
		return PCA_CondRetFaltouMemoria ;
	} /* if */

	(*pPeca)->CorPeca = CorPeca;

	return PCA_CondRetOK ;

} /* Fim função: PCA Criar peça */

/***************************************************************************
*
*  Função: PCA Obter cor da peça
*  
****/
PCA_tpCondRet PCA_ObterCorPeca(PCA_tpPeca *pPeca, PCA_tpCorPeca *pCorPeca)
{
	if(pPeca == NULL) 
	{
		return PCA_CondRetPecaNaoExiste;
	} /* if */

	*pCorPeca = pPeca->CorPeca;

	return PCA_CondRetOK ;

} /* Fim função: Obter cor da peça */

/***************************************************************************
*
*  Função: PCA Destruir peça
*  
****/
PCA_tpCondRet PCA_DestruirPeca(PCA_tpPeca **pPeca)
{
	if(*pPeca == NULL) 
	{
		return PCA_CondRetPecaNaoExiste;
	} /* if */

	free(*pPeca);
	*pPeca = NULL;

	return PCA_CondRetOK ;

} /* Fim função: PCA Destruir peça */

/********** Fim do módulo de implementação: Módulo peça **********/