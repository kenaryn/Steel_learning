; ex 2.5.1 page 32
(dbg! (let ([f (λ (x) x)])
  (f 'a))) ; => 'a

(dbg! (let ([f (λ x x)])
  (f 'a))) ; => '(a)

(dbg! (let ([f (λ (x . y) x)])
  (f 'a))) ; => 'a

(dbg! (let ([f (λ (x . y) y)])
  (f 'a))) ; => '()

;; `list` is defined as `cons 'a . '()`

;; ex 2.5.3
;a. f
;b. none
;c. f
;d. f.y
;e y
;f. y.z
