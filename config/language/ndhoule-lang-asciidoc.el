;;; ndhoule-lang-asciidoc.el --- Asciidoc settings

;;; Commentary:
;;
;; Asciidoc-related settings go in here.

;;; Code:

(require-package 'adoc-mode)

(add-to-list 'auto-mode-alist '("\\.txt$" . adoc-mode))
(add-to-list 'auto-mode-alist '("\\.adoc$" . adoc-mode))
(add-to-list 'auto-mode-alist '("\\.asciidoc$" . adoc-mode))

(provide 'ndhoule-lang-asciidoc)
;;; ndhoule-lang-asciidoc.el ends here
