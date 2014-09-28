<?php

$primes = array(2);
$n = 600851475143;
for ($x = 3; $n != $x; $x += 2) {
    foreach ($primes as $prime) {
        if ($x % $prime == 0) {
            continue 2;
        }
    }
    $primes[] = $x;
    if ($n % $x == 0) $n /= $x;
}
echo "${n}\n";

?>
