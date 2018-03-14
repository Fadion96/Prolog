srodkowy([X],X).
srodkowy(L, X) :- append([_|List],[_],L), srodkowy(List,X).
