;;; ndhoule-osx.el --- OS X-specific settings
;;
;;; Commentary:
;;
;; Settings that are loaded only when running on an OS X platform.
;;
;;; Code:

(use-package dash-at-point
             :ensure t
             :init
             (with-eval-after-load "evil"
               (evil-leader/set-key "?" 'dash-at-point)))

;; (use-package exec-path-from-shell
;;              :ensure t
;;              :config
;;              ;; Set the current path to the shell's path.
;;              ;; (Emacs doesn't do this by default on OS X.)
;;              (exec-path-from-shell-initialize))

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

(with-eval-after-load "evil"
  (evil-leader/set-key
    "y"  'ndhoule/pb-copy
    "p"  'ndhoule/pb-paste))

(provide 'ndhoule-osx)
;;; ndhoule-osx.el ends here
