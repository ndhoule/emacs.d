;;; ndhoule-defuns.el -- Function definitions
;;
;;; Commentary:
;;
;; Broadly applicable functions go in here.
;;
;;; Code:

(defun cleanup-buffer ()
 "Perform a bunch of operations on the whitespace content of a buffer."
 (interactive)
 (prelude-indent-buffer)
 (prelude-untabify-buffer)
 (delete-trailing-whitespace))

(provide 'ndhoule-defuns)
;;; ndhoule-defuns.el ends here
