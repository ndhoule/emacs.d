;;; ndhoule-lang-go.el -- Golang settings
;;
;;; Commentary:
;;
;; All Golang settings go in this file.
;;
;; TODO: Automatically install `goimports` if not present
;;
;;; Code:

(use-package go-mode
  :ensure t
  :mode "\\.go\\'"
  :commands (godoc gofmt gofmt-before-save)
  :init
  (setq-default gofmt-command "goimports")
  (add-hook 'before-save-hook #'gofmt-before-save)
  (add-hook 'go-mode-hook
            (with-eval-after-load 'evil
              (evil-define-key 'normal go-mode-map (kbd "K") 'ycmd-show-documentation)
              (evil-leader/set-key-for-mode 'go-mode "mgd" 'ycmd-goto-definition)
              (evil-leader/set-key-for-mode 'go-mode "mia" 'go-import-add)
              (evil-leader/set-key-for-mode 'go-mode "mig" 'go-goto-imports)
              (evil-leader/set-key-for-mode 'go-mode "mir" 'go-remove-unused-imports)
              (evil-leader/set-key-for-mode 'go-mode "mr" 'go-rename))))

(use-package go-eldoc
  :ensure t
  :commands go-eldoc-setup
  :init
  (add-hook 'go-mode-hook #'go-eldoc-setup))

(use-package go-rename
  :ensure t
  :commands go-rename)

(use-package go-guru
  :ensure t
  :commands go-guru-hl-identifier-mode
  :init
  (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))

(provide 'ndhoule-lang-go)
;;; ndhoule-lang-go.el ends here
