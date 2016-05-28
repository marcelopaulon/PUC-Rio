/* Functions */

agent_getCurrentStats(X, Y, Orientation, Energy, Cost, Ammo) :- curPosition(X, Y, Orientation), curEnergy(Energy), curCost(Cost), curAmmo(Ammo), !.

agent_clearMap() :- retractall(wallCell(_,_)), retractall(floorCell(_,_)), retractall(enemyCell(_,_,_)),
                    retractall(goldCell(_,_)), retractall(powerupCell(_,_)), 
                    retractall(holeCell(_,_)), retractall(teletransportCell(_,_)), retractall(startPoint(_,_)).

agent_reset() :- retractall(curEnergy(_)), retractall(curCost(_)), retractall(curAmmo(_)), retractall(curPosition(_,_,_)),
			    retractall(visited(_,_)), retractall(revisited(_,_,_)), retractall(path(_)), startPoint(StartX, StartY),
			    retractall(curPath(_)), retractall(exiting(_)),
			    retractall(doesNotHaveHole(_,_)), retractall(doesNotHaveEnemy(_,_)), retractall(doesNotHaveTeletransport(_,_)),
			    retractall(mightHaveHole(_,_)), retractall(mightHaveEnemy(_,_)), retractall(mightHaveTeletransport(_,_)),
			    retractall(hasHole(_,_)), retractall(hasEnemy(_,_)), retractall(hasTeletransport(_,_)),
			    assert(curEnergy(100)), assert(curCost(0)), assert(curAmmo(5)), assert(curPosition(StartX, StartY, up)), assert(visited(StartX, StartY)),
			    assert(path([[StartX,StartY]])), assert(timesTurned(0)).

agent_incrementCost(INC) :- curCost(C), CC is C+INC, retract(curCost(C)), assert(curCost(CC)).
agent_decrementCost(DEC) :- INC is DEC * -1, agent_incrementCost(INC).

agent_incrementEnergy(INC) :- curEnergy(E), EE is E+INC, retract(curEnergy(E)), assert(curEnergy(EE)).
agent_decrementEnergy(DEC) :- INC is DEC * -1, agent_incrementEnergy(INC).

agent_deployAmmo() :- curAmmo(Ammo), NewAmmo is Ammo - 1, retract(curAmmo(Ammo)), assert(curAmmo(NewAmmo)), !.

agent_rotate() :- ((curPosition(_,_,right), Next = down);
				  (curPosition(_,_,down), Next = left);
				  (curPosition(_,_,left), Next = up);
				  (curPosition(_,_,up), Next = right)
				 ), agent_rotateTo(Next).

agent_rotateLeft() :- ((curPosition(_,_,right), Next = up);
				  (curPosition(_,_,up), Next = left);
				  (curPosition(_,_,left), Next = down);
				  (curPosition(_,_,down), Next = right)
				 ), agent_rotateTo(Next).

agent_rotateTo(Next) :- curPosition(X,Y,_), retract(curPosition(X,Y,_)), assert(curPosition(X,Y,Next)), agent_decrementCost(1), timesTurned(Value), retractall(timesTurned(_)), Newvalue is Value + 1, assert(timesTurned(Newvalue)), !.

agent_willWalkTo(X, Y) :- curPosition(XX, YY, Position), Y is YY-1, XX = X, Position=up, !.
agent_willWalkTo(X, Y) :- curPosition(XX, YY, Position), X is XX+1, YY = Y, Position=right, !.
agent_willWalkTo(X, Y) :- curPosition(XX, YY, Position), Y is YY+1, XX = X, Position=down, !.
agent_willWalkTo(X, Y) :- curPosition(XX, YY, Position), X is XX-1, YY = Y, Position=left, !.

agent_walkTo(X, Y) :- isWalkable(X, Y), curPosition(_, _, Position), retractall(curPosition(_, _, _)), assert(curPosition(X, Y, Position)), assert(visited(X,Y)),
                      agent_decrementCost(1),
                      perceptions_updateUncertainties(),
                      ((holeCell(X, Y), agent_decrementCost(1000), EE is 0, retractall(curEnergy(_)), assert(curEnergy(EE)));1=1),
                      ((enemyCell(EEE,_, X, Y), agent_decrementEnergy(EEE));1=1), retractall(timesTurned(_)), assert(timesTurned(0)), !.
