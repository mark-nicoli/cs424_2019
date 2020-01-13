#lang racket
(cons 1 2)

(cons (cons 1 2) 3)

(define foo (cons 1 2))

(cons 1 null)

(define bar (cons 1 null))

(cons 1 (cons 2 null)) ;this is a list constructed out of pairs

(define mylist (cons 1 (cons 2 (cons 3 null))))

(equal? (list 1 2 3) mylist)

(list-ref (list "a" "b" "c") 1) ;get the second element

(list-ref (list "a" "b" "c") 2) ;get the third element

;loops (implement list-ref)
(define (my-list-ref list n)
    (if (zero? n)  ;is asked for 0th element
       (car list)  ;return car
       (my-list-ref (cdr list) (- n 1)))) ;recursive call

(define baz (list 1 2 3))

(define (double x) (* x 2))

(map double baz)  ;make a list from baz with the double function applied to them

(define (double-all x) (double x)) ;double anything


;implement map
(define (my-map fn list)
  (if (null? list)
      null
      (cons (fn (car list)) (my-map fn (cdr list)))))


(define qux (list 1 2 3 4))

(foldr + 0 qux) ;add up the elements of the qux starting with 0
; i.e (0+4) + (0+3)....

;implemeent foldr
(define (my-foldr fn start list)
  (if (null? list)
      start
      (fn (car list) (my-foldr fn start (cdr list)))))
