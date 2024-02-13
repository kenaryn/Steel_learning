; exercice 2.4.1 a. page 28
(let ([a 2] [b 3])
(let ([x (* 3 a)])
(+ (- x b) (+ x b))))  ; => 12

; exercice 2.4.1 b.
(let ([l1 '(a b c)])
(cons (car l1) (cdr l1)))

; exercice 2.4.2 
(let ([x 9])
(* 9
(let ([x (/ x 3)])
(+ x x))))  ; => 54

; exercice 2.4.3
(let ([x 9])
(* x
(let ([y (/ x 3)])
(+ y y))))  ; => 54

; exercice 2.4.4 a.
(let ([x 'a] [y 'b])
(list (let ([new-x 'c]) (cons new-x y))
(let ([new-y 'd]) (cons x new-y))))
=> '(('c . 'b) ('a . 'd))

; exercice 2.4.4 b.

