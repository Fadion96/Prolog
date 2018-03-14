jednokrotnie(X, [X | L]) :-
	\+ member(X, L).
jednokrotnie(X, [Y | L]) :-
 	jednokrotnie(X, L), \+ Y = X.

dwukrotnie(X, [X | L]) :-
	jednokrotnie(X, L).
dwukrotnie(X, [Y | L]) :-
	dwukrotnie(X, L), \+ Y = X.
