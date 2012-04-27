;; exercise 2.31

(define (tree-map func tree)
  (if (not (null? tree))
      (if (pair? tree)
	  (cons (tree-map func (car tree))
		(tree-map func (cdr tree)))
	  (func tree)
      )
  )
)

(tree-map square (list 1 (list 2 3) 4))
(append (list 1 2 3) 3)