rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).

kobieta(zofia).
kobieta(kasia).
kobieta(ania).

m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).

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

szcz�liwy(X):-
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
nast�pca(X, Y):-
	potomek(X, Y).
nast�pca(X, Z):-
	potomek(X, Y),
	nast�pca(Y, Z).




