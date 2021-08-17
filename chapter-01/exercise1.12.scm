(define (fat n) 
  (if (or (= n 0) (= n 1)) 1
      (* n (fat (- n 1)))
  )
)

(fat 0)
(fat 1)
(fat 2)
(fat 3)
(fat 4)
(fat 10)

(define (triangle n k)
  (/ (fat n) (* (fat k) (fat (- n k))))
)

(triangle 0 0)
(triangle 1 0)
(triangle 1 1)
(triangle 2 1)
(triangle 4 2)

; Based on book answer
(define (pascal r c)
  (if (or (= c 0) (= c r)) 1
      (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c))
  )
)

(pascal 0 0)
(pascal 1 0)
(pascal 1 1)
(pascal 2 1)
(pascal 4 2)