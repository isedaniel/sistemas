#lang sicp 

#|
Exercise 1.5: Ben Bitdiddle has invented a test to determine
whether the interpreter he is faced with is using applicative-
order evaluation or normal-order evaluation. He defines the
following two procedures:

(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

Then he evaluates the expression
(test 0 (p))

What behavior will Ben observe with an interpreter that
uses applicative-order evaluation? 
What behavior will he observe with an interpreter that uses 
normal-order evaluation? 
Explain your answer. 
(Assume that the evaluation rule for the special form if is the 
same whether the interpreter is using normal or 
applicative order: the predicate expression is evaluated first, 
and the result determines whether to evaluate the consequent or 
the alternative expression.)
|#

#|
A:
First, I will remember applicative-order evaluation and normal-order 
evaluation.

Normal-order evaluation refer to fully expand and then reduce arguments.
Applicative-order eval, on the other hand, refers to "evaluate and then 
apply".

So, if we use Applicative-order, (p) will evaluate to p first, a bug.
If we use normal-order, test wil expand to (if (= 0 0) 0 (p)), the will
return 0: (p) will never evaluate.
|#