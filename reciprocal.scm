(defn reciprocal
  (fn (n)
    (if (= n 0)
        "oops!"
        (/ 1 n))))

(displayln (reciprocal 0))
(displayln (reciprocal 3))
(displayln (reciprocal 1/10))
(displayln (reciprocal (reciprocal 1/10)))
