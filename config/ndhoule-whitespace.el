;;; ndhoule-whitespace.el --- Whitespace settings

;;; Commentary:
;;
;; All settings related to whitespace live in this file.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'ethan-wspace)
(require-package 'unicode-whitespace)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Use two spaces as a tab
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Always indent on return
(electric-indent-mode t)

;; Highlight trailing and unwanted whitespace
(unicode-whitespace-setup 'subdued-faces)
(setq whitespace-style '(face
                         tabs
                         tab-mark))
(global-whitespace-mode)

;; TODO: Replace `ethan-wspace' with a better package (it's pretty finicky)

;; NOTE: `ethan-wspace' automatically adds a newline to EOF; if we didn't have it, we'd want to set
;; `require-final-newline' to `t'
(setq mode-require-final-newline nil)

;; Delete trailing whitespace before saving (but only on modified lines).
(add-hook 'prog-mode-hook 'ethan-wspace-mode)

;; ethan-wspace prevents use of tabs in Makefiles; correct that behavior
(add-hook 'makefile-mode-hook
          (lambda ()
            (setq ethan-wspace-errors (remove 'tabs ethan-wspace-errors))))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-whitespace)
;;; ndhoule-whitespace.el ends here
