;;; ndhoule-projectile.el --- Configuration for projectile.el
;;
;;; Commentary:
;;
;; Settings for Projectile go in here.
;;
;;; Code:

(use-package projectile
             :ensure t
             :config
             (projectile-global-mode)
             (add-hook 'evil-after-load-hook
                       (lambda ()
                         (evil-leader/set-key "t" 'projectile-find-file))))

(provide 'ndhoule-projectile)
;;; ndhoule-projectile.el ends here
