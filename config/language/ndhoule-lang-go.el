;;; ndhoule-lang-go.el -- Golang settings
;;
;;; Commentary:
;;
;; All Golang settings go in this file.
;;
;; TODO: Automatically install `goimports` if not present
;;
;;; Code:

;; TODO: Do I actually need this now that I'm using ycmd?
;(use-package company-go
;  :ensure t
;  :init
;  (with-eval-after-load "company"
;    (add-to-list 'company-backends 'company-go)))

;; TODO: What's this for? :P
(use-package go-eldoc
  :ensure t
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :init
  (setq-default gofmt-command "goimports")

  (defun ndhoule/go-mode-hook()
    (add-hook 'before-save-hook 'gofmt-before-save)
    (with-eval-after-load "evil"
      (define-key evil-normal-state-local-map (kbd "K") 'godoc-at-point)
      (evil-leader/set-key
        "mgs" 'godef-jump-other-window
        "mgd" 'godoc-at-point
        "mig" 'go-goto-imports
        "mia" 'go-import-add
        "mir" 'go-remove-unused-imports)))

  (add-hook 'go-mode-hook 'ndhoule/go-mode-hook))

(provide 'ndhoule-lang-go)
;;; ndhoule-lang-go.el ends here
