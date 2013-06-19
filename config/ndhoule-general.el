;;; ndhoule-general.el -- General editor settings
;;
;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files
;;
;;; Code:

;; Enable line numbering
(require 'linum-relative)
(global-linum-mode)

;; Don't create lockfiles
(setq create-lockfiles nil)

;; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

;; Disable top menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Automatically insert closing character of paired characters, like () and ""
(paredit-mode 1)

;; Show matching parens/braces and disable delay
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Use rainbow parens
(global-rainbow-delimiters-mode)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Prevent jumpy scrolling
(require 'smooth-scrolling)
(eval-after-load 'smooth-scrolling
  '(progn
     (setq smooth-scroll-margin 5)
     nil))

;; Set a default browser
(setq browse-url-browser-function 'browse-default-macosx-browser)

;; This isn't 1980, thanks
(setq sentence-end-double-space nil)

;; Disable warnings about symlink
(setq find-file-visit-truename t)

;; Highlight the current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#303030")

;; Enable 80-character warning
(setq-default fill-column 79)
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
(define-globalized-minor-mode global-fci-mode fci-mode
    (lambda () (fci-mode t)))
(global-fci-mode t)

(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
