;;; ndhoule-spell.el --- Spellcheck settings

;;; Commentary:
;;
;; All settings related to spellcheck go in this file.

;;; Code:

(require-package 'flyspell)

(setq ispell-list-command "--list")

(add-hook 'markdown-mode-hook
  (lambda () (flyspell-prog-mode)))

;; Don't enforce double spaces at end of sentences
(setq sentence-end-double-space nil)


(provide 'ndhoule-spell)
;;; ndhoule-spell.el ends here
