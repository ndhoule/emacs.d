;;; ndhoule-flycheck.el

;; Enable flycheck for all buffers
(add-hook 'after-init-hook 'global-flycheck-mode)
(setq flycheck-highlighting-mode 'columns)
(setq flycheck-indication-mode 'right-fringe)


(provide 'ndhoule-flycheck)
;;; ndhoule-flycheck.el ends here
