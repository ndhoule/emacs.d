;;; ndhoule-python.el -- Python settings

;;; Commentary:
;;
;; All Python settings go in this file.

;;; Code:

(require-package 'python-mode)

(eval-after-load 'python
  (progn
    ; Ignore binary files
    (add-to-list 'completion-ignored-extensions ".pyc")))

(provide 'ndhoule-python)
;;; ndhoule-python.el ends here
