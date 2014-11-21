;;;
;;; Title:one53.lsp
;;;
;;; Description:
;;;   My first original lisp program.
;;;   Works, but returns 0 and 1 as answers, and it should only 
;;;   evaluate 3 digit integers.
;;;
;;;   Originally dated: 26 September, 1996
;;;
;;; Development Environment:
;;;   Linux 2.0.30 (Red Hat 4.2)
;;;   clisp-1997-09-25
;;;
;;; Legalise:  
;;;   Copyright (C) 1997 Digital Burro, INC.
;;;
;;; Author:
;;;   G.S. Cole (gsc@acm.org)
;;;
;;; Maintenance History:
;;;   $Id: one53.lsp,v 1.1 1997-12-14 04:56:10 gsc Exp $
;;;
;;;   $Log: one53.lsp,v $
;;;   Revision 1.1  1997-12-14 04:56:10  gsc
;;;   Initial Check In
;;;
;;;

(defun cube(x)(* x x x ))

(dotimes (huns 10)
         (dotimes (tens 10)
                  (dotimes (ones 10)
                           (setq temp1 (+ (* huns 100) (* tens 10) (* ones 1)))
                           (setq huns3 (cube huns))
                           (setq tens3 (cube tens))
                           (setq ones3 (cube ones))
                           (setq temp2 (+ huns3 tens3 ones3))

                           (if (= temp1 temp2)
                               (print temp1)
                             )
                           
                           )
                  )
         )

