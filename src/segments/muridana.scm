(define-module kehote.segments.muridana
  (export segment.muridana)
  (use kehote.väri))
(select-module kehote.segments.muridana)

(define (segment.muridana)
  (string-append
    (colour-string 123 "(")
    (colour-string 74 "・x・")
    (colour-string 123 ")")
    (colour-string 0 ".")
    (colour-string 118 (car (string-split (sys-gethostname) "." ))))
  )
