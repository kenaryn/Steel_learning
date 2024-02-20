(define/contract (test-reciprocal n)
  (->/c (and/c number? (λ (y) (not (zero? y)))) number?)
    (/ 1 n))

(dbg! (test-reciprocal 9))
(dbg! (test-reciprocal 1/9))
(dbg! (test-reciprocal (test-reciprocal 1/3)))
(dbg! (test-reciprocal 0))
