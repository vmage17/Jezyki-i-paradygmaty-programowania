ulubiona_aktywno��(ania, koszyk�wka).
ulubiona_aktywno��(marta, koszyk�wka).
ulubiona_aktywno��(antek, koszyk�wka).
ulubiona_aktywno��(ania, siatk�wka).
ulubiona_aktywno��(marek, siatk�wka).

wiek(ania, 23).
wiek(marta, 26).
wiek(antek, 31).
wiek(marek, 19).

starszy(X,Y) :-
    wiek(X, Xwiek),
    wiek(Y, Ywiek),
    Xwiek > Ywiek.

