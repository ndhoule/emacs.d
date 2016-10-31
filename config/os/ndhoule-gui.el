;;; ndhoule-gui.el --- Common settings for GUI mode
;;
;;; Commentary:
;;
;; Settings that should be applied in GUI mode across all platforms go in here.
;;
;;; Code:

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

;; TODO: Under Linux, we probably prefer C-+/- to Super-+/-
(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s-_") 'text-scale-decrease)

;; Set frame to fullscreen (Ctrl-Cmd-F)
;; TODO: Only set this on Mac+GUI
(global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-gui)
;;; ndhoule-gui.el ends here
