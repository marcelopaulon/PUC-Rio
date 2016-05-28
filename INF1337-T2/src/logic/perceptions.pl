perceptions_perceiveHole(X, Y) :- adjacent(X, Y, XX, YY), holeCell(XX, YY), !.
perceptions_perceiveHole() :- curPosition(X, Y, _), perceptions_perceiveHole(X, Y), !.

perceptions_perceiveEnemy(X, Y) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), enemyCell(_, _, XX, YY), !.
perceptions_perceiveEnemy() :- curPosition(X, Y, _), perceptions_perceiveEnemy(X, Y), !.

perceptions_perceiveTeletransport(X, Y) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), teletransportCell(XX, YY), !.
perceptions_perceiveTeletransport() :- curPosition(X, Y, _), perceptions_perceiveTeletransport(X, Y), !.

perceptions_perceiveDanger(X, Y) :- (perceptions_perceiveHole(X, Y); perceptions_perceiveEnemy(X, Y); perceptions_perceiveTeletransport(X, Y)), !.
perceptions_perceiveDanger() :- curPosition(X, Y, _), perceptions_perceiveDanger(X, Y), !.

/****************************************************************************/

perceptions_updateUncertainties() :- (
		((perceptions_perceiveHole(), setAdjacenciesMightHaveHole());1=1),
		((perceptions_perceiveEnemy(), setAdjacenciesMightHaveEnemy());1=1),
		((perceptions_perceiveTeletransport(), setAdjacenciesMightHaveTeletransport());1=1),
		(( not(perceptions_perceiveHole()), removeAdjacentHoleUncertainties() );1=1),
		(( not(perceptions_perceiveEnemy()), removeAdjacentEnemyUncertainties() );1=1),
		(( not(perceptions_perceiveTeletransport()), removeAdjacentTeletransportUncertainties() );1=1)
	), !.
	
/****************************************************************************/

removeAdjacentHoleUncertainty(X, Y) :- assert(doesNotHaveHole(X, Y)), retract(mightHaveHole(X, Y)), !.	
removeAdjacentHoleUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentHoleUncertainty(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), removeAdjacentHoleUncertainty(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentHoleUncertainty(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), removeAdjacentHoleUncertainty(X, YY) );1=1), !.

/****************************************************************************/

removeAdjacentEnemyUncertainties(X, Y) :- assert(doesNotHaveEnemy(X, Y)), retract(mightHaveEnemy(X, Y)), !.			   
removeAdjacentEnemyUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentEnemyUncertainties(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), removeAdjacentEnemyUncertainties(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentEnemyUncertainties(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), removeAdjacentEnemyUncertainties(X, YY) );1=1), !.

/****************************************************************************/

removeAdjacentTeletransportUncertainty(X, Y) :- assert(doesNotHaveTeletransport(X, Y)), retract(mightHaveTeletransport(X, Y)), !.							   
removeAdjacentTeletransportUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), removeAdjacentTeletransportUncertainty(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), removeAdjacentTeletransportUncertainty(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), removeAdjacentTeletransportUncertainty(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), removeAdjacentTeletransportUncertainty(X, YY) );1=1), !.

/****************************************************************************/
	
setMightHaveHole(X, Y) :- not(visited(X, Y)), not(doesNotHaveHole(X, Y)), assert(mightHaveHole(X, Y)), !.
setAdjacenciesMightHaveHole() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveHole(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), setMightHaveHole(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveHole(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), setMightHaveHole(X, YY) );1=1), !.

/****************************************************************************/

setMightHaveEnemy(X, Y) :- not(visited(X, Y)), not(doesNotHaveEnemy(X, Y)), assert(mightHaveEnemy(X, Y)), !.
setAdjacenciesMightHaveEnemy() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveEnemy(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), setMightHaveEnemy(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveEnemy(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), setMightHaveEnemy(X, YY) );1=1), !.

/****************************************************************************/

setMightHaveTeletransport(X, Y) :- not(visited(X, Y)), not(doesNotHaveTeletransport(X, Y)), assert(mightHaveTeletransport(X, Y)), !.
setAdjacenciesMightHaveTeletransport() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), setMightHaveTeletransport(XX, Y) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), setMightHaveTeletransport(XX, Y) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), setMightHaveTeletransport(X, YY) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), setMightHaveTeletransport(X, YY) );1=1), !.
	
/****************************************************************************/