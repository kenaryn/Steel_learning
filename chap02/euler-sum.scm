; (let euler-sum ([(λ (x) (+ (car x) (car (cdr x)))]))
; (list (1 2 3 4 5 6 7 8 9)))

; (define range
;   (case-lambda
;     ((e) (range 0 e))
;     ((b e) (do ((r '() (cons e r))
;                (e (- e 1) (- e 1)))
;        ((< e b) r)))))

; (dbg! (range 3))
; (dbg! (range 3 5))

; (let euler-sum ([λ x (+ (car x) (car (cdr x)))])
; (range 1 10))

; (λ x (+ (car (range 1 10)) (car (cdr (range 1 10)))))
; (λ x (+ (car x) (car (cdr x))) (range 1 10))

; (dbg! ((λ (x) (+ (car x) (car (cdr x)))) (range 1 10)))
(let ([euler-sum (λ (x) (+ (first x) (first (rest x))))])
  (range 1 10))

; (let ([euler-sum (λ x (+ (car x) (car (cdr x))))])
;   ((range 1 10)))

(defn doubler
  (λ (f)
    (λ (x) (f x x))))

(defn double (doubler +))
(double 9/2) ; => 9
(defn double-cons (doubler cons))
(defn double-any
  (λ (f x)
    ((doubler f) x)))

;; Define composition itself
(defn compose
  (λ (p1 p2)
    (λ (x)
      (p1 (p2 x)))))

(defn cadr (compose car cdr))
(defn cddr (compose cdr cdr))
(defn caar (compose car car))
(defn cdar (compose cdr car))
(defn caaar (compose car caar))
(defn caadr (compose caar cdr))

(defn (euler-sum accu lst)
  (if (empty? lst)
    accu
    (euler-sum (+ accu (car lst)) (cdr lst))))

