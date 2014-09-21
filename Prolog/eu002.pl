:- initialization(search).

search :-
    search(0, 1, 0, Sum),
    print(Sum), nl, halt.

search(_, X2, Acc, Acc) :- X2 > 4000000.
search(X1, X2, Acc, Result) :-
    X3 is X1 + X2,
    sum_even(X3, Acc, NewAcc),
    search(X2, X3, NewAcc, Result).

sum_even(X, Acc, NewAcc) :-
    0 is mod(X, 2),
    NewAcc is Acc + X.
sum_even(_, Acc, Acc).
