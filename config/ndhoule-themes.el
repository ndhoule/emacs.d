;;; ndhoule-themes.el --- Theme settings

;;; Commentary:
;;
;; Any settings relating to themes go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'base16-theme)
(require-package 'cyberpunk-theme)

;; Set default theme
(load-theme 'base16-default t)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-themes)
;;; ndhoule-themes.el ends here
