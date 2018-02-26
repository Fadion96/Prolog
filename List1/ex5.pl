% le(a, a).
% le(a, b).
% le(a, c).
% le(a, d).
% le(a, e).

le(b, b).
le(c, c).
le(d, d).
le(e, e).
le(b, d).

% le(f, f).
% le(a, f).
% le(b, f).
% le(c, f).
% le(d, f).
% le(e, f).

reflexive :- \+ ((le(X, _); le(_, X)), \+ le(X, X)).
transitive :- \+ ((le(X, Y), le(Y, Z)), \+ le(X, Z)).
antisymmetry :- \+ ((le(X, Y), le(Y, X)), X \= Y).

po :- reflexive, transitive, antisymmetry.
