#lang racket
(define zero (lambda (f)
               (lambda (x) x)))
(define one (lambda (f)
              (lambda (x) (f x))))
(define add (lambda (n1 n2)
              (lambda (f)
                (lambda (x)
                  ((n1 f) ((n2 f) x))))))
(define mul (lambda (n1 n2)
              (lambda (f)
                (lambda (x)
                  ((n1 (n2 f)) x)))))

(define two (add one one))
(define four (add two two))
(define sixteen (mul four four))

(define squre (lambda (n)
                (mul n n)))
(define a (squre (squre sixteen)))

(define (add-1 n) (+ n 1))

((a add-1) 0)
