;;; ndhoule-diminish.el --- Config file for diminish.el

;;; Commentary:
;;
;; Reduce modeline clutter.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'diminish)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(diminish 'visual-line-mode)
(eval-after-load "auto-complete"       '(diminish 'auto-complete-mode))
(eval-after-load "button-lock"         '(diminish 'button-lock-mode))
(eval-after-load "column-enforce-mode" '(diminish 'column-enforce-mode))
(eval-after-load "ethan-wspace"        '(diminish 'ethan-wspace-mode))
(eval-after-load "fixmee"              '(diminish 'fixmee-mode))
(eval-after-load "flycheck"            '(diminish 'flycheck-mode))
(eval-after-load "projectile"          '(diminish 'projectile-mode))
(eval-after-load "smartparens"         '(diminish 'smartparens-mode))
(eval-after-load "undo-tree"           '(diminish 'undo-tree-mode))
(eval-after-load "whitespace"          '(progn
                                          (diminish 'whitespace-mode)
                                          (diminish 'global-whitespace-mode)))
(eval-after-load "yasnippet"           '(diminish 'yas-minor-mode))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-diminish)
;;; ndhoule-diminish.el ends here
