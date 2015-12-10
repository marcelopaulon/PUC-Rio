#if ! defined( LISTA_ )
#define LISTA_
/***************************************************************************
*
*  $MCD Módulo de definição: LIS  Lista duplamente encadeada
*
*  Arquivo gerado:              LISTA.h
*  Letras identificadoras:      LIS
*
*  Nome da base de software:    Arcabouço para a automação de testes de programas redigidos em C
*  Arquivo da base de software: D:\AUTOTEST\PROJETOS\LISTA.BSW
*
*  Projeto: INF 1301 / 1628 Automatização dos testes de módulos C
*  Gestor:  LES/DI/PUC-Rio
*  Autores: avs,fmc,mpv,rfs
*
*  $HA Histórico de evolução:
*     Versão  Autor            Data           Observações
*	  5       fmc,mpv,rfs  27/nov/2015 instrumentação / cobertura
*     4       avs          01/fev/2006 criar linguagem script simbólica
*     3       avs          08/dez/2004 uniformização dos exemplos
*     2       avs          07/jul/2003 unificação de todos os módulos em um só projeto
*     1       avs          16/abr/2003 início desenvolvimento
*
*  $ED Descrição do módulo
*     Implementa listas genéricas duplamente encadeadas.
*     Podem existir n listas em operação simultaneamente.
*     As listas possuem uma cabeça encapsulando o seu estado.
*
*     Cada lista é homogênea quanto ao tipo dos dados que armazena.
*     Cada elemento da lista referencia o valor que contém.
*
*     Os ponteiros para os dados são copiados para elementos da lista.
*        Não é copiado o valor apontado por estes ponteiros.
*
*     O controle da destruição do valor de um elemento a ser excluído
*        é realizado por uma função fornecida pelo usuário.
*
*     Cada lista referencia uma função que determina como devem ser
*        desalocados os dados nela contidos.
*
*     A função de liberação dos valores contidos nos elementos deve
*        assegurar a liberação de todos os espaços referênciados pelo
*        valor contido em um elemento.
*        Esta função é chamada antes de se desalocar um elemento
*        de uma lista.
*        Caso não seja necessário desalocar o valor referenciado pelo
*        elemento, o ponteiro para a função de liberação poderá ser NULL .
*        Caso o elemento da lista seja a única âncora do valor referenciado,
*        esta função deve promover a destruição (free) desse valor e
*        de todos os dados nele ancorados.
*
***************************************************************************/
 
#if defined( LISTA_OWN )
   #define LISTA_EXT
#else
   #define LISTA_EXT extern
#endif

#ifdef _DEBUG
    #include   "GENERICO.H"
    #include   "CONTA.H"
    #include   "CESPDIN.H"
	#include   "IdTiposEspaco.def"
#endif

/***** Declarações exportadas pelo módulo *****/

/* Tipo referência para uma lista */

typedef struct LIS_tagLista * LIS_tppLista ;


/***********************************************************************
*
*  $TC Tipo de dados: LIS Condições de retorno
*
*
*  $ED Descrição do tipo
*     Condições de retorno das funções da lista
*
***********************************************************************/

   typedef enum {

         LIS_CondRetOK ,
               /* Concluiu corretamente */

         LIS_CondRetListaVazia ,
               /* A lista não contém elementos */

         LIS_CondRetFimLista ,
               /* Foi atingido o fim de lista */

         LIS_CondRetNaoAchou ,
               /* Não encontrou o valor procurado */

         LIS_CondRetFaltouMemoria,
               /* Faltou memória ao tentar criar um elemento de lista */

		 LIS_CondRetNaoExiste,
			   /* A lista não existe */

		 LIS_CondRetCorrenteIndefinido ,
           /* O elemento corrente não foi definido */

		#ifdef _DEBUG
			 LIS_CondRetAcaoDeturpacaoInexistente
			   /* Ação de deturpação não existe */
		#endif
   } LIS_tpCondRet ;

	/***********************************************************************
	*
	*  $TC Tipo de dados: LIS Modos de deturpação
	*
	*
	***********************************************************************/

	#ifdef _DEBUG

	typedef enum {

	   LIS_NaoDeturpa ,
	   /* não realiza ações de deturpação */

	   LIS_DeturpaEliminaCorrente ,
	   /* exclui o elemento corrente sem redefinir referências a ele*/

	   LIS_DeturpaNULLpProx ,
	   /* atribui NULL ao ponteiro para próximo */

	   LIS_DeturpaNULLpAnt ,
	   /* atribui NULL ao ponteiro para anterior */

	   LIS_DeturpaLixopProx ,
	   /* atribui ponteiro para lixo ao ponteiro para próximo */

	   LIS_DeturpaLixopAnt ,
	   /* atribui ponteiro para lixo ao ponteiro para anterior */

	   LIS_DeturpaNULLpValorCorrente ,
	   /* atribui NULL ao ponteiro para o valor do nó corrente */
	   
	   LIS_DeturpaAlteraTipoEstrutura ,
	   /* altera tipo de estrutura da lista */

	   LIS_DeturpaDesencadeiaSemFree ,
	   /* realiza processo de exclusão mas não libera (free) o elemento
	   (vazamento de memória) */
	   	   
	   LIS_DeturpaNULLpCorrente ,
	   /* atribui NULL ao ponteiro corrente */

	   LIS_DeturpaNULLpOrigem ,
	   /* atribui NULL ao ponteiro origem */

	   LIS_DeturpaAumentaNumeroElementos ,
	   /* deturpa o número de elementos, aumentando incorretamente o contador de elementos */

	   LIS_DeturpaNULLpUltimo ,
	   /* atribui NULL ao ponteiro para o último nó */

	   LIS_DeturpaLixopUltimo ,
	   /* atribui ponteiro para lixo ao ponteiro para o último nó */

	   LIS_DeturpaLixopCorrente ,
	   /* atribui ponteiro para lixo ao ponteiro para o nó corrente */

	   LIS_DeturpaAlteraTipoNoCorrente ,
	   /* altera tipo de estrutura do nó corrente */

	   LIS_DeturpaAlteraTipoOrigem ,
	   /* altera tipo de estrutura do primeiro nó */

	   LIS_DeturpaAlteraTipoUltimo ,
	   /* altera tipo de estrutura do último nó */

	   LIS_DeturpaNULLCabeca ,
	   /* atribui NULL ao ponteiro para a cabeça da lista */

	   LIS_DeturpaNumeroDeElementosNegativo ,
	   /* atribui um valor negativo ao número de elementos da lista */

	   LIS_DeturpaLixopValorCorrente ,
	   /* atribui ponteiro para lixo ao ponteiro para o valor do nó corrente */

	} LIS_tpModosDeturpacao;

	#endif

	/***********************************************************************
	*
	*  $TC Tipo de dados: LIS Condições de retorno da verificação da lista
	*
	*  $ED Descrição do tipo
	*     Descreve o que foi avaliado ao executar o VerificarLista
	*
	***********************************************************************/

	#ifdef _DEBUG

	typedef enum {

		LIS_Verificar_ListaInexistente,
		/* A lista passada como parâmetro não foi criada */

		LIS_Verificar_Cabeca_pPrimeiroNull,
		/* O ponteiro para o primeiro elemento é NULL e outro constituinte
		da cabeça da lista indica a existência de algum elemento */

		LIS_Verificar_Cabeca_pUltimoNull,
		/* O ponteiro para o último elemento é NULL e outro constituinte
		da cabeça da lista indica existência de algum elemento */
		
		LIS_Verificar_Cabeca_NumeroDeElementosInvalido,
		/* O número de elementos é assumiu um valor inválido ( menor que 0 ) */

		LIS_Verificar_Cabeca_pPrimeiroIncorreto,
		/* O elemento referenciado como primeiro possui um elemento anterior a ele */

		LIS_Verificar_Cabeca_pUltimoIncorreto,
		/* O elemento referenciado como último possui um elemento após ele */

		LIS_Verificar_Elemento_ErroNoEncadeamento,
		/* A lista não está inteiramente conectada, ou seja, houve alteração nas referências
		para o próximo elemento ou para o elemento anterior */

		LIS_Verificar_Elemento_pValorNull,
		/* O ponteiro para o objeto armazenado na lista é NULL */

		LIS_Verificar_Elemento_pValorErro,
		/* O ponteiro para o objeto armazenado na lista aponta para uma região
		inválida para o tipo de objeto da lista */

		LIS_Verificar_Cabeca_NumeroDeElementosInconsistente,
		/* O número de elementos difere da quantidade real de elementos */

		LIS_Verificar_Cabeca_pCorrenteInconsistente,
		/* O elemento corrente não pertence à lista */

		LIS_Verificar_Elemento_TipoInconsistente,
		/* O tipo do elemento é inválido */

		LIS_Verificar_Cabeca_TipoInconsistente,
		/* O tipo da cabeça é inválido */

		LIS_Verificar_Lista_VazamentoDeMemoria,
		/* Houve vazamento de memória */

		LIS_Verificar_ListaValida
		/* Não foram encontrados problemas estruturais na lista */

	} LIS_tpVerificar ;

	#endif

/***********************************************************************
*
*  $FC Função: LIS  &Criar lista
*
*  $ED Descrição da função
*     Cria uma lista genérica duplamente encadeada.
*     Os possíveis tipos são desconhecidos a priori.
*     A tipagem é implicita.
*     Não existe identificador de tipo associado à lista.
*
*  $EP Parâmetros
*     ExcluirValor  - ponteiro para a função que processa a
*                     exclusão do valor referenciado pelo elemento
*                     a ser excluído.
*                     Ver descrição do módulo.
*
*  $FV Valor retornado
*     Se executou corretamente retorna o ponteiro para a lista.
*     Este ponteiro será utilizado pelas funções que manipulem esta lista.
*
*     Se ocorreu algum erro, por exemplo falta de memória ou dados errados,
*     a função retornará NULL.
*     Não será dada mais informação quanto ao problema ocorrido.
*
***********************************************************************/

   LIS_tppLista LIS_CriarLista(
             void   ( * ExcluirValor ) ( void * pDado ) ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Destruir lista
*
*  $ED Descrição da função
*     Destrói a lista fornecida.
*     O parâmetro ponteiro para a lista não é modificado.
*     Se ocorrer algum erro durante a destruição, a lista resultará
*     estruturalmente incorreta.
*     OBS. não existe previsão para possíveis falhas de execução.
*
*  $FV Valor retornado
*     LIS_CondRetOK    - destruiu sem problemas
*
***********************************************************************/

   void LIS_DestruirLista( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Esvaziar lista
*
*  $ED Descrição da função
*     Elimina todos os elementos, sem contudo eliminar a lista
*
*  $EP Parâmetros
*     pLista - ponteiro para a lista a ser esvaziada
*
***********************************************************************/

   void LIS_EsvaziarLista( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Inserir elemento antes
*
*  $ED Descrição da função
*     Insere novo elemento antes do elemento corrente.
*     Caso a lista esteja vazia, insere o primeiro elemento da lista.
*
*  $EP Parâmetros
*     pLista - ponteiro para a lista onde deve ser inserido o elemento
*     pValor - ponteiro para o valor do novo elemento
*              Pode ser NULL
*
*  $FV Valor retornado
*     LIS_CondRetOK
*     LIS_CondRetFaltouMemoria
*
***********************************************************************/

   LIS_tpCondRet LIS_InserirElementoAntes( LIS_tppLista pLista ,
                                           void * pValor        ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Inserir elemento após
*
*  $ED Descrição da função
*     Insere novo elemento apás o elemento corrente.
*     Caso a lista esteja vazia, insere o primeiro elemento da lista.
*
*  $EP Parâmetros
*     Parâmetros
*        pLista - ponteiro para a lista onde deve ser inserido o elemento
*        pValor - ponteiro para o valor do novo elemento
*                 Pode ser NULL
*           
*
*  $FV Valor retornado
*     Valor retornado
*        LIS_CondRetOK
*        LIS_CondRetFaltouMemoria
*
***********************************************************************/

   LIS_tpCondRet LIS_InserirElementoApos( LIS_tppLista pLista ,
                                          void * pValor        )
       ;


/***********************************************************************
*
*  $FC Função: LIS  &Excluir elemento
*
*  $ED Descrição da função
*     Exclui o elemento corrente da lista dada.
*     Se existir o elemento a esquerda do corrente será o novo corrente.
*     Se não existir e existir o elemento à direita, este se tornará corrente.
*     Se este também não existir a lista tornou-se vazia.
*
*  $EP Parâmetros
*     pLista    - ponteiro para a lista na qual deve excluir.
*
*  $FV Valor retornado
*     LIS_CondRetOK
*     LIS_CondRetListaVazia
*
***********************************************************************/

   LIS_tpCondRet LIS_ExcluirElemento( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Obter referência para o valor contido no elemento
*
*  $ED Descrição da função
*     Obtem a referência para o valor contido no elemento corrente da lista
*
*  $EP Parâmetros
*     pLista - ponteiro para a lista de onde se quer o valor
*
*  $FV Valor retornado
*     não NULL - se o elemento corrente existe
*     NULL     - se a lista estiver vazia
*                Pode retornar NULL se o valor inserido no elemento for NULL.
*
***********************************************************************/

   void * LIS_ObterValor( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Ir para o elemento inicial
*
*  $ED Descrição da função
*     Torna corrente o primeiro elemento da lista.
*     Faz nada se a lista está vazia.
*
*  $EP Parâmetros
*     pLista - ponteiro para a lista a manipular
*
***********************************************************************/

   void IrInicioLista( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Ir para o elemento final
*
*  $ED Descrição da função
*     Torna corrente o elemento final da lista.
*     Faz nada se a lista está vazia.
*
*  $EP Parâmetros
*     pLista - ponteiro para a lista a manipular
*
***********************************************************************/

   void IrFinalLista( LIS_tppLista pLista ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Avançar elemento
*
*  $ED Descrição da função
*     Avança o elemento corrente NumeroDeElementos elementos na lista
*     Se NumeroDeElementos for positivo avança em direção ao final
*     Se NumeroDeElementos for negativo avança em direção ao início
*     NumeroDeElementos pode ser maior do que o númro de elementos existentes na
*               direção desejada
*     Se NumeroDeElementos for zero somente verifica se a lista está vazia
*
*  $EP Parâmetros
*     pLista  - ponteiro para a lista a ser manipulada
*     NumeroDeElementos - o número de elementos a andar
*
*  $FV Valor retornado
*     CondRetOK         - se NumeroDeElementos elementos tiverem sido andados
*     CondRetFimLista   - se encontrou o fim da lista antes de andar NumeroDeElementos
*                         elementos
*     CondRetListaVazia - se a lista está vazia
*
***********************************************************************/

   LIS_tpCondRet LIS_AvancarElementoCorrente( LIS_tppLista pLista ,
                                              int NumeroDeElementos ) ;


/***********************************************************************
*
*  $FC Função: LIS  &Procurar elemento contendo valor
*
*  $ED Descrição da função
*     Procura o elemento que referencia o valor dado.
*     A função compara ponteiro e não conteúdo apontado.
*
*  $EP Parâmetros
*     pLista  - ponteiro para a lista onde procura
*     pValor  - ponteiro para o valor procurado
*               Pode ser NULL
*
*  $FV Valor retornado
*     LIS_CondRetOK  - se encontrou.
*                      O elemento corrente é o primeiro elemento do
*                      elemento corrente inclusive para o fim da lista
*                      e que contém o ponteiro procurado
*
*     LIS_CondRetNaoEncontrou - se o ponteiro não foi encontrado
*                      O elemento corrente continua o mesmo
*     LIS_CondRetListaVazia   - se a lista estiver vazia
*
***********************************************************************/

   LIS_tpCondRet LIS_ProcurarValor( LIS_tppLista pLista ,
                                    void * pValor        ) ;

/***********************************************************************
*
*  $FC Função: LIS Deturpar Lista
*
*  $ED Descrição da função
*     Provoca uma determinada falha numa lista.
*     Serve como controle de teste da função LIS_VerificarLista
*
*  $EP Parâmetros
*     pLista   - Ponteiro para a cabeça da lista a ser deturpada
*     acao     - Ação de deturpação (ver definição de LIS_tpModosDeturpacao)
*
*  $FV Valor retornado
*     LIS_CondRetOk
*     LIS_CondRetListaInexistente
*     LIS_CondRetCorrenteIndefinido - caso não se tenha chamado a função
*                                      LIS_AvancarElementoCorrente antes de 
*									   uma ação que deturpe um elemento da lista
*     LIS_CondRetAcaoDeturpInexistente
*
***********************************************************************/

#ifdef _DEBUG

   LIS_tpCondRet LIS_DeturparLista( LIS_tppLista pLista, LIS_tpModosDeturpacao acao ) ;

#endif

/***********************************************************************
*
*  $FC Função: LIS Verificar Lista
*
*  $ED Descrição da função
*     Avalia se uma lista está estruturalmente correta.
*     Retorna o primeiro erro encontrado.
*
*  $EP Parâmetros
*     pLista    - Ponteiro para a cabeça da lista a ser verificada
*
*  $FV Valor retornado
*     Verificar os valores retornados citados anteriormente.
*     Apenas o primeiro erro é retornado.
*     A prioridade de retorno segue a ordem da declaração, então
*         LIS_Verificar_ListaValida só é retornado se não for 
*         encontrada nenhuma das condições de erro anteriores.
*     No caso de erros relativos à elementos, todos os elementos são
*         avaliados e, somente após a passagem por todos os elementos,
*         as condições seguintes de retorno são verificadas.     
*
***********************************************************************/

#ifdef _DEBUG

   LIS_tpVerificar LIS_VerificarLista( LIS_tppLista pLista ) ;

#endif

#undef LISTA_EXT

/********** Fim do módulo de definição: LIS  Lista duplamente encadeada **********/

#else
#endif
