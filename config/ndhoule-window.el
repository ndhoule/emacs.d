;;; ndhoule-window.el --- Window management settings

;;; Commentary:
;;
;; Control the way Emacs opens and closes windows.

;;; Code:

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Automatically rebalance windows after splitting panes, or when closing panes
(defadvice split-window-below (after restore-balance-below activate)
  (balance-windows))

(defadvice split-window-right (after restore-balance-right activate)
  (balance-windows))

(defadvice delete-window (after restore-balance activate)
  (balance-windows))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-window)
;;; ndhoule-window.el ends here
