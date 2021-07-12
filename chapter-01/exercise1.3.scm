(define (max x y) ( if (> x y) x y ))
(define (maxOfThree x y z) ( 
    if (>= x (max y z)) x (max y z)
))

(define (square x) (* x x))
(define (sumSquare x y) (+ (square x) (square y)))

(define (sumOfLargestTwoSquared x y z) (
    if (= (maxOfThree x y z) x) 
        (sumSquare x (max y z)) 
        (sumSquare y z)
))

(sumOfLargestTwoSquared 1 2 3)
(sumOfLargestTwoSquared 1 1 1)
(sumOfLargestTwoSquared 1 2 2)
(sumOfLargestTwoSquared 1 1 2)
(sumOfLargestTwoSquared 1 4 3)

