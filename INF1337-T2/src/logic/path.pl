path_getLastNode(Node) :- path(List), reverse(List, Result), last(Result, Node).

path_addNode(X, Y) :- path(List), append([[X,Y]], List, Result), retractall(path(_)), assert(path(Result)).

path_deleteLastNode() :- path(List), path_getLastNode(Node), delete(List, Node, Result), retractall(path(_)), assert(path(Result)).

path_hasOpen() :- path(List), hasOpen(List), !.

hasOpen(List) :- last(List, Node), (isOpen(Node);(delete(List, Node, Result), hasOpen(Result))), !.
              
isOpen([X,Y]) :- adjacent(X, Y, XX, YY), isWalkable(XX, YY), isSafe(XX, YY), not(visited(XX, YY)), !. /* Adjacent, safe and not visited = open */

/* VISITED PATH */

path_hasEnemyOrTeletransport() :- visited(X, Y), adjacent(X, Y, XX, YY), not(visited(XX, YY)),
							      (enemyCell(_, _, XX, YY); teletransportCell(XX, YY)), !.
