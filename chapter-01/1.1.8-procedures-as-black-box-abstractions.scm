; The function can defined is used without the programmer know the implementation.
; We are not concerned about how the function do your work, we are concerned only the fact 
;   that it do your work. That's why we can call the function as Black Box
; Below, have two function that do the same thing, but with different ways

(define (square x) (* x x))

(square 5)

(define (square x) 
  (exp (double (log x))))

(define (double x) (+ x x))

(square 5)
