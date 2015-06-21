;;; ndhoule-themes.el --- Theme settings
;;
;;; Commentary:
;;
;; Any settings relating to themes go in here.
;;
;;; Code:

(use-package base16-theme
             :ensure t
             :no-require t)

(use-package cyberpunk-theme
             :ensure t
             :no-require t)

(load-theme 'base16-default t)

(provide 'ndhoule-themes)
;;; ndhoule-themes.el ends here
