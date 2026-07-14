
(+ (* 1 2) (/ 4 2)) ; => 4 (3 bits, #x4, #o4, #b100)

"This is a string."

777                                     ; -> 777

'my-num                                 ; => MY-NUM


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
