search(1000, Acc, Acc).
search(X, Acc, Result) :-
    set_new_acc(X, Acc, NewAcc),
    Y is X + 1,
    search(Y, NewAcc, Result).

set_new_acc(X, Acc, NewAcc) :-
    (0 is mod(X, 3); 0 is mod(X, 5)),
    NewAcc is Acc + X.

set_new_acc(_, Acc, Acc).
