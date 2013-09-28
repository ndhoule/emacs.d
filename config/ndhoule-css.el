;;; ndhoule-css.el --- Settings for CSS/preprocessors

;;; Commentary:
;;
;; Settings for CSS and preprocessors like LESS, Stylus, and SASS.

;;; Code:

(require-package 'css-mode)
(require-package 'less-css-mode)
(require-package 'sass-mode)

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

;; Set CSS spacing to two characters
(setq css-indent-offset 2)

(provide 'ndhoule-css)
;;; ndhoule-css.el ends here
