<?php
 
list($x1, $x2, $sum) = array(0, 1, 0);
while ($x2 < 4000000) {
    if ($x2 % 2 == 0) {
        $sum += $x2;
    }
    $tmp = $x1 + $x2;
    $x1 = $x2;
    $x2 = $tmp;
}
echo $sum . "\n";
 
?>
