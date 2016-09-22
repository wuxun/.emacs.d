(global-linum-mode t)
(setq column-number-mode t)
;;(menu-bar-mode 0)
(tool-bar-mode 0)
(show-paren-mode 1)
(setq inhibit-startup-message t)
(display-time-mode 1)

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if (display-graphic-p)
      (progn
	;; use 120 char wide window for largeish displays
	;; and smaller 80 column windows for smaller displays
	;; pick whatever numbers make sense for you
	;;(if (> (x-display-pixel-width) 1280)
	;;       (add-to-list 'default-frame-alist (cons 'width 120))
	;;       (add-to-list 'default-frame-alist (cons 'width 80)))
	(add-to-list 'default-frame-alist (cons 'width 80))
	;; for the height, subtract a couple hundred pixels
	;; from the screen height (for panels, menubars and
	;; whatnot), then divide by the height of a char to
	;; get the height we want
	(add-to-list 'default-frame-alist
		     (cons 'height (/ (- (x-display-pixel-height) 120)
				      (frame-char-height)))))))

(set-frame-size-according-to-resolution)
