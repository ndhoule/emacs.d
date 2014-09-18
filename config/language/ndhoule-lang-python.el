;;; ndhoule-lang-python.el -- Python settings

;;; Commentary:
;;
;; All Python settings go in this file.

;;; Code:

(eval-after-load 'python
  (progn
    (add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))
    (add-to-list 'completion-ignored-extensions ".pyc")))


(provide 'ndhoule-lang-python)
;;; ndhoule-lang-python.el ends here
