ulubiona_aktywnoœæ(ania, koszykówka).
ulubiona_aktywnoœæ(marta, koszykówka).
ulubiona_aktywnoœæ(antek, koszykówka).
ulubiona_aktywnoœæ(ania, siatkówka).
ulubiona_aktywnoœæ(marek, siatkówka).

wiek(ania, 23).
wiek(marta, 26).
wiek(antek, 31).
wiek(marek, 19).

starszy(X,Y) :-
    wiek(X, Xwiek),
    wiek(Y, Ywiek),
    Xwiek > Ywiek.

