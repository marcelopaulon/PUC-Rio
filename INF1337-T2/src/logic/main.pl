/* Map Cells - Java assert */
:- dynamic startPoint/2.
:- dynamic wallCell/2.
:- dynamic floorCell/2.
:- dynamic enemyCell/4. /* EnemyDamage, EnemyEnergy, X,Y */
:- dynamic goldCell/2.
:- dynamic powerupCell/2.
:- dynamic holeCell/2.
:- dynamic teletransportCell/2.

/* Vars */
:- dynamic curEnergy/1.
:- dynamic curCost/1.
:- dynamic curAmmo/1.
:- dynamic curPosition/3.
:- dynamic visited/2.

:- dynamic path/1.

/* Cell adjacency */
adjacent(X, Y, XX, Y) :- XX is X+1, isWalkable(XX, Y).
adjacent(X, Y, XX, Y) :- XX is X-1, isWalkable(XX, Y).
adjacent(X, Y, X, YY) :- YY is Y+1, isWalkable(X, YY).
adjacent(X, Y, X, YY) :- YY is Y-1, isWalkable(X, YY).

isWalkable(X, Y) :- (startPoint(StartX, StartY), (X=StartX,Y=StartY)); floorCell(X, Y); enemyCell(_, _, X, Y); goldCell(X, Y); powerupCell(X, Y); holeCell(X, Y); teletransportCell(X, Y), !. 

:- consult('agent.pl').

/* PERCEPTIONS */

:- consult('perceptions.pl').

/* PATH */

:- consult('path.pl').

/* Moves - in order of prevalence - getNextMove(moveType, X, Y) */

/* ATTACK */

:- consult('attack.pl').

/* ACTIONS */

:- consult('actions.pl').
