on(rower, olowek).
on(aparat, motyl).
left(olowek, klepsydra).
left(klepsydra, motyl).
left(motyl, ryba).


above(X, Y) :- on(X, Y); (on(X, Z),above(Z, Y)).
left_of(X, Y) :- left(X, Y); (left(X, Z),left_of(Z, Y)).
right_of(X, Y) :- left_of(Y, X).
below(X ,Y) :- above(Y, X).
higher(X, Y) :- above(X, Y); ((on(X, A), on(Y, B)), higher(A, B)); (on(X, _), \+ on(Y, _)).
