;;; ndhoule-window.el -- Settings related to window management

;;; Commentary:
;;
;; Control Emacs' behavior when opening or closing windows

;;; Code:

;; Automatically rebalance windows after splitting panes, or when closing panes
(defadvice split-window-below (after restore-balance-below activate)
  (balance-windows))

(defadvice split-window-right (after restore-balance-right activate)
  (balance-windows))

(defadvice delete-window (after restore-balance activate)
  (balance-windows))


(provide 'ndhoule-window)
;;; ndhoule-window.el ends here
