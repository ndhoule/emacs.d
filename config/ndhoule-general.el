;;; ndhoule-general.el -- General editor settings

;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files

;;; Code:

;; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

;; Disable menu/toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Don't create lockfiles
(setq create-lockfiles nil)

;; Disable warnings about editing symlinked files
(setq find-file-visit-truename t)

;; Don't enforce double spaces at end of sentences
(setq sentence-end-double-space nil)

;; Enable 80-character warning
(require-package 'fill-column-indicator)
(setq-default fill-column 80)
(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
(define-globalized-minor-mode global-fci-mode fci-mode
    (lambda () (fci-mode t)))
(global-fci-mode t)

;; Prevent scrolling from jumping half-pages at a time
(require-package 'smooth-scrolling)
(eval-after-load 'smooth-scrolling
  '(progn
     (setq smooth-scroll-margin 5)
     nil))

(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
