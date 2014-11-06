;;; ndhoule-git.el --- Git-related settings

;;; Commentary:
;;
;; Settings related to git, magit, etc go in here.
;;
;;
;; Note: To configure gist.el, do the following:
;;
;; Set the following lines in your ~/.gitconfig:
;;
;; ```
;; [github]
;;   user = your-username
;;   password = your-personal-access-token
;;   oauth-token = your-personal-access-token
;; ```
;;
;; Or, better, put the above lines in `~/.gitconfig.private' and put these lines in your
;; `~/.gitconfig', instead, so you don't inadvertently commit a token to your dotfiles repo:
;;
;; ```
;; [include]
;;   path = ~/.gitconfig.private
;; ```
;;
;; Note: If you use a personal access token (https://github.com/settings/applications) rather than a
;; raw password, this will a) limit access to gists only, and b) work with two-factor authentication
;; enabled.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)
(require-package 'gist)
(require-package 'git-commit-mode)
(require-package 'gitconfig-mode)
(require-package 'github-browse-file)
(require-package 'gitignore-mode)
(require-package 'magit)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Break commit message lines at 72 characters
(add-hook 'magit-log-edit-mode-hook (lambda ()
                                      (set-fill-column 72)
                                      (auto-fill-mode t)))

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-key "gst" 'magit-status)

;; Configure magit's various modes to play nice with evil-mode
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

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
