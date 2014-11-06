;;; ndhoule-general.el --- General editor settings

;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq create-lockfiles nil)
(setq find-file-visit-truename t)
(global-auto-revert-mode t)

;; Disable backup files
(setq make-backup-files nil)

;; Set autosave directory
(let ((autosave-dir (expand-file-name "autosaves/\\1" user-emacs-directory)))
  (make-directory autosave-dir t)
  (setq auto-save-file-name-transforms `((".*" ,autosave-dir))))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
