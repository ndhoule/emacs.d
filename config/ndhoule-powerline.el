;;; ndhoule-powerline.el --- Powerline settings

;;; Commentary:
;;
;; All Powerline settings go in this file.

;;; Code:

(use-package powerline-evil
  :ensure t
  :config
  (with-eval-after-load "evil"
    (powerline-evil-vim-color-theme)))

(provide 'ndhoule-powerline)
;;; ndhoule-powerline.el ends here
