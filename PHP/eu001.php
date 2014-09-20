<?php

echo array_sum(array_filter(range(0, 999), function($x) {
    return $x % 3 == 0 || $x % 5 == 0;
})) . "\n";

?>