;;; ndhoule-css.el --- Settings for CSS/preprocessors

;;; Commentary:
;;
;; Settings for CSS and preprocessors like LESS, Stylus, and SASS.

;;; Code:

(require-package 'css-mode)

(require-package 'less-css-mode)

(require-package 'sws-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))

(require-package 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(require-package 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(setq scss-compile-at-save nil)

;; Set CSS spacing to two characters
(setq css-indent-offset 2)

(provide 'ndhoule-css)
;;; ndhoule-css.el ends here
