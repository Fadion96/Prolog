on(block2, block1).
on(block3, block2).
on(block4, block3).

above(X, Y) :- on(X, Y); (on(X, Z), above(Z, Y)).
/*above(X,Y) :- on(X,Z),above(Z,Y).*/
