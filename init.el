;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;melpa
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/code_style.el")
(load "~/.emacs.d/misc.el")
(load "~/.emacs.d/plugins.el")

;;(setq exec-path (append exec-path '("/usr/local/bin/")))
(setenv "PATH" (format "%s:%s" "/usr/local/bin" (getenv "PATH")))

;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(haskell-process-auto-import-loaded-modules t)
 ;; '(haskell-process-log t)
 ;; '(haskell-process-suggest-remove-import-lines t)
 ;; '(haskell-process-type (quote ghci))
 ;; '(package-selected-packages
 ;;   (quote
 ;;    (expand-region helm graphviz-dot-mode magit yasnippet auto-complete window-numbering solarized-theme flycheck-haskell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (avy yasnippet window-numbering solarized-theme magit helm graphviz-dot-mode flycheck-haskell expand-region auto-complete))))
