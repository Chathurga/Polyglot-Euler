:- initialization search.

search :-
    findall(X, range(X), All),
    sum_list(All, Sum),
    print(Sum), nl, halt.

range(X) :-
    between(1, 999, X),
    (0 is X mod 3; (0 is X mod 5, 0 =\= X mod 15)).
