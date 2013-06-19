;;; ndhoule-js.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:

;; Ensure we use js3-mode rather than the built-in (outdated) javascript-mode
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js3-mode))


(eval-after-load 'js3-mode
  '(progn
     (defun ndhoule/js3-mode-defaults ()
       (defvar preferred-javascript-indent-level 2)
       ;; Set sane indentation defaults
       (setq js3-indent-level preferred-javascript-indent-level)
       (setq js3-basic-offset preferred-javascript-indent-level)
       (setq js3-bounce-indent-p t)
       (setq js3-auto-indent-p t)
       (setq js3-indent-on-enter-key t)
       (setq js3-pretty-multiline-decl-indentation-p t)
       (setq js3-consistent-level-indent-inner-bracket-p t)

       ;; Spaces after function definitions? That's crazy talk
       (setq js3-mode-squeeze-spaces t)

       ;; Set moar good defaults
       (setq js3-mode-must-byte-compile nil)
       (setq js3-auto-insert-catch-block t)
       (setq js3-highlight-external-variables nil)
       (setq js3-highlight-level 3)
       (setq js3-pretty-multiline-declarations t)
       (setq js3-mirror-mode nil)
       (setq js3-cleanup-whitespace t)

       ;; Add curly braces in pairs
       (define-key js3-mode-map "{" 'paredit-open-curly)
       (define-key js3-mode-map "}" 'paredit-close-curly-and-newline)
       (add-hook 'js3-mode-hook 'esk-paredit-nonlisp)

       ;; Fix Evil's < and > indentation
       (setq evil-shift-width preferred-javascript-indent-level))

     ;; Run JavaScript defaults when js3-mode starts
     (setq ndhoule-js3-mode-hook 'ndhoule/js3-mode-defaults)
     (add-hook 'js3-mode-hook (lambda () (run-hooks 'ndhoule-js3-mode-hook)))))

(provide 'ndhoule-js)
;;; ndhoule-js.el ends here
