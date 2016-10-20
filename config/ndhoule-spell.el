;;; ndhoule-spell.el --- Spellcheck settings
;;
;;; Commentary:
;;
;; All settings related to spellcheck go in this file.
;;
;;; Code:

(use-package flyspell
  :ensure t
  :defer t
  :init
  (setq ispell-list-command "--list")
  (setq sentence-end-double-space nil)

  ;; FIXME: Do adoc-mode and markdown-mode not inherit from text-mode?
  (add-hook 'text-mode-hook #'flyspell-mode)
  (add-hook 'adoc-mode-hook #'flyspell-prog-mode)
  (add-hook 'markdown-mode-hook #'flyspell-prog-mode))

(provide 'ndhoule-spell)
;;; ndhoule-spell.el ends here
