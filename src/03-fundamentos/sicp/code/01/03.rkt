#lang sicp

; exercise 1.3:
; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

; first, define square
(define (square n) (* n n))

; given three numbers, return the sum of the square of the two largest
(define (sum-squares-two-largest x y z)
    (cond 
        ((and (>= x y) (>= z y)) (+ (square x) (square z)))
        ((and (>= x z) (>= y z)) (+ (square x) (square y)))
        ( else                   (+ (square y) (square z)))))

; x minor
(sum-squares-two-largest 2 3 4)

; y minor
(sum-squares-two-largest 3 2 4)

; z minor
(sum-squares-two-largest 3 4 2)

; two equal
(sum-squares-two-largest 4 3 3)

; all equal = 18
(sum-squares-two-largest 3 3 3)
