(define (square x)
    (* x x)
)

(define (improve x y) 
   (/ (+ (/ x (square y)) (* 2 y)) 3)
)

(define (good-enough? guess x)
    (= (improve x guess) guess)
)

(define (cube-root-iter guess x)
    (if (good-enough? guess x) 
        guess
        (cube-root-iter (improve x guess) x)
    )
)

(define (cube-root x)
    (cube-root-iter 1.1 x)
)

(cube-root 8)
(cube-root 27)
(cube-root 5)