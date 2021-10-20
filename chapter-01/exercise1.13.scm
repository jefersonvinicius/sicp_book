; I don't known math notation :(

(define (fib-n n) ; Recursive
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib-n (- n 1))
                   (fib-n (- n 2))
                )
          )
    )
)

(define (gr) (/ (+ 1 (sqrt 5)) 2))
(define (fib n)
    (round (/ (expt (gr) n) (sqrt 5)))
)

(fib-n 3)
(fib-n 4)
(fib-n 10)

(fib 3)
(fib 4)
(fib 10)
