(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(inc 4)
(dec 4)

(define (+ a b) 
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

(+ 4 5)
