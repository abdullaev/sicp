(define (cbrt x)
  (cbrt-iter 1.0 x))


(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x)
                 x)))


(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))


(define (good-enough? guess next-guess)
  (< (abs (- next-guess guess)) 0.001))
