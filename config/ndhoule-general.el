;;; ndhoule-general.el --- General editor settings

;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files

;;; Code:

;; Disable splash screen
(setq inhibit-startup-message t)

;; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

;; Don't create lockfiles
(setq create-lockfiles nil)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(make-directory "~/.emacs.d/autosaves/" t)
(custom-set-variables
 `(auto-save-file-name-transforms `((".*" ~(expand-file-name "autosaves/\\1" user-emacs-directory) t))))

;; Disable warnings about editing symlinked files
(setq find-file-visit-truename t)

;; Autoreload files on change
(global-auto-revert-mode t)

;; Prevent scrolling from jumping half-pages at a time
(require-package 'smooth-scrolling)
(eval-after-load 'smooth-scrolling
  '(progn (setq smooth-scroll-margin 5) nil))


(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
