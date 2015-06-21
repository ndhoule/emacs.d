;;; ndhoule-rainbow-delimiters.el --- Rainbow delimiters config
;;
;;; Commentary:
;;
;; Pretty indicators for matching parentheses, braces, etc.
;;
;;; Code:

(use-package rainbow-delimiters
             :ensure t
             :config
             (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
             (add-hook 'evil-after-load-hook
                       (lambda ()
                         (evil-leader/set-key "ra" 'rainbow-delimiters-mode))))

(provide 'ndhoule-rainbow-delimiters)
;;; ndhoule-rainbow-delimiters.el ends here
