/* Map Cells - Java assert */
:- dynamic wallCell/2.
:- dynamic floorCell/2.
:- dynamic enemy20Cell/3. /* X,Y, EnemyEnergy */
:- dynamic enemy50Cell/3. /* X,Y, EnemyEnergy */
:- dynamic goldCell/2.
:- dynamic holeCell/2.
:- dynamic teletransportCell/2.

/*Vars*/
:- dynamic curEnergy/1.
:- dynamic curPosition/3.
:- dynamic visited/2.
:- dynamic safe/2.

:- dynamic path/1.

curEnergy(100).
curCost(0).
curPosition(1,1,down).
/*
rotate :- curPosition(X,Y, up), retract(curPosition(_,_,_)), assert(curPosition(X, Y, right)),!.
rotate :- curPosition(X,Y, left), retract(curPosition(_,_,_)), assert(curPosition(X, Y, up)),!.
rotate :- curPosition(X,Y, down), retract(curPosition(_,_,_)), assert(curPosition(X, Y, left)),!.
rotate :- curPosition(X,Y, right), retract(curPosition(_,_,_)), assert(curPosition(X, Y, down)),!.

walk :- curPosition(X,Y,P), P = up,  Y < 3, YY is Y + 1,retract(curPosition(_,_,_)), assert(curPosition(X, YY, P)),!.
walk :- curPosition(X,Y,P), P = down, Y > 1, YY is Y - 1, retract(curPosition(_,_,_)), assert(curPosition(X, YY, P)),!.
walk :- curPosition(X,Y,P), P = right, X < 3, XX is X + 1, retract(curPosition(_,_,_)), assert(curPosition(XX, Y, P)),!.
walk :- curPosition(X,Y,P), P = left, X > 1, XX is X - 1, retract(curPosition(_,_,_)), assert(curPosition(XX, Y, P)),!.
*/
adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X+1.
adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X-1.
adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y+1.
adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y-1.
%setVisited(X,Y) :- visited(X,Y).


/* Functions */

/*Remove tudo, todos os tiles, e reseta para as configurações originais*/
resetAll() :- retractall(wallCell(_,_)), retractall(floorCell(_,_)), retractall(enemy20Cell(_,_,_)),
              retractall(enemy50Cell(_,_,_)), retractall(goldCell(_,_)), retractall(holeCell(_,_)),
              retractall(teletransportCell(_,_)),
              resetGame().

resetGame() :- retractall(curEnergy(_)), retractall(curPosition(_,_,_)), retractall(visited(_,_)), retractall(safe(_,_)),
			   assert(curEnergy(100)), assert(curPosition(1,1,down)), assert(visited(1,1)),
			   retractall(path(_)), assert(path([[1,1]])).


/* ACTIONS */

%getNextMove -> retorna apenas a ação a ser tomada( walk, rotate, attack, pickgold, gameOver, teletransport)

/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- curPosition(X,Y,_), goldCell(X,Y), !. /* Agent perceives gold when on its tile and picks it up */

/* If cell to walk is safe and not visited, walk */

%getNextMove(walk) :- curPosition(X,Y,down),floorCell(X,YY), YY is Y+1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, down)),visited(X,YY),!.
%getNextMove(walk) :- curPosition(X,Y,up),floorCell(X,YY), YY is Y-1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, up)),visited(X,YY),!.
%getNextMove(walk) :- curPosition(X,Y,left),floorCell(XX,Y), XX is X+1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, left)),visited(XX,Y),!.
%getNextMove(walk) :- curPosition(X,Y,right),floorCell(XX,Y), XX is X-1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, right)),visited(XX,Y),!.
%getNextMove(walk) :- curPosition(X,Y,right),holeCell(XX,Y), XX is X-1,retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.


%getNextMove(walk) :- curPosition(X,Y,down),floorCell(X,YY), YY is Y+1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, down)),!.
%getNextMove(walk) :- curPosition(X,Y,up),floorCell(X,YY), YY is Y-1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, up)),!.
%getNextMove(walk) :- curPosition(X,Y,left),floorCell(XX,Y), XX is X+1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, left)),!.
%getNextMove(walk) :- curPosition(X,Y,right),floorCell(XX,Y), XX is X-1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, right)),!.

%getNextMove(walk) :- curPosition(X,Y,right),holeCell(XX,Y), XX is X-1,retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.

%getNextMove(walk) :- curPosition(X,Y,down),floorCell(X,YY), YY is Y+1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, down)),!.

%getNextMove(walk) :- curPosition(X,Y,down),floorCell(X,YY), YY is Y+1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, down)),!.
%getNextMove(walk) :- curPosition(X,Y,up),floorCell(X,YY), YY is Y-1,retract(curPosition(_,_,_)),assert(curPosition(X, YY, up)),!.
%getNextMove(walk) :- curPosition(X,Y,left),floorCell(XX,Y), XX is X+1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, left)),!.
%getNextMove(walk) :- curPosition(X,Y,right),floorCell(XX,Y), XX is X-1,retract(curPosition(_,_,_)),assert(curPosition(XX, Y, right)),!.

getNextMove(walk) :- curPosition(X,Y,down),YY is Y+1,floorCell(X,YY),not(visited(X,YY)),retract(curPosition(_,_,_)), assert(curPosition(X, YY, down)),assert(visited(X,YY)),!.
getNextMove(walk) :- curPosition(X,Y,up),floorCell(X,YY),not(visited(X,YY)), YY is Y-1,retract(curPosition(_,_,_)), assert(curPosition(X, YY, up)),assert(visited(X,YY)),!.
getNextMove(walk) :- curPosition(X,Y,left),floorCell(XX,Y),not(visited(XX,Y)), XX is X+1,retract(curPosition(_,_,_)), assert(curPosition(XX, Y, left)),assert(visited(XX,Y)),!.
getNextMove(walk) :- curPosition(X,Y,right),floorCell(XX,Y),not(visited(XX,Y)), XX is X-1,retract(curPosition(_,_,_)), assert(curPosition(XX, Y, right)),assert(visited(XX,Y)),!.

/* Will rotate if can't walk to next position */
/**/
getNextMove(rotate) :- curPosition(X,Y,down), YY is Y+1, wallCell(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, right)),!.
getNextMove(rotate) :- curPosition(X,Y,right), XX is X-1, wallCell(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, up)),!.
getNextMove(rotate) :- curPosition(X,Y,left), XX is X+1, wallCell(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.  
getNextMove(rotate) :- curPosition(X,Y,up), YY is Y-1, wallCell(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, left)),!.
getNextMove(rotate) :- curPosition(X,Y,left), XX is X+1, holeCell(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.

getNextMove(rotate) :- curPosition(X,Y,right), XX is X-1, floorCell(XX,Y),visited(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, up)),!.
getNextMove(rotate) :- curPosition(X,Y,left), XX is X+1, floorCell(XX,Y),visited(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.
getNextMove(rotate) :- curPosition(X,Y,down), YY is Y+1,floorCell(X,YY),visited(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, right)),!.
getNextMove(rotate) :- curPosition(X,Y,up), YY is Y-1, floorCell(X,YY),visited(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, left)),!.
%getNextMove(unset) :-  curPosition(X,Y,_), (XX is X-1, floorCell(XX,Y),visited(XX,Y)); 
                        XX is X+1, floorCell(XX,Y),visited(XX,Y);
						YY is Y+1,floorCell(X,YY),visited(X,YY);
						YY is Y-1, floorCell(X,YY),visited(X,YY),retractall(visited(_,_)),assert(visited(1,1)),!

%getNextMove(rotate) :- curPosition(X,Y,Z), wallCell(XX,YY), XX is X + 1, YY is Y+1, Z is Y + 1, !.



