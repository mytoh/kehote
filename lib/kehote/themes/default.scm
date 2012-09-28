
;; -*- coding: utf-8 -*-

(define-module kehote.themes.default
  (export prompt)
  (use kehote.segments))
(select-module kehote.themes.default)

(define (prompt status)
  (display
      (string-append
        (segment.muridana)
        (segment.separator)
        (segment.directory)
        (segment.scm)
        " "
        (segment.yuno)
        (segment.newline)
        (segment.promptchar status)
        " ")))

