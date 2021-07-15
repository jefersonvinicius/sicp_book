(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))


(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
            x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

; The new if will be fall in loop,
; because it was going to call itself after evaluate in applicative substitution
; Below have a example:

(define (try-new-if a)
    (new-if (= a 0) 1 (/ 1 0)))

(define (try-if a)
    (if (= a 0) 1 (/ 1 0)))

(try-if 0)
(try-if 1)
(try-new-if 0) ; This throw a error
(try-new-if 1)