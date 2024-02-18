(defn (euler-sum accu lst)
  (if (empty? lst)
      accu
      (euler-sum (+ accu (car lst)) (cdr lst))))

(dbg! (euler-sum 0 (range 1 11)))

