(use gauche.test)
(load "./l99.scm")

;; http://goyoki.hatenablog.com/entry/2014/04/27/120043
;; http://practical-scheme.net/gauche/man/gauche-refj_105.html
;; I want to use `test-module', but I currently do not know how to make modules

(test-start "l99")

(test-section "Working with lists")

(test* "Find the last box of a list"
       '(d)
       (my-last '(a b c d)))


(test-end)
