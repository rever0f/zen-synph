;; zs-lisp-echo.cl
;; zen-synph model command line
;; 2014 0525
;;; Francois-Rene Rideau
;;; http://tinyurl.com/cli-args
(defun gargs()
  #+clisp ext:*args*
  #+sbcl sb-ext:*posix-argv*
  #+clozure ccl::*unprocessed-command-line-arguments*
  ;; #+clozure (cdr (ccl::command-line-arguments))
  #+gcl si:*command-args*
  #+ecl (loop for i from 0 below (si:argc) collect (si:argv i))
  #+cmu extensions:*command-line-strings*
  #+allegro (sys:command-line-arguments)
  #+lispworks sys:*line-arguments-list*)
