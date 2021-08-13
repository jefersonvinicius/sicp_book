(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* (f-recursive (- n 2)) 2) (* (f-recursive (- n 3)) 3)))
  )
)

(f-recursive 1)
(f-recursive 2)

(f-recursive 3)
; (+ (f-recursive 2) (* (f-recursive 1) 2) (* (f-recursive 0) 3))
; (+ 2 (* 1 2) (* 0 3))
; (+ 2 2 0)
; 4
; 
; (f-recursive 4)
; (+ (f-recursive 3) (* (f-recursive 2) 2) (* (f-recursive 1) 3))
; (+ (f-recursive 3) (* 2 2) (* 1 3))
; (+ (+ 2 2 0) 4 3)
; (+ 4 4 3)
; 11

(f-recursive 5)
(f-recursive 6)
(f-recursive 7)



(define (f-iterative n)
  (define (f-i a b c target count)
    
    (define (next) (+ c (* 2 b) (* 3 a)))
    
    (cond ((< n 3) n)
          ((= count target) (next))
          (else (f-i b c (next) n (+ 1 count)))
    )
  )
  (f-i 0 1 2 n 3)
)

; (f-iterative 3)
; (+ 2 (* 2 1) (* 3 0))
; (+ 2 2 0)
; 4

; (f-iterative 4)
; (f-i 1 2 4 4 4)
; (f-i 1 2 4 4 4)
; (+ 4 (* 2 2) (* 3 1)))
; (+ 4 4 3)
; 11

(f-iterative 0)
(f-iterative 1)
(f-iterative 2)
(f-iterative 3)
(f-iterative 4)
(f-iterative 5)
(f-iterative 6)
(f-iterative 7)