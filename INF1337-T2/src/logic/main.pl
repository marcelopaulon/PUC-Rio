/* Map Cells - Java assert */
:- dynamic startPoint/2.
:- dynamic wallCell/2.
:- dynamic floorCell/2.
:- dynamic enemyCell/4. /* EnemyDamage, EnemyEnergy, X,Y */
:- dynamic goldCell/2.
:- dynamic holeCell/2.
:- dynamic teletransportCell/2.
:- dynamic powerupCell/2.
:- dynamic isWalkable/2.

/*Vars*/
:- dynamic curEnergy/1.
:- dynamic curPosition/3.
:- dynamic visited/2.
:- dynamic curCost/1.
:- dynamic curAmmo/1.
:- dynamic path/1.
:- dynamic getCurrentStats/6.

%adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X+1.
%adjacent(X, Y, XX, Y) :- isWalkable(XX, Y), XX is X-1.
%adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y+1.
%adjacent(X, Y, X, YY) :- isWalkable(X, YY), YY is Y-1.

%assert(breeze(X,Y)) :- curPosition(CurX,Y,left),CurX is X+1,holeCell(XX,Y),XX is X-2,!.

breeze(X,Y) :- curPosition(X,CurY,up),CurY is Y+1,holeCell(X,YY),YY is CurY-2;
			   curPosition(X,CurY,up),CurY is Y+1,holeCell(XX,YY),XX is X-1,YY is CurY-1;
			   curPosition(CurX,Y,up),CurY is Y+1,holeCell(XX,YY),XX is CurX+1,YY is CurY;
			   curPosition(CurX,Y,left),CurX is X-1,holeCell(XX,Y),XX is CurX+2; 
               curPosition(CurX,Y,left),CurX is X-1,holeCell(XX,YY),XX is CurX+1,YY is Y+1;
			   curPosition(CurX,Y,left),CurX is X-1,holeCell(XX,YY),XX is CurX+1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,holeCell(XX,Y),XX is CurX-2;
			   curPosition(CurX,Y,right),CurX is X+1,holeCell(XX,YY),XX is CurX-1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,holeCell(XX,YY),XX is CurX-1,YY is Y+1;
			   curPosition(X,CurY,down),CurY is Y-1,holeCell(X,YY),YY is CurY+2;
			   curPosition(X,CurY,down),CurY is Y-1,holeCell(XX,YY),XX is X-1,YY is CurY+1;
			   curPosition(X,CurY,down),CurY is Y-1,holeCell(XX,YY),XX is X+1,YY is CurY+1,!.
			   
			   
noise(X,Y) :-  curPosition(X,CurY,up),CurY is Y+1,enemyCell(20,_,X,YY),YY is CurY-2;
			   curPosition(X,CurY,up),CurY is Y+1,enemyCell(20,_,XX,YY),XX is X-1,YY is CurY-1;
			   curPosition(CurX,Y,up),CurY is Y+1,enemyCell(20,_,XX,YY),XX is CurX+1,YY is CurY;
			   curPosition(CurX,Y,left),CurX is X-1,enemyCell(20,_,XX,Y),XX is CurX+2; 
               curPosition(CurX,Y,left),CurX is X-1,enemyCell(20,_,XX,YY),XX is CurX+1,YY is Y+1;
			   curPosition(CurX,Y,left),CurX is X-1,enemyCell(20,_,XX,YY),XX is CurX+1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(20,_,XX,Y),XX is CurX-2;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(20,_,XX,YY),XX is CurX-1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(20,_,XX,YY),XX is CurX-1,YY is Y+1;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(20,_,X,YY),YY is CurY+2;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(20,_,XX,YY),XX is X-1,YY is CurY+1;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(20,_,XX,YY),XX is X+1,YY is CurY+1;
			   curPosition(X,CurY,up),CurY is Y+1,enemyCell(50,_,X,YY),YY is CurY-2;
			   curPosition(X,CurY,up),CurY is Y+1,enemyCell(50,_,XX,YY),XX is X-1,YY is CurY-1;
			   curPosition(CurX,Y,up),CurY is Y+1,enemyCell(50,_,XX,YY),XX is CurX+1,YY is CurY;
			   curPosition(CurX,Y,left),CurX is X-1,enemyCell(50,_,XX,Y),XX is CurX+2; 
               curPosition(CurX,Y,left),CurX is X-1,enemyCell(50,_,XX,YY),XX is CurX+1,YY is Y+1;
			   curPosition(CurX,Y,left),CurX is X-1,enemyCell(50,_,XX,YY),XX is CurX+1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(50,_,XX,Y),XX is CurX-2;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(50,_,XX,YY),XX is CurX-1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,enemyCell(50,_,XX,YY),XX is CurX-1,YY is Y+1;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(50,_,X,YY),YY is CurY+2;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(50,_,XX,YY),XX is X-1,YY is CurY+1;
			   curPosition(X,CurY,down),CurY is Y-1,enemyCell(50,_,XX,YY),XX is X+1,YY is CurY+1,!.


flash(X,Y) :-  curPosition(X,CurY,up),CurY is Y+1,teletransportCell(X,YY),YY is CurY-2;
			   curPosition(X,CurY,up),CurY is Y+1,teletransportCell(XX,YY),XX is X-1,YY is CurY-1;
			   curPosition(CurX,Y,up),CurY is Y+1,teletransportCell(XX,YY),XX is CurX+1,YY is CurY;
			   curPosition(CurX,Y,left),CurX is X-1,teletransportCell(XX,Y),XX is CurX+2; 
               curPosition(CurX,Y,left),CurX is X-1,teletransportCell(XX,YY),XX is CurX+1,YY is Y+1;
			   curPosition(CurX,Y,left),CurX is X-1,teletransportCell(XX,YY),XX is CurX+1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,teletransportCell(XX,Y),XX is CurX-2;
			   curPosition(CurX,Y,right),CurX is X+1,teletransportCell(XX,YY),XX is CurX-1,YY is Y-1;
			   curPosition(CurX,Y,right),CurX is X+1,teletransportCell(XX,YY),XX is CurX-1,YY is Y+1;
			   curPosition(X,CurY,down),CurY is Y-1,teletransportCell(X,YY),YY is CurY+2;
			   curPosition(X,CurY,down),CurY is Y-1,teletransportCell(XX,YY),XX is X-1,YY is CurY+1;
			   curPosition(X,CurY,down),CurY is Y-1,teletransportCell(XX,YY),XX is X+1,YY is CurY+1,!.	



%isWall(X,Y) :- not(breeze(X,Y)),not(flash(X,Y)),not(floorCell(X,Y)),!.
%isFloor(X,Y) :- not(breeze(X,Y)),not(flash(X,Y)),not(wallCell(X,Y)),!.
%isWalkable(X,Y) :- breeze(X,Y);flash(X,Y);noise(X,Y);isFloor(X,Y),!.
isWall(X,Y) :- not(isWalkable(X,Y)),not(floorCell(X,Y)),!.
isFloor(X,Y) :- not(isWalkable(X,Y)),not(wallCell(X,Y)),!.
isWalkable(X,Y) :- breeze(X,Y);flash(X,Y);noise(X,Y),!.
isWalkable(X,Y) :- floorCell(X,Y),!.

			   
%isWarningWalkable(X,Y) :- curPosition(X,CurY,up),CurY is Y-1,breeze(X,Y).

getCurrentStats(X, Y, Orientation, Energy, Cost, Ammo) :- curPosition(X, Y, Orientation), curEnergy(Energy), curCost(Cost), curAmmo(Ammo), !.
			   			   
/* Functions */

/*Remove tudo, todos os tiles, e reseta para as configurações originais*/
clearMap() :- retractall(wallCell(_,_)), retractall(floorCell(_,_)), retractall(enemyCell(_,_,_)),
              retractall(goldCell(_,_)), retractall(powerupCell(_,_)), 
              retractall(holeCell(_,_)), retractall(teletransportCell(_,_)), retractall(startPoint(_,_)).


resetAgent() :- retractall(curEnergy(_)), retractall(curCost(_)), retractall(curAmmo(_)), retractall(curPosition(_,_,_)),
			    retractall(visited(_,_)), retractall(path(_)), startPoint(StartX, StartY),
			    assert(curEnergy(100)), assert(curCost(0)), assert(curAmmo(5)), assert(curPosition(StartX, StartY, up)), assert(visited(StartX, StartY)),
			    assert(path([[StartX,StartY]])).


/* ACTIONS */

%getNextMove -> retorna apenas a ação a ser tomada( walk, rotate, attack, pickgold, gameOver, teletransport)

/* If energy lower than 1, game over */
getNextMove(gameOver) :- curEnergy(E), E < 1, !.

/* If current cell has gold, pick it up */
getNextMove(pickGold) :- curPosition(X,Y,_), goldCell(X,Y), !. /* Agent perceives gold when on its tile and picks it up */

/* If cell to walk is safe and not visited, walk */

getNextMove(walk) :- curPosition(X,Y,down),YY is Y+1,isWalkable(X,YY),not(visited(X,YY)),retract(curPosition(_,_,_)), assert(curPosition(X, YY, down)),assert(visited(X,YY)),!.
getNextMove(walk) :- curPosition(X,Y,up),YY is Y-1,isWalkable(X,YY),not(visited(X,YY)),retract(curPosition(_,_,_)), assert(curPosition(X, YY, up)),assert(visited(X,YY)),!.
getNextMove(walk) :- curPosition(X,Y,left), XX is X+1,isWalkable(XX,Y),not(visited(XX,Y)),retract(curPosition(_,_,_)), assert(curPosition(XX, Y, left)),assert(visited(XX,Y)),!.
getNextMove(walk) :- curPosition(X,Y,right),XX is X-1,isWalkable(XX,Y),not(visited(XX,Y)),retract(curPosition(_,_,_)), assert(curPosition(XX, Y, right)),assert(visited(XX,Y)),!.

/* Will rotate if can't walk to next position */

getNextMove(rotate) :- curPosition(X,Y,down), YY is Y+1, isWall(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, right)),!.
getNextMove(rotate) :- curPosition(X,Y,right), XX is X-1, isWall(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, up)),!.
getNextMove(rotate) :- curPosition(X,Y,left), XX is X+1,isWall(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.  
getNextMove(rotate) :- curPosition(X,Y,up), YY is Y-1, isWall(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, left)),!.


getNextMove(rotate) :- curPosition(X,Y,right), XX is X-1, floorCell(XX,Y),visited(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, up)),!.
getNextMove(rotate) :- curPosition(X,Y,left), XX is X+1, floorCell(XX,Y),visited(XX,Y),retract(curPosition(_,_,_)),assert(curPosition(X, Y, down)),!.
getNextMove(rotate) :- curPosition(X,Y,down), YY is Y+1,floorCell(X,YY),visited(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, right)),!.
getNextMove(rotate) :- curPosition(X,Y,up), YY is Y-1, floorCell(X,YY),visited(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, left)),!.

%getNextMove(rotate) :- curPosition(X,Y,up), YY is Y-1, breeze(X,YY),retract(curPosition(_,_,_)),assert(curPosition(X, Y, left)),!.





