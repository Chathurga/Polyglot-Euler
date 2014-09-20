:- initialization search.

search :-
    findall(P, check(P), All),
    max_list(All, X),
    print(X), nl, halt.

check(P) :-
    between(100, 999, X),
    between(100, 999, Y),
    P is X*Y,
    number_codes(P, Xs),
    reverse(Xs, Xs).
