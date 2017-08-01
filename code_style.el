;; c
(add-hook 'c-mode-hook (lambda()
                         (c-set-style "linux")))

;; java
(add-hook 'java-mode-hook (lambda()
                            (setq c-basic-offset 4)
                            (setq-default indent-tabs-mode nil)
                            (setq c-comment-start-regexp
                                  "\\(@\\|/\\(/\\|[*][*]?\\)\\)")
                            (modify-syntax-entry ?@ "< b"
                                                 java-mode-syntax-table)))

;; c++
(add-hook 'c++-mode-hook (lambda()
                           (setq c-basic-offset 4)
                           (setq-default indent-tabs-mode nil)))

;; nxml
(add-hook 'nxml-mode-hook (lambda()
                            (setq indent-tabs-mode nil)
                            (setq nxml-child-indent 4)
                            (setq nxml-attribute-indent 4)))

;; common lisp
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (set (make-local-variable 'lisp-indent-function)
		 'common-lisp-indent-function)))

;; org auto newline
(add-hook 'org-mode-hook (lambda () (setq toggle-truncate-lines t)))
