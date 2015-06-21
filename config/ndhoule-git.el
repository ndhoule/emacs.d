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

;; FIXME: Does magit handle this for us?
;; (use-package git-commit-mode
;;              :ensure t)

;; FIXME: Does magit handle this for us?
;; (use-package gitconfig-mode
;;              :ensure t)

(use-package github-browse-file
             :ensure t)

;; FIXME: Does magit handle this for us?
;; (use-package gitignore-mode
;;             :mode "^\\.?gitignore\\'"
;;             :ensure t)

(use-package magit
             ;; FIXME: enabling magit makes startup times really slow.
             :disabled t
             :ensure t
             :init
             (setq magit-auto-revert-mode nil)
             (setq magit-last-seen-setup-instructions "1.4.0")
             :config
             ;; Break commit message lines at 72 characters
             (add-hook 'magit-log-edit-mode-hook
                       (lambda ()
                         (set-fill-column 72)
                         (auto-fill-mode t)))

             (add-hook 'evil-after-load-hook
                       (lambda ()
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
                           "L" 'magit-key-mode-popup-logging))))

(provide 'ndhoule-git)
;;; ndhoule-git.el ends here
