(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-mul a (halve b))))
        (else (+ a (fast-mul a (- b 1))))))


(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))
