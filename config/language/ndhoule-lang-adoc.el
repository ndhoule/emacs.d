;;; ndhoule-lang-adoc.el --- Asciidoc settings
;;
;;; Commentary:
;;
;; Asciidoc-related settings go in here.
;;
;;; Code:

(use-package adoc-mode
             :ensure t
             :mode "\\.txt\\'"
             :mode "\\.adoc\\'"
             :mode "\\.asciidoc\\'")

(provide 'ndhoule-lang-adoc)
;;; ndhoule-lang-adoc.el ends here
