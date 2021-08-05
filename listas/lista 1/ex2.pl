edge(alcapao,buraco).
edge(alcapao,caverna).
edge(buraco,rio).
edge(caverna,rio).
edge(rio,estabulo).
edge(lareira,tunel).

connected(X,Y) :- edge(X,Y).
connected(X,Y) :- edge(X,T), connected(T,Y).

% Tests

%connected(alcapao,estabulo), !.
%not(connected(rio,lareira)), !.

%connected(alcapao,buraco), !.
%connected(alcapao,caverna), !.
%connected(alcapao,rio), !.
%connected(caverna,rio), !.
%connected(buraco,rio), !.
%connected(rio,estabulo), !.
%connected(buraco,estabulo), !.
%connected(caverna,estabulo), !.
%connected(lareira,tunel), !.
%not(connected(tunel,lareira)), !.
%not(connected(alcapao,lareira)), !.
%not(connected(alcapao,tunel)), !.
%not(connected(tunel,estabulo)), !.
