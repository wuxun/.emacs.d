;;for auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1/dict")

;;for yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;for emacs-color-theme-solarized
(add-to-list 'custom-theme-load-path "~/.emacs.d/plugins/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)
