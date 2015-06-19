(define (my-last lst)
  ;; TODO: Avoid error when lst is null
  ;; should use null?
  (if (eq? (cdr lst)
          '())
      (list (car lst))
      (my-last (cdr lst))))
