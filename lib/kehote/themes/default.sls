
(library (kehote themes default)
  (export
    default)
  (import
    (rnrs)
    (loitsu file)
    (loitsu maali)
    (srfi :48)
    (prefix (kehote segments)
            seg:))

  (begin

    (define (default args)
      (format #t "~a ~a \n~a "
             (paint (seg:directory)  39)
             (seg:git)
             (paint "#;" 129))
      )
    ))
