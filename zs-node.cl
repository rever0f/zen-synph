;; zs-node.cl
;; zen-synph controller
;; 2014 0525
(load "ammo.cl")

(defpackage :zen-synph
  (:use :cl))
;;   (:shadowing-import-from 'iterate :terminate)
;;   (:export :terminate))
  ;; (:shadowing-import-from 'iterate :terminate :for :in :iter
   ;; :next :with :generate :iterate :for))
;; IN  ITERATE:IN
;; ITER  ITERATE:ITER
;; NEXT  ITERATE:NEXT
;; WITH  ITERATE:WITH
;; GENERATE  ITERATE:GENERATE
;; ITERATE  ITERATE:ITERATE
;; FOR  ITERATE:FOR
;;   (:shadow #:iterator))

;; (in-package :zen-synph)

;; (defun go-try ()
;;   (iter (for i in '(a b c)) (princ i)))
;; (import '(iterator) '#:zen-synph)

(defvar *imcur* nil "current image")

(load "zi-sdl-node.cl")
(load "zi-echo.cl")
(load "zi-sdl-echo.cl")
(load "zi-illumin.cl")
(load "zi-sdl-illumin.cl")

;; (defun go-main (&optional (path nil))
;;   (setq *imcur* (if path (gimage path)
;;                      nil))
;;   (go-node))

(defun hkey (akey)
  "handle key input

  param

  a-a key name as symbol

    -a-z
    -escape, ctrl, shift
    -write some more"
  (case akey
    (a (print "a"))
    (escape (end))
    (otherwise (princ (string akey)))))
    ;;   (:video-expose-event (sdl:update-display)))))

  ;; (sdl:with-init ()
  ;;   (sdl:window 0 0)
    ;; (sdl:draw-surface (load-image "lisp.png"))
    ;; (sdl:draw-surface (sdl:load-image "~/zspect/bloom-musicf9b43d5518db109e37d21cf68d14b04b_large.gif"))
    ;; (sdl:draw-surface (sdl:load-image "~/zspect/4-1.png"))
    ;; (sdl:draw-surface-at (sdl:load-image "~/zspect/4-1.png") (600 600))
    ;; (sdl:draw-surface (cl-devil:bind-image "~/zspect/4-1.png"))
    ;; (sdl:draw-surface (sdl:load-image "~/zspect/auroraBorealis-icelandFlameCloud-av2_mini.jpeg"))
    ;; (sdl:draw-surface (sdl:load-image "lisp.png"))
    ;; (sdl:draw-surface (imago:read-png "lisp.png"))
