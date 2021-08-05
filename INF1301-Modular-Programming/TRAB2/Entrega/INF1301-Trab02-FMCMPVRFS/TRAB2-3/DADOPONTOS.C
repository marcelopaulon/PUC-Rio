/***************************************************************************
*  $MCI Módulo de implementação: Módulo dado de pontos
*
*  Arquivo gerado:              DADOPONTOS.C
*  Letras identificadoras:      DPT
*
*  Projeto: Disciplina INF 1301
*
*  Autores: fmc - Fernanda de Miranda Carvalho
*			mpjv - Marcelo Paulon Jucá Vasconcelos
*			rfss - Renan da Fonte Simas dos Santos
*
*  $HA Histórico de evolução:
*     Versão       Autor          Data         Observações
*       1.00   fmc/mpjv/rfss   13/09/2015 Início do desenvolvimento
*
***************************************************************************/

#include   <malloc.h>
#include   <stdio.h>

#define DADOPONTOS_OWN
#include "DADOPONTOS.H"
#undef DADOPONTOS_OWN

/***********************************************************************
*
*  $TC Tipo de dados: DPT Descritor do dado de pontos
*
*
***********************************************************************/

typedef struct DPT_tagDadoPontos
{

	int Pontuacao;
	/* Pontuação */

	PCA_tpCorPeca CorPeca;
	/* Cor da peça do jogador detentor do dado de pontos */

} DPT_tpDadoPontos;

/*****  Dados encapsulados no módulo  *****/

/*****  Código das funções exportadas pelo módulo  *****/

/***************************************************************************
*
*  Função: DPT Criar dado de pontos
* 
****/
DPT_tpCondRet DPT_CriarDadoPontos(DPT_tpDadoPontos **pDadoPontos)
{
	*pDadoPontos = (DPT_tpDadoPontos *) malloc(sizeof(DPT_tpDadoPontos));
	if(*pDadoPontos == NULL)
	{
		return DPT_CondRetFaltouMemoria ;
	} /* if */

	(*pDadoPontos)->Pontuacao = 1;

	return DPT_CondRetOK ;

} /* Fim função: DPT Criar dado de pontos */

/***************************************************************************
*
*  Função: DPT Atualizar jogador
*  
****/
DPT_tpCondRet DPT_AtualizarJogadorDobra(DPT_tpDadoPontos *pDadoPontos, PCA_tpCorPeca CorPeca)
{
	if(pDadoPontos == NULL) 
	{
		return DPT_CondRetDadoPontosNaoExiste;
	} /* if */

	pDadoPontos->CorPeca = CorPeca;

	return DPT_CondRetOK ;

} /* Fim função: Atualizar jogador */

/***************************************************************************
*
*  Função: DPT Dobrar pontuação da partida
*  
****/
DPT_tpCondRet DPT_DobrarPontuacaoPartida(DPT_tpDadoPontos *pDadoPontos, PCA_tpCorPeca CorPeca)
{
	if(pDadoPontos == NULL) 
	{
		return DPT_CondRetDadoPontosNaoExiste;
	} /* if */

	if(pDadoPontos->CorPeca != CorPeca)
	{
		return DPT_CondRetJogadorNaoPossuiDadoPontos;
	} /* if */

	pDadoPontos->Pontuacao *= 2;

	return DPT_CondRetOK ;
}

/***************************************************************************
*
*  Função: DPT Obter pontuação da partida
*  
****/
DPT_tpCondRet DPT_ObterPontuacaoPartida(DPT_tpDadoPontos *pDadoPontos, int *pPontuacao)
{
	if(pDadoPontos == NULL) 
	{
		return DPT_CondRetDadoPontosNaoExiste;
	} /* if */

	*pPontuacao = pDadoPontos->Pontuacao;

	return DPT_CondRetOK ;
}

/***************************************************************************
*
*  Função: DPT Destruir dado de pontos
*  
****/
DPT_tpCondRet DPT_DestruirDadoPontos(DPT_tpDadoPontos **pDadoPontos)
{
	if(*pDadoPontos == NULL) 
	{
		return DPT_CondRetDadoPontosNaoExiste;
	} /* if */

	free(*pDadoPontos);
	*pDadoPontos = NULL;

	return DPT_CondRetOK;

} /* Fim função: DPT Destruir dado de pontos */

/********** Fim do módulo de implementação: Módulo dado de pontos **********/