;;; ndhoule-lang-python.el -- Python settings
;;
;;; Commentary:
;;
;; All Python settings go in this file.
;;
;;; Code:

(use-package python
             :mode ("\\.py\\'" . python-mode)
             :interpreter ("python" . python-mode)
             :config
             (add-to-list 'completion-ignored-extensions ".pyc"))

(provide 'ndhoule-lang-python)
;;; ndhoule-lang-python.el ends here
