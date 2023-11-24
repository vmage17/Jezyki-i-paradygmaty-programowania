zatrudnienie(anna, nowak, zelmer, du¿a_firma, 1400).
zatrudnienie(jan, nowak, drutex, ma³a_firma, 2000).
zatrudnienie(andrzej, kowalski, samsung, du¿a_firma, 3000).
zatrudnienie(miko³aj, kowalski, drutex, ma³a_firma, 3000).
zatrudnienie(marcin, nowak, zelmer, du¿a_firma, 4000).
zatrudnienie(jacek, ma³ysz, samsung, du¿a_firma, 3500).

zadowolona(X, Y):-
    zatrudnienie(X, Y, _, W, Z),
    W = ma³a_firma,
    Z > 2500.
wyzysk(X, Y):-
    zatrudnienie(X, Y, _, W, Z),
    W = du¿a_firma,
    Z < 1500.

