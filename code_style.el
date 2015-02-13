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
