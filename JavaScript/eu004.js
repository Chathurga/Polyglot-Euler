var palindrome = function(x) {
    var xStr = x.toString();
    return xStr == xStr.split("").reverse().join("");
}

var palindromes = [], largest = 0;
for (var i = 999; i >= 100; i--) {
    for (var j = i; j >= 100; j--) {
        var ij = i * j;
        if (ij < largest) break;
        if (palindrome(ij)) {
            largest = ij;
        }
    }
}

console.log(largest);
