;; exercise 3.1.scm


(define (make-accumulator init)
  (lambda (x)
    (begin (set! init (+ init x)) init)))

(define A (make-accumulator 10))
(A 10)
(A 10)
