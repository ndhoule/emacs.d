;;; ndhoule-lang-go.el -- Golang settings
;;
;;; Commentary:
;;
;; All Golang settings go in this file.
;;
;; TODO: Automatically install `goimports` if not present
;;
;;; Code:

(use-package company-go
  :ensure t
  :init
  (with-eval-after-load "company"
    (add-to-list 'company-backends 'company-go)))

(use-package go-eldoc
  :ensure t
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(defun ndhoule/init-go ()
  "Preconfigure Go mode. This runs before the package is required."
  (add-hook 'before-save-hook #'gofmt-before-save)
  (setq-default gofmt-command "goimports")
  (setq tab-width 8)
  (setq indent-tabs-mode 1)
  ;; FIXME: Evil mode should use tabs here
  (add-hook 'go-hook-mode (lambda() (setq indent-tabs-mode t))))

(defun ndhoule/config-go ()
  "Configure Go mode. This runs after the package is required."
  (with-eval-after-load "evil"
    (evil-leader/set-key
      "mgs" 'godef-jump-other-window
      "mgd" 'godoc-at-point
      "mig" 'go-goto-imports
      "mia" 'go-import-add
      "mir" 'go-remove-unused-imports)))

(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :init
  (ndhoule/init-go)
  :config
  (ndhoule/config-go))

(provide 'ndhoule-lang-go)
;;; ndhoule-lang-go.el ends here
