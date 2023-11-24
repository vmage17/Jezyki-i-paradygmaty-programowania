rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).

kobieta(zofia).
kobieta(kasia).
kobieta(ania).

mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).

potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

szczêœliwy(X):-
    rodzic(X, Y),
    potomek(Y, X).
dwojedzieci(X):-
    rodzic(X, Y),
    siostra(Y, Z),
    kobieta(Z).
wnuk(X, Y):-
	rodzic(Y, Z),
	rodzic(Z, X).
ciotka(X, Y):-
	siostra(X, Z),
	rodzic(Z, Y).
nastêpca(X, Y):-
	potomek(X, Y).
nastêpca(X, Z):-
	potomek(X, Y),
	nastêpca(Y, Z).




