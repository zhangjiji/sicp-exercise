;; exercise 3.2.scm

(define (make-monitored f)
  (let ((count 0))
    (define (reset-count)
      (begin (set! count 0) count))
    (define (how-many-calls?)
      count)
    (define (dispatch x)
      (cond ((eq? x 'how-many-calls?) (how-many-calls?))
	    ((eq? x 'reset-count) (reset-count))
	    (else (begin (set! count (+ count 1)) (f x)))))
    dispatch)
)

(define s (make-monitored sqrt))
(s 100)
(s 'how-many-calls?)
(s 'reset-count)