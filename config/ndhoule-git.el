;;; ndhoule-git.el --- Git-related settings
;;
;;; Commentary:
;;
;; Settings related to git, magit, etc go in here.
;;
;;; Code:

(use-package github-browse-file
  :ensure t)

(use-package gitconfig-mode
  :ensure t)

(use-package gitignore-mode
  :ensure t)

;; TODO: Deferreds/autoloads
(use-package magit
  :ensure t)

;; TODO: Deferreds/autoloads
(use-package evil-magit
  :ensure t)

(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
