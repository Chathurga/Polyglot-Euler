(require-extension srfi-1)

(display (apply +
                (filter (lambda (x) (or (= 0 (modulo x 3))
                                        (= 0 (modulo x 5))))
                        (iota 999 1))))
(newline)
