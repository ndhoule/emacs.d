;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; (require-package 'handlebars-sgml-mode)
;; (require 'handlebars-sgml-mode)
;; (handlebars-use-mode 'global)

(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(defun ndhoule-web-mode-hook ()
  "Hooks for `web-mode'."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'ndhoule-web-mode-hook)

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
