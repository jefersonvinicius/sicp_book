; If b is bigger than 0 perform sum (a + b), otherwise when b is negative its will subtract (a - -b)

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 1 5)
(a-plus-abs-b 1 -5)

; (a-plus-abs-b 1 -5)
; ((if (> -5 0) + -) 1 -5)
; ((if #f + -) 1 -5)
; (- 1 -5)


