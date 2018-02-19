ojciec(zeus,ares).
ojciec(ares,harmonia).
ojciec(zeus,dionizos).
ojciec(kadmos,semele).
matka(afrodyta,harmonia).
matka(hera,ares).
matka(harmonia,semele).
matka(semele,dionizos).
kobieta(harmonia).
kobieta(afrodyta).
kobieta(hera).
kobieta(semele).
mezczyzna(zeus).
mezczyzna(ares).
mezczyzna(kadmos).
mezczyzna(dionizos).

rodzic(X,Y) :- matka(X,Y) ; ojciec(X,Y).

jest_matka(X) :- matka(X,_).
jest_matka(X) :- ojciec(X,_).
jest_synem(X) :- mezczyzna(X), rodzic(_,X).
siostra(X,Y) :- kobieta(X), rodzic(Z,X), rodzic(Z,Y).
brat(X,Y) :- mezczyzna(X), rodzic(Z,X), rodzic(Z,Y).
dziadek(X,Y) :- mezczyzna(X), ojciec(X,Z), rodzic(Z,Y).
rodzenstwo(X,Y) :- siostra(X,Y) ; brat(X,Y).
