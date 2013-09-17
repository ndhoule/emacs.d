;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'sws-mode)
(require-package 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(require-package 'mustache-mode)
(require-package 'handlebars-mode)
(add-to-list 'auto-mode-alist '("\\.hbs$" . handlebars-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars$" . handlebars-mode))

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
