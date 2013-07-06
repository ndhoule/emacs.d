;;; ndhoule-color.el

;; Colorful parentheticals
(require 'rainbow-delimiters)

;; Set default font
(set-default-font "DejaVu Sans Mono-12")

;; Set theme. CLI Emacs doesn't like Monokai, so use Zenburn instead.
(if window-system
    (load-theme 'monokai t)
  (load-theme 'zenburn t))


;; Set line highlight color
(set-face-background 'hl-line "#303030")

;; Make area select color nicer
(set-face-background 'region "#595959")

(provide 'ndhoule-color)
;;; ndhoule-color.el ends here
