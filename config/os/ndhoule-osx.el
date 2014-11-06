;;; ndhoule-osx.el --- OS X-specific settings

;;; Commentary:
;;
;; Settings that are loaded only when running on an OS X platform.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)
(require-package 'dash-at-point)
(require-package 'exec-path-from-shell)

;;;;;;;;;;;;;;;;;
;;; Functions ;;;
;;;;;;;;;;;;;;;;;

(defun ndhoule/pb-copy ()
  "Copies the currently selected text to the OS clipboard."
  (interactive)
  (when mark-active
    (shell-command-on-region
     (point) (mark) "pbcopy")
    (kill-buffer "*Shell Command Output*")
    (princ "Copied selection to OS clipboard.")))

(defun ndhoule/pb-paste ()
  "Pastes the contents of the OS clipboard into the buffer at the cursor."
  (interactive)
  (shell-command-on-region
    (point)
    (if mark-active (mark) (point)) "pbpaste" nil t))

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Set the current path to the shell's path. (Emacs doesn't do this by default on OS X.)
(exec-path-from-shell-initialize)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-key
  "?" 'dash-at-point
  "y"  'ndhoule/pb-copy
  "p"  'ndhoule/pb-paste)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-osx)
;;; ndhoule-osx.el ends here
