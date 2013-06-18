;;; ndhoule-js.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:

;; Ensure we use js2-mode rather than the built-in (outdated) javascript-mode
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))


(eval-after-load 'js2-mode
  '(progn
     (defun ndhoule/js2-mode-defaults ()
       (defvar preferred-javascript-indent-level 2)
       ;; Set sane indentation defaults
       (setq js2-indent-level preferred-javascript-indent-level)
       (setq js2-basic-offset preferred-javascript-indent-level)
       (setq js2-bounce-indent-p t)
       (setq js2-auto-indent-p t)
       (setq js2-indent-on-enter-key t)
       (setq js2-pretty-multiline-decl-indentation-p t)
       (setq js2-consistent-level-indent-inner-bracket-p t)

       ;; Spaces after function definitions? That's crazy talk
       (setq js2-mode-squeeze-spaces t)

       ;; Set moar good defaults
       (setq js2-mode-must-byte-compile nil)
       (setq js2-auto-insert-catch-block t)
       (setq js2-highlight-external-variables nil)
       (setq js2-highlight-level 3)
       (setq js2-pretty-multiline-declarations t)
       (setq js2-mirror-mode nil)
       (setq js2-cleanup-whitespace t)

       ;; Add curly braces in pairs
       ;; (define-key js2-mode-map "{" 'paredit-open-curly)
       ;; (define-key js2-mode-map "}" 'paredit-close-curly-and-newline)
       ;; (add-hook 'js2-mode-hook 'esk-paredit-nonlisp)

       ;; Fix Evil's < and > indentation
       (setq evil-shift-width preferred-javascript-indent-level))

     ;; Run JavaScript defaults when js2-mode starts
     (setq ndhoule-js2-mode-hook 'ndhoule/js2-mode-defaults)
     (add-hook 'js2-mode-hook (lambda () (run-hooks 'ndhoule-js2-mode-hook)))))

(provide 'ndhoule-js)
;;; ndhoule-js.el ends here
