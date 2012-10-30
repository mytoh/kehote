;; -*- coding: utf-8 -*-

(define-module kehote.segments.scm
  (export
    segment.scm)
  (use maali)
  (use gauche.process)
  (use gauche.parseopt)
  (use util.match)
  (use file.util))
(select-module kehote.segments.scm)

(define (git)
  (let ((git-branch (lambda () (sys-basename
                                 (string-copy
                                   (process-output->string
                                     "git symbolic-ref HEAD" :error :null) 2))))
        (git-darty (lambda ()
                     (let* ((p (run-process '(git diff --quiet HEAD) :wait #t))
                            (status (process-exit-status p)))
                       (if  (not (zero? status))
                         " ÷"
                         "")))))
    (string-append
      (paint " (" 240)
      (paint "♠ " 33)
      (paint (git-repo) 39)
      " "
      (paint (git-branch) 82)
      (paint (git-darty) 1)
      (paint ")" 240))))

(define (git-repo)
  (sys-basename (process-output->string "git rev-parse --show-toplevel")))

(define (hg)
  (paint " ⮘ " 33))

(define (svn)
  (paint " ǂ " 33))

(define (darcs)
  (paint " darcs " 33))



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





