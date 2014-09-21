:- initialization(search).

search :-
    search(19, 20, Mult),
    print(Mult), nl, halt.

search(0, Acc, Acc).
search(N, Acc, Mult) :-
    lcm(N, Acc, Acc2),
    N2 is N - 1,
    search(N2, Acc2, Mult).

lcm(X, Y, Mult) :-
    XY is X * Y,
    Div is gcd(X, Y),
    Mult is XY / Div.
