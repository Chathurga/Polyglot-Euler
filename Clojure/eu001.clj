(println (apply + (filter #(or (= 0 (mod % 3)) (= 0 (mod % 5)))
                          (range 0 1000))))
