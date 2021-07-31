(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))
    )
)

(factorial 6)

(define (factorial n)
    (fact-iter 1 1 n))

(define (fact-iter result counter n)
    (define (next-counter) (+ counter 1))
    
    (define (next-result) (* result (next-counter)))

    (if (= counter n)
        result
        (fact-iter (next-result) (next-counter) n)
    )
)

(factorial 6)