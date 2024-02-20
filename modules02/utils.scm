;; Propositional logic module.
(provide 
  ≡ ≤ ≥ ¬ ∨ ∧)

(defn ≡ eqv?) ; 2261
(defn ≤ <=)   ; 2264
(defn ≥ >=)   ; 2265
(defn ¬ not)
; (defn ≠ (not (=)))  ; 2260

; Disjunction: 2228
(define-syntax ∨
  (syntax-rules ()
    [(or) #f]
    [(or x) x]
    [(or x y) (let [(z x)] (if z z y))]
    [(or x y ...) (or x (or y ...))]))

; Conjunction: 2227
(define-syntax ∧
  (syntax-rules ()
    [(and) #t]
    [(and x) x]
    [(and x y) (if x y #f)]
    [(and x y ...) (and x (and y ...))]))
