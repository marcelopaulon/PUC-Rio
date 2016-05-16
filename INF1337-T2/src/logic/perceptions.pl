hasEnemy(X, Y) :- XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
  					(
  						((hasWall(XA, Y));(visited(XA,Y), perceptEnemy(XA,Y))),
  						((hasWall(XB, Y));(visited(XB,Y), perceptEnemy(XB,Y))),
  						((hasWall(X, YA));(visited(X,YA), perceptEnemy(X,YA))),
  						((hasWall(X, YB));(visited(X,YB), perceptEnemy(X,YB)))
  					), !.
  
hasHole(X, Y) :- XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
  					(
  						((hasWall(XA, Y));(visited(XA,Y), perceptHole(XA,Y))),
  						((hasWall(XB, Y));(visited(XB,Y), perceptHole(XB,Y))),
  						((hasWall(X, YA));(visited(X,YA), perceptHole(X,YA))),
  						((hasWall(X, YB));(visited(X,YB), perceptHole(X,YB)))
  					), !.
  					
hasTeletransport(X, Y) :- XA is X+1, XB is X-1, YA is Y+1, YB is Y-1,
  					(
  						((hasWall(XA, Y));(visited(XA,Y), perceptTeletransport(XA,Y))),
  						((hasWall(XB, Y));(visited(XB,Y), perceptTeletransport(XB,Y))),
  						((hasWall(X, YA));(visited(X,YA), perceptTeletransport(X,YA))),
  						((hasWall(X, YB));(visited(X,YB), perceptTeletransport(X,YB)))
  					), !.
  					
hasWall(X, Y) :- wallCell(X, Y), adjacent(X, Y, XX, YY), visited(XX, YY), !. /* If agent visited one of the rock's adjacents cell, it knows it is a rock */

perceptHole(X, Y) :- adjacent(X, Y, XX, YY), holeCell(XX, YY).
perceptHole() :- curPosition(X, Y, _), perceptHole(X, Y), !.
perceptEnemy(X, Y) :- adjacent(X, Y, XX, YY), enemyCell(_, _, XX, YY).
perceptEnemy() :- curPosition(X, Y, _), perceptEnemy(X, Y), !.
perceptTeletransport(X, Y) :- adjacent(X, Y, XX, YY), teletransportCell(XX, YY).
perceptTeletransport() :- curPosition(X, Y, _), perceptTeletransport(X, Y), !.

perceptDanger() :- curPosition(X, Y, _), (perceptHole(X, Y); perceptEnemy(X, Y); perceptTeletransport(X, Y)), !.

isSafe(X, Y) :- visited(X, Y), !. /* visited */
isSafe(X, Y) :- adjacent(X, Y, XX, YY), visited(XX, YY),
			  not(perceptHole(XX, YY)), /* at least one visited adjacent node has no danger in sight */
              not(perceptEnemy(XX, YY)),
              not(perceptTeletransport(XX, YY)), !.