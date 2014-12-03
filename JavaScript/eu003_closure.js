// Another way of simulating a generator in JavaScript
// Use a closure to create a function with local state. Repeated calls to
//  the function outputted by 'primes' will return sequential primes

var primes = function() {
    var x = 1, list = [2];

    return function() {
        next: while (true) {
            x += 2;
            for (var prime, i = 0; (prime = list[i]); i++) {
                if (x % prime == 0) continue next;
            }
            list.push(x);
            return x;
        }
    }
}

var n = 600851475143;
var nextPrime = primes(), prime;

do {
    prime = nextPrime();
    if (n % prime == 0) n /= prime;
} while (n != 1);

console.log(prime);
