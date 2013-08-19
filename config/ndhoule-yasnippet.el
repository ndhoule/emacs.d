;;; ndhoule-yasnippet.el --- Config file for yasnippet

;;; Commentary:
;;
;; Like snippets? You're gonna love this file.

;;; Code:

(require-package 'yasnippet)
(yas-global-mode t)

;; ;; Develop and keep personal snippets under ~/emacs.d/mysnippets
(yas-load-directory "~/.emacs.d/snippets")

(setq yas-indent-line 'fixed)

(provide 'ndhoule-yasnippet)
;;; ndhoule-yasnippet.el ends here
