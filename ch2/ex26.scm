;; exercise 2.6

(define zero (lambda (f) (lambda (x) x)))

(define add-1 (lambda (f) (lambda (x) (f x))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define plus (lambda (f g) (lambda (x) (f (g x)))))

