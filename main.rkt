#lang racket
(require "utility.rkt")
(require "runner.rkt")
(require "parser.rkt")


(define env '((a 1) (b 2) (c 5))) 

;(define sample-code '(call (function () (ask (bool != a b) (math - a b) (math + a b))) (a)))
;(display (neo-parser sample-code))
;(define parsed-neo-code (neo-parser sample-code))
;(run-neo-parsed-code parsed-neo-code env)

(define parsed-neo-code (neo-parser '(call (function (a) (local-vars ((x 5) (o 6) (w 9)) (call (function (b)(math + a (math * b x)))(2)) ))(3)) ))


(run-neo-parsed-code parsed-neo-code env) 