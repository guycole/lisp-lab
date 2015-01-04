;;;
;;; Title:square_root.lsp
;;;
;;; Description:
;;;
;;; Development Environment:
;;;   OS X 10.9.5
;;;   clisp 2.49 (2010-07-07)
;;;
;;; Legalise:  
;;;   Copyright (C) 2014 Digital Burro, INC.
;;;
;;; Author:
;;;   G.S. Cole (guycole at gmail dot com)
;;;
;;; Maintenance History:
;;;   $Id$
;;;
;;;   $Log$
;;;
(defun square(x) (* x x))
(defun sum-of-squares(x y) (+ (square x) (square y)))

(defun average(x y) (/ (+ x y) 2))
(defun improve(guess x) (average guess(/ x guess)))
(defun converge(guess x) (< (abs (- (square guess) x)) 0.001))
(defun newtroot(guess x) (if (converge guess x) guess (converge (improve guess x) x)))

(defun iftest(x) ((> x 5)
(print "true")(print "false")
))

(print (square 2))
(print (sum-of-squares 2 3))
(print (average 3 6))
(print (improve 1 2))
(print (converge 3 2))
(print (newtroot 1 3))
(print (iftest 3))
(print (iftest 6))
