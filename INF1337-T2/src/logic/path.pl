/* VISITED PATH */

/* TODO: Run BFS from currentPosition to test if it is connex */
path_hasOpenSafeAction() :- visited(X, Y), not(perceptions_perceiveDanger(X, Y)), 
							adjacent(X, Y, XX, YY), not(visited(XX, YY)), !. 

path_hasEnemyOrTeletransport() :- visited(X, Y), adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							      (enemyCell(_, _, XX, YY); teletransportCell(XX, YY)), !.