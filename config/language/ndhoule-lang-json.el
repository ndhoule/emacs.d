;;; ndhoule-lang-json.el -- JSON settings
;;
;;; Commentary:
;;
;; All JSON settings go in this file.
;;
;;; Code:

(use-package json-mode
  :ensure t
  :mode "\\.json\\'"
  :config
  (setq js-indent-level 2))

(provide 'ndhoule-lang-json)
;;; ndhoule-lang-json.el ends here
