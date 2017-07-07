;;; ndhoule-linum.el -- Line numbering settings
;;
;;; Commentary:
;;
;; Settings that relate to line numbering; e.g. relative line numbers
;;
;;; Code:

(use-package linum-relative
  :ensure t
  :pin melpa
  :defer t
  :init
  (setq linum-format "%4s ")
  (setq linum-relative-format "%4s ")
  ;; TODO(ndhoule): This was linum-relative-mode, but it significantly slows
  ;; buffer rendering. Would be great to fix it
  (add-hook 'prog-mode-hook 'linum-mode)
  (add-hook 'text-mode-hook 'linum-mode))

(provide 'ndhoule-linum)
;;; ndhoule-linum.el ends here
