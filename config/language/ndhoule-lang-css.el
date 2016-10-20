;;; ndhoule-lang-css.el --- Settings for CSS/preprocessors
;;
;;; Commentary:
;;
;; Settings for CSS and preprocessors like LESS, Stylus, and SASS.
;;
;;; Code:

(use-package css-mode
  :init
  (setq css-indent-offset 2)
  :mode "\\.css\\'")

(use-package less-css-mode
  :ensure t
  :mode "\\.less\\'")

(use-package sass-mode
  :ensure t
  :mode "\\.sass\\'")

(use-package scss-mode
  :ensure t
  :init
  (setq scss-compile-at-save nil)
  :mode "\\.scss\\'")

(use-package sws-mode
  :ensure t
  :mode "\\.styl\\'")

(provide 'ndhoule-lang-css)
;;; ndhoule-lang-css.el ends here
