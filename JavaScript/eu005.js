var gcd = function(a, b) {
    return (b == 0) ? a : gcd(b, a % b);
}

var lcm = function(a, b) {
    return (a * b) / gcd(a, b);
}

var result = [20,19,18,17,16,15,14,13,12,11].reduce(lcm);
console.log(result);
