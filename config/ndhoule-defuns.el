;;; ndhoule-defuns.el -- Function definitions

;;; Commentary:
;;
;; Broadly applicable functions go in here.

;;; Code:

(defun cleanup-buffer ()
 "Clean up extraneous whitespace in a buffer."
 (interactive)
 (prelude-indent-buffer)
 (prelude-untabify-buffer)
 (delete-trailing-whitespace))

(provide 'ndhoule-defuns)
;;; ndhoule-defuns.el ends here
