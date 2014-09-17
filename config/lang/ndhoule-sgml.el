;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . html-mode))

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
