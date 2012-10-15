;; -*- coding: utf-8 -*-

(define-module kehote.segments.promptchar
  (export segment.promptchar)
  (use maali)
  (use util.match))
(select-module kehote.segments.promptchar)

(define (segment.promptchar status)
  (match status
    ("0" 
     (paint "#;" 240))
    (_ (paint "->" 124 ))))

