
(library (kehote themes yuki)
  (export
    yuki)
  (import
    (scheme base)
    (loitsu file)
    (loitsu maali)
    (srfi :48)
    (prefix (kehote segments)
            seg:))

  (begin

    (define (yuki args)
      (format #t "YUKI.N> "))

    ))
