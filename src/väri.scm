(define-module kehote.väri
  (export colour-string)
  (use srfi-13))
(select-module kehote.väri)

(define (colour-string colour-number s)
  (let ((shell (sys-basename (sys-getenv "SHELL"))))
    (cond
      ((string=? shell "tcsh")
       (string-concatenate
         `("[38;5;" ,(number->string colour-number) "m"
           ,s
           "[0m")))
      (else
        (string-concatenate
          `("[38;5;" ,(number->string colour-number) "m"
            ,s
            "[0m"))))))
