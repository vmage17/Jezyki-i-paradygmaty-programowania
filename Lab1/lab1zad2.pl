ulubiona_aktywność(ania, koszykówka).
ulubiona_aktywność(marta, koszykówka).
ulubiona_aktywność(antek, koszykówka).
ulubiona_aktywność(ania, siatkówka).
ulubiona_aktywność(marek, siatkówka).

wiek(ania, 23).
wiek(marta, 26).
wiek(antek, 31).
wiek(marek, 19).

starszy(X,Y) :-
    wiek(X, Xwiek),
    wiek(Y, Ywiek),
    Xwiek > Ywiek.

