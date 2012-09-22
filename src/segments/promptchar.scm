;; -*- coding: utf-8 -*-

(define-module kehote.segments.promptchar
  (export segment.promptchar)
  (use kehote.väri)
  (use util.match))
(select-module kehote.segments.promptchar)

(define (segment.promptchar status)
  (match status
    ("0" (string-append
           (colour-string 236 "-")
           (colour-string 238 ":")
           (colour-string 60  ">")))
    (_ (colour-string 124 "->"))))

