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
  ;; TODO: Move this to language config
  (add-to-list 'projectile-globally-ignored-directories "Godeps")
  (add-to-list 'projectile-globally-ignored-directories "components")
  (add-to-list 'projectile-globally-ignored-directories "node_modules")
  (add-to-list 'projectile-globally-ignored-directories "site-lisp")
  (add-to-list 'projectile-globally-ignored-directories "vendor")
  (with-eval-after-load "evil"
    (evil-leader/set-key "t" 'projectile-find-file)))

(provide 'ndhoule-projectile)
;;; ndhoule-projectile.el ends here
