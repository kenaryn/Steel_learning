(require "utils.scm")

(dbg! (≡ (cons 'a 'b) (cons 'a 'b)))
(dbg! (≡ (cons 'a 'b) (cons 'b 'b)))
(dbg! (≤ 4 (+ 6 -2)))
