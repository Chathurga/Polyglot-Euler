:- initialization search.

search :-
    max_prime_factor(600851475143, Result),
    print(Result), nl, halt.

max_prime_factor(X, Factor) :- max_prime_factor(X, 3, [2], Factor).
max_prime_factor(P, P, _, P).
max_prime_factor(X, P, Primes, Factor) :-
    no_factors(P, Primes),
    reduce(X, P, X2),
    P2 is P + 2,
    max_prime_factor(X2, P2, [P|Primes], Factor).
max_prime_factor(X, P, Primes, Factor) :-
    P2 is P + 2,
    max_prime_factor(X, P2, Primes, Factor).

no_factors(_, []).
no_factors(X, [H|T]) :- 0 =\= X mod H, no_factors(X, T).

reduce(X, Y, X2) :- 0 is X mod Y, X2 is X / Y.
reduce(X, _, X).
