
(define (abs x) 
   (cond ((> x 0) x)
         ((= x 0) 0)
         ((< x 0) (- x))
   )
)

(define (abs x)
   (cond ((< x 0) (- x))
          (else x)
    )
)

(define (is-between x start end) 
    (
        if (and (> x start) (< x end)) "YES" "NO"
    )
)

(abs 1)
(abs -1)
(is-between 2 1 10)
(is-between 11 1 10)