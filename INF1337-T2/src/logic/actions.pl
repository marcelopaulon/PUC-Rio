/* Exiting */
getNextMove(exit) :- curPosition(X, Y, _), startPoint(X, Y), exiting(1), !.

/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- curPosition(X, Y, _), goldCell(X, Y), retract(goldCell(X, Y)), assert(floorCell(X, Y)),
					     agent_incrementCost(1000), !. /* Agent perceives gold when on its tile and picks it up */

/*********************************************************/
/* PATH ACTIONS */

getNextMove(rotate) :- curPath([[X, Y]|_]), not(agent_willWalkTo(X, Y)), agent_rotate(), !.

getNextMove(walk) :- curPath([[X, Y]|_]), curPath(Path), agent_willWalkTo(X, Y), 
					 delete(Path, [X, Y], Result), retractall(curPath(_)), assert(curPath(Result)), agent_walkTo(X, Y), !.

/*********************************************************/

/* Will rotate if can't walk to next position because it isn't walkable or we aren't sure it is safe */
getNextMove(rotate) :- agent_willWalkTo(X, Y), (not(isWalkable(X, Y));mightHaveEnemy(X, Y);mightHaveTeletransport(X, Y);mightHaveHole(X, Y)), agent_rotate(), !.

/* If there are no danger perceptions and the cell that the agent will walk to wasn't visited, walk */
getNextMove(walk) :- agent_willWalkTo(X, Y), isWalkable(X, Y), not(perceptions_perceiveDanger()),
					 not(visited(X, Y)), agent_walkTo(X, Y), !.

/* If there are no danger perceptions and an adjacent, walkable, non-visited cell exists and we won't walk into it, rotate unless it has rotated more than four times*/
getNextMove(rotate) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), isWalkable(XX, YY), not(perceptions_perceiveDanger()),
					   not(visited(XX,YY)), not(agent_willWalkTo(XX, YY)), timesTurned(Value), Value < 4, agent_rotate(), !.

/* Risk walking into hole */
getNextMove(walk) :- perceptions_perceiveHole(), agent_willWalkTo(X, Y), curCost(C), C < 1,
					 not(visited(X, Y)), agent_walkTo(X, Y), !.
	
/* Return to visited cell */
getNextMove(walk) :- agent_willWalkTo(X, Y), visited(X, Y), path_hasOpenSafeAction(), agent_walkTo(X, Y), !.

getNextMove(rotate) :- assert(exiting(1)), path_getPathToExit(), agent_rotate(), !.