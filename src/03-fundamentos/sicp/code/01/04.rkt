#lang sicp 

#|
Exercise 1.4: Observe that our model of evaluation allows
for combinations whose operators are compound expressions. 
Use this observation to describe the behavior of the
following procedure:
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
|#

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; $> 3
(a-plus-abs-b 1 2)

; $> 3
(a-plus-abs-b 1 -2)

#|
Answer:
The operator -as the arguments- can result from eval.
|#