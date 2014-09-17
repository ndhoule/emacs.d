;;; ndhoule-osx.el -- OS X-specific settings

;;; Commentary:
;;
;; Settings that are only loaded when running under OS X.

;;; Code:

(require-package 'exec-path-from-shell)
(require-package 'dash-at-point)

;; Set the current path to the shell's path. (Emacs doesn't do this by default
;; on OS X.)
(exec-path-from-shell-initialize)

(evil-leader/set-key
  "da" 'dash-at-point)

(provide 'ndhoule-osx)
;;; ndhoule-osx.el ends here
