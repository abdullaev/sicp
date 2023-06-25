(define (f-r n)
  (if (< n 3)
      n
      (+ (f-r (- n 1))
         (* 2 (f-r (- n 2)))
         (* 3 (f-r (- n 3))))))


(define (f-i n)
  (f-iter 0 1 2 n))


(define (f-iter a b c n)
  (cond ((< n 0) n)
        ((= n 0) a)
        (else (f-iter b c (+ c
                             (* 2 b)
                             (* 3 a))
                      (- n 1)))))
