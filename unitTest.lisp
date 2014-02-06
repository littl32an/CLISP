;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Unit Tests
;
; Utilizes the lisp-unit package
; http://www.cs.northwestern.edu/academics/courses/325/readings/lisp-unit.html
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Load the unit test package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "lib/lisp-unit")
(in-package :lisp-unit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Load the functions class
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "functions")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Start the unit tests
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-test test-deleteAt
	(assert-equal '(A B C E) (deleteAt '(A B C D E) 3))
)

(define-test test-deleteAllAt
	(assert-equal '(C E) (deleteAllAt '(A B C D E) 0 1 3))
)

(define-test test-sumAll
	(assert-equal 39 (sumAll 3 4 '(* 5 6) 2))
)

(define-test test-similar
	(assert-equal '(B) (similar '(A B C D E) '(X (A C) B R L)))
)

(define-test test-alone
	(assert-equal '(A C D E X (A C) R L) (alone '(A B C D E) '(X (A C) B R L)))
)

(define-test test-lastItem
	(assert-equal "D" (lastItem '("A" "B" "C" "D")))
)

(define-test test-mcons
	(assert-equal '(a b c d e) (mcons 'a 'b 'c '(d e)))
)

(define-test test-nth
	(assert-equal '() ())
	
)

(setq *print-errors* T)
(setq *print-failures* T)
(run-tests :all)