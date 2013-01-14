
(library (kehote segments directory)
  (export directory)
  (import
    (silta base)
    (irregex)
    (loitsu file)
    )

  (begin

    (define (home->tilde path)
      (irregex-replace (string-append "/usr" (home-directory))
                       path
                          "~"))

    (define (directory)
      (cond
        ((irregex-search (string-append "/usr" (home-directory))
                         (current-directory))
         (home->tilde (current-directory))
         )
      (else
      (current-directory)))
      )

    )

  )
