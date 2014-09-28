// Used a sort of generator pattern for fun
// JavaScript (ignoring Harmony) has no concept of generators, lazy evaluation
//   or iterators so we mimic generators using JavaScript's infamous callback
//   style

var primes = function(callback) {
    var primes = [2];
    next: for (var x = 3; ; x += 2) {
        for (var prime, i = 0; (prime = primes[i]); i++) {
            if (x % prime == 0) continue next;
        }
        primes.push(x);
        if (callback(x) === false) return;
    }
}

var n = 600851475143;
primes(function(x) {
    if (n == x) {
        console.log(x);
        return false;
    }
    if (n % x == 0) n /= x;
});
