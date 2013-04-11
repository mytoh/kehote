
(library (kehote segments yuno)
    (export yuno)
  (import
    (silta base)
    (loitsu file)
    (maali)
    )

  (begin

    (define (yuno)
      (string-append
          ;; (paint 172 "X / _ / X")
          (paint "✘" 95)
        (paint "╹◡╹" 172)
        (paint "✘" 95)))

    ))
