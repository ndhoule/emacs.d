;;; ndhoule-themes.el --- Theme settings
;;
;;; Commentary:
;;
;; Any settings relating to themes go in here.
;;
;;; Code:

(use-package base16-theme
  :ensure t
  :no-require t
  :init
  (load-theme 'base16-eighties t))

(provide 'ndhoule-themes)
;;; ndhoule-themes.el ends here
