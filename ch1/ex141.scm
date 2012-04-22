;; exercise 1.41

(define (inc x)
  (+ x 1)
)

(define (double unary_func)
  (lambda (x)
    (unary_func (unary_func x)))
)

(((double (double double)) inc) 5)