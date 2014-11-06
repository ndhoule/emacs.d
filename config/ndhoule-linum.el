;;; ndhoule-linum.el -- Line numbering settings

;;; Commentary:
;;
;; Settings that relate to line numbering; e.g. relative line numbers

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

;; TODO: Is this package still necessary?
(require-package 'linum-relative)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(global-linum-mode t)

;; Show the column/line number in the modeline
(setq column-number-mode t)

(defvar ndhoule/linum-format-string "%3d ")
(defvar ndhoule/linum-current-line-number 0)

;; Get line numbers and format the gutter string
(defun ndhoule/linum-get-format-string ()
  (let* ((width (1+ (length (number-to-string
                             (count-lines (point-min) (point-max))))))
         (format (concat "%" (number-to-string (- width 1)) "d ")))
    (setq ndhoule/linum-format-string format)))

(defun ndhoule/linum-relative-line-numbers (line-number)
  (let ((offset (abs (- line-number ndhoule/linum-current-line-number))))
    (propertize (format ndhoule/linum-format-string offset) 'face 'linum)))

(setq linum-format 'ndhoule/linum-relative-line-numbers)

;;;;;;;;;;;;;
;;; Hooks ;;;
;;;;;;;;;;;;;

(add-hook 'linum-before-numbering-hook 'ndhoule/linum-get-format-string)

;; Update line numbers as the cursor moves
(defadvice linum-update (around my-linum-update)
  (let ((ndhoule/linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-key "re" 'linum-relative-toggle)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-linum)
;;; ndhoule-linum.el ends here
