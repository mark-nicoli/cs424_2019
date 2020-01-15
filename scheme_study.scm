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
; fn is a function we aree looking to apply to list
(define (my-map fn list)
  (if (null? list)
      null
      (cons (fn (car list)) (my-map fn (cdr list)))))


(define qux (list 1 2 3 4))

;foldr takes 3 arguments ( + startNum list)
;foldr then fold up the list and adds the numbers to startNum and combines them

(foldr + 0 qux) ;add up the elements of the qux starting with 0
; i.e (0+4) + (0+3)....

;implement foldr
(define (my-foldr fn start list)
  (if (null? list)
      start
      (fn (car list) (my-foldr fn start (cdr list)))))

;functions in functions
(define (sum-of-squares x y)
  (define(square a)
    (* a a))
  (define(add b c)
    (+ b c))
  (add (square x) (square y)))

;printing and what-not/ using outer symbols (definitions)
(define (assert-equals a b)

  (define (print-error)
    (display a)
    (display " is not equal to ")
    (display b)
    (newline))

  (if (not (equal? a b)) (print-error) null))
    
;recursion in scheme
;factorial
(define (fact n)
  (if (= n 0)   ;base case
      1
      (* n (fact (- n 1)))))

;fibonacci
(define (fib n)
  (if (<= n 2)
  1
  (+ (fib(- n 1))
     (fib(- n 2)))))

;map implementation using recursion
(define (my-map-rec fn list) ;returns absolute value of all nums in list
  (if (null? list)
      null
      (cons (fn (car list))    ;cons is used to create lists
            (my-map-rec fn (cdr list)))))
      
;tail call optimisation : - previous stack frame is no longer needed
;                           throw it away

;lambda functions - anonymous functions






















