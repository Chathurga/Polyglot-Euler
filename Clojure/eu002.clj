(defn fib [x1, x2]
    (cons x2 (lazy-seq (fib x2 (+ x1 x2)))))

(println (apply + (filter odd? (take-while #(< % 4000000) (fib 0 1)))))
