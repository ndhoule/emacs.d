;;; ndhoule-lang-go.el -- Golang settings
;;
;;; Commentary:
;;
;; All Golang settings go in this file.
;;
;;; Code:

(use-package go-mode
             :ensure t
             :mode "\\.go\\'"
             :init
             (add-hook 'before-save-hook 'gofmt-before-save)
             (add-hook 'go-hook-mode
                       (lambda()
                         (setq indent-tabs-mode t)))
             :config
             (with-eval-after-load "evil"
               (evil-leader/set-key
                 "ks" 'godef-jump
                 "gig" 'go-goto-imports
                 "gia" 'go-import-add
                 "gir" 'go-remove-unused-imports)))

(provide 'ndhoule-lang-go)
;;; ndhoule-lang-go.el ends here
