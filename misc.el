(global-set-key (kbd "RET") 'newline-and-indent)

(setq backup-directory-alist (quote (("." . "~/.backups"))))

(global-set-key (kbd "<f5>") 'delete-trailing-whitespace)

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

;;enable octave-mode with .m extension
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))
