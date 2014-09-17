;;; ndhoule-lang-markdown.el -- Markdown settings

;;; Commentary:
;;
;; Settings for the Markdown markup language.

;;; Code:

(require-package 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-hook 'markdown-mode-hook
          (lambda () (auto-fill-mode t)))

;; TODO: If `markdown2' doesn't exist, use `markdown'
(setq markdown-command "markdown2 -x fenced-code-blocks")


(provide 'ndhoule-lang-markdown)
;;; ndhoule-lang-markdown.el ends here
