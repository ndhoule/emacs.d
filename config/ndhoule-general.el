;;; ndhoule-general.el -- General editor settings
;;
;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files
;;
;;; Code:

; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

; Disable top menu bar
(menu-bar-mode -1)

; Save backup files in system temporary directory (e.g. /tmp)
(setq backup-directory-alist
            `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))

; Prevent jumpy scrolling
(require 'smooth-scrolling)
(setq smooth-scroll-margin 5)

; Disable warnings about symlink
(setq find-file-visit-truename t)

; Highlight the current line
(global-hl-line-mode 1)

; Enable 80-character warning
(setq-default fill-column 79)
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
(define-globalized-minor-mode global-fci-mode fci-mode
    (lambda () (fci-mode t)))
(global-fci-mode t)


(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
