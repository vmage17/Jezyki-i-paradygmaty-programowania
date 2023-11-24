osoba(radek, zygmunt, marzena, m�czyzna, 25).
osoba(ola, zygmunt, maria, kobieta, 23).
osoba(zygmunt, w�adys�aw, adela, m�czyzna, 52).
osoba(marzena, adam, stanis�awa, kobieta, 50).

rodze�stwo(X, Y) :-
    (osoba(X, Ojciec, _,_,_),
    osoba(Y, Ojciec, _,_,_));
    (osoba(X, _, Matka,_,_),
    osoba(Y, _, Matka,_,_)).

brat(X, Y) :-
    rodze�stwo(X, Y),
    osoba(X, _, _, m�czyzna, _),
    osoba(Y, _, _, m�czyzna, _).

siostra(X, Y) :-
    rodze�stwo(X, Y),
    osoba(X, _, _, kobieta, _),
    osoba(Y, _, _, kobieta, _).

