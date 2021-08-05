#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int mostraNulo(MAT_tpMatriz *pMatriz)
{
	if(pMatriz == NULL) {
		printf("\nNao encontrado.\n");
		return 1;
	}

	return 0;
}

void mostraCoordenada(MAT_tpMatriz *pMatriz)
{
	MAT_ObterCoordenadas(pMatriz);
}

int main(void)
{
	MAT_tpMatriz *pMatriz = NULL;
	int linhas = 4;
	int colunas = 4;
	char olar = '1';
	char *vagnerField;
	
	if(MAT_CriarMatriz(&pMatriz, linhas, colunas) == MAT_CondRetErroEstrutura)
	{
		printf("\nA estrutura esta errada.\n");
		exit(-1);
	}

	printf("\n\nA matriz %dx%d foi criada.\n", pMatriz->numLinhas, pMatriz->numColunas);
	
	MAT_AdicionarLinha(pMatriz);

	printf("\n\nA matriz %dx%d foi atualizada.\n", pMatriz->numLinhas, pMatriz->numColunas);

	MAT_AdicionarColuna(pMatriz);

	printf("\n\nA matriz %dx%d foi atualizada.\n", pMatriz->numLinhas, pMatriz->numColunas);
	MAT_InserirValor(pMatriz, "Vagner <3");
	MAT_ObterValorCorr(pMatriz, &vagnerField);
	printf("\nVagner deve aparecer aqui: %s", vagnerField);
	MAT_RemoverColuna(pMatriz);
	MAT_RemoverColuna(pMatriz);
	MAT_RemoverColuna(pMatriz);
	MAT_RemoverLinha(pMatriz);
	mostraCoordenada(pMatriz);
	printf("\nUse QWE / AD / ZXC para se movimentar. Tecle zero para sair.\n");

	while(olar != '0')
	{
		scanf(" %c", &olar);

		switch(olar)
		{
			case 'Q': case 'q':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaNoroeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordNoroeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'W': case 'w':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaNorte))
				{
					MAT_IrPara(pMatriz, MAT_CoordNorte);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'E': case 'e':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaNordeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordNordeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'A': case 'a':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaOeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordOeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'D': case 'd':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaLeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordLeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'Z': case 'z':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaSudoeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordSudoeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'X': case 'x':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaSul))
				{
					MAT_IrPara(pMatriz, MAT_CoordSul);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'C': case 'c':
				if(!mostraNulo(pMatriz->pElemCorr->pEntradaSudeste))
				{
					MAT_IrPara(pMatriz, MAT_CoordSudeste);
					mostraCoordenada(pMatriz);
				}
				break;
			case 'S': case 's':
				break;
			default:
				printf("\nErro\n");
				break;
		}
	}

	return 0;
}