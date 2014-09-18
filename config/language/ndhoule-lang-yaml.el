;;; ndhoule-lang-yaml.el --- YAML-related settings

;;; Commentary:
;;
;; Settings that relate to editing YAML files go in here.

;;; Code:

(require-package 'yaml-mode)

(add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))

(provide 'ndhoule-lang-yaml)
;;; ndhoule-lang-yaml.el ends here
