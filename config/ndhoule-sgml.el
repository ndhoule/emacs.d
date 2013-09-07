;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'handlebars-mode)
(require-package 'jade-mode)
(require-package 'mustache-mode)
(require-package 'sws-mode)
(require-package 'emmet-mode)

(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; Enable Emmet mode in compatible modes
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'less-mode-hook 'emmet-mode)
(add-hook 'sass-mode-hook 'emmet-mode)
(add-hook 'handlebars-mode-hook 'emmet-mode)

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
