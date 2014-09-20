search(Result) :- largest_prime_factor(600851475143, Result).

largest_prime_factor(X, Factor) :-
    Root is floor(sqrt(X)),
    % Putting in Root instead of 10000 causes stack overflow, not sure why
    primes_to(10000, Primes),
    reverse(Primes, RevPrimes),
    first_factor(X, RevPrimes, Factor).

first_factor(X, [Factor|_], Factor) :- 0 is X mod Factor.
first_factor(X, [_|List], Factor) :- first_factor(X, List, Factor).

primes_to(Limit, Primes) :- primes_to(3, Limit, [2], Primes).
primes_to(X, Limit, Acc, Acc) :- X > Limit.
primes_to(X, Limit, Acc, Primes) :-
    trial_div(X, Acc, Acc, NewAcc),
    Y is X + 2,
    primes_to(Y, Limit, NewAcc, Primes).

trial_div(X, Acc, [], NewAcc) :- append(Acc, [X], NewAcc).
trial_div(X, Acc, [P|_], Acc) :- 0 is X mod P.
trial_div(X, Acc, [_|PS], NewAcc) :- trial_div(X, Acc, PS, NewAcc).

reverse(List, Rev) :- reverse(List, [], Rev).
reverse([], Rev, Rev).
reverse([H|T], Acc, Rev) :- reverse(T, [H|Acc], Rev).
