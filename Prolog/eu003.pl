:- initialization search.

search :-
    largest_prime_factor(600851475143, Result),
    print(Result), nl, halt.

largest_prime_factor(X, Factor) :- largest_prime_factor(X, 3, [2], Factor).
largest_prime_factor(P, P, Primes, P) :- no_factors(P, Primes).
largest_prime_factor(X, P, Primes, Factor) :-
    no_factors(P, Primes),
    reduce(X, P, X2),
    P2 is P + 2,
    largest_prime_factor(X2, P2, [P|Primes], Factor).
largest_prime_factor(X, P, Primes, Factor) :-
    P2 is P + 2,
    largest_prime_factor(X, P2, Primes, Factor).

no_factors(_, []).
no_factors(X, [H|T]) :- 0 =\= X mod H, no_factors(X, T).

reduce(X, Y, X2) :- 0 is X mod Y, X2 is X / Y.
reduce(X, _, X).
