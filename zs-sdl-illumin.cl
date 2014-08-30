;; zs-sdl-illumin.cl
;; zen-synph sdl view
;; 2014 0829

(defun go-illum ()
  "start main display"
  (sdl:window 0 0 :title-caption
              "zen-synph")
  (setf (sdl:frame-rate) 60))
(defun c-illum (image)
  "continue main display"
  (sdl:draw-surface image)
  (sdl:update-display))
