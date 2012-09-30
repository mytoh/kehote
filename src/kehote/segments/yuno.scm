
;; -*- coding: utf-8 -*-

(define-module kehote.segments.yuno
  (export
    segment.yuno)
  (use kehote.väri))
(select-module kehote.segments.yuno)

(define (segment.yuno)
  (string-append
    ; (colour-string 172 "X / _ / X")
    (colour-string 95 "✘")
    (colour-string 172 "╹◡╹")
    (colour-string 95 "✘")
    ))
