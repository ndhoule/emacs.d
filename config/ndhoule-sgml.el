;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'handlebars-mode)
(require-package 'jade-mode)
(require-package 'mustache-mode)
(require-package 'sws-mode)
(require-package 'zencoding-mode)

(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; Enable Zencoding mode in all SGML languages
(add-hook 'sgml-mode-hook 'zencoding-mode)

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
