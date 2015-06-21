;;; ndhoule-color.el --- Coloration and display settings
;;
;;; Commentary:
;;
;; Any settings related to cosmetic line coloration/display go in here.
;; TODO: Rename this file
;;
;;; Code:

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

;; Highlight columns that exceed 100 characters
(use-package column-enforce-mode
             :ensure t
             :config
             (setq column-enforce-column 100)
             (add-hook 'prog-mode-hook 'column-enforce-mode))

;;;
;;; TODO/FIXME/XXX Highlighting
;;;

(use-package fixmee
             :disabled t
             :ensure t
             :config
             (global-fixmee-mode 1))

(provide 'ndhoule-color)
;;; ndhoule-color.el ends here
