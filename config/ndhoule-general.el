;;; ndhoule-general.el --- General editor settings

;;; Commentary:
;;
;; Settings that don't belong elsewhere or merit their own files

;;; Code:

(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq create-lockfiles nil)
(setq find-file-visit-truename t)
(global-auto-revert-mode t)

;; Change autosave directory
(let ((autosave-dir (expand-file-name "autosaves/\\1" user-emacs-directory)))
  (make-directory autosave-dir t)
  (setq auto-save-file-name-transforms `((".*" ,autosave-dir))))

;; Prevent scrolling from jumping half-pages at a time
(require-package 'smooth-scrolling)
(eval-after-load 'smooth-scrolling
  '(progn (setq smooth-scroll-margin 5) nil))


(provide 'ndhoule-general)
;;; ndhoule-general.el ends here
