;;; ndhoule-lang-css.el --- Settings for CSS/preprocessors

;;; Commentary:
;;
;; Settings for CSS and preprocessors like LESS, Stylus, and SASS.

;;; Code:

(require-package 'css-mode)
(require-package 'less-css-mode)
(require-package 'sass-mode)
(require-package 'scss-mode)
(require-package 'sws-mode)

(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

(setq css-indent-offset 2)
(setq scss-compile-at-save nil)


(provide 'ndhoule-lang-css)
;;; ndhoule-lang-css.el ends here
