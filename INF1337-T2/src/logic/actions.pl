/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- curPosition(X, Y, _), goldCell(X, Y), retract(goldCell(X, Y)), assert(floorCell(X, Y)),
					     agent_incrementCost(1000), !. /* Agent perceives gold when on its tile and picks it up */

/* Will rotate if can't walk to next position because it isn't walkable or we aren't sure it is safe */
getNextMove(rotate) :- agent_willWalkTo(X, Y), (not(isWalkable(X, Y));mightHaveEnemy(X, Y);mightHaveTeletransport(X, Y);mightHaveHole(X, Y)), agent_rotate(), !.

/* If there are no danger perceptions and the cell that the agent will walk to wasn't visited, walk */
getNextMove(walk) :- agent_willWalkTo(X, Y), isWalkable(X, Y), not(perceptions_perceiveDanger()),
					 not(visited(X, Y)), agent_walkTo(X, Y), !.

/* If there are no danger perceptions and an adjacent, walkable, non-visited cell exists and we won't walk into it, rotate unless it has rotated more than four times*/
getNextMove(rotate) :- curPosition(X, Y, _), adjacent(X, Y, XX, YY), isWalkable(XX, YY), not(perceptions_perceiveDanger()),
					   not(visited(XX,YY)), not(agent_willWalkTo(XX, YY)), timesTurned(Value), Value < 4, agent_rotate(), !.

/* Return to visited cell */
getNextMove(walk) :- agent_willWalkTo(X, Y), visited(X, Y), not(revisited(X, Y, _)), assert(revisited(X, Y, 1)), agent_walkTo(X, Y), !.

/* Return to revisited cell */
getNextMove(walk) :- agent_willWalkTo(X, Y), visited(X, Y), revisited(X, Y, RC), RC < 4, RCC is RC + 1, retract(revisited(X, Y, _)), assert(revisited(X, Y, RCC)), agent_walkTo(X, Y), !.