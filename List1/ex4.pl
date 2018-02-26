/* przykladowy czesciowy porzadek
 *              f
 *           /  |  \
 *          d   c   e
 *          |   |   |
 *          b   |   |
 *          \   |   /
 *              a
 */


le(a, a).
le(a, b).
le(a, c).
le(a, d).
le(a, e).

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

maksymalny(X) :- le(X, X), \+ (le(X, Y), Y \= X).
minimalny(X) :- le(X, X), \+ (le(Y, X), Y \= X).

najwiekszy(X) :- maksymalny(X), \+ (le(Y, Y), Y \= X, maksymalny(Y)).
najmniejszy(X) :- minimalny(X), \+ (le(Y, Y), Y \= X, minimalny(Y)).
