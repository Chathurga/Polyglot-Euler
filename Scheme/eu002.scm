(define (fib x1 x2 acc)
    (if (< x2 4000000)
        (let ((x3 (+ x1 x2)))
            (fib x2 x3 (if (= 0 (modulo x2 2)) (+ acc x2) acc)))
        acc))

(display (fib 0 1 0))
(newline)
