(define (fib n) ; Recursive
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1))
                   (fib (- n 2))
                )
          )
    )
)

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)

(define (fib-iter a b count) ; Iterative
      (if (= count 0) 
            b
            (fib-iter (+ a b) a (- count 1))))

(define (fib n)
      (fib-iter 1 0 n))


(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
