(define (my-last lst)
  ;; should use null?
  (if (eq? (cdr lst)
          '())
      (list (car lst))
      (my-last (cdr lst))))
