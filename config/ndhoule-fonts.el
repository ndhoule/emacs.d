;;; ndhoule-fonts.el --- Font settings

;;; Commentary:
;;
;; Any settings related to font sizing, etc. go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Set default font
(set-face-attribute 'default t
                    :family "DejaVu Sans Mono"
                    :height 120
                    :weight 'normal)

;; When emacs is started framelessly (e.g. as a server), set-face-attribute is
;; not run. Set default font in that case.
(add-to-list 'default-frame-alist
            '(font . "DejaVu Sans Mono for Powerline-12"))

;; Line spacing crowds in GUI; expand spacing between lines
(setq-default line-spacing 2)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-fonts)
;;; ndhoule-fonts.el ends here
