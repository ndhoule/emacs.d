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

(defun esk-pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(provide 'ndhoule-defuns)
;;; ndhoule-defuns.el ends here
