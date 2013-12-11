(add-to-list 'load-path "~/.emacs.d/plugins")

(global-linum-mode t)
(setq column-number-mode t)
(menu-bar-mode nil)
(tool-bar-mode nil)

(setq inhibit-startup-message t)

(require 'xcscope)

;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(require 'iswitchb)
(iswitchb-default-keybindings)

(display-time-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'c-mode-hook (lambda()
			 (c-set-style "linux")))

(add-hook 'java-mode-hook (lambda()
			    (setq c-basic-offset 4)
			    (setq-default indent-tabs-mode nil)
			    (setq c-comment-start-regexp
				  "\\(@\\|/\\(/\\|[*][*]?\\)\\)")
			    (modify-syntax-entry ?@ "< b"
						 java-mode-syntax-table)))

(add-hook 'c++-mode-hook (lambda()
			   (setq c-basic-offset 4)
			   (setq-default indent-tabs-mode nil)))

(setq backup-directory-alist (quote (("." . "~/.backups"))))

(global-set-key (kbd "<f5>") 'delete-trailing-whitespace)

;; (global-set-key (kbd "<f6>") (lambda ()
;; 			       (mark-whole-buffer)
;; 			       (untabify)
;; 			       (delete-trailing-whitespace)))

;;(add-hook 'before-save-hook (lambda ()
;;			      (whitespace-cleanup)))

;;(add-hook 'before-save-hook (lambda ()
;;			      (delete-trailing-whitespace)))