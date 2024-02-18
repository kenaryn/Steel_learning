(defn abs-2
  (λ (n)
    (if (< n 0)
      (- 0 n)
      n)))

(defn abs-3
  (λ (n)
    (if (>= n 0)
      n
      (- 0 n))))

(defn abs-4
  (λ (n)
    (if (not (>= n 0))
      (- 0 n)
      n)))

(defn abs-5
  (λ (n)
    (if (or (> n 0) (= n 0))
      n
      (- 0 n))))

(dbg! (abs -432))
(dbg! (abs 432))

(defn abs-6
  (λ (n)
    (if (= n 0)
      0
      (if (< n 0)
        (- 0 n)
        n))))

(dbg! (abs-6 11))
(dbg! (abs-6 -11))

(defn abs-7
  (λ (n)
    ((if (>= n 0) + -)
        0
        n)))

(dbg! (abs-7 -3))
(dbg! (abs-7 3))
