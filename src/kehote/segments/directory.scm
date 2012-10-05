
;; -*- coding: utf-8 -*-

(define-module kehote.segments.directory
  (export
    segment.directory)
  (use file.util)
  (use maali)
  (use srfi-13))
(select-module kehote.segments.directory)

(define (segment.directory)
  (let* ((cwd (current-directory))
         (add-tilde (lambda (fs d)
                      (string-append
                        "~" d))))
    (rxmatch-cond
      ;; /usr/home => ~
      (((string->regexp (string-append "/usr" (home-directory)))
        cwd)
       (home)
       (prettify-directory
         (string-split
           (regexp-replace (string->regexp home) cwd "~") "/")))
      ;; $HOME => ~`
      (((string->regexp (home-directory)) cwd)
       (home)
       (prettify-directory
         (string-split
           (regexp-replace (string->regexp home) cwd "~") "/")))
      ;; /nfs/mypassport => ~mypass
      (((string->regexp "/nfs/mypassport") cwd)
       (m)
       (add-tilde "mypass"
                  (prettify-directory (cddr (string-split cwd "/")))))
      ;; /nfs/deskstar => ~deskstar
      (((string->regexp "/nfs/deskstar") cwd)
       (m)
       (add-tilde "deskstar"
                  (prettify-directory (cddr (string-split cwd "/")))))
      ;; /nfs/quatre => ~quatre
      (((string->regexp "/nfs/quatre") cwd)
       (m)
       (add-tilde "quatre"
                  (prettify-directory (cddr (string-split cwd "/")))))
      (else
        (prettify-directory
          (string-split cwd "/"))))))

(define (prettify-directory lst)
  (string-join (map
                 (lambda (d) (colour-string d 110))
                 lst)
               (colour-string "/" 240 ))) ;U2A20

