;;; package ---- plugins
;;; Commentary:

;;; Code:
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package paredit
  :ensure t
  :config
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'lisp-mode-hook #'paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'paredit-mode)
  (add-hook 'scheme-mode-hook #'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook #'paredit-mode))

;; (use-package solarized-theme
;; 	 :ensure t
;; 	 :config
;; 	 (load-theme 'solarized-dark t))
;; 	 ;; (load-theme 'solarized-light t))

(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t))

(use-package cider
  :ensure t)

(use-package window-numbering
  :ensure t
  :config
  (window-numbering-mode))

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("C-x b" . helm-mini)
	 ("C-x C-f" . helm-find-files)))

(use-package helm-swoop
  :ensure t
  :bind (("M-i" . helm-swoop)))

;; (use-package projectile
;;   :ensure t
;;   :config
;;   (progn (projectile-global-mode t)
;; 	 (setq projectile-completion-system 'helm)
;; 	 (helm-projectile-on)))

(use-package expand-region
  :ensure t
  :bind (("C-=" . er/expand-region)))

(use-package avy
  :ensure t
  :bind (("C-;" . avy-goto-char)))

(use-package exec-path-from-shell
  :ensure t
  :config
  (progn (when (memq window-system '(mac ns x))
	   (exec-path-from-shell-initialize))))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package try
  :ensure t)

(use-package ag
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package graphviz-dot-mode
  :ensure t
  :config
  (setq graphviz-dot-indent-width 4))



(use-package go-mode
  :ensure t)

(use-package eglot
  :ensure t
  :config
  (add-hook 'clojure-mode-hook 'eglot-ensure)
  (add-hook 'rust-mode-hook 'eglot-ensure)
  (add-hook 'go-mode 'eglot-ensure))

(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))

(add-hook 'project-find-functions #'project-find-go-module)

(use-package rust-mode
  :ensure t)

(use-package neotree
  :ensure t)

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))
