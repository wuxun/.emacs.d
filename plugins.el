(use-package auto-complete
  :ensure t
  :config
  (ac-config-default))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package solarized-theme
	 :ensure t
	 :config
	 (load-theme 'solarized-dark t))

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

(use-package expand-region
  :ensure t
  :bind (("C-=" . er/expand-region)))

(use-package avy
  :ensure t
  :bind (("C-;" . avy-goto-char)))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package try
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
