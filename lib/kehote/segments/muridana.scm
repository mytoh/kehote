(define-module kehote.segments.muridana
  (export segment.muridana)
  (use maali)
  )
(select-module kehote.segments.muridana)

(define (segment.muridana)
  (string-append
    (paint "(" 123)
    (paint "・x・" 74)
    (paint ")" 123)
    (paint "." 0)
    (paint (car (string-split (sys-gethostname) "." )) 118))
  )
