;;; ndhoule-rainbow-delimiters.el --- Rainbow delimiters config

;;; Commentary:
;;
;; Pretty indicators for matching parentheses, braces, etc.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)
(require-package 'rainbow-delimiters)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-key "ra" 'rainbow-delimiters-mode)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-rainbow-delimiters)
;;; ndhoule-rainbow-delimiters.el ends here
