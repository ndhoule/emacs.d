;;; ndhoule-linum.el -- Line numbering settings
;;
;;; Commentary:
;;
;; Settings that relate to line numbering; e.g. relative line numbers
;;
;;; Code:

(use-package linum-relative
             :config
             ;; Enable line numbering in all buffers.
             (global-linum-mode t)

             ;; Show the column/line number in the modeline.
             (setq column-number-mode t)

             ;; Format linum column.
             (setq linum-format " %3s  ")
             (setq linum-relative-format " %3s  ")
             (setq linum-relative-current-symbol "")

             ;; Enable relative line numbering.
             (linum-relative-toggle)

             (with-eval-after-load "evil"
               (evil-leader/set-key "re" 'linum-relative-toggle)))

(provide 'ndhoule-linum)
;;; ndhoule-linum.el ends here
