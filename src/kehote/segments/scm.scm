;; -*- coding: utf-8 -*-

(define-module kehote.segments.scm
  (export
    segment.scm)
  (use kehote.väri)
  (use gauche.process)
  (use gauche.parseopt)
  (use util.match)
  (use file.util))
(select-module kehote.segments.scm)

(define (git)
  (let ((git-branch (lambda ()
                      (sys-basename (string-copy
                                      (process-output->string
                                        "git symbolic-ref HEAD")
                                      2))))
        (git-darty (lambda ()
                     (let* ((p (run-process '(git diff --quiet HEAD) :wait #t))
                            (status (process-exit-status p)))
                       (if  (not (zero? status))
                               " ÷"
                               "")))))
    (string-append
      (colour-string 240 " (")
      (colour-string 33 "♠ ")
      (colour-string 39 (git-repo))
      " "
         (colour-string 82 (git-branch))
         (colour-string 1  (git-darty))
      (colour-string 240 ")")
         )))

(define (git-repo)
  (sys-basename (process-output->string "git rev-parse --show-toplevel")))

(define (hg)
  (colour-string 33 " ⮘ ")
  )

(define (svn)
  (colour-string 33 " ǂ "))

(define darcs
  (lambda ()
    (colour-string 33 " darcs ")))



(define (segment.scm)
  (cond
    ((file-exists? "./.hg")
     (hg))
    ((file-exists? "./.git")
     (git))
    ((file-exists? "./.svn")
     (svn))
    ((file-exists? "./_darcs")
     (darcs))
    (else "")))





