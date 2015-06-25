;;; ndhoule-git.el --- Git-related settings
;;
;;; Commentary:
;;
;; Settings related to git, magit, etc go in here.
;;
;;; Code:

;;; gist.el
;;
;; To configure gist.el:
;;
;; Add the following line to `~/.gitconfig':
;;
;; ```
;; [include]
;;   path = ~/.gitconfig.private
;; ```
;;
;; Generate a new GitHub access token (https://github.com/settings/tokens/new) and add these lines
;; to `~/.gitconfig.private':
;;
;; ```
;; [github]
;;   user = your-username
;;   password = your-personal-access-token
;;   oauth-token = your-personal-access-token
;; ```
(use-package gist
             :ensure t)

(use-package github-browse-file
             :ensure t)

(use-package git-commit-mode
             :ensure t)

(use-package gitconfig-mode
            :mode "^\\\.?(gitconfig.global|gitconfig)\\'"
             :ensure t)

(use-package gitignore-mode
            :mode "^\\.?gitignore\\'"
            :ensure t)


(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
