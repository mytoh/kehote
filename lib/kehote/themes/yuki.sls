
(library (kehote themes yuki)
  (export
    yuki)
  (import
    (silta base)
    (loitsu file)
    (loitsu maali)
    (srfi :48 intermediate-format-strings)
    (prefix (kehote segments)
            seg:))

  (begin

    (define (yuki args)
      (format #t "YUKI.N> "))

    ))
