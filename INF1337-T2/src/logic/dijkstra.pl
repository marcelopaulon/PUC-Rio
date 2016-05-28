:-dynamic rpath/2.      % A reversed path
:-dynamic dijkstra_option_allowDanger/1. % allow walk into danger in the path
 
/* Dijkstra using weight 1 (http://rosettacode.org/wiki/Dijkstra's_algorithm#Prolog) */

path([X, Y],[XX, YY], 1) :- visited(X, Y), visited(XX, YY), adjacent(X, Y, XX, YY),
							(
								dijkstra_option_allowDanger(1);
								(
									not(mightHaveEnemy(XX, YY)), not(mightHaveTeletransport(XX, YY)),
									not(mightHaveEnemy(X, Y)), not(mightHaveTeletransport(X, Y)),
									not(hasTeletransport(XX, YY)), not(hasTeletransport(X, Y)),
									not(hasEnemy(XX, YY)), not(hasEnemy(X, Y))
								)
							). /* From, To, Weight=1 */

shorterPath([H|Path], Dist) :-		       % path < stored path? replace it
	rpath([H|T], D), !, Dist < D,          % match target node [H|_]
	retract(rpath([H|_],_)),
	/*writef('%w is closer than %w\n', [[H|Path], [H|T]]),*/
	assert(rpath([H|Path], Dist)).
shorterPath(Path, Dist) :-		       % Otherwise store a new path
	/*writef('New path:%w\n', [Path]),*/
	assert(rpath(Path,Dist)).
 
traverse([X, Y], Path, Dist) :-		    % traverse all reachable nodes
	path([X, Y], T, D),		    % For each neighbor
	not(memberchk(T, Path)),	    %	which is unvisited
	shorterPath([T,[X, Y]|Path], Dist+D), %	Update shortest path and distance
	traverse(T,[[X, Y]|Path],Dist+D).	    %	Then traverse the neighbor
 
traverse([X, Y]) :-
	retractall(rpath(_,_)),           % Remove solutions
	traverse([X, Y],[],0).              % Traverse from origin
traverse(_).
 
go([X, Y], [XX, YY]) :-
	traverse([X, Y]),                   % Find all distances
	rpath([[XX, YY]|RPath], Dist)->         % If the target was reached
	  reverse([[XX, YY]|RPath], Path),      % Report the path and distance
	  Distance is round(Dist),
	  (writef('Shortest path is %w with distance %w = %w\n',
	       [Path, Dist, Distance]), Path = [_|T], assert(curPath(T)));
	writef('There is no route from %w to %w\n', [[X, Y], [XX, YY]]).