escritor([romancista1]).
escritor([ficcao2]).
escritor([outro3]).

escritoPor([romanceA1], [romancista1]).
escritoPor([romanceB1], [romancista1]).
escritoPor([romanceC1], [romancista1]).
escritoPor([romanceA2], [ficcao2]).
escritoPor([pecaA2], [ficcao2]).
escritoPor([romanceB2], [ficcao2]).
escritoPor([outroA3], [outro3]).
escritoPor([outroB3], [outro3]).

tipo([romanceA1], romance).
tipo([romanceB1], romance).
tipo([romanceC1], romance).
tipo([romanceA2], romance).
tipo([pecaA2], peca-teatro).
tipo([romanceB2], romance).
tipo([outroA3], outro).
tipo([outroB3], outro).

publicado([romanceA1],1999).
publicado([romanceB1],1899).
publicado([romanceC1],1999).

publicado([romanceA2],1600).
publicado([pecaA2],1400).
publicado([romanceB2],2019).

publicado([outroA3],1999).
publicado([outroB3],2010).

% Regras

eh_ficcao(X) :- tipo(X, romance); tipo(X, peca-teatro).
eh_romancista(X) :- escritor(X), forall((escritoPor(T, X)), (tipo(T, romance))).
eh_moderno(X) :- escritor(X), forall((escritoPor(T, X)), (publicado(T, ANO),ANO > 1900)).

% Existe algum romance escrito por X?
existe_romance_por(X) :- (escritor(X), escritoPor(R,X), tipo(R,romance)), !.

% Existem romancistas modernos?
existem_romancistas_modernos() :- (eh_romancista(X), eh_moderno(X)), !.

% Testes

%eh_ficcao([romanceB1]), !.
%eh_romancista([romancista1]), !.

%eh_ficcao([pecaA2]), !.
%not(eh_romancista([ficcao2])), !.

%not(eh_ficcao([outroA3])), !.
%not(eh_romancista([outro3])), !.

%not(eh_moderno([romancista1])), !.
%not(eh_moderno([ficcao2])), !.
%eh_moderno([outro3]), !.

%not(existem_romancistas_modernos()).
%not(existe_romance_por([outro3])).
%existe_romance_por([ficcao2]).
%existe_romance_por([romancista1]).
