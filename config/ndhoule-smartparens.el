;;; ndhoule-smartparens.el --- Parentheses (and brackets, etc.) matching
;;
;;; Commentary:
;;
;; Never close your own pairs again.
;; https://github.com/Fuco1/smartparens/wiki
;;
;;; Code:

(use-package smartparens
             :ensure t
             :defer t
             :diminish smartparens-mode
             :config
             (add-hook 'prog-mode
                       (lambda ()
                         (require 'smartparens-config)
                         (smartparens-global-mode t)
                         (show-smartparens-global-mode t))))

(provide 'ndhoule-smartparens)
;;; ndhoule-smartparens.el ends here
