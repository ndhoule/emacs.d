;;; ndhoule-whitespace.el -- Whitespace settings

;;; Commentary:
;;
;; All settings related to whitespace live in this file.

;;; Code:

;; Use two spaces as a tab
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Show trailing whitespace
(setq-default show-trailing-whitespace t)

(setq whitespace-style '(trailing tabs newline tab-mark newline-mark))

;; Obnoxiously highlight tab characters
(add-hook 'font-lock-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\t" 0 'trailing-whitespace prepend)))))

;; Silently ensure trailing newline at end of files
(setq require-final-newline t)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'ndhoule-whitespace)
;;; ndhoule-whitespace.el ends here
