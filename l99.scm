(define (my-last l)
  ;; TODO: Avoid error when lst is null
  ;; should use null?
  (if (eq? (cdr l)
          '())
      (list (car l))
      (my-last (cdr l))))
