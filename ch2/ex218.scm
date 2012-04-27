;; exercise 2.18

(define (reverse list1)
  (if (not (null? list1))
      (let ((head (car list1))
	    (tail (cdr list1))
	    )
	(if (null? tail)
	    head
	    (cons (reverse (cdr list1)) head)
	)
      )
  )
)

(reverse (list 1 2 3))
(reverse (reverse (list 1 2 3)))

(car (list (list 1 2) 3))
(cdr (list (list 1 2) 3))

