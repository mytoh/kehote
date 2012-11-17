
(library (kehote segments git)
  (export
    git)
  (import
    (scheme base)
    (only (srfi :13)
          string-trim-right)
    (srfi :48)
    (loitsu maali)
    (loitsu file)
    (loitsu process))

  (begin

    (define (directory-git?)
      (if (string=? "true\n"
                    (process-output->string
                      "git rev-parse --is-inside-work-tree"))
        #t #f))

    (define (git-branch)
      (path-basename
        (string-trim-right
          (process-output->string "git symbolic-ref HEAD" ))))

    (define (git-repo)
      (path-basename (string-trim-right (process-output->string "git rev-parse --show-toplevel"))))

    (define (git)
      (if (directory-git? )
        (format "~a~a ~a~a"
                (paint "[" 'white)
                (paint  (git-repo) 39)
                (paint (git-branch)  63)
                (paint "]" 'white)
                )
        ""))
    ))
