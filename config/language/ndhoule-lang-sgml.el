;;; ndhoule-lang-sgml.el --- Settings for markup languages
;;
;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.
;;
;;; Code:

(use-package html
  :mode ("\\.as[cp]x\\'" . html-mode)
  :mode ("\\.djhtml\\'" . html-mode)
  :mode ("\\.erb\\'" . html-mode)
  :mode ("\\.html?\\'" . html-mode)
  :mode ("\\.jsp\\'" . html-mode)
  :mode ("\\.mustache\\'" . html-mode)
  :mode ("\\.phtml\\'" . html-mode)
  :mode ("\\.tpl\\.php\\'" . html-mode))

(use-package jade-mode
  :ensure t
  :mode "\\.jade\\'")

(provide 'ndhoule-lang-sgml)
;;; ndhoule-lang-sgml.el ends here
