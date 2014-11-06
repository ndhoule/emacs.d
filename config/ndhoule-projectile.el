;;; ndhoule-projectile.el --- Configuration for projectile.el

;;; Commentary:
;;
;; Settings for Projectile go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)
(require-package 'projectile)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(projectile-global-mode)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-key "t" 'projectile-find-file)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-projectile)
;;; ndhoule-projectile.el ends here
