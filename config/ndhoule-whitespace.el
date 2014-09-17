;;; ndhoule-whitespace.el --- Whitespace settings

;;; Commentary:
;;
;; All settings related to whitespace live in this file.

;;; Code:

;; Use two spaces as a tab
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Always indent on return
(electric-indent-mode 1)

;; NOTE: `ethan-wspace' automatically adds a newline to EOF; if we didn't have it, we'd want to set
;; `require-final-newline' to `t'
(require-package 'ethan-wspace)
(setq mode-require-final-newline nil)

;; Delete trailing whitespace before saving (but only on modified lines).
(add-hook 'prog-mode-hook 'ethan-wspace-mode)

;; ethan-wspace prevents use of tabs in Makefiles; correct that behavior
(add-hook 'makefile-mode-hook
          (lambda ()
            (setq ethan-wspace-errors (remove 'tabs ethan-wspace-errors))))


(provide 'ndhoule-whitespace)
;;; ndhoule-whitespace.el ends here
