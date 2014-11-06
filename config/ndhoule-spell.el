;;; ndhoule-spell.el --- Spellcheck settings

;;; Commentary:
;;
;; All settings related to spellcheck go in this file.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'flyspell)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(setq ispell-list-command "--list")

;; Don't enforce double spaces at end of sentences
(setq sentence-end-double-space nil)

;;;;;;;;;;;;;
;;; Hooks ;;;
;;;;;;;;;;;;;

(add-hook 'text-mode-hook     'flyspell-mode)
(add-hook 'adoc-mode-hook     'flyspell-prog-mode)
(add-hook 'markdown-mode-hook 'flyspell-prog-mode)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-spell)
;;; ndhoule-spell.el ends here
