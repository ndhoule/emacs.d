;;; ndhoule-sgml.el --- Settings for markup languages

;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.

;;; Code:

(require-package 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(require-package 'handlebars-sgml-mode)
(require 'handlebars-sgml-mode)
(handlebars-use-mode 'global)

(provide 'ndhoule-sgml)
;;; ndhoule-sgml.el ends here
