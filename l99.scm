(define (my-last l)
  (if (null? l)
      (error "Empty list given")
      (if (null? (cdr l))
          (list (car l))
          (my-last (cdr l)))))

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

(define (my-length l)
  (let loop((l l)
            (n 0))
    (if (null? l)
        n
        (loop (cdr l)
              (+ n 1)))))

(define (my-reverse l)
  (let loop((from l)
            (to '()))
    (if (null? from)
        to
        (loop (cdr from)
              (cons (car from)
                    to)))))

(define (palin? l)
  (equal? l
          (my-reverse l)))

(define (flatten l)
  (apply append (map (lambda (e)
                       (if (pair? e)
                           (flatten e)
                           (list e))) l)))
