;;; ndhoule-markdown.el -- Markdown settings

;;; Commentary:
;;
;; Settings for the Markdown markup language.

;;; Code:

(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda () (auto-fill-mode t)))

(provide 'ndhoule-markdown)
;;; ndhoule-markdown.el ends here
