search(_, X2, Acc, Acc) :- X2 > 4000000.
search(X1, X2, Acc, Result) :-
    X3 is X1 + X2,
    set_new_acc(X3, Acc, NewAcc),
    search(X2, X3, NewAcc, Result).

set_new_acc(X, Acc, NewAcc) :-
    0 is mod(X, 2),
    NewAcc is Acc + X.
set_new_acc(_, Acc, Acc).
