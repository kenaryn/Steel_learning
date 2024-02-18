(let euler-sum ([(λ (x) (+ (car x) (car (cdr x)))]))
(list (1 2 3 4 5 6 7 8 9)))

(define range
  (case-lambda
    ((e) (range 0 e))
    ((b e) (do ((r '() (cons e r))
               (e (- e 1) (- e 1)))
       ((< e b) r)))))

(dbg! (range 3))
(dbg! (range 3 5))

(let euler-sum ([λ x (+ (car x) (car (cdr x)))])
(range 1 10))

(λ x (+ (car (range 1 10)) (car (cdr (range 1 10)))))
(λ x (+ (car x) (car (cdr x))) (range 1 10))

(dbg! ((λ (x) (+ (car x) (car (cdr x)))) (range 1 10)))
