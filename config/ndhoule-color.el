;;; ndhoule-color.el --- Coloration and display settings

;;; Commentary:
;;
;; Any settings related to font theming and (cosmetic) coloration go in here.

;;; Code:

;;;
;;; Themes
;;;

(require-package 'base16-theme)
(require-package 'cyberpunk-theme)

;; Set default theme
(load-theme 'base16-default t)

;;;
;;; Line Coloration
;;;

;; Highlight the currently selected line
(global-hl-line-mode 1)

;; Set line highlight color
(set-face-background 'hl-line "#303030")

;; Make area select color nicer
(set-face-background 'region "#595959")

;;;
;;; Line Length
;;;

(require-package 'column-enforce-mode)

;; Highlight columns that exceed 100 characters
(setq column-enforce-column 100)
(add-hook 'prog-mode-hook 'column-enforce-mode)

;;;
;;; Todos Highlighting
;;;

(require-package 'fixmee)
(global-fixmee-mode 1)


(provide 'ndhoule-color)
;;; ndhoule-color.el ends here
