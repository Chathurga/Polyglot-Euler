(defn primes
  ([] (cons 2 (lazy-seq (primes 3 [2]))))
  ([x, ps]
    (if (every? #(not= 0 (rem x %)) ps)
        (cons x (lazy-seq (primes (+ x 2) (conj ps x))))
        (primes (+ x 2) ps))))

(defn factorize [n, ps]
  (let [[p & ps'] ps]
    (if (= n p)
        n
        (if (= 0 (rem n p))
            (factorize (quot n p) ps')
            (factorize n ps')))))

(println (factorize 600851475143 (primes)))
