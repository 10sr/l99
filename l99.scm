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

(define (element-at l n)
  (if (eq? n
          0)
      (error "0 passed as index")
      (if (null? l)
          (error "Index out of list")
          (if (eq? n
                   1)
              (car l)
              (element-at (cdr l)
                          (- n 1))))))
