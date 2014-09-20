// This could also be written imperatively but I prefer this style
// I forgot how bankrupt the JS standard library is, not a lot is provided
// The anonymous function syntax is incredibly bulky

// Creates an array with the numbers l to h (exclusive) listed consecutively
function range(l, h) {
    // Creates an array with blanks slots
    // Fills every slot with 0 as map wouldn't traverse otherwise
    // Map the index of a traversal (plus l) over each slot
    return Array.apply(0, Array(h-l)).map(function(x, i) { return l + i; });
}

var sum = range(1, 1000)
    .filter(function(x) { return x % 5 == 0 || x % 3 == 0; })
    .reduce(function(a, x) { return a + x; });

console.log(sum);
