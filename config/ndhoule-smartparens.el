;;; ndhoule-smartparens.el --- Parentheses (and brackets, etc.) matching

;;; Commentary:
;;
;; Never close your own pairs again, you lazy git.
;; https://github.com/Fuco1/smartparens/wiki

;;; Code:

(require-package 'smartparens)
(require 'smartparens-config)

(smartparens-global-mode t)

;; Highlight matching pairs
(show-smartparens-global-mode t)

;; Related: Pretty parens!
(require-package 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

(provide 'ndhoule-smartparens)
;;; ndhoule-smartparens.el ends here
