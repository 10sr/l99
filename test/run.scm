(use gauche.test)
(load "./l99.scm")

;; http://goyoki.hatenablog.com/entry/2014/04/27/120043
;; http://practical-scheme.net/gauche/man/gauche-refj_105.html
;; I want to use `test-module', but I currently do not know how to make modules

;; TODO: Use `...' to accept multiple functions
(define-syntax test-l99
  (syntax-rules ()
    ((_ desc from to func)
     (test* desc
            to
            (apply func from)))))

(test-start "l99")

(test-section "Working with lists")

(test-l99 "L1: Find the last box of a list"
          '((a b c d))
          '(d)
          my-last)

(test-l99 "L2: Find the last but one box of a list"
          '((a b c d))
          '(c d)
          my-but-last)

(test-l99 "L3: Find the K'th element of a list"
          '((a b c d e) 3)
          'c
          element-at)


;; Somehow in travis environment cannot use :exit-on-failure
;;(test-end :exit-on-failure #t)
(exit (test-end))
