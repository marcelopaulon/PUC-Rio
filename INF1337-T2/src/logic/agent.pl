/* Functions */

getCurrentStats(X, Y, Orientation, Energy, Cost, Ammo) :- curPosition(X, Y, Orientation), curEnergy(Energy), curCost(Cost), curAmmo(Ammo), !.

clearMap() :- retractall(wallCell(_,_)), retractall(floorCell(_,_)), retractall(enemyCell(_,_,_)),
              retractall(goldCell(_,_)), retractall(powerupCell(_,_)), 
              retractall(holeCell(_,_)), retractall(teletransportCell(_,_)), retractall(startPoint(_,_)).

resetAgent() :- retractall(curEnergy(_)), retractall(curCost(_)), retractall(curAmmo(_)), retractall(curPosition(_,_,_)),
			    retractall(visited(_,_)), retractall(path(_)), startPoint(StartX, StartY),
			    assert(curEnergy(100)), assert(curCost(0)), assert(curAmmo(5)), assert(curPosition(StartX, StartY, up)), assert(visited(StartX, StartY)),
			    assert(path([[StartX,StartY]])).

incrementCost(INC) :- curCost(C), CC is C+INC, retract(curCost(C)), assert(curCost(CC)).
decrementCost(DEC) :- INC is DEC * -1, incrementCost(INC).

incrementEnergy(INC) :- curEnergy(E), EE is E+INC, retract(curEnergy(E)), assert(curEnergy(EE)).
decrementEnergy(DEC) :- INC is DEC * -1, incrementEnergy(INC).

deployAmmo() :- curAmmo(Ammo), NewAmmo is Ammo - 1, retract(curAmmo(Ammo)), assert(curAmmo(NewAmmo)), !.

rotateAgent() :- ((curPosition(_,_,right), Next = down);
				  (curPosition(_,_,down), Next = left);
				  (curPosition(_,_,left), Next = up);
				  (curPosition(_,_,up), Next = right)
				 ), rotateAgentTo(Next).

rotateAgentLeft() :- ((curPosition(_,_,right), Next = up);
				  (curPosition(_,_,up), Next = left);
				  (curPosition(_,_,left), Next = down);
				  (curPosition(_,_,down), Next = right)
				 ), rotateAgentTo(Next).

rotateAgentTo(Next) :- curPosition(X,Y,_), retract(curPosition(X,Y,_)), assert(curPosition(X,Y,Next)), decrementCost(1), !.

willWalkTo(X, Y) :- curPosition(XX, YY, Position), Y is YY-1, XX = X, Position=up, !.
willWalkTo(X, Y) :- curPosition(XX, YY, Position), X is XX+1, YY = Y, Position=right, !.
willWalkTo(X, Y) :- curPosition(XX, YY, Position), Y is YY+1, XX = X, Position=down, !.
willWalkTo(X, Y) :- curPosition(XX, YY, Position), X is XX-1, YY = Y, Position=left, !.

walkTo_Basic(X, Y) :- 
                isWalkable(X, Y), curPosition(_, _, Position), retractall(curPosition(_, _, _)), assert(curPosition(X, Y, Position)), assert(visited(X,Y)),
                curCost(C), CC is C-1, retract(curCost(C)), assert(curCost(CC)), 
                ((holeCell(X, Y), decrementCost(1000), EE is 0, retractall(curEnergy(_)), assert(curEnergy(EE)));1=1),
                ((enemyCell(EEE,_, X, Y), decrementEnergy(EEE));1=1), !.

walkTo(X, Y) :- curPosition(XX,YY,_), walkTo_Basic(X, Y), path_addNode(XX, YY).

agent_walkTo_noAddPath(X, Y) :- walkTo_Basic(X, Y).