;;; ndhoule-js.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:

; Add additional filetypes to JavaScript mode
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(eval-after-load 'js
  '(progn (setq js-indent-level 2)
          (define-key js-mode-map "{" 'paredit-open-curly)
          (define-key js-mode-map "}" 'paredit-close-curly-and-newline)
          (add-hook 'js-mode-hook 'esk-paredit-nonlisp)
          ; Fix Evil's cray indentation
          (add-hook 'js-mode-hook
                    (function (lambda ()
                                (setq evil-shift-width js-indent-level))))))


(provide 'ndhoule-js)
;;; ndhoule-js.el ends here
