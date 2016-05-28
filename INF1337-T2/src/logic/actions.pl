/****************************************************************************/
/* Exiting */

getNextMove(exit) :- curPosition(X, Y, _), startPoint(X, Y), exiting(1), !.

/****************************************************************************/
/* If energy lower than 1, game over */

getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/****************************************************************************/
/* If current cell has gold, pick it up */

getNextMove(pickGold) :- curPosition(X, Y, _), goldCell(X, Y), retract(goldCell(X, Y)), assert(floorCell(X, Y)),
					     agent_incrementCost(1000), !. /* Agent perceives gold when on its tile and picks it up */

/*********************************************************/
/* PATH ACTIONS */

getNextMove(rotate) :- curPath([[X, Y]|_]), not(agent_willWalkTo(X, Y)), agent_rotate(), !.

getNextMove(walk) :- curPath([[X, Y]|_]), curPath(Path), agent_willWalkTo(X, Y), 
					 delete(Path, [X, Y], Result), retractall(curPath(_)), assert(curPath(Result)), agent_walkTo(X, Y), !.

/*********************************************************/
/* Will rotate if can't walk to next position because it isn't walkable */

getNextMove(rotate) :- agent_willWalkTo(X, Y), not(isWalkable(X, Y)), agent_rotate(), !.

/****************************************************************************/
/* If there are no danger perceptions and the cell that the agent will walk to wasn't visited, walk */

getNextMove(walk) :- agent_willWalkTo(X, Y), isWalkable(X, Y), not(perceptions_perceiveDanger()),
					 not(visited(X, Y)), agent_walkTo(X, Y), !.
					 
/* If there are no danger perceptions and an adjacent, walkable, non-visited cell exists and we won't walk into it, rotate */
getNextMove(rotate) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), isWalkable(XX, YY), not(perceptions_perceiveDanger()),
					   not(visited(XX,YY)), not(agent_willWalkTo(XX, YY)), agent_rotate(), !.

/****************************************************************************/
/* Go to nearest safe option */

getNextMove(Action) :- path_setPathToOpenSafeAction(), getNextMove(Action), writef('Going to safe option!\n'), !.

/****************************************************************************/
/* Risk walking into hole if cost lower than 1 */

getNextMove(walk) :- curCost(C), C < 1, agent_willWalkTo(X, Y), mightHaveHole(X, Y), agent_walkTo(X, Y), writef('Risking walking into hole!\n'), !.
getNextMove(rotate) :- curCost(C), C < 1, curPosition(X, Y, _), adjacent(X, Y, XX, YY), 
					   mightHaveHole(XX, YY), not(agent_willWalkTo(XX, YY)), agent_rotate(), writef('Rotating to risk walking into hole!\n'), !.
getNextMove(Action) :- curCost(C), C < 1, path_setPathToHoleRisk(), getNextMove(Action), writef('Will risk walking to hole!\n'), !.

/****************************************************************************/
/* Exit dungeon */

getNextMove(Action) :- assert(exiting(1)), path_setPathToExit(), getNextMove(Action), writef('Will try to exit dungeon!\n'), !.

/****************************************************************************/