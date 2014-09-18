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

;;
;; evil-mode keybindings
;;

(require 'ndhoule-evil)

(evil-add-hjkl-bindings *bc-menu-mode-map* 'emacs)
(evil-add-hjkl-bindings magit-mode-map 'emacs)
(evil-add-hjkl-bindings magit-diff-mode-map 'emacs)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)
(evil-add-hjkl-bindings git-rebase-mode-map 'emacs
  "K" 'git-rebase-mode-kill-line
  "h" 'describe-mode)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs
  "l" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)


(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
