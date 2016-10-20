;;; ndhoule-lang-yaml.el --- YAML-related settings
;;
;;; Commentary:
;;
;; Settings that relate to editing YAML files go in here.
;;
;;; Code:

(use-package yaml-mode
  :ensure t
  :mode "\\.sls\\'"
  :mode "\\.ya?ml\\'")

(provide 'ndhoule-lang-yaml)
;;; ndhoule-lang-yaml.el ends here
