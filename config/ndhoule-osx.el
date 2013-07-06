;;; ndhoule-osx.el -- OS X-specific settings

;;; Commentary:
;;
;; Settings that are only loaded when running under OS X.

;;; Code:

;; Set the current path to the shell's path. Emacs doesn't do this by default
;; on OS X.
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(provide 'ndhoule-osx)
;;; ndhoule-osx.el ends here.
