(define (my-last l)
  ;; TODO: Avoid error when lst is null
  ;; should use null?
  (if (eq? (cdr l)
          '())
      (list (car l))
      (my-last (cdr l))))

(define (my-but-last l)
  (if (null? l)
      l
      (if (null? (cdr l))
          l
          (if (null? (cddr l))
              l
              (my-but-last (cdr l))))))
