;; zs-echo.cl
;; zen-synph model
;; 2014 0829

(defun cimage (path)
  "check for existance get image if exists return it"
  (let ((f (probe-file path)))
    (if f (gimage f))))

(defun gdefaults ()
  "return a list of default values"
  (list (cons 'imcur nil)))
