prefixo([P|Ps],[L|Ls]) :- (P == L),(prefixo(Ps,Ls)), !.
prefixo([],_) :- true, !.
prefixo(_,[]) :- false, !.

lstequals([],[]) :- true, !.
lstequals([X|Xs],[Y|Ys]) :- (X == Y),(lstequals(Xs,Ys)), !.
lstequals([],_) :- false, !.
lstequals(_,[]) :- false, !.

sufixo([S|Ss],[L|Ls]) :- ((S == L),lstequals(Ss,Ls));(sufixo([S|Ss],Ls)), !.
sufixo([],_) :- true, !.
sufixo(_,[]) :- false, !.

% Tests

%prefixo([from,whom],[from,whom,the,bells,tolls]).
%sufixo([bells,tolls],[from,whom,the,bells,tolls]).

%prefixo([a],[a]).
%prefixo([],[]).
%prefixo([from,whom,the],[from,whom,the,bells,tolls]).
%prefixo([from],[from,whom,the,bells,tolls]).
%not(prefixo([bells,tolls],[from,whom,the,bells,tolls])).
%not(prefixo([from,who],[from,whom,the,bells,tolls])).

%not(sufixo([bells,tolls],[from,whom,the,bells,tolls,a])).
%not(sufixo([a,bells,tolls],[from,whom,the,bells,tolls])).
%sufixo([the,bells,tolls],[from,whom,the,bells,tolls]).
%sufixo([],[from,whom,the,bells,tolls]).
%not(sufixo([bells,tolls],[])).