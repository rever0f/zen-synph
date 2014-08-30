;; zs-sdl-echo.cl
;; zen-synph sdl specific data
;; 2014 0829
;; (eq (intern "SDL-KEY-A" "KEYWORD") :sdl-key-a)
;; (code-char 97)
;; ?(setf documentation)

(defun gkey (akey)
  "sdl key map

  param

  a-sdl-key extern symbol

  return

  the key associated with the symbol as a symbol
  nil on error"
  (if (not (symbolp akey)) (return-from gkey nil))
  (let* ((sn (symbol-name akey))
         (d (position #\- sn :from-end t)))
    (if (not (eql d nil)) (intern (subseq sn (1+ d))))))

(defun gimage (path)
  "load image from pre-verified path

  param

  a-preverified path

  return

  sdl image or death(^^)"
  (sdl:load-image path))


