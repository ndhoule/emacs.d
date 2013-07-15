;;; ndhoule-git.el -- Git-related settings

;;; Commentary:
;;
;; Settings related to git-gutter, magit, etc go in here.

;;; Code:

(require-package 'magit)
(require-package 'fringe-helper)
(require-package 'git-gutter-fringe)
(require-package 'git-commit-mode)
(require-package 'gitconfig-mode)
(require-package 'gitignore-mode)
(require-package 'github-browse-file)

;; Use the fringe version of git-gutter
(after-load 'git-gutter
  (require 'git-gutter-fringe))

(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
