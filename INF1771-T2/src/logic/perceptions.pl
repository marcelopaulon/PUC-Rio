perceptions_perceiveHole(X, Y) :- adjacent(X, Y, XX, YY), holeCell(XX, YY), !.
perceptions_perceiveHole() :- curPosition(X, Y, _), perceptions_perceiveHole(X, Y), !.

perceptions_perceiveEnemy(X, Y) :- adjacent(X, Y, XX, YY), enemyCell(_, _, XX, YY), !.
perceptions_perceiveEnemy() :- curPosition(X, Y, _), perceptions_perceiveEnemy(X, Y), !.

perceptions_perceiveTeletransport(X, Y) :- adjacent(X, Y, XX, YY), teletransportCell(XX, YY), !.
perceptions_perceiveTeletransport() :- curPosition(X, Y, _), perceptions_perceiveTeletransport(X, Y), !.

perceptions_perceiveDanger(X, Y) :- (perceptions_perceiveHole(X, Y); perceptions_perceiveEnemy(X, Y); perceptions_perceiveTeletransport(X, Y)), !.
perceptions_perceiveDanger() :- curPosition(X, Y, _), perceptions_perceiveDanger(X, Y), !.

/****************************************************************************/

updateEnemyCertainties() :- 
	enemyCell(_, _, X, Y),
	mightHaveEnemy(X, Y),
	XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
	(
		((wallCell(XA, Y));visited(XA,Y)),
		((wallCell(XB, Y));visited(XB,Y)),
		((wallCell(X, YA));visited(X,YA)),
		((wallCell(X, YB));visited(X,YB))
	),
	retractall(mightHaveEnemy(X, Y)), assert(hasEnemy(X, Y)).
	
updateTeletransportCertainties() :-
	teletransportCell(X, Y),
	mightHaveTeletransport(X, Y),
	XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
	(
		((wallCell(XA, Y));visited(XA,Y)),
		((wallCell(XB, Y));visited(XB,Y)),
		((wallCell(X, YA));visited(X,YA)),
		((wallCell(X, YB));visited(X,YB))
	),
	retractall(mightHaveTeletransport(X, Y)), assert(hasTeletransport(X, Y)).
	
updateHoleCertainties() :-
	holeCell(X, Y),
	mightHaveHole(X, Y),
	XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
	(
		((wallCell(XA, Y));visited(XA,Y)),
		((wallCell(XB, Y));visited(XB,Y)),
		((wallCell(X, YA));visited(X,YA)),
		((wallCell(X, YB));visited(X,YB))
	),
	retractall(mightHaveHole(X, Y)), assert(hasHole(X, Y)).
	
updateCertainties() :-
	(updateEnemyCertainties();1=1),
	(updateTeletransportCertainties();1=1),
	(updateHoleCertainties();1=1), !.

removeCurrentCellUncertainties() :- 
		curPosition(X, Y, _),
		(
			((not(holeCell(X, Y)), assert(doesNotHaveHole(X, Y)), retractall(mightHaveHole(X, Y)));1=1),
			((not(enemyCell(_, _, X, Y)), assert(doesNotHaveEnemy(X, Y)), retractall(mightHaveEnemy(X, Y)));1=1),
			((not(teletransportCell(X, Y)), assert(doesNotHaveTeletransport(X, Y)), retractall(mightHaveTeletransport(X, Y)));1=1)
		), !.

perceptions_updateUncertainties() :- (
		(removeCurrentCellUncertainties();1=1),
		((perceptions_perceiveHole(), setAdjacenciesMightHaveHole());1=1),
		((perceptions_perceiveEnemy(), setAdjacenciesMightHaveEnemy());1=1),
		((perceptions_perceiveTeletransport(), setAdjacenciesMightHaveTeletransport());1=1),
		(( not(perceptions_perceiveHole()), removeAdjacentHoleUncertainties() );1=1),
		(( not(perceptions_perceiveEnemy()), removeAdjacentEnemyUncertainties() );1=1),
		(( not(perceptions_perceiveTeletransport()), removeAdjacentTeletransportUncertainties() );1=1),
		((updateCertainties());1=1)
	), !.
	
/****************************************************************************/

removeAdjacentHoleUncertainty(X, Y) :- assert(doesNotHaveHole(X, Y)), retractall(mightHaveHole(X, Y)), !.	
removeAdjacentHoleUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentHoleUncertainty(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), removeAdjacentHoleUncertainty(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentHoleUncertainty(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), removeAdjacentHoleUncertainty(X, YYY) );1=1), !.

/****************************************************************************/

removeAdjacentEnemyUncertainties(X, Y) :- assert(doesNotHaveEnemy(X, Y)), retractall(mightHaveEnemy(X, Y)), !.			   
removeAdjacentEnemyUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentEnemyUncertainties(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), removeAdjacentEnemyUncertainties(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentEnemyUncertainties(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), removeAdjacentEnemyUncertainties(X, YYY) );1=1), !.

/****************************************************************************/

removeAdjacentTeletransportUncertainty(X, Y) :- assert(doesNotHaveTeletransport(X, Y)), retractall(mightHaveTeletransport(X, Y)), !.							   
removeAdjacentTeletransportUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentTeletransportUncertainty(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), removeAdjacentTeletransportUncertainty(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentTeletransportUncertainty(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), removeAdjacentTeletransportUncertainty(X, YYY) );1=1), !.

/****************************************************************************/
	
setMightHaveHole(X, Y) :- not(visited(X, Y)), not(doesNotHaveHole(X, Y)), assert(mightHaveHole(X, Y)), !.
setAdjacenciesMightHaveHole() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveHole(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), setMightHaveHole(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveHole(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), setMightHaveHole(X, YYY) );1=1), !.

/****************************************************************************/

setMightHaveEnemy(X, Y) :- not(visited(X, Y)), not(hasEnemy(X, Y)), not(doesNotHaveEnemy(X, Y)), assert(mightHaveEnemy(X, Y)), !.
setAdjacenciesMightHaveEnemy() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveEnemy(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), setMightHaveEnemy(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveEnemy(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), setMightHaveEnemy(X, YYY) );1=1), !.

/****************************************************************************/

setMightHaveTeletransport(X, Y) :- not(visited(X, Y)), not(hasTeletransport(X, Y)), not(doesNotHaveTeletransport(X, Y)), assert(mightHaveTeletransport(X, Y)), !.
setAdjacenciesMightHaveTeletransport() :-
	curPosition(X, Y, _),
	not(hasTeletransport(X, Y)), 
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveTeletransport(XX, Y) );1=1),
	(( XXX is X-1, adjacent(X, Y, XXX, Y), setMightHaveTeletransport(XXX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveTeletransport(X, YY) );1=1),
	(( YYY is Y-1, adjacent(X, Y, X, YYY), setMightHaveTeletransport(X, YYY) );1=1), !.
	
/****************************************************************************/