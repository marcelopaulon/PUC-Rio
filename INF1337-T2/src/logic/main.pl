/* Map Cells - Java assert */
:- dynamic wallCell/2.
:- dynamic floorCell/2.
:- dynamic enemy20Cell/3. /* X,Y, EnemyEnergy */
:- dynamic enemy50Cell/3. /* X,Y, EnemyEnergy */
:- dynamic goldCell/2.
:- dynamic holeCell/2.
:- dynamic teletransportCell/2.

/* Vars */
:- dynamic curEnergy/1.
:- dynamic curPosition/3.
:- dynamic visited/2.
:- dynamic safe/2.

:- dynamic path/1.

curEnergy(100).
curPosition(1,1,down).

/* Cell adjacency */
adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X+1.
adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X-1.
adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y+1.
adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y-1.

/* Functions */
resetAll() :- retractall(wallCell(_,_)), retractall(floorCell(_,_)), retractall(enemy20Cell(_,_,_)),
              retractall(enemy50Cell(_,_,_)), retractall(goldCell(_,_)), retractall(holeCell(_,_)),
              retractall(teletransportCell(_,_)),
              resetGame().

resetGame() :- retractall(curEnergy(_)), retractall(curPosition(_,_,_)), retractall(visited(_,_)), retractall(safe(_,_)),
			   assert(curEnergy(100)), assert(curPosition(1,1,down)), assert(visited(1,1)),
			   retractall(path(_)), assert(path([[1,1]])).


/* ACTIONS */

/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- 1=1, !. /* Agent perceives gold when on its tile and picks it up */

/* Will rotate if can't walk to next position */
getNextMove(rotate) :- 1=1, !.

/* If cell to walk is safe and not visited, walk */
getNextMove(walk) :- 1=1, !.
				