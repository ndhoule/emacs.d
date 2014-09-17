;;; ndhoule-general.el -- General editor settings

;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files

;;; Code:

;; Disable splash screen
(setq inhibit-startup-message t)

;; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; Don't create lockfiles
(setq create-lockfiles nil)

;; Disable warnings about editing symlinked files
(setq find-file-visit-truename t)

;; Don't enforce double spaces at end of sentences
(setq sentence-end-double-space nil)

;; Autoreload files on change
(global-auto-revert-mode t)

;; Highlight columns that exceed 100 characters
(require-package 'column-enforce-mode)
(add-hook 'prog-mode-hook 'column-enforce-mode)
(setq column-enforce-column 100)

;; Prevent scrolling from jumping half-pages at a time
(require-package 'smooth-scrolling)
(eval-after-load 'smooth-scrolling
  '(progn
     (setq smooth-scroll-margin 5)
     nil))


(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
