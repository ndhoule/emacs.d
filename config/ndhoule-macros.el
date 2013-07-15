;;; ndhoule-macros.el -- Useful macros

;;; Commentary:
;;
;; Supporting macros go in here.

;;; Code:

(defmacro after-load (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

(provide 'ndhoule-macros)
;;; ndhoule-macros.el ends here
