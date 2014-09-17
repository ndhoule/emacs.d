;;; ndhoule-font.el -- Font settings

;;; Commentary:
;;
;; Any settings related to font sizing, etc. go in here.

;;; Code:

;; Set default font
(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono"
                    :height 120
                    :weight 'normal)

;; Line spacing crowds in non-terminal Emacs, expand spacing between lines
(setq-default line-spacing 2)

(provide 'ndhoule-font)
;;; ndhoule-font.el ends here
