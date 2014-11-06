;;; ndhoule-gui.el --- Common settings for GUI mode

;;; Commentary:
;;
;; Settings that should be applied in GUI mode across all platforms go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

;; TODO: Under Linux, we probably prefer C-+/- to Super-+/-
(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s-_") 'text-scale-decrease)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-gui)
;;; ndhoule-gui.el ends here
