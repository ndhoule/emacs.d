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

(defun ndhoule/pb-copy ()
  "Copies the currently selected text to the OS clipboard."
  (interactive)
  (when mark-active
    (shell-command-on-region
     (point) (mark) "pbcopy")
    (kill-buffer "*Shell Command Output*")
    (princ "Copied selection to OS clipboard.")))

(defun ndhoule/pb-paste ()
  "Pastes whatever is in the OS clipboard."
  (interactive)
  (shell-command-on-region
    (point)
    (if mark-active (mark) (point)) "pbpaste" nil t))

(evil-leader/set-key
  "da" 'dash-at-point
  "y"  'ndhoule/pb-copy
  "p"  'ndhoule/pb-paste)

(provide 'ndhoule-osx)
;;; ndhoule-osx.el ends here
