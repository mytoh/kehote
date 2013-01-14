
(library (kehote cli)
  (export runner)
  (import
    (silta base)
    (srfi :48)
    (kehote themes)
    (match)
    )


  (begin

    (define (runner args)
      (let ((theme (cadr args)))
        (match theme
          ("default"
           (default args))
          ("yuki"
           (yuki args))))
      )


    ))
