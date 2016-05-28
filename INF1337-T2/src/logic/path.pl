/* VISITED PATH */

/* path_hasOpenSafeAction: TODO: Run BFS from currentPosition to test if it is connex */
path_setPathToOpenSafeAction() :- visited(X, Y), not(perceptions_perceiveDanger(X, Y)), 
						    not(hasEnemy(X, Y)), not(hasTeletransport(X, Y)),
							adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							curPosition(CurX, CurY, _),
							go([CurX, CurY], [X, Y]), !. 

path_hasEnemyOrTeletransport() :- visited(X, Y), adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							      (enemyCell(_, _, XX, YY); teletransportCell(XX, YY)), !.

path_setPathToPowerupAction() :- powerupCell(X, Y), visited(X, Y), curPosition(CurX, CurY, _),
								 not((X = CurX, Y = CurY)), go([CurX, CurY], [X, Y]), !.

path_setPathToFightAction() :- hasEnemy(X, Y), adjacent(X, Y, XX, YY), visited(XX, YY), curPosition(CurX, CurY, _),  
							   not((XX = CurX, YY = CurY)), go([CurX, CurY], [XX, YY]), !.
							   
path_setPathToRiskEnemyAction() :- mightHaveEnemy(X, Y), adjacent(X, Y, XX, YY), visited(XX, YY), curPosition(CurX, CurY, _),  
							       not((XX = CurX, YY = CurY)), go([CurX, CurY], [XX, YY]), !.

path_setPathToHoleRisk() :- curPosition(CurX, CurY, _), mightHaveHole(X, Y), adjacent(X, Y, XX, YY),
							visited(XX, YY), not((XX = CurX, YY = CurY)), go([CurX, CurY], [XX, YY]), !.
							
path_setPathToNearestVisited() :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), visited(XX, YY),
								  go([X, Y], [XX, YY]), writef('Will run away from enemy\n'), !.
							
path_setPathToExit() :- curPosition(X, Y, _), startPoint(XX, YY), go([X, Y], [XX, YY]), !.