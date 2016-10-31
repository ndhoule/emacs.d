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
  (add-hook 'prog-mode-hook 'linum-relative-mode)
  (add-hook 'text-mode-hook 'linum-relative-mode))

(provide 'ndhoule-linum)
;;; ndhoule-linum.el ends here
