;;; ndhoule-completion.el --- Completion settings
;;
;;; Commentary:
;;
;; Settings related to completion.
;;
;;; Code:

(use-package ycmd
  :ensure t
  :pin melpa
  :init
  ; Emacs mode is a whitelisted ycmd mode but is not recognized by ycmd
  (setq ycmd-global-modes '(not emacs-lisp-mode))
  ; TODO: Don't point at vim config, point at global installation location
  ; instead. Also, definitely expand this path using $HOME
  (set-variable 'ycmd-server-command
                '("/usr/local/bin/python2" "/Users/ndhoule/.config/nvim/vendor/YouCompleteMe/third_party/ycmd/ycmd"))
  (add-hook 'after-init-hook #'global-ycmd-mode))

(use-package company-ycmd
  :ensure t
  :commands company-ycmd
  :pin melpa
  :config
  (with-eval-after-load  "company" (company-ycmd-setup)))

(use-package flycheck-ycmd
  :ensure t
  :pin melpa
  :config
  (with-eval-after-load  "flycheck" (flycheck-ycmd-setup)))

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)

  ;; Key bindings
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous)
  (define-key company-active-map (kbd "C-l") 'company-complete-selection)

  (setq company-frontends '(company-pseudo-tooltip-frontend))
  (setq company-tooltip-limit 15)
  (setq company-idle-delay 0.10)
  (setq company-minimum-prefix-length 1)
  (setq company-echo-delay 0) ; fix blinking
  (setq company-begin-commands '(self-insert-command))
  (setq company-tooltip-align-annotations t)

  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case nil))

(provide 'ndhoule-completion)
;;; ndhoule-completion.el ends here
