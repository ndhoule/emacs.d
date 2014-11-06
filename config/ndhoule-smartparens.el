;;; ndhoule-smartparens.el --- Parentheses (and brackets, etc.) matching

;;; Commentary:
;;
;; Never close your own pairs again.
;; https://github.com/Fuco1/smartparens/wiki

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'smartparens)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-smartparens)
;;; ndhoule-smartparens.el ends here
