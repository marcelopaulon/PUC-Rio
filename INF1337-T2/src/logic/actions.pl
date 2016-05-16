/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- curPosition(X, Y, _), goldCell(X, Y), retract(goldCell(X, Y)), assert(floorCell(X, Y)),
					     incrementCost(1000), !. /* Agent perceives gold when on its tile and picks it up */

/* If current cell has powerup, pick it up */
getNextMove(pickPowerup) :- curPosition(X, Y, _), powerupCell(X, Y), retract(powerupCell(X, Y)), assert(floorCell(X, Y)),
					        decrementCost(1), incrementEnergy(50), !. /* Agent perceives powerup when on its tile and picks it up */

/* Attack if possible */
getNextMove(rotate) :- curAmmo(A), A > 0, curPosition(X, Y, _), adjacent(X, Y, XX, YY), hasEnemy(XX, YY), not(willWalkTo(XX, YY)), 
					   curEnergy(E), E > 50, rotateAgent(), !.
	   
getNextMove(ShootingActionResult) :- curAmmo(A), A > 0, curPosition(X, Y, _), adjacent(X, Y, XX, YY), hasEnemy(XX, YY), willWalkTo(XX, YY),
					   curEnergy(E), E > 50, shoot(ShootingActionResult), !.


/* Will rotate if can't walk to next position */
getNextMove(rotate) :- willWalkTo(X, Y), not(isWalkable(X, Y)), rotateAgent(), !.

/* If cell to walk is safe and not visited, walk */
getNextMove(walk) :- willWalkTo(X, Y), isWalkable(X, Y), isSafe(X, Y),
					 not(visited(X, Y)), walkTo(X, Y), !.
				
/* If an adjacent, walkable, safe, non-visited cell exists and we won't walk into it, rotate */
getNextMove(rotate) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), isWalkable(XX, YY), isSafe(XX,YY),
					   not(visited(XX,YY)), not(willWalkTo(XX, YY)), rotateAgent(), !.
	 
/* Risk walking into enemy/teletransport */
getNextMove(walk) :- (perceptTeletransport();perceptEnemy()), not(perceptHole()), willWalkTo(X, Y),
					 not(hasEnemy(X,Y)), not(hasTeletransport(X, Y)),
					 not(visited(X, Y)), not(path_hasOpen()), walkTo(X, Y), !.
					 
getNextMove(rotate) :- (perceptTeletransport();perceptEnemy()), not(perceptHole()), willWalkTo(X, Y), visited(X, Y),
					   not(hasEnemy(X,Y)), not(hasTeletransport(X, Y)),
                       not(path_hasOpen()), rotateAgent(), !.
                       
/* Risk walking into hole */
getNextMove(walk) :- perceptHole(), willWalkTo(X, Y), curCost(C), C < 1,
					 not(visited(X, Y)), not(path_hasOpen()), not(path_hasEnemyOrTeletransport()), walkTo(X, Y), !.
					 
getNextMove(rotate) :- perceptHole(), willWalkTo(X, Y), curCost(C), C < 1, visited(X, Y),
                       not(path_hasOpen()), not(path_hasEnemyOrTeletransport()), rotateAgent(), !.
					 
/* Go to previous places */
 
getNextMove(rotate) :- path_getLastNode(Node), willWalkTo(X, Y), Node \= [X, Y], rotateAgent(), !.
					   
getNextMove(walk) :- willWalkTo(X, Y), isWalkable(X, Y),
					 path_getLastNode(Node), Node = [X, Y], agent_walkTo_noAddPath(X, Y), path_deleteLastNode(), !.