
;; -*- coding: utf-8 -*-

(define-module kehote.segments.yuno
  (export
    segment.yuno)
  (use maali))
(select-module kehote.segments.yuno)

(define (segment.yuno)
  (string-append
    ; (paint 172 "X / _ / X")
    (paint "✘" 95)
    (paint "╹◡╹" 172)
    (paint "✘" 95 )
    ))
