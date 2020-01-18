#lang racket
;2019 January
;list-ref get the n-th index of the list.

(define (scatterGather indices values)
  (cond ((null? indices) '())  ;always do this check  '() -> return empty list
        ((<(car indices)(length values)) 
        (cons (list-ref values (car indices))(scatterGather (cdr indices) values)))  ;list-ref we pass in the list first and then the value
        (else (cons '#f(scatterGather (cdr indices) values)))))

;2019 Autumn
;Define a Scheme function PLUSEVENS which takes a list of number and 
;returns the sum of those that occur in even positions in the list.
;(plusevens '(1 20 300 4000 50000 600000)) => 50301

(define (PLUSEVENS list)
  (cond((<(length list)3)  ;whenever we have cond we need an else
        (car list))        
  (else(+ (car list)(PLUSEVENS (cddr list)))))) ;drop first and then second
  
;2018 January
;notnum
;filter (filter the list by numbers (number? list) :- returns the numbers from the list))

(define (tear pred lst)
  (list (filter pred lst) (filter (lambda (notNum) (not (pred notNum))) lst)))

;2018 autumn
;map-skip
;Define a Scheme function map-skip which takes a function and a list 
;and returns the result of applying the given function to
;every second element of the given list, starting with the first element.
;(map-skip (λ (x) (+ x 1000)) '(1 2 3 4 5 6))
;(1001 2 1003 4 1005 6)

(define (map-skip func lst)
  (cond ((null? lst) '())  ;check is list is empty
  (else (cons (func (car lst)) (cons (cadr lst) (map-skip func (cddr lst)))))))
  
  
;2017 January
;Define a Scheme function foo which finds all atoms inside an
;s- expression which pass a given predicate.
;(foo number? '(a (2 (c 3) 4))) => (2 3 4)



;2017 Autumn
;Define a Scheme function foo that takes two lists and yields
;a list combining all the elements in the two input lists,
;taking 1 from the first list, 2 from the second list,
;3 from the first list, 4 from the second list, etc, until both are exhausted.

;(foo '(a b c d e f g) '(aa bb cc dd ee ff gg)) => (a aa bb b c d cc dd ee ff e f g gg)

(define (foo lst1 lst2)
  (cond ((and (null? lst1) (null? lst2)) '())
        ((>= 1 (length lst1)) lst2)
        ((>= 1 (length lst2)) lst1)
        (else (append (take lst1 1) (foo lst2 (drop lst1 1))))))

;2016 Autumn
;(tr '((1 2 3) (4 5 6)))
;=> [[1,4],[2,5],[3,6]]
(define (tr lst)
  (cond ((null? (car lst)) '())
        (else (cons (map car lst) (tr (map cdr lst))))))

  
;2015 Autumn
;After-filter - returns list of the following element that passes the predicate p
;takes two arguments (predicate p and list xs

(define (after-filter p xs)
  (cond (( or (null? xs) (= (length xs) 1)) '())
        ((p (car xs)) (cons (cadr xs) (after-filter p (cdr xs))))
        (else (after-filter p (cdr xs)))))
                      
      
      









