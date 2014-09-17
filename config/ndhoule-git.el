;;; ndhoule-git.el --- Git-related settings

;;; Commentary:
;;
;; Settings related to git-gutter, magit, etc go in here.

;;; Code:

(require-package 'magit)
(require-package 'git-commit-mode)
(require-package 'gitconfig-mode)
(require-package 'gitignore-mode)
(require-package 'github-browse-file)

;; Break commit messages at 72 characters
(add-hook 'magit-log-edit-mode-hook
          (lambda ()
            (set-fill-column 72)
            (auto-fill-mode t)))


(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
