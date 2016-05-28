/* VISITED PATH */

/* path_hasOpenSafeAction: TODO: Run BFS from currentPosition to test if it is connex */
path_setPathToOpenSafeAction() :- visited(X, Y), not(perceptions_perceiveDanger(X, Y)), 
							adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							curPosition(CurX, CurY, _),
							go([CurX, CurY], [X, Y]), !. 

path_hasEnemyOrTeletransport() :- visited(X, Y), adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							      (enemyCell(_, _, XX, YY); teletransportCell(XX, YY)), !.

path_setPathToPowerupAction() :- powerupCell(X, Y), visited(X, Y), curPosition(CurX, CurY, _),
								 X \= CurX, Y \= CurY, go([CurX, CurY], [X, Y]), !.

path_setPathToFightAction() :- hasEnemy(X, Y), curPosition(CurX, CurY, _),  
							   X \= CurX, Y \= CurY, go([CurX, CurY], [X, Y]), !.
							   
path_setPathToRiskEnemyAction() :- mightHaveEnemy(X, Y), adjacent(X, Y, XX, YY), visited(XX, YY), curPosition(CurX, CurY, _),  
							       XX \= CurX, YY \= CurY, go([CurX, CurY], [XX, YY]), !.

path_setPathToHoleRisk() :- curPosition(CurX, CurY, _), mightHaveHole(X, Y), adjacent(X, Y, XX, YY),
							visited(XX, YY), XX \= CurX, YY \= CurY, go([CurX, CurY], [XX, YY]), !.
							
path_setPathToExit() :- curPosition(X, Y, _), startPoint(XX, YY), go([X, Y], [XX, YY]), !.