perceptions_perceiveHole() :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), holeCell(XX, YY), !.
perceptions_perceiveEnemy() :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), enemyCell(_, _, XX, YY), !.
perceptions_perceiveTeletransport() :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), teletransportCell(XX, YY), !.

perceptions_perceiveDanger() :- (perceptions_perceiveHole(); perceptions_perceiveEnemy(); perceptions_perceiveTeletransport()), !.

perceptions_updateUncertainties() :- (
		((perceptions_perceiveHole(), setAdjacenciesMightHaveHole());1=1),
		((perceptions_perceiveEnemy(), setAdjacenciesMightHaveEnemy());1=1),
		((perceptions_perceiveTeletransport(), setAdjacenciesMightHaveTeletransport());1=1),
		(( not(perceptions_perceiveHole()), removeAdjacentHoleUncertainties() );1=1),
		(( not(perceptions_perceiveEnemy()), removeAdjacentEnemyUncertainties() );1=1),
		(( not(perceptions_perceiveTeletransport()), removeAdjacentTeletransportUncertainties() );1=1)
	), !.
	
removeAdjacentHoleUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), assert(doesNotHaveHole(XX, Y)), retract(mightHaveHole(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), assert(doesNotHaveHole(XX, Y)), retract(mightHaveHole(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), assert(doesNotHaveHole(X, YY)), retract(mightHaveHole(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), assert(doesNotHaveHole(X, YY)), retract(mightHaveHole(X, YY)) );1=1), !.

removeAdjacentEnemyUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), assert(doesNotHaveEnemy(XX, Y)), retract(mightHaveEnemy(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), assert(doesNotHaveEnemy(XX, Y)), retract(mightHaveEnemy(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), assert(doesNotHaveEnemy(X, YY)), retract(mightHaveEnemy(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), assert(doesNotHaveEnemy(X, YY)), retract(mightHaveEnemy(X, YY)) );1=1), !.
	
removeAdjacentTeletransportUncertainties() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), assert(doesNotHaveHole(XX, Y)), retract(mightHaveTeletransport(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), assert(doesNotHaveHole(XX, Y)), retract(mightHaveTeletransport(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), assert(doesNotHaveHole(X, YY)), retract(mightHaveTeletransport(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), assert(doesNotHaveHole(X, YY)), retract(mightHaveTeletransport(X, YY)) );1=1), !.
	
setAdjacenciesMightHaveHole() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveHole(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveHole(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveHole(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveHole(X, YY)) );1=1), !.

setAdjacenciesMightHaveEnemy() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveEnemy(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveEnemy(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveEnemy(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveEnemy(X, YY)) );1=1), !.
	
setAdjacenciesMightHaveTeletransport() :-
	curPosition(X, Y, _),
	(( XX is X+1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveTeletransport(XX, Y)) );1=1),
	(( XX is X-1, adjacent(X, Y, XX, Y), not(visited(XX, Y)), assert(mightHaveTeletransport(XX, Y)) );1=1),
	(( YY is Y+1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveTeletransport(X, YY)) );1=1),
	(( YY is Y-1, adjacent(X, Y, X, YY), not(visited(X, YY)), assert(mightHaveTeletransport(X, YY)) );1=1), !.