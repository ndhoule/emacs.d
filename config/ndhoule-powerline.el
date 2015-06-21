;;; ndhoule-powerline.el --- Powerline settings

;;; Commentary:
;;
;; All Powerline settings go in this file.

;;; Code:

(use-package powerline-evil
             :config
             (add-hook 'evil-after-load-hook
                       (lambda()
                         (powerline-evil-vim-color-theme))))

(provide 'ndhoule-powerline)
;;; ndhoule-powerline.el ends here
