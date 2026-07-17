
;; Global variable with defvar
(defvar *debug* t)
;; Can't redefine with defvar
(defvar *debug* nil)
*debug*                                 ; -> T
;; setf to redefine
(setf *debug* nil)
*debug*                                 ; -> NIL

;; defparameter can be re-set with defparameter
(defparameter *debug* t)
*debug*                                 ; -> T
(defparameter *debug* nil)
*debug*                                 ; -> NIl

;; Global set with defconstant cannot be changed
(defconstant +pi+ 3.14)
+pi+                                    ; => 3.14

;; define local variables with let
(let ((var 'inside))
  var)

;; define and reuse in let form with let*
(let* ((data 'data)
       (clean-data data))
  clean-data)

;; keywords: begin with :
:this-is-a-keyword

;; define functions in global-scope with defun
(defun cube (x)
  (* x x x))                            ; => CUBE

(cube 3)
;; => 27

;; define local-scoped functions with flet and labels
(defun square-then-double (x)
  (flet ((square (y)
           (* y y)))
    (* 2 (square x))))
(square-then-double 3)
;; => 18

;; Parameters list are called lambda lists
;; parameters without options are required
;; optional parameters use &optional keyword
(defun fun-with-optional (a &optional b)
  (format nil "The values passed: ~a and ~a." a b))
(fun-with-optional 5)
;; => "The values passed: 5 and NIL."
(fun-with-optional 5 6)
;; => "The values passed: 5 and 6."

;; to set a default value
(defun fun-with-optional-and-default (a &optional (b 10))
  (format nil "The values passed are: ~a and ~a." a b))
(fun-with-optional-and-default 5)
;; "The values passed are: 5 and 10."
;;

;; optional parameter with supplied-predicate
(defun fun-with-optional-and-p (a &optional (b 10 b-supplied-p))
  (if b-supplied-p
      (format nil "The values passed are: ~a and ~a (passed)." a b)
      (format nil "The values passed are: ~a and ~a (default)." a b)))
(fun-with-optional-and-p 5)
;; => "The values passed are: 5 and 10 (default)."

(fun-with-optional-and-p 5 42)
;; => "The values passed are: 5 and 10 (default)."

;; optional and settable by user: &k
(defun fun-with-key (&key (a 1 a-supplied-p)
                          (b 1 b-supplied-p)
                          (c 1 c-supplied-p))
  (format nil "~a (~a) + ~a (~a) + ~a (~a) = ~a"
          a a-supplied-p
          b b-supplied-p
          c c-supplied-p
          (+ a b c)))
(fun-with-key :c 3 :b 2)

;; arbitratry arguments are supplied with &rest
(defun add (&rest args)
  (apply #'+ args))
(add 1 2 3)
;; => 6

;; A function return the last value
(defvar *a-var*)
(defun do-stuff ()
    (format nil "The value is ~a." (random 10)))
(do-stuff)

;; Early return with return-from
(defun early-return ()
  (let ((nums '(2 3 4 5)))
    (dolist (n nums)
      (when (oddp n)
        (return-from early-return (format nil "~a is not even." n))))))
(early-return)

;; Return multiple values with values
(defun multiple-return ()
  (values
   (+ 2 1)
   (* 2 7)
   (/ 200 25)))
(multiple-return)

;; Bind multiple values with multiple-value-bind
(defun multi-bind ()
  (multiple-value-bind (a b c) (multiple-return)
    (format nil "~a + ~a + ~a = ~a" a b c (+ a b c))))
(multi-bind)

;; Destructuring list with destructuring-bind
(defun destruct-list ()
  (destructuring-bind (a b c) '(1 2 4)
    (format nil "~a * ~a * ~a = ~a" a b c (* a b c))))
(destruct-list)

;; Variables are passed by value
(defvar *a-num* 5)
(defun add-5 (num)
  (setf num (+ num 5)))
(add-5 *a-num*)
*a-num*
;; => 5

;; But global variables can be setf inside a function
(defun setf-add-5 ()
  (setf *a-num* (+ *a-num* 5)))
(setf-add-5)
*a-num*
;; => 10

;; Functions are firstclass, can be passed with function
(defun square (x) (* x x))
(mapcar (function square) '(1 2 3 4 5))
;; => (1 4 9 16 25)

;; Or the equivalent reader macro #'
(mapcar #'square '(1 2 3 4 5))
 ; => (1 4 9 16 25)

;; funcall and apply take a function and apply it to the rest of the arguments
(funcall #'+ 1 2 3)
 ; => 6

(apply #'+ '(4 5 6))
 ; => 15

;; Anonymous functions can be created with lambda
(mapcar (lambda (x) (* x x x)) '(1 2 3 4 5))
 ; => (1 8 27 64 125)

;; List can be created with list and the elements
(list 1 2 3)
 ; => (1 2 3)

;; With quote and a list
(quote (1 2 3))
 ; => (1 2 3)

;; Or with the reader-macro '
'(1 2 3)
 ; => (1 2 3)

;; List are simply linked lists of cons cells
(cons 1 (cons 2 (cons 3 nil)))
 ; => (1 2 3)
;; cons cells have two parts: a car and a cdr
;; car contains data
;; and cdr contains either a cons or nil that terminate the branch
;; Common Lisp code is written using these very same cells
(quote (defun cube (x)
   (* x x x)))
 ; => (DEFUN CUBE (X) (* X X X))
;; The line between Code and Data does not exist in Common Lisp

;; length returns how many items are in the list
(length '(these are some list items))
 ; => 5

;; reverse reverse
(reverse '(is this list))
 ; => (LIST THIS IS)

;; first, second ... tenth get items in position
(second '(first second third))
 ; => SECOND

;; member searches for an item and return the item and the rest of the list
(member 'list '(this is list with items))
 ; => (LIST WITH ITEMS)

;; of course, nil if not found
(member 'list '(this has items))
 ; => NIL

;; nth returns the nth (note the zero index)
(nth 3 '(zero one two three))
 ; => THREE

;; position returns the position of the element
(position 'list '(this is yet another list with items))
 ; => 4

;; append appends
(append '(a list with items) '(and more items))
 ; => (A LIST WITH ITEMS AND MORE ITEMS)

;; list can have key/value elements
(defvar *list* '(:name 'Danilo :age 42))
 ; => *LIST*
*list*
 ; => (:NAME 'DANILO :AGE 42)

;; getf can get a valur
(getf *list* :name)
 ; => 'DANILO

;; getf and setf combined can set values
(setf (getf *list* :name) 'Noli)
(setf (getf *list* :age) 30)
*list*
 ; => (:NAME NOLI :AGE 30)

;; other data structures can be made from lists, for example, trees
(defparameter *tree* (quote (defun sum (x y) (+ x y))))
 ; => *TREE*
*TREE*
 ; => (DEFUN SUM (X Y) (+ X Y))
(car *tree*)
 ; => DEFUN
(cdr *tree*)
 ; => (SUM (X Y) (+ X Y))

;; copy-tree returns a copy
(copy-tree *TREE*)
 ; => (DEFUN SUM (X Y) (+ X Y))

;; subst returns a new tree with substitute leaves
(subst 'z 'y *tree*)
 ; => (DEFUN SUM (X Z) (+ X Z))

;; sublis can do the same but with multiple leaves
(sublis '((sum . substract)
          (+ . -)
          (x . a)
          (y . b))
        *tree*)
 ; => (DEFUN SUBSTRACT (A B) (- A B))

;; sublis take an asociation list, alist or table. A list with nested list
(defparameter *en-to-ja-table* '((one . ichi)
                                 (two . ni)
                                 (three . san)))
 ; => *EN-TO-JA-TABLE*

;; in alist the car is the key and the cdr the value
;; alist can be searched by key with assoc
(assoc 'two *en-to-ja-table*)
 ; => (TWO . NI)
;; or by value with rassoc
(rassoc 'san *en-to-ja-table*)
 ; => (THREE . SAN)

;; regular list can be used instead of dotted list
(defparameter *en-to-ja-list* '((one ichi)
                                (two ni)
                                (three san)))
 ; => *EN-TO-JA-LIST*
;; but it needs cadr to get the value
(cadr (assoc 'two *en-to-ja-list*))
 ; => NI
