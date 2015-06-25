;;; ndhoule-projectile.el --- Configuration for projectile.el
;;
;;; Commentary:
;;
;; Settings for Projectile go in here.
;;
;;; Code:

(use-package projectile
             :ensure t
             :diminish projectile-mode
             :config
             (projectile-global-mode)
             (with-eval-after-load "evil"
               (evil-leader/set-key "t" 'projectile-find-file)))

(provide 'ndhoule-projectile)
;;; ndhoule-projectile.el ends here
