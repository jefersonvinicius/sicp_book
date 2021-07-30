; Below, the sqrt is composed by many other functions
(define (sqrt x)
    (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
    (average guess (/ x guess)))
(define (average y z)
    (/ (+ y z) 2))

; Now, it was defined with the support functions inner of own scope, 
; like if the support functions was child of sqrt.
; Another point, the x parameter can be shared with inner functions, so, there a simplification of functions
(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))

    (define (average y z)
        (/ (+ y z) 2))

    (define (improve guess)
        (average guess (/ x guess)))

    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))

    (sqrt-iter 1.0))

(sqrt 9)

; The sqrt function is the unique the users use. So, makes more sense, 
; leave the support functions like "private mode" 