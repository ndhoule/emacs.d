;;; ndhoule-smartparens.el --- Parentheses (and brackets, etc.) matching

;;; Commentary:
;;
;; Never close your own pairs again, you lazy git.
;; https://github.com/Fuco1/smartparens/wiki

;;; Code:

(require-package 'smartparens)
(require 'smartparens-config)

(smartparens-global-mode t)
(show-smartparens-global-mode t)


(provide 'ndhoule-smartparens)
;;; ndhoule-smartparens.el ends here
