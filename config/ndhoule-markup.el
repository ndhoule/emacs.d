;;; ndhoule-markup.el --- Settings for markup languages
;;
;;; Commentary:
;;
;; Settings for HTML, Jade, and other markup languages.
;;
;;; Code:

(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(provide 'ndhoule-markup)
;;; ndhoule-markup.el ends here
