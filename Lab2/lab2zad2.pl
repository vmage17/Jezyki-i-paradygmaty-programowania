zatrudnienie(anna, nowak, zelmer, du�a_firma, 1400).
zatrudnienie(jan, nowak, drutex, ma�a_firma, 2000).
zatrudnienie(andrzej, kowalski, samsung, du�a_firma, 3000).
zatrudnienie(miko�aj, kowalski, drutex, ma�a_firma, 3000).
zatrudnienie(marcin, nowak, zelmer, du�a_firma, 4000).
zatrudnienie(jacek, ma�ysz, samsung, du�a_firma, 3500).

zadowolona(X, Y):-
    zatrudnienie(X, Y, _, W, Z),
    W = ma�a_firma,
    Z > 2500.
wyzysk(X, Y):-
    zatrudnienie(X, Y, _, W, Z),
    W = du�a_firma,
    Z < 1500.

