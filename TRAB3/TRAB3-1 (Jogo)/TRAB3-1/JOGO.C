/***************************************************************************
*  $MCI Módulo de implementação: Módulo jogo
*
*  Arquivo gerado:              JOGO.C
*  Letras identificadoras:      JGO
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
#include   <windows.h>
#include   <mmsystem.h>
#include   <locale.h>
#include   <conio.h>
#include   <ctype.h>
#include   <time.h>
#include   <math.h>

#define JOGO_OWN
#include "JOGO.H"
#undef JOGO_OWN

#include "LISTA.H"

#include "TABULEIRO.H"
#include "DADO.H"
#include "DADOPONTOS.H"
#include "PECASFINALIZADAS.H"
#include "PECASCAPTURADAS.H"

#pragma once

#define false   0
#define true    1

#define bool int

#define SAIR_CMD '0'
#define NOVO_JOGO_CMD '1'
#define CARREGAR_JOGO_CMD '2'
#define CREDITOS_CMD '3'

/***********************************************************************
*
*  $TC Tipo de dados: DAD Descritor do jogo
*
*
***********************************************************************/

typedef struct JGO_tagJogo {

	TAB_tpTabuleiro *pTabuleiro;
	/* Ponteiro para o Tabuleiro */

	DPT_tpDadoPontos *pDadoPontos;
	/* Ponteiro para o Dado de Pontos */

	DAD_tpDado *pDados;
	/* Ponteiro para os Dados */

	BAR_tpPecasCapturadas *pPecasCapturadas;
	/* Ponteiro para a lista de Peças Capturadas */

	PCF_tpPecasFinalizadas *pPecasFinalizadas;
	/* Ponteiro para a lista de Peças Finalizadas */

	PCA_tpCorPeca JogadorAtual;
	/* Jogador Atual */

	char *NomeJogadorPecasBrancas;
	/* Nome do Jogador cujas peças são da cor branca */

	int PontuacaoAcumuladaJogadorPecasBrancas;
	/* Pontuação acumulada do jogador cujas peças são de cor branca */

	int PontuacaoAcumuladaJogadorPecasPretas;
	/* Pontuação acumulada do jogador cujas peças são de cor preta */

	char *NomeJogadorPecasPretas;
	/* Nome do Jogador cujas peças são da cor preta */

	bool PrimeiraDobraPartidaRealizada;
	/* Flag que indica se a primeira dobra já foi realizada */

	bool PartidaTerminouDobra;
	/* Indica se a partida terminou por conta de uma recusa de dobra */

} JGO_tpJogo;

typedef enum {

	CondRetComandoOK,
	/* Executou correto */

	CondRetComandoErro,
	/* Executou com erro */

	CondRetComandoSair,
	/* Comando sair */

	CondRetComandoSalvar,
	/* Comando salvar */

	CondRetComandoDobrar
	/* Comando dobrar */

} tpCondRetComando;

static int CorFundo = 00;

static LIS_tppLista pListaJogo;

/*****  Dados encapsulados no módulo  *****/

void LimparBufferTeclado();

void ZerarVetor(int *Vetor, int TamanhoVetor);

void InserirPecasVetor(TAB_tpTabuleiro *pTabuleiro, int VetorCasas[24], PCA_tpCorPeca CorPeca);

void TocarMusicaPrincipal();

void PararMusicaPrincipal();

void TocarMusicaCreditos();

void PararMusicaCreditos();

void TocarEfeitoDado();

void PararEfeitoDado();

void ImprimirDados(int ExibicaoDados[4]);

void AtualizarCorCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores);

void ImprimirBordaCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores);

void ImprimirNumeroCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores);

void ImprimirCabecalhoCasasSuperiores(HANDLE hConsole, int NumeroPrimeiraCasa, int NumeroUltimaCasa);

void ImprimirCabecalhoCasasInferiores(HANDLE hConsole, int NumeroPrimeiraCasa, int NumeroUltimaCasa);

void ImprimirPeca(HANDLE hConsole, PCA_tpCorPeca CorPeca);

void ImprimirCasas(HANDLE hConsole, TAB_tpTabuleiro *pTabuleiro, int VetorContaPecasBrancas[24], int VetorContaPecasPretas[24], int VetorContaPecasAdicionadas[24], bool CasasSuperiores);

void AdicionarStringAntes(char* StringOriginal, const char* StringAPreceder);

void ImprimirCasasListaPecasCapturadas(BAR_tpPecasCapturadas *pPecasCapturadas);

void ImprimirPecasCapturadasEFinalizadas(BAR_tpPecasCapturadas *pPecasCapturadas,  PCF_tpPecasFinalizadas *pPecasFinalizadas);

void ImprimirTabuleiro(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

void ImprimirMatrizDeString(int LinhaInicio, int LinhaFim, int ColunaInicio, int ColunaFim, char Matriz[11][5][21]);

void ImprimirCabecalhoAnimado(float MultiplicadorVelocidade);

char* GerarStringAleatoria(size_t TamanhoString);

void AnimarTextoAleatorio(int TamanhoString, int EspacamentoInicio);

void CarregarTelaInicial();

void MostraCreditos();

bool ObterSave(char *NomeArquivo);

void RecuperarJogo(FILE *pArquivo);

void CarregarJogo();

void ProcessaComando(int Comando);

void DestruirPecasTabuleiro(TAB_tpTabuleiro *pTabuleiro);

void DestruirPartida(JGO_tpJogo *pJogo);

void DestruirListaJogo(void *pElemento);

void DestruirJogo(JGO_tpJogo *pJogo);

bool PartidaTerminou(JGO_tpJogo *pJogo);

bool JogadasReentradaDisponiveis(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

int SomarVetorInteiros(int *Vetor, int NumeroPosicoes);

bool JogadorAtualPodeFinalizarPecas(JGO_tpJogo *pJogo);

bool JogadasDisponiveis(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

bool SairJogo(JGO_tpJogo *pJogo);

bool ValidarMovimentoPeca(TAB_tpCondRet CondicaoRetornoTabuleiro);

tpCondRetComando LeNumeroInteiro(int *pResultadoLeitura);

tpCondRetComando LeCasa(int *pNumeroCasa);

void SalvarJogo(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

void DobrarPartida(JGO_tpJogo *pJogo);

bool ProcessarJogada(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

bool ProcessarRodada(JGO_tpJogo *pJogo, int ExibicaoDados[4], bool PartidaIniciada);

bool JogarDados(DAD_tpDado *pDados, int ExibicaoDados[4]);

bool ProcessarPartida(JGO_tpJogo *pJogo, int ExibicaoDados[4]);

void ProcessarResultadoPartida(JGO_tpJogo *pJogo);

bool CriarEstruturasPartida(JGO_tpJogo *pJogo);

bool IniciarNovaPartida(JGO_tpJogo *pJogo);

bool IniciarPartidaExistente(JGO_tpJogo *pJogo, int PontuacaoAtual, int ExibicaoDados[4]);

void CriarJogo(char NomeJogadorPecasBrancas[80], char NomeJogadorPecasPretas[80]);

void CarregarTelaNovoJogo();

/*****  Código das funções encapsuladas pelo módulo  *****/

/***********************************************************************
*
*  $FC Função: Limpar o buffer do teclado
*
*  $ED Descrição da função
*     Limpa o buffer de entrada (stdin).
*
***********************************************************************/
void LimparBufferTeclado()
{
	fflush(stdin);
} /* Fim função: Limpar o buffer do teclado */

/***********************************************************************
*
*  $FC Função: Zerar vetor
*
*  $ED Descrição da função
*     Preenche todas as posições de um vetor com o valor 0.
*
*  $EP Parâmetros
*     $P Vetor - ponteiro para o vetor a ser zerado
*     $P TamanhoVetor - número de posições do vetor a serem zeradas
*
***********************************************************************/
void ZerarVetor(int *Vetor, int TamanhoVetor)
{
	int i;

	for (i = 0; i < TamanhoVetor; i++)
	{
		Vetor[i] = 0;
	} /* for */
} /* Fim função: Zerar vetor */

/***********************************************************************
*
*  $FC Função: Inserir peças no vetor
*
*  $ED Descrição da função
*     Insere peças no vetor pTabuleiro.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro aonde as peças serão inseridas
*     $P VetorCasas - vetor com a quantidade de peças para inserir em cada casa
*     $P CorPeca - cor da peça a ser inserida
*
***********************************************************************/
void InserirPecasVetor(TAB_tpTabuleiro *pTabuleiro, int VetorCasas[24], PCA_tpCorPeca CorPeca)
{
	int ContadorCasa, ContadorPeca;
	PCA_tpPeca *pPeca;

	for (ContadorCasa = 0; ContadorCasa < 24; ContadorCasa++)
	{
		for (ContadorPeca = 0; ContadorPeca < VetorCasas[ContadorCasa]; ContadorPeca++)
		{
			PCA_CriarPeca(&pPeca, CorPeca);
			TAB_InserirPeca(pTabuleiro, pPeca, ContadorCasa + 1);
		} /* for */
	} /* for */
} /* Fim função: Inserir peças no vetor */

#pragma region SFX

/***********************************************************************
*
*  $FC Função: Tocar música principal
*
*  $ED Descrição da função
*     Reproduz a música do menu principal (main.mp3).
*
***********************************************************************/
void TocarMusicaPrincipal()
{
	mciSendStringA("open sfx\\main.mp3 type mpegvideo", NULL, 0, 0);
	mciSendStringA("play sfx\\main.mp3", NULL, 0, 0);
} /* Fim função: Tocar música principal */

/***********************************************************************
*
*  $FC Função: Parar música principal
*
*  $ED Descrição da função
*     Para a execução da musica do menu principal (main.mp3).
*
***********************************************************************/
void PararMusicaPrincipal()
{
	mciSendStringA("close sfx\\main.mp3", NULL, 0, 0);
} /* Fim função: Parar música principal */

/***********************************************************************
*
*  $FC Função: Tocar música dos créditos
*
*  $ED Descrição da função
*     Reproduz a música da tela de créditos (credits.mp3).
*
***********************************************************************/
void TocarMusicaCreditos()
{
	mciSendStringA("open sfx\\credits.mp3 type mpegvideo", NULL, 0, 0);
	mciSendStringA("play sfx\\credits.mp3", NULL, 0, 0);
} /* Fim função: Tocar música dos créditos */

/***********************************************************************
*
*  $FC Função: Parar música dos créditos
*
*  $ED Descrição da função
*     Para a execução da música da tela de créditos (credits.mp3).
*
***********************************************************************/
void PararMusicaCreditos()
{
	mciSendStringA("close sfx\\credits.mp3", NULL, 0, 0);
} /* Fim função: Parar música dos créditos */

/***********************************************************************
*
*  $FC Função: Tocar efeito de dado
*
*  $ED Descrição da função
*     Reproduz arquivo de áudio com som de dados sendo jogados (dicefix.mp3).
*
***********************************************************************/
void TocarEfeitoDado()
{
	mciSendStringA("open sfx\\dicefx.mp3 type mpegvideo", NULL, 0, 0);
	mciSendStringA("play sfx\\dicefx.mp3", NULL, 0, 0);
} /* Fim função: Tocar efeito de dado */

/***********************************************************************
*
*  $FC Função: Parar efeito de dado
*
*  $ED Descrição da função
*     Para a execução de arquivo de áudio com som de dados sendo jogados (dicefix.mp3).
*
***********************************************************************/
void PararEfeitoDado()
{
	mciSendStringA("close sfx\\dicefx.mp3", NULL, 0, 0);
} /* Fim função: Parar efeito de dado */

#pragma endregion

#pragma region Interface gráfica

/***********************************************************************
*
*  $FC Função: Imprimir dados
*
*  $ED Descrição da função
*     Imprime, em ASCII, imagens representando as posições do dado na tela
*
*
*  $EP Parâmetros
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
void ImprimirDados(int ExibicaoDados[4])
{
	char *StringDados;

	int QuantidadeEspacos = 38;

	char Dados[5][7][10] =
	{
		{ " _______ ", " _______ ", " _______ ", " _______ ", " _______ ", " _______ ", " _______ " },  
		{ "|       |", "|       |", "| o     |", "| o     |", "| o   o |", "| o   o |", "|  o o  |" },
		{ "|       |", "|   o   |", "|       |", "|   o   |", "|       |", "|   o   |", "|  o o  |" },
		{ "|       |", "|       |", "|     o |", "|     o |", "| o   o |", "| o   o |", "|  o o  |" },
		{ "'-------'", "'-------'", "'-------'", "'-------'", "'-------'", "'-------'", "'-------'" }
	};
		
	int ContadorLinhas, ContadorEspacos;
	
	StringDados = (char *)malloc(1024);

	if (StringDados == NULL)
	{
		printf("[ERRO] - Erro de alocação de memória");
		return;
	}

	strcpy(StringDados, "");

	if (ExibicaoDados[0] < 0 || ExibicaoDados[1] < 0 || ExibicaoDados[0] > 6 || ExibicaoDados[1] > 6)
	{
		printf("[ERRO] - Valor de dado inválido");
		return;
	}

	if(ExibicaoDados[2] >= 0 && ExibicaoDados[3] >= 0 && ExibicaoDados[2] <= 6 && ExibicaoDados[3] <= 6)
	{
		QuantidadeEspacos = 26;
	}

	for (ContadorLinhas = 0; ContadorLinhas < 5; ContadorLinhas++)
	{
		for (ContadorEspacos = 0; ContadorEspacos < QuantidadeEspacos; ContadorEspacos++)
		{
			strcat(StringDados, " ");
		} /* for */

		strcat(StringDados, Dados[ContadorLinhas][ExibicaoDados[0]]);
		strcat(StringDados, " ");
		strcat(StringDados, Dados[ContadorLinhas][ExibicaoDados[1]]);
		
		if(ExibicaoDados[2] >= 0 && ExibicaoDados[3] >= 0 && ExibicaoDados[2] <= 6 && ExibicaoDados[3] <= 6)
		{
			strcat(StringDados, " ");
			strcat(StringDados, Dados[ContadorLinhas][ExibicaoDados[2]]);
			strcat(StringDados, " ");
			strcat(StringDados, Dados[ContadorLinhas][ExibicaoDados[3]]);
		}

		strcat(StringDados, "\n");
	}

	printf("%s", StringDados);

	free(StringDados);
} /* Fim função: Imprimir dados */

/***********************************************************************
*
*  $FC Função: Atualizar cor da casa
*
*  $ED Descrição da função
*     Pinta as casas presentes no tabuleiro
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P PosicaoCasa - número representando no tabuleiro a casa a ser pintada
*     $P CasasSuperiores - bool indicando se a casa está na parte de cima do tabuleiro (caso esteja, é verdadeiro)
*
***********************************************************************/
void AtualizarCorCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores)
{
	int CorCasaVerde = 48;
	int CorCasaRoxa = 95;

	if ((PosicaoCasa % 2 == 0 && CasasSuperiores == true) || (PosicaoCasa % 2 != 0 && CasasSuperiores == false))
	{
		SetConsoleTextAttribute(hConsole, CorCasaVerde);
	} /* if */
	else
	{
		SetConsoleTextAttribute(hConsole, CorCasaRoxa);
	} /* else */
} /* Fim função: Atualizar cor da casa */

/***********************************************************************
*
*  $FC Função: Imprimir borda da casa
*
*  $ED Descrição da função
*     Imprime a borda das casas do tabuleiro.
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P PosicaoCasa - número representando no tabuleiro a casa cuja borda será impressa
*     $P CasasSuperiores - bool indicando se a casa está na parte de cima do tabuleiro (caso esteja, é verdadeiro)
*
***********************************************************************/
void ImprimirBordaCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores)
{
	AtualizarCorCasa(hConsole, PosicaoCasa, CasasSuperiores);

	printf("-------");
	SetConsoleTextAttribute(hConsole, CorFundo);
	printf(" ");
} /* Fim função: Imprimir borda da casa */

/***********************************************************************
*
*  $FC Função: Imprimir número da casa
*
*  $ED Descrição da função
*     Imprime o número de uma casa do tabuleiro no tabuleiro.
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P PosicaoCasa - número representando no tabuleiro a casa cujo número será impresso
*     $P CasasSuperiores - valor indicando se a casa está na parte de cima do tabuleiro (caso esteja, é verdadeiro)
*
***********************************************************************/
void ImprimirNumeroCasa(HANDLE hConsole, int PosicaoCasa, bool CasasSuperiores)
{
	AtualizarCorCasa(hConsole, PosicaoCasa, CasasSuperiores);

	if (PosicaoCasa < 10)
	{
		printf("|  %d  |", PosicaoCasa);
	} /* if */
	else
	{
		printf("| %d  |", PosicaoCasa);
	} /* else */

	SetConsoleTextAttribute(hConsole, CorFundo);
	printf(" ");
} /* Fim função: Imprimir número da casa */

/***********************************************************************
*	
*  $FC Função: Imprimir cabeçalhos das casas superiores do tabuleiro
*
*  $ED Descrição da função
*     Imprime cabeçalhos das casas superiores do tabuleiro 
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P NumeroPrimeiraCasa - número da primeira casa a ser impressa
*     $P NumeroUltimaCasa - número da última casa a ser impressa
*
***********************************************************************/
void ImprimirCabecalhoCasasSuperiores(HANDLE hConsole, int NumeroPrimeiraCasa, int NumeroUltimaCasa)
{
	int PosicaoCasa;

	for (PosicaoCasa = NumeroPrimeiraCasa; PosicaoCasa < NumeroUltimaCasa + 1; PosicaoCasa++)
	{
		ImprimirBordaCasa(hConsole, PosicaoCasa, true);
	} /* for */

	printf("\n");

	for (PosicaoCasa = NumeroPrimeiraCasa; PosicaoCasa < NumeroUltimaCasa + 1; PosicaoCasa++)
	{
		ImprimirNumeroCasa(hConsole, PosicaoCasa, true);
	} /* for */
} /* Fim função: Imprimir cabeçalhos das casas superiores do tabuleiro */

/***********************************************************************
*
*  $FC Função: Imprimir cabeçalhos das casas inferiores do tabuleiro
*
*  $ED Descrição da função
*     Imprime cabeçalhos das casas inferiores do tabuleiro
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P NumeroPrimeiraCasa - número da primeira casa a ser impressa
*     $P NumeroUltimaCasa - número da última casa a ser impressa
*
***********************************************************************/
void ImprimirCabecalhoCasasInferiores(HANDLE hConsole, int NumeroPrimeiraCasa, int NumeroUltimaCasa)
{
	int PosicaoCasa;

	printf("\n");

	for (PosicaoCasa = NumeroPrimeiraCasa; PosicaoCasa > NumeroUltimaCasa - 1; PosicaoCasa--)
	{
		ImprimirNumeroCasa(hConsole, PosicaoCasa, false);
	} /* for */

	printf("\n");

	for (PosicaoCasa = NumeroPrimeiraCasa; PosicaoCasa > NumeroUltimaCasa - 1; PosicaoCasa--)
	{
		ImprimirBordaCasa(hConsole, PosicaoCasa, false);
	} /* for */
} /* Fim função: Imprimir cabeçalhos das casas inferiores do tabuleiro */

/***********************************************************************
*
*  $FC Função: Imprimir peça
*
*  $ED Descrição da função
*     Imprime a peça no tabuleiro.
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para o output padrão do processo
*     $P CorPeca -  cor da peça a ser impressa
*
***********************************************************************/
void ImprimirPeca(HANDLE hConsole, PCA_tpCorPeca CorPeca)
{
	if (CorPeca == PCA_PecaBranca)
	{
		SetConsoleTextAttribute(hConsole, 245);
	} /* if */
	else
	{
		SetConsoleTextAttribute(hConsole, 15);
	} /* else */

	printf("×");
} /* Fim função: Imprimir peça */

/***********************************************************************
*
*  $FC Função: Imprimir casas
*
*  $ED Descrição da função
*     Imprime casas no tabuleiro.
*
*  $EP Parâmetros
*     $P hConsole - ponteiro para a saída padrão (stdout) do programa.
*     $P pTabuleiro - ponteiro para o tabuleiro
*     $P VetorContaPecasBrancas - vetor que armazena o número de peças brancas em cada casa do tabuleiro
*     $P VetorContaPecasPretas - vetor que armazena o número de peças pretas em cada casa do tabuleiro
*     $P VetorContaPecasAdicionadas - vetor que armazena o número de peças já impressas na tela
*     $P CasasSuperiores - valor indicando se a casa está na parte de cima do tabuleiro (caso esteja, é verdadeiro)
*
***********************************************************************/
void ImprimirCasas(HANDLE hConsole, TAB_tpTabuleiro *pTabuleiro, int VetorContaPecasBrancas[24], int VetorContaPecasPretas[24], int VetorContaPecasAdicionadas[24], bool CasasSuperiores)
{
	int PosicaoCasa, idxCasa, j, k;

	int NumeroPrimeiraCasa, NumeroUltimaCasa;

	TAB_tpTabuleiro * TabuleiroTemp = pTabuleiro;

	if (CasasSuperiores == true)
	{
		NumeroPrimeiraCasa = 13;
		NumeroUltimaCasa = 24;
	} /* if */
	else
	{
		NumeroPrimeiraCasa = 12;
		NumeroUltimaCasa = 1;
	} /* else */

	if (CasasSuperiores == true)
	{
		ImprimirCabecalhoCasasSuperiores(hConsole, NumeroPrimeiraCasa, NumeroUltimaCasa);
	} /* if */

	SetConsoleTextAttribute(hConsole, CorFundo);

	for (j = 0; j < 6; j++)
	{
		printf("\n");

		PosicaoCasa = NumeroPrimeiraCasa;

		do
		{
			idxCasa = PosicaoCasa - 1;
			AtualizarCorCasa(hConsole, PosicaoCasa, CasasSuperiores);

			printf("| ");

			for (k = 0; k < 2; k++) {
				if (k > 0)
				{
					printf(" ");
				} /* if */

				if (VetorContaPecasBrancas[idxCasa] > 0 && VetorContaPecasAdicionadas[idxCasa] != VetorContaPecasBrancas[idxCasa])
				{
					ImprimirPeca(hConsole, PCA_PecaBranca);
					AtualizarCorCasa(hConsole, PosicaoCasa, CasasSuperiores);
					VetorContaPecasAdicionadas[idxCasa]++;
				} /* if */
				else if (VetorContaPecasPretas[idxCasa] > 0 && VetorContaPecasAdicionadas[idxCasa] != VetorContaPecasPretas[idxCasa])
				{
					ImprimirPeca(hConsole, PCA_PecaPreta);
					AtualizarCorCasa(hConsole, PosicaoCasa, CasasSuperiores);
					VetorContaPecasAdicionadas[idxCasa]++;
				} /* else if */
				else
				{
					printf(" ");
				} /* else */
			} /* for */

			printf(" |");
			SetConsoleTextAttribute(hConsole, CorFundo);
			printf(" ");
		} while ((CasasSuperiores == true && PosicaoCasa < NumeroUltimaCasa && PosicaoCasa++) || (CasasSuperiores == false && PosicaoCasa > NumeroUltimaCasa && PosicaoCasa--));
	} /* for */

	if (CasasSuperiores == false)
	{
		ImprimirCabecalhoCasasInferiores(hConsole, NumeroPrimeiraCasa, NumeroUltimaCasa);
	} /* if */

	SetConsoleTextAttribute(hConsole, CorFundo);
} /* Fim função: Imprimir casas */

/***********************************************************************
*
*  $FC Função: Adicionar string antes
*
*  $ED Descrição da função
*     Adiciona uma string antes de outra
*
*  $EP Parâmetros
*     $P StringOriginal - ponteiro para a string que será precedida
*     $P StringAPreceder - ponteiro para a string que precederá a StringOriginal
*
***********************************************************************/
void AdicionarStringAntes(char* StringOriginal, const char* StringAPreceder)
{
    size_t TamanhoStringAPreceder = strlen(StringAPreceder);
    size_t Contador;

    memmove(StringOriginal + TamanhoStringAPreceder, StringOriginal, strlen(StringOriginal) + 1);

    for (Contador = 0; Contador < TamanhoStringAPreceder; ++Contador)
    {
        StringOriginal[Contador] = StringAPreceder[Contador];
    }
} /* Fim função: Adicionar string antes */

/***********************************************************************
*
*  $FC Função: Imprimir casas da lista de peças capturadas
*
*  $ED Descrição da função
*     Imprime as casas da lista de peças capturadas
*
*  $EP Parâmetros
*     $P pPecasCapturadas - ponteiro para a lista de peças capturadas
*
***********************************************************************/
void ImprimirCasasListaPecasCapturadas(BAR_tpPecasCapturadas *pPecasCapturadas)
{
	int ContagemPecasBrancasCapturadas;
	int ContagemPecasPretasCapturadas;

	int Contador = 0;

	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);

	BAR_ContarPecas(pPecasCapturadas, PCA_PecaBranca, &ContagemPecasBrancasCapturadas);
	BAR_ContarPecas(pPecasCapturadas, PCA_PecaPreta, &ContagemPecasPretasCapturadas);

	for(Contador = 0; Contador < 15; Contador++)
	{
		if(ContagemPecasBrancasCapturadas > 0)
		{
			ImprimirPeca(hConsole, PCA_PecaBranca);
			SetConsoleTextAttribute(hConsole, 15);
			ContagemPecasBrancasCapturadas--;
			
		}
		else if(ContagemPecasPretasCapturadas > 0)
		{
			ImprimirPeca(hConsole, PCA_PecaPreta);
			SetConsoleTextAttribute(hConsole, 15);
			ContagemPecasPretasCapturadas--;
		}
		else
		{
			printf(" ");
		}

		if(Contador != 14)
		{
			printf(" ");
		}
	}
} /* Fim função: Imprimir casas da lista de peças capturadas */

/***********************************************************************
*
*  $FC Função: Imprimir peças capturadas e finalizadas
*
*  $ED Descrição da função
*     Imprime peças capturadas e finalizadas
*
*  $EP Parâmetros
*     $P pPecasCapturadas - ponteiro para a lista de peças capturadas
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas
*
***********************************************************************/
void ImprimirPecasCapturadasEFinalizadas(BAR_tpPecasCapturadas *pPecasCapturadas,  PCF_tpPecasFinalizadas *pPecasFinalizadas)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);

	char *StringExibicao;

	int PecasPretasFinalizadas, PecasBrancasFinalizadas;
	char ExibicaoPecasPretasFinalizadas[5], ExibicaoPecasBrancasFinalizadas[5];

	StringExibicao = (char *)malloc(1024);

	if(StringExibicao == NULL)
	{
		printf("Erro - não foi possível alocar memória.\n");
		exit(-1);
	}

	PCF_ContarPecas(pPecasFinalizadas, PCA_PecaPreta, &PecasPretasFinalizadas);
	PCF_ContarPecas(pPecasFinalizadas, PCA_PecaBranca, &PecasBrancasFinalizadas);

	itoa(PecasPretasFinalizadas, ExibicaoPecasPretasFinalizadas, 10);
	
	if(PecasPretasFinalizadas < 10)
	{
		AdicionarStringAntes(ExibicaoPecasPretasFinalizadas, " ");
	}

	itoa(PecasBrancasFinalizadas, ExibicaoPecasBrancasFinalizadas, 10);

	if(PecasBrancasFinalizadas < 10)
	{
		AdicionarStringAntes(ExibicaoPecasBrancasFinalizadas, " ");
	}

	strcpy(StringExibicao, "\n    ---------------                                                         --------------- ");
	strcat(StringExibicao, "\n   | PEÇAS  PRETAS |            -------------------------------            | PEÇAS BRANCAS |");
	strcat(StringExibicao, "\n   |  FINALIZADAS  |           |              BAR              |           |  FINALIZADAS  |");
	printf("%s", StringExibicao);
	
	printf("\n   |    %s / 15    |           | ", ExibicaoPecasPretasFinalizadas);
	
	ImprimirCasasListaPecasCapturadas(pPecasCapturadas);
	
	printf(" |           |    %s / 15    |", ExibicaoPecasBrancasFinalizadas);
	printf("\n    ---------------             -------------------------------             --------------- ");

	SetConsoleTextAttribute(hConsole, 15);

	free(StringExibicao);
} /* Fim função: Imprimir peças capturadas e finalizadas */

/***********************************************************************
*
*  $FC Função: Imprimir Tabuleiro
*
*  $ED Descrição da função
*     Imprime o tabuleiro na tela.
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*     $P pPecasCapturadas - ponteiro para a lista de peças capturadas
*     $P pPecasFinalizadas - ponteiro para a lista de peças finalizadas
*     $P JogadorAtual - cor da peça do jogador atual
*
***********************************************************************/
void ImprimirTabuleiro(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);

	char *StringTemporaria;

	int ContadorCasa, ContadorLinhas, ContadorColunas;

	int VetorContaPecasBrancas[24];
	int VetorContaPecasPretas[24];
	int VetorContaPecasAdicionadas[24];

	int PontuacaoAtual;
	DPT_tpCondRet CondRetDadoPontos;

	StringTemporaria = (char *)malloc(1024);

	if(StringTemporaria == NULL)
	{
		printf("Erro - não foi possível alocar memória.\n");
		exit(-1);
	} /* if */

	if (pJogo->pTabuleiro == NULL)
	{
		return;
	} /* if */

	for (ContadorCasa = 1; ContadorCasa <= 24; ContadorCasa++)
	{
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, PCA_PecaBranca, &VetorContaPecasBrancas[ContadorCasa - 1]);
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, PCA_PecaPreta, &VetorContaPecasPretas[ContadorCasa - 1]);
	} /* for */

	ZerarVetor(VetorContaPecasAdicionadas, 24);

	system("cls");

	printf("\nComandos: \"sair\" - Sair do jogo; \"salvar\" - Salvar Jogo; \"dobrar\" - Dobrar partida\n\n");

	CondRetDadoPontos = DPT_ObterPontuacaoPartida(pJogo->pDadoPontos, &PontuacaoAtual);
	printf("\nPontuação da partida atual: %d\n", PontuacaoAtual);

	printf("\nPONTUAÇÃO %s: %d\nPONTUAÇÃO %s: %d\n", pJogo->NomeJogadorPecasBrancas, pJogo->PontuacaoAcumuladaJogadorPecasBrancas, pJogo->NomeJogadorPecasPretas, pJogo->PontuacaoAcumuladaJogadorPecasPretas);

	SetConsoleTextAttribute(hConsole, 143);

	ImprimirCasas(hConsole, pJogo->pTabuleiro, VetorContaPecasBrancas, VetorContaPecasPretas, VetorContaPecasAdicionadas, true);

	SetConsoleTextAttribute(hConsole, 15);

	printf("\n\n");

	if(pJogo->JogadorAtual == PCA_PecaPreta)
	{
		printf("                                                               -----------------------------\\\n                                                               -----------------------------/\n");
	} /* if */
	else
	{
		printf("\n\n\n");
	} /* else */

	SetConsoleTextAttribute(hConsole, 7);

	ImprimirDados(ExibicaoDados);

	strcpy(StringTemporaria, "");
	
	for (ContadorLinhas = 0; ContadorLinhas < 2; ContadorLinhas++)
	{
		strcat(StringTemporaria, "\n");

		for (ContadorColunas = 0; ContadorColunas < 96; ContadorColunas++)
		{
			strcat(StringTemporaria, " ");
		} /* for */
	} /* for */

	printf(StringTemporaria);

	ImprimirPecasCapturadasEFinalizadas(pJogo->pPecasCapturadas, pJogo->pPecasFinalizadas);

	for (ContadorLinhas = 0; ContadorLinhas < 3; ContadorLinhas++)
	{
		strcat(StringTemporaria, "\n");

		for (ContadorColunas = 0; ContadorColunas < 96; ContadorColunas++)
		{
			strcat(StringTemporaria, " ");
		} /* for */
	} /* for */

	printf(StringTemporaria);

	if(pJogo->JogadorAtual == PCA_PecaBranca)
	{
		printf("\n                                                               -----------------------------\\\n                                                               -----------------------------/\n");
	} /* if */
	else
	{
		printf("\n\n\n");
	} /* else */

	ImprimirCasas(hConsole, pJogo->pTabuleiro, VetorContaPecasBrancas, VetorContaPecasPretas, VetorContaPecasAdicionadas, false);

	SetConsoleTextAttribute(hConsole, 7);
	Sleep(200);

	free(StringTemporaria);
} /* Fim função: Imprimir tabuleiro */

/***********************************************************************
*
*  $FC Função: Imprimir matriz de string
*
*  $ED Descrição da função
*     Imprime uma matriz formada por strings.
*
*  $EP Parâmetros
*     $P LinhaInicio - Linha inicial da impressão
*     $P LinhaFim - Linha final da impressão
*     $P ColunaInicio - Coluna inicial da impressão
*     $P ColunaFim - Coluna final da impressão
*     $P Matriz - matriz 11x5 de strings de tamanho 21
*
***********************************************************************/
void ImprimirMatrizDeString(int LinhaInicio, int LinhaFim, int ColunaInicio, int ColunaFim, char Matriz[11][5][21])
{
	int ContadorLinha, ContadorColuna;

	for (ContadorLinha = LinhaInicio - 1; ContadorLinha < LinhaFim; ContadorLinha++)
	{
		for (ContadorColuna = ColunaInicio - 1; ContadorColuna < ColunaFim; ContadorColuna++)
		{
			printf("%s", Matriz[ContadorLinha][ContadorColuna]);
		} /* for */

		printf("\n");
	} /* for */
} /* Fim função: Imprimir matriz de string */

/***********************************************************************
*
*  $FC Função: Imprimir cabeçalho animado
*
*  $ED Descrição da função
*     Imprime um cabeçalho com animação
*
*  $EP Parâmetros
*     $P MultiplicadorVelocidade - multiplicador da velocidade da animação
*
***********************************************************************/
void ImprimirCabecalhoAnimado(float MultiplicadorVelocidade)
{
	int Contador;

	char Cabecalho[11][5][21] =
	{
		{ " .----------------. ", " .----------------. ", " .----------------. ", " .----------------. ", " .----------------. " },
		{ "| .--------------. |", "| .--------------. |", "| .--------------. |", "| .--------------. |", "| .--------------. |" },
		{ "| |    ______    | |", "| |      __      | |", "| | ____    ____ | |", "| |    /*\\__/    | |", "| |     ____     | |" },
		{ "| |  .' ___  |   | |", "| |     /  \\     | |", "| ||_   \\  /   _|| |", "| |     /  \\     | |", "| |   .'    `.   | |" },
		{ "| | / .'   \\_|   | |", "| |    / /\\ \\    | |", "| |  |   \\/   |  | |", "| |    / /\\ \\    | |", "| |  /  .--.  \\  | |" },
		{ "| | | |    ____  | |", "| |   / ____ \\   | |", "| |  | |\\  /| |  | |", "| |   / ____ \\   | |", "| |  | |    | |  | |" },
		{ "| | \\ `.___]  _| | |", "| | _/ /    \\ \\_ | |", "| | _| |_\\/_| |_ | |", "| | _/ /    \\ \\_ | |", "| |  \\  `--'  /  | |" },
		{ "| |  `._____.'   | |", "| ||____|  |____|| |", "| ||_____||_____|| |", "| ||____|  |____|| |", "| |   `.____.'   | |" },
		{ "| |              | |", "| |              | |", "| |              | |", "| |              | |", "| |              | |" },
		{ "| '--------------' |", "| '--------------' |", "| '--------------' |", "| '--------------' |", "| '--------------' |" },
		{ " '----------------' ", " '----------------' ", " '----------------' ", " '----------------' ", " '----------------' " }
	};

	for (Contador = 1; Contador < 6; Contador++)
	{
		ImprimirMatrizDeString(1, 11, 1, Contador, Cabecalho);
		Sleep((DWORD) (300 * MultiplicadorVelocidade));

		if (Contador < 5)
		{
			system("cls");
		} /* if */
	} /* for */

	Sleep((DWORD) (200 * MultiplicadorVelocidade));
	system("cls");

	for (Contador = 1; Contador < 6; Contador++)
	{
		ImprimirMatrizDeString(1, 11, 1, 5, Cabecalho);
		Sleep((DWORD) (250 * MultiplicadorVelocidade));

		if (Contador < 5)
		{
			system("cls");
			Sleep((DWORD) (250 * MultiplicadorVelocidade));
		} /* if */
	} /* for */
} /* Fim função: Imprimir cabeçalho animado */

/***********************************************************************
*
*  $FC Função: Gerar string aleatória
*
*  $ED Descrição da função
*     gera uma string aleatória
*
*  $FV Valor retornado
*     Ponteiro para a string gerada
*
*  $EP Parâmetros
*     $P TamanhoString - tamanho da string a ser gerada
*
***********************************************************************/
char* GerarStringAleatoria(size_t TamanhoString)
{
	const char CaracteresStringAleatoria[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJK";
	size_t Contador;
	int Chave;
	char *StringAleatoria = (char *)malloc(TamanhoString + 1);

	if (StringAleatoria)
	{
		if (TamanhoString)
		{
			--TamanhoString;

			for (Contador = 0; Contador < TamanhoString; Contador++)
			{
				Chave = rand() % (int)(sizeof CaracteresStringAleatoria - 1);
				StringAleatoria[Contador] = CaracteresStringAleatoria[Chave];
			} /* for */

			StringAleatoria[TamanhoString] = '\0';
		} /* if */
	} /* if */

	return StringAleatoria;
} /* Fim função: Gerar string aleatória */

/***********************************************************************
*
*  $FC Função: Animar texto aleatório
*
*  $ED Descrição da função
*     Animação através da geração de strings aleatórias.
*
*  $EP Parâmetros
*     $P TamanhoString - tamanho máximo das strings geradas pela animação
*     $P EspacamentoInicio - quantidade de espaços antes do texto animado
*
***********************************************************************/
void AnimarTextoAleatorio(int TamanhoString, int EspacamentoInicio)
{
	char *StringTemp;
	char *FormatoString;

	time_t TempoTermino;
	time_t TempoInicio = time(NULL);

	time_t TempoDuracao = 2;
	/* TempoDuracao expresso em segundos*/

	int Contador;

	FormatoString = (char *)malloc(EspacamentoInicio + 5);

	if (FormatoString == NULL)
	{
		printf("\n\n[ERRO] - Não foi possível alocar memória para a animação\n\n");
		return;
	} /* if */

	strcpy(FormatoString, "\r");

	for (Contador = 0; Contador < EspacamentoInicio; Contador++)
	{
		strcat(FormatoString, " ");
	} /* for */

	strcat(FormatoString, "%s");

	TempoTermino = TempoInicio + TempoDuracao;

	while (TempoInicio < TempoTermino)
	{
		TempoInicio = time(NULL);
		StringTemp = GerarStringAleatoria(TamanhoString);
		printf(FormatoString, StringTemp);
		free(StringTemp);
		Sleep(100);
	} /* while */

	free(FormatoString);

	printf("\r");
} /* Fim função: Animar texto aleatório */

/***********************************************************************
*
*  $FC Função: Carregar tela inicial
*
*  $ED Descrição da função
*     Carrega os recursos da tela inicial do jogo.
*
***********************************************************************/
void CarregarTelaInicial()
{
	TocarMusicaPrincipal();

	system("cls");

	ImprimirCabecalhoAnimado(0.5);
	printf("\nMenu:\n\n\t1 - Novo Jogo\t2 - Carregar Jogo\t3 - Créditos\t0 - Sair\n\nOpção: ");
} /* Fim função: Carregar tela inicial */

/***********************************************************************
*
*  $FC Função: Mostra créditos
*
*  $ED Descrição da função
*     Carrega os recursos da tela inicial do jogo.
*
***********************************************************************/
void MostraCreditos()
{
	PararMusicaPrincipal();
	TocarMusicaCreditos();

	system("cls");
	ImprimirCabecalhoAnimado(1);

	printf("\n");
	AnimarTextoAleatorio(14, 44);
	printf("                                            P U C - R I O\n");

	printf("\n");
	AnimarTextoAleatorio(19, 42);
	printf("                                         PROGRAMAÇÃO MODULAR\n");

	Sleep(500);

	printf("\nAutores: \n\n");

	Sleep(500);

	AnimarTextoAleatorio(29, 8);
	printf("\tFernanda de Miranda Carvalho\n");

	AnimarTextoAleatorio(32, 8);
	printf("\tMarcelo Paulon Jucá Vasconcelos\n");

	AnimarTextoAleatorio(32, 8);
	printf("\tRenan da Fonte Simas dos Santos\n");

	printf("\n");
	AnimarTextoAleatorio(29, 0);
	printf("Professor: Flávio Bevilacqua\n");
	
	printf("\nPressione qualquer tecla para retornar ao menu...\n");
	_getch();
	LimparBufferTeclado();

	PararMusicaCreditos();
	CarregarTelaInicial();
} /* Fim função: Mostra créditos */

/***********************************************************************
*
*  $FC Função: Obter save
*
*  $ED Descrição da função
*     Limpa o buffer de entrada (stdin).
*
*  $FV Valor retornado
*     Retorna verdadeiro se for possível obter o save e falso se não for possível.
*
*  $EP Parâmetros
*     $P NomeArquivo - string com o nome do arquivo
*
***********************************************************************/
bool ObterSave(char *NomeArquivo)
{
	WIN32_FIND_DATA InformacoesArquivo;
	HANDLE HandleBusca = NULL;

	WCHAR NomeArquivoUNICODE[_MAX_PATH];

	int ContagemSaves = 1;

	int OpcaoSave;
	char BufferEntradaTeclado[1024];
	int ResultadoLeituraTeclado;

	char NomesSaves[1000][_MAX_DIR];

	sprintf(NomeArquivo, "*.gamaosave");

	// Converter formato de arquivo buscado para UNICODE
	MultiByteToWideChar(CP_UTF8, 0, NomeArquivo, _MAX_PATH, NomeArquivoUNICODE, _MAX_PATH);

	HandleBusca = FindFirstFile(NomeArquivoUNICODE, &InformacoesArquivo);

	if (HandleBusca == INVALID_HANDLE_VALUE)
	{
		printf("Não há arquivos salvos. Pressione qualquer tecla para continuar...\n");
		_getch();
		return false;
	}

	do
	{
		if (strcmp(InformacoesArquivo.cFileName, ".") != 0
			&& strcmp(InformacoesArquivo.cFileName, "..") != 0)
		{
			// Converter nome do arquivo buscado para ASCII
			WideCharToMultiByte(CP_UTF8, 0, InformacoesArquivo.cFileName, _MAX_PATH, NomeArquivo, _MAX_PATH, NULL, NULL);
			printf("%d - %s\n", ContagemSaves, NomeArquivo);
			strcpy(NomesSaves[ContagemSaves - 1], NomeArquivo);
			ContagemSaves++;
		}
	} while (FindNextFile(HandleBusca, &InformacoesArquivo));

	FindClose(HandleBusca);

	do
	{
		printf("\n\nOpção: ");

		fgets(BufferEntradaTeclado, sizeof(BufferEntradaTeclado), stdin);
		ResultadoLeituraTeclado = sscanf(BufferEntradaTeclado, "%d", &OpcaoSave);
		LimparBufferTeclado();

		if (ResultadoLeituraTeclado < 1 || OpcaoSave < 1 || OpcaoSave > ContagemSaves - 1)
		{
			printf(" Opção inválida!\n");
			continue;
		}
		else
		{
			strcpy(NomeArquivo, NomesSaves[OpcaoSave - 1]);
			return true;
		}

	} while (true);

	return false;
} /* Fim função: Obter save */

/***********************************************************************
*
*  $FC Função: Recuperar jogo
*
*  $ED Descrição da função
*     Recupera jogo salvo
*
*  $EP Parâmetros
*     pArquivo - ponteiro para o arquivo
*
***********************************************************************/
void RecuperarJogo(FILE *pArquivo)
{
	int ContadorCasa;
	int ContadorPeca;
	int ContagemPecasBrancasTemp;
	int ContagemPecasPretasTemp;

	char NomeJogadorPecasBrancas[80];
	char NomeJogadorPecasPretas[80];
	int CodigoJogadorAtual;

	int CodigoJogadorDadoPontos;
	int PontuacaoAtual;

	int PontuacaoTemp = 1;

	int ExibicaoDados[4];

	PCA_tpPeca *pPecaTemp;

	JGO_tpJogo *pJogo;

	pListaJogo = LIS_CriarLista(DestruirListaJogo);

	pJogo = (JGO_tpJogo *)malloc(sizeof(JGO_tpJogo));

	if (pJogo == NULL)
	{
		printf("[ERRO] - Não foi possível alocar memória para o jogo.");
		return;
	} /* if */

	if (DAD_CriarDados(&pJogo->pDados) != DAD_CondRetOK)
	{
		printf("[ERRO] - Não foi possível criar o dado.");
		exit(-1);
	} /* if */

	fscanf(pArquivo, "%[^\t\n]\n%[^\t\n]\n%d\n%d\n%d\n%d %d %d %d\n%d %d\n", &NomeJogadorPecasBrancas, &NomeJogadorPecasPretas, &CodigoJogadorAtual, &CodigoJogadorDadoPontos, &PontuacaoAtual, &ExibicaoDados[0], &ExibicaoDados[1], &ExibicaoDados[2], &ExibicaoDados[3], &pJogo->PontuacaoAcumuladaJogadorPecasBrancas, &pJogo->PontuacaoAcumuladaJogadorPecasPretas);
	pJogo->NomeJogadorPecasBrancas = NomeJogadorPecasBrancas;
	pJogo->NomeJogadorPecasPretas = NomeJogadorPecasPretas;

	if (CodigoJogadorAtual == 0)
	{
		pJogo->JogadorAtual = PCA_PecaBranca;
	} /* if */
	else
	{
		pJogo->JogadorAtual = PCA_PecaPreta;
	} /* else */

	if (CriarEstruturasPartida(pJogo) == false)
	{
		return;
	} /* if */

	LIS_InserirElementoAntes(pListaJogo, pJogo->pDados);

	if(PontuacaoAtual > 1)
	{
		if (CodigoJogadorDadoPontos == 0)
		{
			DPT_AtualizarJogadorDobra(pJogo->pDadoPontos, PCA_PecaBranca);
		} /* if */
		else
		{
			DPT_AtualizarJogadorDobra(pJogo->pDadoPontos, PCA_PecaPreta);
		} /* else */

		while(PontuacaoTemp < PontuacaoAtual)
		{
			if (CodigoJogadorDadoPontos == 0)
			{
				DPT_DobrarPontuacaoPartida(pJogo->pDadoPontos, PCA_PecaBranca);
			}
			else
			{
				DPT_DobrarPontuacaoPartida(pJogo->pDadoPontos, PCA_PecaPreta);
			}

			DPT_ObterPontuacaoPartida(pJogo->pDadoPontos, &PontuacaoTemp);
		}
	}

	for (ContadorCasa = 1; ContadorCasa <= 24; ContadorCasa++)
	{
		fscanf(pArquivo, "%d %d\n", &ContagemPecasBrancasTemp, &ContagemPecasPretasTemp);
		for (ContadorPeca = 0; ContadorPeca < ContagemPecasBrancasTemp; ContadorPeca++)
		{
			PCA_CriarPeca(&pPecaTemp, PCA_PecaBranca);
			TAB_InserirPeca(pJogo->pTabuleiro, pPecaTemp, ContadorCasa);
		}

		for (ContadorPeca = 0; ContadorPeca < ContagemPecasPretasTemp; ContadorPeca++)
		{
			PCA_CriarPeca(&pPecaTemp, PCA_PecaPreta);
			TAB_InserirPeca(pJogo->pTabuleiro, pPecaTemp, ContadorCasa);
		}
	} /* for */

	fclose(pArquivo);

	IniciarPartidaExistente(pJogo, PontuacaoAtual, ExibicaoDados);
} /* Fim função: Recupera jogo */

/***********************************************************************
*
*  $FC Função: Carregar jogo
*
*  $ED Descrição da função
*     Carrega a tela de carregar jogos salvos
*
***********************************************************************/
void CarregarJogo()
{
	FILE *pArquivo;
	char NomeArquivo[_MAX_PATH];

	system("cls");

	printf(" :: CARREGAR JOGO :: \n\nSelecione um arquivo:\n\n\n");

	if (ObterSave(NomeArquivo) == true)
	{
		pArquivo = fopen(NomeArquivo, "r");

		if (pArquivo == NULL)
		{
			printf("\n\nErro ao carregar o arquivo. Pressione qualquer tecla para voltar ao menu principal.");
			_getch();
			CarregarTelaInicial();
		}

		PararMusicaPrincipal();

		RecuperarJogo(pArquivo);
	}
	else
	{
		CarregarTelaInicial();
	}
} /* Fim função: Carregar jogo */

/***********************************************************************
*
*  $FC Função: Processa comando
*
*  $ED Descrição da função
*     Processa o comando passado, direcionando para a respectiva tela.
*
*  $EP Parâmetros
*     $P Comando - número que representa o comando dado pelo jogador
*
***********************************************************************/
void ProcessaComando(int Comando)
{
	printf("%c", Comando);
	Sleep(200);

	switch (Comando)
	{
	case NOVO_JOGO_CMD:
		CarregarTelaNovoJogo();
		break;
	case CARREGAR_JOGO_CMD:
		CarregarJogo();
		break;
	case CREDITOS_CMD:
		MostraCreditos();
		break;
	case SAIR_CMD:
		printf("\n\nSaindo...\n\n");
		Sleep(1000);
		break;
	default:
		printf(" Comando inválido! \nOpção: ");
	} /* switch */
} /* Fim função: Processa comando */

#pragma endregion

/***********************************************************************
*
*  $FC Função: Destruir peças do tabuleiro
*
*  $ED Descrição da função
*     Destrói as peças do tabuleiro
*
*  $EP Parâmetros
*     $P pTabuleiro - ponteiro para o tabuleiro cujas peças serão destruídas
*
***********************************************************************/
void DestruirPecasTabuleiro(TAB_tpTabuleiro *pTabuleiro)
{
	PCA_tpPeca *pPecaTemp;
	int ContadorCasa;

	for (ContadorCasa = 0; ContadorCasa < 24; ContadorCasa++)
	{
		while (TAB_RemoverPeca(pTabuleiro, PCA_PecaBranca, &pPecaTemp, ContadorCasa + 1) == PCA_CondRetOK)
		{
			PCA_DestruirPeca(&pPecaTemp);
		}

		while (TAB_RemoverPeca(pTabuleiro, PCA_PecaPreta, &pPecaTemp, ContadorCasa + 1) == PCA_CondRetOK)
		{
			PCA_DestruirPeca(&pPecaTemp);
		}
	}
} /* Fim função: Destruir peças do tabuleiro */

/***********************************************************************
*
*  $FC Função: Destruir partida
*
*  $ED Descrição da função
*     Libera os recursos utilizados na partida atual
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo cuja partida terá os recursos liberados
*
***********************************************************************/
void DestruirPartida(JGO_tpJogo *pJogo)
{
	DPT_DestruirDadoPontos(&pJogo->pDadoPontos);
	DestruirPecasTabuleiro(pJogo->pTabuleiro);
	BAR_DestruirListaPecasCapturadas(&pJogo->pPecasCapturadas);
	PCF_DestruirListaPecasFinalizadas(&pJogo->pPecasFinalizadas);
	TAB_DestruirTabuleiro(&pJogo->pTabuleiro);
} /* Fim função: Destruir partida */

/***********************************************************************
*
*  $FC Função: Destruir lista do jogo
*
*  $ED Descrição da função
*     Libera os recursos utilizados na lista do jogo atual
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo que terá os recursos liberados
*
***********************************************************************/
void DestruirListaJogo(void *pElemento)
{
	free(pElemento);
} /* Fim função: Destruir lista de jogo */

/***********************************************************************
*
*  $FC Função: Destruir jogo
*
*  $ED Descrição da função
*     Libera os recursos utilizados no jogo atual
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo que terá os recursos liberados
*
***********************************************************************/
void DestruirJogo(JGO_tpJogo *pJogo)
{
	DestruirPartida(pJogo);
	DAD_DestruirDados(&pJogo->pDados);
	free(pJogo);
	pJogo = NULL;
} /* Fim função: Destruir jogo */

/***********************************************************************
*
*  $FC Função: Partida terminou
*
*  $ED Descrição da função
*     Verifica se a partida terminou
*
*  $FV Valor retornado
*     Retorna true se a partida tiver terminado e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo que terá a partida checada.
*
***********************************************************************/
bool PartidaTerminou(JGO_tpJogo *pJogo)
{
	int ContagemPecasBrancasFinalizadas;
	int ContagemPecasPretasFinalizadas;

	PCF_ContarPecas(pJogo->pPecasFinalizadas, PCA_PecaBranca, &ContagemPecasBrancasFinalizadas);
	PCF_ContarPecas(pJogo->pPecasFinalizadas, PCA_PecaPreta, &ContagemPecasPretasFinalizadas);
	
	if(ContagemPecasBrancasFinalizadas == 15 || ContagemPecasPretasFinalizadas == 15) 
	{
		return true;
	}

	return false;
} /* Fim função: Partida terminou */

/***********************************************************************
*
*  $FC Função: Jogadas de reentrada disponíveis
*
*  $ED Descrição da função
*     Verifica se há jogadas de reentrada disponíveis.
*
*  $FV Valor retornado
*     Retorne true se houver alguma jogada disponível e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo onde será checada a disponibilidade de jogadas de reentrada
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool JogadasReentradaDisponiveis(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	int QuantidadePecasTemp;
	int ContadorCasa;
	int ContadorDado;
	int ValorDado;

	int ValorCasaMovimento;

	int CasaInicial;
	int CasaFinal;

	PCA_tpCorPeca CorOponente;

	TAB_tpCondRet CondicaoRetornoTabuleiro;

	if (pJogo->JogadorAtual == PCA_PecaBranca)
	{
		CorOponente = PCA_PecaPreta;
		CasaInicial = 19;
		CasaFinal = 24;
	}
	else
	{
		CorOponente = PCA_PecaBranca;
		CasaInicial = 1;
		CasaFinal = 6;
	}

	for (ContadorCasa = CasaInicial; ContadorCasa <= CasaFinal; ContadorCasa++)
	{
		if (pJogo->JogadorAtual == PCA_PecaBranca)
		{
			ValorCasaMovimento = 24 - ContadorCasa + 1;
		}
		else
		{
			ValorCasaMovimento = ContadorCasa;
		}

		for (ContadorDado = 0; ContadorDado < 4; ContadorDado++)
		{
			ValorDado = ExibicaoDados[ContadorDado];

			if (ValorDado <= 0)
			{
				continue;
			}

			if (ValorCasaMovimento == ValorDado)
			{
				CondicaoRetornoTabuleiro = TAB_ContarPecas(pJogo->pTabuleiro, ValorCasaMovimento, CorOponente, &QuantidadePecasTemp);
				if ((CondicaoRetornoTabuleiro == TAB_CondRetOK && QuantidadePecasTemp <= 1) || CondicaoRetornoTabuleiro == TAB_CondRetPecaNaoExiste)
				{
					return true;
				}
			}
		}
	}

	return false;
} /* Fim função: Jogadas de reentrada disponíveis */

/***********************************************************************
*
*  $FC Função: Somar vetor de inteiros
*
*  $ED Descrição da função
*     Soma um vetor de inteiros
*
*  $FV Valor retornado
*     Retorna a soma do vetor de inteiros
*
*  $EP Parâmetros
*     $P Vetor - vetor cujas posições serão somadas
*     $P NumeroPosicoes - número de posições somadas do vetor
*
***********************************************************************/
int SomarVetorInteiros(int *Vetor, int NumeroPosicoes)
{
	int Contador;
	int ContagemVetor = 0;

	for (Contador = 0; Contador < NumeroPosicoes; Contador++)
	{
		ContagemVetor += Vetor[Contador];
	}

	return ContagemVetor;
} /* Fim função: Somar vetor de inteiros */

/***********************************************************************
*
*  $FC Função: Jogador atual pode finalizar peças
*
*  $ED Descrição da função
*     Verifica se o jogador atual pode finalizar suas peças
*
*  $FV Valor retornado
*     Retorna true se o jogador puder finalizar suas peças e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
***********************************************************************/
bool JogadorAtualPodeFinalizarPecas(JGO_tpJogo *pJogo)
{
	int VetorCasas[6] = { 0, 0, 0, 0, 0, 0 };

	int NumeroCasaInicial;
	int NumeroCasaFinal;

	int ContadorCasa;
	int ContadorPosicao = 0;

	int ContagemPecasCapturadas;
	int ContagemPecasFinalizadas;

	BAR_ContarPecas(pJogo->pPecasCapturadas, pJogo->JogadorAtual, &ContagemPecasCapturadas);
	PCF_ContarPecas(pJogo->pPecasFinalizadas, pJogo->JogadorAtual, &ContagemPecasFinalizadas);

	if (ContagemPecasCapturadas > 0)
	{
		return false;
	}

	if (pJogo->JogadorAtual == PCA_PecaBranca)
	{
		NumeroCasaInicial = 1;
		NumeroCasaFinal = 6;
	}
	else
	{
		NumeroCasaInicial = 19;
		NumeroCasaFinal = 24;
	}

	for (ContadorCasa = NumeroCasaInicial; ContadorCasa <= NumeroCasaFinal; ContadorCasa++)
	{
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, pJogo->JogadorAtual, &VetorCasas[ContadorPosicao]);
		ContadorPosicao++;
	}

	if (SomarVetorInteiros(VetorCasas, 6) + ContagemPecasFinalizadas == 15)
	{
		return true;
	}

	return false;
} /* Fim função: Jogador atual pode finalizar peças */

/***********************************************************************
*
*  $FC Função: Jogadas disponíveis
*
*  $ED Descrição da função
*     Verifica se há jogadas disponíveis para o jogador atual.
*
*  $FV Valor retornado
*     Retorna true se o jogador possui jogadas disponíveis nesta rodada e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool JogadasDisponiveis(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	int QuantidadePecasTemp;
	int ContadorCasa;
	int ContadorDado;
	int ValorDado;

	int ContagemPecasCapturadasTemp;

	int ValorCasaMovimento;

	bool JogadorPodeFinalizarPecas = JogadorAtualPodeFinalizarPecas(pJogo);

	PCA_tpCorPeca CorOponente;

	TAB_tpCondRet CondicaoRetornoTabuleiro;

	if (pJogo->JogadorAtual == PCA_PecaBranca)
	{
		CorOponente = PCA_PecaPreta;
	}
	else
	{
		CorOponente = PCA_PecaBranca;
	}

	BAR_ContarPecas(pJogo->pPecasCapturadas, pJogo->JogadorAtual, &ContagemPecasCapturadasTemp);

	if (ContagemPecasCapturadasTemp > 0)
	{
		if (JogadasReentradaDisponiveis(pJogo, ExibicaoDados) == false)
		{
			return false;
		}
	}

	for(ContadorCasa = 1; ContadorCasa <= 24; ContadorCasa++)
	{
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, pJogo->JogadorAtual, &QuantidadePecasTemp);

		if (QuantidadePecasTemp == 0)
		{
			continue;
		}

		for (ContadorDado = 0; ContadorDado < 4; ContadorDado++)
		{
			ValorDado = ExibicaoDados[ContadorDado];

			if (ValorDado <= 0)
			{
				continue;
			}

			if (pJogo->JogadorAtual == PCA_PecaBranca)
			{
				ValorCasaMovimento = ContadorCasa - ValorDado;
				
				if(JogadorPodeFinalizarPecas == true && ValorCasaMovimento <= ValorDado)
				{
					return true;
				}
			}
			else
			{
				ValorCasaMovimento = ContadorCasa + ValorDado;

				if(JogadorPodeFinalizarPecas == true && ValorCasaMovimento >= 18 + ValorDado)
				{
					return true;
				}
			}

			CondicaoRetornoTabuleiro = TAB_ContarPecas(pJogo->pTabuleiro, ValorCasaMovimento, CorOponente, &QuantidadePecasTemp);
			if ((CondicaoRetornoTabuleiro == TAB_CondRetOK && QuantidadePecasTemp <= 1) || CondicaoRetornoTabuleiro == TAB_CondRetPecaNaoExiste)
			{
				return true;
			}
		}
	}
	
	return false;
} /* Fim função: Jogadas disponíveis */

/***********************************************************************
*
*  $FC Função: Sair do jogo
*
*  $ED Descrição da função
*     Encerra o jogo atual, retornando para o menu principal.
*
*  $FV Valor retornado
*     Retorna true caso o usuário tenha confirmado sair do jogo, e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*
***********************************************************************/
bool SairJogo(JGO_tpJogo *pJogo)
{
	char Opcao;
	system("cls");

	printf("\nTem certeza que deseja sair do jogo e voltar ao menu principal? (S/N) ");

	do {
		LimparBufferTeclado();
		Opcao = _getch();
	} while (Opcao != 'S' && Opcao != 's' && Opcao != 'N' && Opcao != 'n');

	LimparBufferTeclado();
	printf("%c", Opcao);

	Sleep(200);

	if (Opcao == 'S' || Opcao == 's')
	{
		DestruirJogo(pJogo);
		CarregarTelaInicial();
		return true;
	}

	return false;
} /* Fim função: Sair do jogo */

/***********************************************************************
*
*  $FC Função: Validar movimento da peça
*
*  $ED Descrição da função
*     Valida o movimento da peça
*
*  $FV Valor retornado
*     Retorna true se o movimento for válido e false caso contrário
*
*  $EP Parâmetros
*     $P CondicaoRetornoTabuleiro - condição de retorno retornada pelo tabuleiro ao tentar movimentar uma peça
*
***********************************************************************/
bool ValidarMovimentoPeca(TAB_tpCondRet CondicaoRetornoTabuleiro)
{
	if(CondicaoRetornoTabuleiro == TAB_CondRetTabuleiroNaoExiste)
	{
		printf("Erro: tabuleiro não existe. O jogo será encerrado.\n");
		exit(-1);
	} /*if*/

	else if(CondicaoRetornoTabuleiro == TAB_CondRetCasaNaoExiste) 
	{
		printf("Casa de origem ou de destino inválida.\n");
		return false;
	} /*if*/

	else if(CondicaoRetornoTabuleiro == TAB_CondRetPecaNaoExiste)
	{
		printf("Não há peca na casa escolhida.\n");
		return false;
	} /*if*/

	else if(CondicaoRetornoTabuleiro == TAB_CondRetFaltouMemoria)
	{
		printf("Erro: memória insuficiente. O jogo será encerrado.\n");
		exit(-1);
	} /*if*/

	return true;
} /* Fim função: Validar movimento da peça */

/***********************************************************************
*
*  $FC Função: Lê número inteiro
*
*  $ED Descrição da função
*     Lê e armazena um valor do teclado
*
*  $FV Valor retornado
*     CondRetComandoErro
*     CondRetComandoOk
*     CondRetComandoSalvar
*	  CondRetComandoDobrar
*     CondRetComandoSair
*
*  $EP Parâmetros
*     $P pResultadoLeitura - inteiro passado por referência aonde será armazenado o valor lido do teclado
*
***********************************************************************/
tpCondRetComando LeNumeroInteiro(int *pResultadoLeitura)
{
	char BufferEntradaTeclado[1024];
	int ResultadoLeituraTeclado;
	int ContadorString = 0;

	char StringComando[1024];

	fgets(BufferEntradaTeclado, sizeof(BufferEntradaTeclado), stdin);
	ResultadoLeituraTeclado = sscanf(BufferEntradaTeclado, "%d", pResultadoLeitura);
	LimparBufferTeclado();

	strcpy(StringComando, "");

	if (ResultadoLeituraTeclado < 1)
	{
		ResultadoLeituraTeclado = sscanf(BufferEntradaTeclado, "%s", StringComando);
		
		while(StringComando[ContadorString]) 
		{
			StringComando[ContadorString] = tolower(StringComando[ContadorString]);
			ContadorString++;
		}

		if (ResultadoLeituraTeclado < 1)
		{
			return CondRetComandoErro;
		} /* if */

		if (strcmp(StringComando, "sair") == 0)
		{
			return CondRetComandoSair;
		}

		if (strcmp(StringComando, "salvar") == 0)
		{
			return CondRetComandoSalvar;
		}

		if (strcmp(StringComando, "dobrar") == 0)
		{
			return CondRetComandoDobrar;
		}

		return CondRetComandoErro;
	} /* if */

	return CondRetComandoOK;
} /* Fim função: Lê número inteiro */

/***********************************************************************
*
*  $FC Função: Lê Casa
*
*  $ED Descrição da função
*     Lê um valor de movimentação de casa, aceitando os comandos sair, salvar e dobrar.
*
*  $FV Valor retornado
*     CondRetComando
*     CondRetComandoErro
*
*  $EP Parâmetros
*     $P pNumeroCasa - ponteiro passado por referência aonde será armazenado o valor lido do teclado
*
***********************************************************************/
tpCondRetComando LeCasa(int *pNumeroCasa)
{
	tpCondRetComando CondRetComando = LeNumeroInteiro(pNumeroCasa);
	
	if (CondRetComando == CondRetComandoErro || (CondRetComando == CondRetComandoOK && (*pNumeroCasa < 0 || *pNumeroCasa > 24)))
	{
		return CondRetComandoErro;
	} /* if */

	return CondRetComando;
} /* Fim função: Lê Casa */

/***********************************************************************
*
*  $FC Função: Salvar Jogo
*
*  $ED Descrição da função
*     Salva o jogo
*     
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
void SalvarJogo(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	time_t DataHoraSistema = time(NULL);
	struct tm DataHoraLocal = *localtime(&DataHoraSistema);

	FILE *pArquivoSalvamento;
	
	char NomeArquivoJogo[40];
	
	int CodigoJogadorAtual;

	PCA_tpCorPeca CorJogadorDadoPontos;
	int CodigoJogadorDadoPontos;
	int PontuacaoAtual;

	int ValorDado1;
	int ValorDado2;

	int ContadorCasa;
	int ContagemPecasBrancasTemp;
	int ContagemPecasPretasTemp;
	
	sprintf(NomeArquivoJogo, "GAMAO_%d-%d-%d_%d_%d_%d.gamaosave", DataHoraLocal.tm_year + 1900, DataHoraLocal.tm_mon + 1, DataHoraLocal.tm_mday, DataHoraLocal.tm_hour, DataHoraLocal.tm_min, DataHoraLocal.tm_sec);

	system("cls");
	printf(":: SALVAR JOGO ::");

	pArquivoSalvamento = fopen(NomeArquivoJogo, "w");
	if (pArquivoSalvamento == NULL)
	{
		printf("\n\nErro ao abrir o arquivo para escrita. Tente novamente.\nPressione qualquer tecla para continuar...");
		_getch();
		return;
	}

	if (pJogo->JogadorAtual == PCA_PecaBranca)
	{
		CodigoJogadorAtual = 0;
	}
	else
	{
		CodigoJogadorAtual = 1;
	}

	DPT_ObterPontuacaoPartida(pJogo->pDadoPontos, &PontuacaoAtual);

	DPT_ObterJogadorDobraPartida(pJogo->pDadoPontos, &CorJogadorDadoPontos);

	if (CorJogadorDadoPontos == PCA_PecaBranca)
	{
		CodigoJogadorDadoPontos = 0;
	}
	else
	{
		CodigoJogadorDadoPontos = 1;
	}

	DAD_ObterValores(pJogo->pDados, &ValorDado1, &ValorDado2);

	fprintf(pArquivoSalvamento, "%s\n%s\n%d\n%d\n%d\n%d %d %d %d\n%d %d\n", pJogo->NomeJogadorPecasBrancas, pJogo->NomeJogadorPecasPretas, CodigoJogadorAtual, CodigoJogadorDadoPontos, PontuacaoAtual, ExibicaoDados[0], ExibicaoDados[1], ExibicaoDados[2], ExibicaoDados[3], pJogo->PontuacaoAcumuladaJogadorPecasBrancas, pJogo->PontuacaoAcumuladaJogadorPecasPretas);
	
	for (ContadorCasa = 1; ContadorCasa <= 24; ContadorCasa++)
	{
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, PCA_PecaBranca, &ContagemPecasBrancasTemp);
		TAB_ContarPecas(pJogo->pTabuleiro, ContadorCasa, PCA_PecaPreta, &ContagemPecasPretasTemp);
		fprintf(pArquivoSalvamento, "%d %d\n", ContagemPecasBrancasTemp, ContagemPecasPretasTemp);
	} /* for */


	printf("\n\nO jogo foi salvo com o nome %s,\nna mesma pasta onde o programa está sendo executado.\n", NomeArquivoJogo);
	
	fclose(pArquivoSalvamento);

	printf("\nPressione qualquer tecla para continuar...");
	_getch();
} /* Fim função: Salvar jogo */

/***********************************************************************
*
*  $FC Função: Dobrar jogada
*
*  $ED Descrição da função
*     Dobra uma jogada
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*
***********************************************************************/
void DobrarPartida(JGO_tpJogo *pJogo)
{
	PCA_tpCorPeca JogadorAtual = pJogo->JogadorAtual;
	PCA_tpCorPeca JogadorOponente;
	DPT_tpCondRet CondRetDadoPontos;
	PCA_tpCorPeca JogadorDadoPontosAtual;
	char *NomeJogadorAtual, *NomeJogadorOponente;

	char Opcao;

	if(JogadorAtual == PCA_PecaBranca)
	{
		JogadorOponente = PCA_PecaPreta;
		NomeJogadorOponente = pJogo->NomeJogadorPecasPretas;
		NomeJogadorAtual = pJogo->NomeJogadorPecasBrancas;
	}
	else
	{
		JogadorOponente = PCA_PecaBranca;
		NomeJogadorOponente = pJogo->NomeJogadorPecasBrancas;
		NomeJogadorAtual = pJogo->NomeJogadorPecasPretas;
	}

	CondRetDadoPontos = DPT_ObterJogadorDobraPartida(pJogo->pDadoPontos, &JogadorDadoPontosAtual);
	
	if(pJogo->PrimeiraDobraPartidaRealizada == true && (CondRetDadoPontos == DPT_CondRetJogadorNaoPossuiDadoPontos || JogadorDadoPontosAtual != JogadorAtual))
	{
		printf("\nVocê não pode dobrar esta partida no momento. Espere o outro jogador dobrar. \nPressione qualquer tecla para continuar...");
		_getch();
		return;
	}
	
	printf("\n\nO jogador %s deseja dobrar a pontuação da partida. %s, você aceita a dobra? (S/N) ", NomeJogadorAtual, NomeJogadorOponente);

	do {
		LimparBufferTeclado();
		Opcao = _getch();
	} while (Opcao != 'S' && Opcao != 's' && Opcao != 'N' && Opcao != 'n');

	LimparBufferTeclado();
	printf("%c", Opcao);

	Sleep(200);

	if (Opcao == 'S' || Opcao == 's')
	{
		if(pJogo->PrimeiraDobraPartidaRealizada == false)
		{
			DPT_AtualizarJogadorDobra(pJogo->pDadoPontos, JogadorAtual);
		} /* if */

		CondRetDadoPontos = DPT_DobrarPontuacaoPartida(pJogo->pDadoPontos, JogadorAtual);

		if(CondRetDadoPontos == DPT_CondRetOK)
		{
			DPT_AtualizarJogadorDobra(pJogo->pDadoPontos, JogadorOponente);
			pJogo->PrimeiraDobraPartidaRealizada = true;
		}
		else
		{
			printf("\nOcorreu um erro desconhecido.");
		}

		return;
	} /* if */

	printf("\nVocê perdeu a partida por recusar a dobra. Pressione qualquer tecla para continuar...");
	_getch();
	pJogo->PartidaTerminouDobra = true;
}

/***********************************************************************
*
*  $FC Função: Processar jogada
*
*  $ED Descrição da função
*     Processa uma jogada
*
*  $FV Valor retornado
*     Retorna true se jogada foi executada com sucesso e false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool ProcessarJogada(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	int NumeroCasaOrigem, NumeroCasaDestino;
	int ContadorDados;
	int ContagemPecasTemp;

	int ContagemPecasCapturadasTemp;

	bool JogadaTerminou = false;
	bool JogadorPodeFinalizarPecas;

	bool ErroPermissao;

	TAB_tpCondRet CondicaoRetornoTabuleiro;

	tpCondRetComando CondRetComando;

	PCA_tpPeca *pPecaTemp;
	PCA_tpCorPeca PecaOponente;

	if (pJogo->JogadorAtual == PCA_PecaPreta)
	{
		PecaOponente = PCA_PecaBranca;
	} /* if */
	else
	{
		PecaOponente = PCA_PecaPreta;
	} /* else */

	while(JogadaTerminou == false && JogadasDisponiveis(pJogo, ExibicaoDados) == true)
	{
		ErroPermissao = true;

		BAR_ContarPecas(pJogo->pPecasCapturadas, pJogo->JogadorAtual, &ContagemPecasCapturadasTemp);

		if(ContagemPecasCapturadasTemp > 0)
		{
			printf("\n\nVocê deve reentrar com a(s) peça(s) capturada(s) pelo oponente (BAR).\nCasa de destino: ");
			
			CondRetComando = LeCasa(&NumeroCasaDestino);

			if (CondRetComando == CondRetComandoSalvar)
			{
				SalvarJogo(pJogo, ExibicaoDados);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoDobrar)
			{
				DobrarPartida(pJogo);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoSair)
			{
				if (SairJogo(pJogo) == true)
				{
					return false;
				} /* if */

				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoErro)
			{
				printf("\n\nErro. As casas são numeradas de 1-24. Pressione qualquer tecla para continuar...\n");
				_getch();
				LimparBufferTeclado();
				ErroPermissao = false;
				break;
			} /* if */
			
			for(ContadorDados = 0; ContadorDados < 4; ContadorDados++)
			{
				if(ExibicaoDados[ContadorDados] > 0 && ((pJogo->JogadorAtual == PCA_PecaPreta && NumeroCasaDestino < 7 && (NumeroCasaDestino) == ExibicaoDados[ContadorDados]) || (pJogo->JogadorAtual == PCA_PecaBranca && NumeroCasaDestino > 18 && (24 - NumeroCasaDestino + 1) == ExibicaoDados[ContadorDados])))
				{
					TAB_ContarPecas(pJogo->pTabuleiro, NumeroCasaDestino, PecaOponente, &ContagemPecasTemp);

					if(ContagemPecasTemp > 1)
					{
						printf("Você não pode mover para esta casa. Há mais de uma peça do oponente nesta casa.\n");
						ErroPermissao = false;
						break;
					} /* if */
					
					if(ContagemPecasTemp == 1)
					{
						TAB_RemoverPeca(pJogo->pTabuleiro, PecaOponente, &pPecaTemp, NumeroCasaDestino);
						BAR_InserirPeca(pJogo->pPecasCapturadas, pPecaTemp);
					} /* if */

					BAR_RemoverPeca(pJogo->pPecasCapturadas, pJogo->JogadorAtual, &pPecaTemp);
					TAB_InserirPeca(pJogo->pTabuleiro, pPecaTemp, NumeroCasaDestino);

					ExibicaoDados[ContadorDados] = 0;
					JogadaTerminou = true;
					break;
				} /* if */
			} /* for */
		} /* if */
		else
		{
			JogadorPodeFinalizarPecas = JogadorAtualPodeFinalizarPecas(pJogo);

			if(JogadorPodeFinalizarPecas == true)
			{
				printf("\n\nVocê já pode retirar peças do tabuleiro. Utilize '0' como casa de destino para remover uma peça.\n\n");
			} /* if */

			printf("\n\nCasa de origem: ");
			
			CondRetComando = LeCasa(&NumeroCasaOrigem);

			if (CondRetComando == CondRetComandoSalvar)
			{
				SalvarJogo(pJogo, ExibicaoDados);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoDobrar)
			{
				DobrarPartida(pJogo);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoSair)
			{
				if (SairJogo(pJogo) == true)
				{
					return false;
				} /* if */

				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoErro)
			{
				printf("\n\nErro. As casas são numeradas de 1-24. Pressione qualquer tecla para continuar...\n");
				_getch();
				LimparBufferTeclado();
				ErroPermissao = false;
				break;
			} /* if */

			printf("Casa de destino: ");
			
			CondRetComando = LeCasa(&NumeroCasaDestino);

			if (CondRetComando == CondRetComandoSalvar)
			{
				SalvarJogo(pJogo, ExibicaoDados);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoDobrar)
			{
				DobrarPartida(pJogo);
				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoSair)
			{
				if (SairJogo(pJogo) == true)
				{
					return false;
				} /* if */

				return true;
			} /* if */
			else if (CondRetComando == CondRetComandoErro)
			{
				printf("\n\nErro. As casas são numeradas de 1-24. Pressione qualquer tecla para continuar...\n");
				_getch();
				LimparBufferTeclado();
				ErroPermissao = false;
				break;
			} /* if */
		
			for(ContadorDados = 0; ContadorDados < 4; ContadorDados++)
			{
				if(NumeroCasaDestino == 0 && JogadorPodeFinalizarPecas == false)
				{
					printf("Você não pode retirar peças do tabuleiro. Todas as suas peças devem estar no seu quadrante interno.\n");
					ErroPermissao = false;
					break;
				} /* if */
				else if(NumeroCasaDestino == 0 && JogadorPodeFinalizarPecas == true)
				{
					if(ExibicaoDados[ContadorDados] > 0 && ((pJogo->JogadorAtual == PCA_PecaPreta && NumeroCasaOrigem > 18 && (24 - NumeroCasaOrigem) <= ExibicaoDados[ContadorDados]) || (pJogo->JogadorAtual == PCA_PecaBranca && NumeroCasaOrigem < 7 && NumeroCasaOrigem <= ExibicaoDados[ContadorDados])))
					{
						CondicaoRetornoTabuleiro = TAB_RemoverPeca(pJogo->pTabuleiro, pJogo->JogadorAtual, &pPecaTemp, NumeroCasaOrigem);

						if(ValidarMovimentoPeca(CondicaoRetornoTabuleiro) == false)
						{
							ErroPermissao = false;
							break;
						} /* if */

						PCF_InserirPeca(pJogo->pPecasFinalizadas, pPecaTemp);

						ExibicaoDados[ContadorDados] = 0;
						JogadaTerminou = true;
						break;
					} /* if */
				} /* if */
				else
				{
					if(ExibicaoDados[ContadorDados] > 0 && ((pJogo->JogadorAtual == PCA_PecaPreta && (NumeroCasaDestino - NumeroCasaOrigem) == ExibicaoDados[ContadorDados]) || (pJogo->JogadorAtual == PCA_PecaBranca && (NumeroCasaOrigem - NumeroCasaDestino) == ExibicaoDados[ContadorDados])))
					{
						TAB_ContarPecas(pJogo->pTabuleiro, NumeroCasaDestino, PecaOponente, &ContagemPecasTemp);

						if(ContagemPecasTemp > 1)
						{
							printf("Você não pode mover para esta casa. Há mais de uma peça do oponente nesta casa.\n");
							ErroPermissao = false;
							break;
						} /* if */

						CondicaoRetornoTabuleiro = TAB_MoverPeca(pJogo->pTabuleiro, pJogo->JogadorAtual, NumeroCasaOrigem, NumeroCasaDestino);

						if(ValidarMovimentoPeca(CondicaoRetornoTabuleiro) == false)
						{
							ErroPermissao = false;
							break;
						} /* if */

						if(CondicaoRetornoTabuleiro == TAB_CondRetOK)
						{
							if(ContagemPecasTemp == 1)
							{
								TAB_RemoverPeca(pJogo->pTabuleiro, PecaOponente, &pPecaTemp, NumeroCasaDestino);
								BAR_InserirPeca(pJogo->pPecasCapturadas, pPecaTemp);
							} /* if */

							ExibicaoDados[ContadorDados] = 0;
							JogadaTerminou = true;
							break;
						} /* if */
					} /* if */
				} /* else */
			} /* for */
		} /* else */

		if(ErroPermissao == true && JogadaTerminou == false)
		{
			if(ContagemPecasCapturadasTemp > 0)
			{
				printf("Você deve reentrar em uma casa de seu quadrante interno cuja distância corresponda ao valor do dado.\n");
			} /* if */
			else
			{
				printf("Você não pode mover para esta casa. O valor do dado não corresponde com a distância entre as casas escolhidas.\n");
			} /* else */
		} /* if */
	} /* if */

	return true;
} /* Fim função: Processa jogada */

/***********************************************************************
*
*  $FC Função: Processar rodada
*
*  $ED Descrição da função
*     Função responsável por processar uma rodada.
*
*  $FV Valor retornado
*     Retorna true se a rodada foi executada com sucesso, ou false caso contrário.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo cuja partida terá os recursos liberados
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*     $P PartidaIniciada - valor que indica se a partida foi iniciada (true) ou não (false)
*
***********************************************************************/
bool ProcessarRodada(JGO_tpJogo *pJogo, int ExibicaoDados[4], bool PartidaIniciada)
{
	char *FormatoDisputaDados = "\n\n%s ganhou a disputa de dados. \n";
	
	int ContagemJogadas = 0;
	int ContagemPecasCapturadasTemp;

	while(JogadasDisponiveis(pJogo, ExibicaoDados) == true)
	{
		ImprimirTabuleiro(pJogo, ExibicaoDados);

		if(PartidaIniciada == false)
		{
			if (pJogo->JogadorAtual == PCA_PecaBranca)
			{
				printf(FormatoDisputaDados, pJogo->NomeJogadorPecasBrancas);
			} /*if*/
			else 
			{
				printf(FormatoDisputaDados, pJogo->NomeJogadorPecasPretas);
			} /*if*/

			PartidaIniciada = true;
		}

		if (pJogo->JogadorAtual == PCA_PecaBranca)
		{
			printf("\n\nSua vez, %s (Brancas)\n", pJogo->NomeJogadorPecasBrancas);
		} /*if*/

		else 
		{
			printf("\n\nSua vez, %s (Pretas)\n", pJogo->NomeJogadorPecasPretas);
		} /*if*/

		if (ProcessarJogada(pJogo, ExibicaoDados) == false)
		{
			return false;
		} /* if */

		if(pJogo->PartidaTerminouDobra == true)
		{
			return true;
		} /* if */

		ContagemJogadas++;
	} /* while */

	if (ContagemJogadas == 0)
	{
		BAR_ContarPecas(pJogo->pPecasCapturadas, pJogo->JogadorAtual, &ContagemPecasCapturadasTemp);

		if (ContagemPecasCapturadasTemp > 0)
		{
			printf("\n\nNão há casas disponíveis para a reentrada. Pressione qualquer tecla para continuar...\n");
		} /* if */
		else
		{
			printf("\n\nNão há jogadas disponíveis. Pressione qualquer tecla para continuar...\n");
		} /* if */

		_getch();
		LimparBufferTeclado();
	} /* if */

	if(pJogo->JogadorAtual == PCA_PecaBranca) 
	{
		pJogo->JogadorAtual = PCA_PecaPreta;
	} /* if */
	else
	{
		pJogo->JogadorAtual = PCA_PecaBranca;
	} /* else */

	return true;
} /* Fim função: Processa rodada */

/***********************************************************************
*
*  $FC Função: Jogar dados
*
*  $ED Descrição da função
*     Joga 2 dados de 1 a 6, preenchendo o vetor de exibição, duplicando os dados caso os valores sejam iguais.
*
*  $FV Valor retornado
*     Retorna true se os dados foram jogados com sucesso e false caso contrário
*
*  $EP Parâmetros
*     $P pDados - ponteiro para os dados
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool JogarDados(DAD_tpDado *pDados, int ExibicaoDados[4])
{
	DAD_tpCondRet CondicaoRetornoDado;

	CondicaoRetornoDado = DAD_JogarDados(pDados);

	if (CondicaoRetornoDado == DAD_CondRetDadoNaoExiste)
	{
		printf("\n[ERRO] Dado não existe. Partida será encerrada\n");
		return false;
	} /* if */

	DAD_ObterValores(pDados, &ExibicaoDados[0], &ExibicaoDados[1]);
	
	if (ExibicaoDados[0] == ExibicaoDados[1]) // Duplicando jogadas
	{
		ExibicaoDados[2] = ExibicaoDados[0];
		ExibicaoDados[3] = ExibicaoDados[0];
	} /* if */
	else
	{
		ExibicaoDados[2] = -1;
		ExibicaoDados[3] = -1;
	} /* if */

	return true;
} /* Fim função: Jogar dados */

/***********************************************************************
*
*  $FC Função: Processar partida
*
*  $ED Descrição da função
*     Processa a partida
*
*  $FV Valor retornado
*     Retorna true se o jogo deve continuar, false caso contrário
*
*  $EP Parâmetros
*     pJogo - ponteiro para o jogo atual
*     ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool ProcessarPartida(JGO_tpJogo *pJogo, int ExibicaoDados[4])
{
	bool PartidaIniciada = false;

	if (ExibicaoDados[0] != -1)
	{
		PartidaIniciada = true;
	} /* if */
	else
	{
		while (ExibicaoDados[0] == ExibicaoDados[1])
		{
			if (JogarDados(pJogo->pDados, ExibicaoDados) == false)
			{
				return false;
			}
		} /* while */

		if (ExibicaoDados[0] > ExibicaoDados[1])
		{
			pJogo->JogadorAtual = PCA_PecaBranca;
		} /* if */
		else
		{
			pJogo->JogadorAtual = PCA_PecaPreta;
		} /* else */
	} /* else */

	while (PartidaTerminou(pJogo) == false) 
	{
		TocarEfeitoDado();

		if (ProcessarRodada(pJogo, ExibicaoDados, PartidaIniciada) == false)
		{
			return false;
		} /* if */

		if(pJogo->PartidaTerminouDobra == true)
		{
			return true;
		}

		PararEfeitoDado();

		if (JogarDados(pJogo->pDados, ExibicaoDados) == false)
		{
			return false;
		} /* if */

		if (PartidaIniciada == false)
		{
			PartidaIniciada = true;
		} /* if */
	} /* while */

	ImprimirTabuleiro(pJogo, ExibicaoDados);

	return true;
} /* Fim função: Processar partida */

/***********************************************************************
*
*  $FC Função: Processar resultado da partida
*
*  $ED Descrição da função
*     Processar resultado da partida
*
*  $EP Parâmetros
*     pJogo - ponteiro para o jogo atual
*
***********************************************************************/
void ProcessarResultadoPartida(JGO_tpJogo *pJogo)
{
	char *NomeJogadorVencedor;

	int ContagemPecasBrancasFinalizadas;
	int ContagemPecasPretasFinalizadas;

	int PontuacaoPartida;

	PCA_tpCorPeca CorJogadorVencedor;

	PCF_ContarPecas(pJogo->pPecasFinalizadas, PCA_PecaBranca, &ContagemPecasBrancasFinalizadas);
	PCF_ContarPecas(pJogo->pPecasFinalizadas, PCA_PecaPreta, &ContagemPecasPretasFinalizadas);
	
	if(pJogo->PartidaTerminouDobra == true)
	{
		if(pJogo->JogadorAtual == PCA_PecaBranca)
		{
			NomeJogadorVencedor = pJogo->NomeJogadorPecasBrancas;
			CorJogadorVencedor = PCA_PecaBranca;
		}
		else
		{
			NomeJogadorVencedor = pJogo->NomeJogadorPecasPretas;
			CorJogadorVencedor = PCA_PecaPreta;
		}

		pJogo->PartidaTerminouDobra = false;
	}
	else
	{
		if(ContagemPecasBrancasFinalizadas == 15) 
		{
			NomeJogadorVencedor = pJogo->NomeJogadorPecasBrancas;
			CorJogadorVencedor = PCA_PecaBranca;
		}
		else
		{
			NomeJogadorVencedor = pJogo->NomeJogadorPecasPretas;
			CorJogadorVencedor = PCA_PecaPreta;
		}
	}

	DPT_ObterPontuacaoPartida(pJogo->pDadoPontos, &PontuacaoPartida);

	if(CorJogadorVencedor == PCA_PecaPreta)
	{
		pJogo->PontuacaoAcumuladaJogadorPecasPretas += PontuacaoPartida;
	}
	else
	{
		pJogo->PontuacaoAcumuladaJogadorPecasBrancas += PontuacaoPartida;
	}
	
	printf("\n\nA partida acabou. %s venceu.\n\nPONTUAÇÃO %s: %d\nPONTUAÇÃO %s: %d\n", NomeJogadorVencedor, pJogo->NomeJogadorPecasBrancas, pJogo->PontuacaoAcumuladaJogadorPecasBrancas, pJogo->NomeJogadorPecasPretas, pJogo->PontuacaoAcumuladaJogadorPecasPretas);
} /* Fim função: Imprimir resultado da partida */

/***********************************************************************
*
*  $FC Função: Criar estruturas partida
*
*  $ED Descrição da função
*     Cria estruturas da partidas
*
*  $FV Valor retornado
*     Retorna verdadeiro caso as estruturas tenham sido criadas corretamente
*
*  $EP Parâmetros
*     pJogo - ponteiro para o jogo
*
***********************************************************************/
bool CriarEstruturasPartida(JGO_tpJogo *pJogo)
{
	if (DPT_CriarDadoPontos(&pJogo->pDadoPontos) != DPT_CondRetOK)
	{
		printf("\n[ERRO] - Erro ao criar o dado de pontos.\n");
		return false;
	} /* if */

	if (BAR_CriarListaPecasCapturadas(&pJogo->pPecasCapturadas) != BAR_CondRetOK)
	{
		printf("\n[ERRO] - Erro ao criar a lista de peças capturadas.\n");
		return false;
	} /* if */

	if (PCF_CriarListaPecasFinalizadas(&pJogo->pPecasFinalizadas) != PCF_CondRetOK)
	{
		printf("\n[ERRO] - Erro ao criar a lista de peças finalizadas.\n");
		return false;
	} /* if */

	if (TAB_CriarTabuleiro(&pJogo->pTabuleiro) != TAB_CondRetOK)
	{
		printf("\n[ERRO] - Erro ao criar o tabuleiro.\n");
		return false;
	}

	LIS_InserirElementoAntes(pListaJogo, pJogo->pTabuleiro);
	LIS_InserirElementoAntes(pListaJogo, pJogo->pPecasFinalizadas);
	LIS_InserirElementoAntes(pListaJogo, pJogo->pPecasCapturadas);
	LIS_InserirElementoAntes(pListaJogo, pJogo->pDadoPontos);

	pJogo->PrimeiraDobraPartidaRealizada = false;

	return true;
} /* Fim função: Criar estruturas partida */

/***********************************************************************
*
*  $FC Função: Iniciar nova partida
*
*  $ED Descrição da função
*     Inicia uma nova partida de gamão.
*
*  $FV Valor retornado
*     Se a partida foi iniciada com sucesso, retorna true. Caso contrário, retorna false.
*
*  $EP Parâmetros
*     pJogo - ponteiro para o jogo
*
***********************************************************************/
bool IniciarNovaPartida(JGO_tpJogo *pJogo)
{
	int PecasBrancas[24] = { 0, 0, 0, 0, 0, 5, 0, 3, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 };
	int PecasPretas[24] = { 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 3, 0, 5, 0, 0, 0, 0, 0 };

	int ExibicaoDados[4] = { -1, -1, -1, -1 };

	system("cls");

	printf("Iniciando nova partida...\n");

	Sleep(100);

	if (CriarEstruturasPartida(pJogo) == false)
	{
		return false;
	}

	LIS_InserirElementoAntes(pListaJogo, pJogo->pDados);

	InserirPecasVetor(pJogo->pTabuleiro, PecasBrancas, PCA_PecaBranca);
	InserirPecasVetor(pJogo->pTabuleiro, PecasPretas, PCA_PecaPreta);

	if (ProcessarPartida(pJogo, ExibicaoDados) == true)
	{
		ProcessarResultadoPartida(pJogo);
		DestruirPartida(pJogo);
		return true;
	}

	return false;
} /* Fim função: Iniciar nova partida */

/***********************************************************************
*
*  $FC Função: Iniciar partida existente
*
*  $ED Descrição da função
*     Limpa o buffer de entrada (stdin).
*
*  $FV Valor retornado
*     Ponteiro para o nó criado.
*     Será NULL caso a memória tenha se esgotado.
*     Os ponteiros dos nós vizinhos e o valor do nó criado estarão nulos.
*
*  $EP Parâmetros
*     $P pJogo - ponteiro para o jogo atual
*     $P PontuacaoAtual - pontuação atual do dado de pontos
*     $P ExibicaoDados - vetor contendo os valores de cada dado, a serem exibidos na tela
*
***********************************************************************/
bool IniciarPartidaExistente(JGO_tpJogo *pJogo, int PontuacaoAtual, int ExibicaoDados[4])
{
	system("cls");

	printf("Carregando partida...\n");

	Sleep(100);

	if (ProcessarPartida(pJogo, ExibicaoDados) == true)
	{
		ProcessarResultadoPartida(pJogo);
		DestruirPartida(pJogo);
		return true;
	}

	return false;
} /* Fim função: Iniciar partida existente */

/***********************************************************************
*
*  $FC Função: Criar jogo
*
*  $ED Descrição da função
*     Cria um novo jogo de gamão
*
*  $EP Parâmetros
*     $P NomeJogadorPecasBrancas - nome dado ao jogador que controla as peças brancas
*     $P NomeJogadorPecasPretas - nome dado ao jogador que controla as peças pretas
*
***********************************************************************/
void CriarJogo(char NomeJogadorPecasBrancas[80], char NomeJogadorPecasPretas[80])
{
	JGO_tpJogo *pJogo;

	int Opcao;

	pListaJogo = LIS_CriarLista(DestruirListaJogo);

	pJogo = (JGO_tpJogo *)malloc(sizeof(JGO_tpJogo));

	if (pJogo == NULL)
	{
		printf("[ERRO] - Não foi possível alocar memória para o jogo.");
		return;
	} /* if */

	pJogo->NomeJogadorPecasBrancas = NomeJogadorPecasBrancas;
	pJogo->PontuacaoAcumuladaJogadorPecasBrancas = 0;
	pJogo->NomeJogadorPecasPretas = NomeJogadorPecasPretas;
	pJogo->PontuacaoAcumuladaJogadorPecasPretas = 0;

	if (DAD_CriarDados(&pJogo->pDados) != DAD_CondRetOK)
	{
		printf("[ERRO] - Não foi possível criar o dado.");
		exit(-1);
	} /* if */

	PararMusicaPrincipal();

	do
	{
		if (IniciarNovaPartida(pJogo) == false)
		{
			return;
		} /* if */

		printf("\n\nDesejam iniciar uma nova partida? Digite 'S' para Sim, ou 'N' para não.\n");

		do {
			LimparBufferTeclado();
			Opcao = _getch();
		} while (Opcao != 'S' && Opcao != 's' && Opcao != 'N' && Opcao != 'n');
		LimparBufferTeclado();
		printf("%c", Opcao);
		Sleep(200);

	} /* do */
	while (Opcao != 'N' && Opcao != 'n');

	DAD_DestruirDados(&pJogo->pDados);

	LIS_DestruirLista(pListaJogo);

	CarregarTelaInicial();
} /* Fim função: Criar jogo */

/***********************************************************************
*
*  $FC Função: Carregar tela de novo jogo
*
*  $ED Descrição da função
*     Carrega tela que inicia um novo jogo
*
***********************************************************************/
void CarregarTelaNovoJogo()
{
	char NomeJogadorPecasBrancas[80];
	char NomeJogadorPecasPretas[80];
	char *FormatoInputNomeJogador = " %[^\n]s";

	system("cls");

	printf(" :: NOVO JOGO :: \n\nNome do jogador 1 (Peça branca): ");

	scanf_s(FormatoInputNomeJogador, &NomeJogadorPecasBrancas);
	LimparBufferTeclado();

	printf("\nNome do jogador 2 (Peça preta): ");

	scanf_s(FormatoInputNomeJogador, &NomeJogadorPecasPretas);
	LimparBufferTeclado();

	while (strcmp(NomeJogadorPecasBrancas, NomeJogadorPecasPretas) == 0)
	{
		printf("\n\nO nome do jogador 2 deve ser diferente do nome do jogador 1.\n\nNome do jogador 2 (Peça preta): ");

		scanf_s(FormatoInputNomeJogador, &NomeJogadorPecasPretas);
		LimparBufferTeclado();
	}

	CriarJogo(NomeJogadorPecasBrancas, NomeJogadorPecasPretas);
} /* Fim função: Carregar tela de novo jogo */

int main(void)
{
	int Comando = -1;

	setlocale(LC_ALL, "");

	system("mode con: cols=110 lines=75 ");

	CarregarTelaInicial();

	while (Comando != SAIR_CMD)
	{
		Comando = _getch();
		LimparBufferTeclado();
		ProcessaComando(Comando);
	} /* while */

	return 0;
}

/********** Fim do módulo de implementação: Módulo jogo **********/