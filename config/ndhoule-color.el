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

;; Highlight the current line
(global-hl-line-mode 1)

;; Set line highlight color
(set-face-background 'hl-line "#303030")

;; Make area select color nicer
(set-face-background 'region "#595959")

;; Highlight lines longer than x characters
(use-package column-enforce-mode
  :ensure t
  :diminish column-enforce-mode
  :config
  (setq column-enforce-column 80)
  (add-hook 'prog-mode-hook 'column-enforce-mode))

;; Colorize color values in HTML, CSS, etc. modes
(use-package rainbow-mode
  :ensure t
  :config
  (rainbow-mode))

(provide 'ndhoule-color)
;;; ndhoule-color.el ends here
