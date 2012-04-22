;; exercise 1.43

(define (inc x)
  (+ x 1)
)

(define (compose f g)
  (lambda (x)
    (f (g x)))
)

(define (repeated f n)
  (if (= n 0)
      f
      (repeated (lambda (x)
			(f x)) (- n 1)))
)

((compose square inc) 6)

((repeated square 2) 5)