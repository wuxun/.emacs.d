(add-to-list 'load-path "~/.emacs.d/plugins")

(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/code_style.el")
(load "~/.emacs.d/misc.el")
(load "~/.emacs.d/plugins.el")

(setq exec-path (append exec-path '("/usr/local/bin/")))
