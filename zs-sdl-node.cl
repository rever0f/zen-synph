;; zs-sdl-node.cl
;; zen-synph sdl controller
;; 2014 0829
(defun go-node (&optional (path nil))
  "main loop initialize"
  (sdl:with-init ()
    (go-illum)
    (setq *imcur* (if path (gimage path)
                      nil))
    (sdl:with-events ()
      (:quit-event () t)
      (:key-down-event (:key key)
                       (hkey (gkey key)))
      (:idle ()
             (c-illum *imcur*)))))
(defun end ()
  "quit function"
  (sdl:push-quit-event))
