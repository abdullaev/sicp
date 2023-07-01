(define (fast-mul a b)
  (fast-mul-iter 0 a b))


(define (fast-mul-iter r a b)
  (cond ((= b 0) r)
        ((even? b) (fast-mul-iter (double r) a (halve b)))
        (else (fast-mul-iter (+ r a) a (- b 1)))))


(define (double x)
  (+ x x))


(define (halve x)
  (/ x 2))
