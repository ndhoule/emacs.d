;;; ndhoule-linum.el -- Line numbering settings

;;; Commentary:

;; Settings that relate to line numbering; e.g. relative line numbers

;;; Code:

(require-package 'linum-relative) ;; TODO: necessary?
(global-linum-mode t)

;; Enable relative line numbers
(defvar my-linum-format-string "%3d ")

(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)

;; Get line numbers and format the gutter string
(defun my-linum-get-format-string ()
  (let* ((width (1+ (length (number-to-string
                             (count-lines (point-min) (point-max))))))
         (format (concat "%" (number-to-string (- width 1)) "d ")))
    (setq my-linum-format-string format)))

(defvar my-linum-current-line-number 0)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((offset (abs (- line-number my-linum-current-line-number))))
    (propertize (format my-linum-format-string offset) 'face 'linum)))

;; Updates line numbers as the cursor moves
(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

(provide 'ndhoule-linum)
;;; ndhoule-linum.el ends here
