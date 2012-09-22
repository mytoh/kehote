
;; -*- coding: utf-8 -*-

(define-module kehote.themes.simple
  (export prompt)
  (use kehote.segments))
(select-module kehote.themes.simple)

(define (prompt status)
  (display
      (string-append
        (segment.directory)
        (segment.newline)
        (segment.promptchar status)
        " ")))

