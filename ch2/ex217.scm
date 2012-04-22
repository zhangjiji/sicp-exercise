;; exercise 2.17

(define (last-pair list1)
  (if (not (null? list1))
      (if (null? (cdr list1))
	  (car list1)
	  (last-pair (cdr list1))
      )
  )
)

(last-pair '())
