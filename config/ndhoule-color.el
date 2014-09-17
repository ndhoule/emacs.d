;;; ndhoule-color.el -- Settings related to editor coloration and display

;;; Commentary:
;;
;; Any settings related to how the editor looks (font sizing, line
;; highlighting, etc.) should go in here.

;;; Code:

;; Themes
(require-package 'base16-theme)

;; Set default font
(setq-default line-spacing 2)
(set-face-attribute 'default nil :family "DejaVu Sans Mono"
                    :height 120 :weight 'normal)

;; Set default theme
(load-theme 'base16-default t)

;; Show the column/line number in the modeline
(setq column-number-mode t)

;; Highlight the current line
(global-hl-line-mode 1)

;; Set line highlight color
(set-face-background 'hl-line "#303030")

;; Make area select color nicer
(set-face-background 'region "#595959")


(provide 'ndhoule-color)
;;; ndhoule-color.el ends here.
