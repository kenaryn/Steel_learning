; (let ([a 4] [b -3])
;   (let ([a-squared (* a a)] [b-squared (* b b)])
;     (+ a-squared b-squared)
;   (displayln (+ a-squared b-squared))))
;     ; (+ a-squared b-squared))

(displayln (let ([a 4] [b -3]) (* a a) (* b b)))
(let ([a 4] [b -3]) (* a a) (displayln (* b b)))

; only the inner binding is visible within the body.
; `x`'s scope is body of outer `let` expression minus the body of the inner `let` expression
(let ([x 3])
  (let ([x (+ x 9)]) ; the first `x` shadows declaration `x` in outer `let`
    (displayln (+ x x))))

(let ([x 3])
  (let ([new-x (+ x 9)])
    (displayln (+ new-x new-x))))

(dbg! (let ([a 4] [b -3]) (* a a) (* b b)))
