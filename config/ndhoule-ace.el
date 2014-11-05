;;; ndhoule-ace.el --- Ace Jump settings

;;; Commentary:
;;
;; All Ace Jump settings go in this file.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(define-key evil-normal-state-map (kbd "SPC") 'evil-ace-jump-word-mode)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-ace)
;;; ndhoule-ace.el ends here
