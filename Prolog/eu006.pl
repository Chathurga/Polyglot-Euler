:- initialization(main).

main :-
    sum_squares(100, Sum),
    square_sum(100, Square),
    Result is Square - Sum,
    print(Result), nl, halt.

sum_squares(Upper, Sum) :-
    findall(Y, (between(1, Upper, X), Y is X*X), Squares),
    sum_list(Squares, Sum).

square_sum(Upper, Square) :-
    findall(X, between(1, Upper, X), Xs),
    sum_list(Xs, Sum),
    Square is Sum * Sum.
