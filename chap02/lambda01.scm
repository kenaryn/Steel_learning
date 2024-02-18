;; the same bindings are in effect when procedure is created and applied.
;; another binding for x is visible where the procedure is applied
(dbg! (let ([f (let ([x 'sam])
  (λ (y z) (list x y z)))])
    (let ([x 'not-sam])
      (f 'i 'am))))

;; both following expressions are equivalent (≡).
(dbg! (let ([x 'a]) (cons x x)))
(dbg! ((λ (x) (cons x x)) 'a))

