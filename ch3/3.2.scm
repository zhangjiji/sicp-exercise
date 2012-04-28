;; exercise 3.2.scm

(define (make-monitored f)
  (define (reset-count)
    (begin (set! amount 0) amount))
  (define (how-many-calls?)
    (amount)
  (define (dispatch x)
    (cond ((eq? x 'how-many-calls?) how-many-calls?)
	  ((eq? x 'reset-count) reset-count)
	  (else (f x))))
  dispatch)

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)