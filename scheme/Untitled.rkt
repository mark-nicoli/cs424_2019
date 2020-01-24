#lang racket
(define (scatterGather indices values)
  (cond ((null? indices) '())
        ((<(car indices)(length values)) 
        (cons (list-ref values (car indices))(scatterGather (cdr indices) values)))
        (else (cons '#f(scatterGather (cdr indices) values)))))
 
