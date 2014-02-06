;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name: Anthony Do
; Date: 02/03/2014
; Class: CS 3210
; Assignment: LISP Assignment 1
;
; Notes: Worked with Jonathan Nicholson for test cases and packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 1
;
; Deletes an element at index 'i'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun deleteAt (X index)
	(cond
		((null X) NIL)
		((eq index 0) (cdr X))
		((cons (car X) (deleteAt (cdr X) (- index 1))))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 2
;
; Deletes all the elements at the given indexes 'i'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun deleteAllAt (i &rest indexes)
	(cond
		((null indexes) i)
		((apply 'deleteAllAt (deleteAt i (car indexes)) (subOne (cdr indexes))))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 3
;
; Sum of all parameters
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun sumAll (&rest parm)
	(cond
		((null parm) 0)
		((atom (car args)) (+ (car args) (similar (cdr one) two)))
		((similar (cdr one) two))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 4
;
; Returns similar elements from two lists
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun similar (one two)
	(cond
		((null one) NIL)
		((memeber (car one) two) (cons (car one) (similar (cdr one) two)))
		((similar (cdr one) two))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 5
;
; Returns the elements that are in one list or the other, but not
; both.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun alone (one two)
	(append (diff one two) (diff two one))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 6
;
; Returns the last item element of the list
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lastItem (X)
	(cond
		((null (cdr X)) (car X))
		((lastItem (cdr X)))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 7
;
; CONS all the parameteres together
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun mcons (&rest X)
	(cond
		((null (cdr X)) (car X))
		((cons (car X) (apply 'mcons (cdr X))))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Problem 8
;
; Returns the nth element of every list
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun nth (X i)
	(cond
		((null X) NIL)
		((cons (return (car X) i) (nth (cdr X) i)))
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Helper functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun subOne (X)
	(cond
		((null X) NIL)
		((cons (- (car X) 1) (subOne (cdr X))))
	)
)

(defun diff (one two)
	(cond
		((null one) NIL)
		((not (memeber (car one) two)) (cons (car one) (diff (cdr one) two)))
		((diff (cdr one) two))
	)
)

(defun return (X i)
	(cond
		((null X) NIL)
		((= i 0) (car X))
		((return (cdr X)(- i 1)))
	)
)