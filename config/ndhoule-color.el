;;; ndhoule-color.el -- Settings related to editor coloration and display

;;; Commentary:
;;
;; Any settings related to how the editor looks (font sizing, line
;; highlighting, etc.) should go in here.

;;; Code:

(require-package 'rainbow-delimiters)
(require-package 'fill-column-indicator)

;; Themes
(require-package 'solarized-theme)
(require-package 'monokai-theme)
(require-package 'zenburn-theme)

;; Set default font
(setq-default line-spacing 2)
(set-face-attribute 'default nil :family "DejaVu Sans Mono"
                    :height 120 :weight 'normal)

;; Set theme; CLI Emacs doesn't like Monokai, so use Zenburn instead.
;(if window-system
    ;(load-theme 'monokai t)
  ;(load-theme 'zenburn t))
(load-theme 'monokai t)

;; Highlight the current line and column
(crosshairs-mode t)
(setq col-highlight-vline-face-flag t)
(set-face-background 'hl-line "#303030")
(set-face-background 'col-highlight "#303030")

;; Set line highlight color
(set-face-background 'hl-line "#303030")

;; Make area select color nicer
(set-face-background 'region "#595959")

(provide 'ndhoule-color)
;;; ndhoule-color.el ends here.
