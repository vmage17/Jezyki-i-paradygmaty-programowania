osoba(radek, zygmunt, marzena, mê¿czyzna, 25).
osoba(ola, zygmunt, maria, kobieta, 23).
osoba(zygmunt, w³adys³aw, adela, mê¿czyzna, 52).
osoba(marzena, adam, stanis³awa, kobieta, 50).

rodzeñstwo(X, Y) :-
    (osoba(X, Ojciec, _,_,_),
    osoba(Y, Ojciec, _,_,_));
    (osoba(X, _, Matka,_,_),
    osoba(Y, _, Matka,_,_)).

brat(X, Y) :-
    rodzeñstwo(X, Y),
    osoba(X, _, _, mê¿czyzna, _),
    osoba(Y, _, _, mê¿czyzna, _).

siostra(X, Y) :-
    rodzeñstwo(X, Y),
    osoba(X, _, _, kobieta, _),
    osoba(Y, _, _, kobieta, _).

