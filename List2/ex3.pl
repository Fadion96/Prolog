arc(a, b).
arc(b, a).
arc(b, c).
arc(c, d).

osiagalny(X, X).
osiagalny(X, Y) :- osiagalny(X, Y, []).
osiagalny(X, Y, L) :- arc(X, Z), \+ member(Z, L), (Y = Z ; osiagalny(Z, Y, [X | L])).
