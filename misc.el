;;(require 'xcscope)

;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(require 'iswitchb)
;;(iswitchb-default-keybindings)

(global-set-key (kbd "RET") 'newline-and-indent)

(setq backup-directory-alist (quote (("." . "~/.backups"))))

(global-set-key (kbd "<f5>") 'delete-trailing-whitespace)

;; (global-set-key (kbd "<f6>") (lambda ()
;;                             (mark-whole-buffer)
;;                             (untabify)
;;                             (delete-trailing-whitespace)))

;;(add-hook 'before-save-hook (lambda ()
;;                            (whitespace-cleanup)))

;;(add-hook 'before-save-hook (lambda ()
;;                            (delete-trailing-whitespace)))

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )
