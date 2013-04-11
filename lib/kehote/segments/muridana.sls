
(library (kehote segments muridana)
    (export muridana)
  (import
    (silta base)
    (loitsu file)
    (maali)
    )

  (begin

    (define (muridana)
      (string-append
          (paint "(" 123)
        (paint "・x・" 74)
        (paint ")" 123)))

    ))
