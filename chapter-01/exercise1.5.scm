(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

; (test 0 (p))
; When expression above is evaluated by Applicative-order it enter in loop, because (p) always expand to itself
; When is evaluated by normal order we have following evaluation:
; (test 0 (p))
; (if (= 0 0) 0 (p))
; (if #t 0 (p))
; 0