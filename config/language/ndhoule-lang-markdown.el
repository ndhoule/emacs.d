;;; ndhoule-lang-markdown.el -- Markdown settings
;;
;;; Commentary:
;;
;; Settings for the Markdown markup language.
;;
;;; Code:

(use-package markdown-mode
             :ensure t
             :mode "\\.md\\'"
             :mode "\\.markdown\\'"
             :config
             ;; Highlight fenced code blocks using that language's highlighter
             ;; TODO: If `markdown2' doesn't exist, use `markdown'
             (setq markdown-command "markdown2 -x fenced-code-blocks"))

(provide 'ndhoule-lang-markdown)
;;; ndhoule-lang-markdown.el ends here
